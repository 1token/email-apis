------------------------------message------------------------------

CREATE TRIGGER IF NOT EXISTS message_after_insert
    AFTER INSERT
    ON message
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 0,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = new.id;

    INSERT INTO fts_message_label (owner, message_id, label_id, label)
    SELECT new.owner, new.id, cast(value AS BLOB), label.name FROM
        json_each(new.label_ids)
            LEFT JOIN label ON cast(label.id AS BLOB) = cast(value AS BLOB)
    WHERE label.owner = new.owner;

    INSERT INTO fts_message_to (owner, message_id, "to")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."to");

    INSERT INTO fts_message_cc (owner, message_id, "cc")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."cc");

    INSERT INTO fts_message_bcc (owner, message_id, "bcc")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."bcc");

    INSERT INTO fts_message_group (owner, message_id, "group")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."group");

    INSERT INTO fts_message_attachment (owner, message_id, filename, attachment)
    SELECT new.owner, new.id, json_extract(value, '$.filename'), json_extract(value, '$.attachment') FROM
        json_each(new.attachments);
END;

CREATE TRIGGER IF NOT EXISTS message_before_update
    BEFORE UPDATE OF
        id,
        owner,
        message_uid,
        parent_uid,
        thread_uid,
        fwd,
        "from",
        sent_at,
        received_at,
        snoozed_at--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON message
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update not allowed');
END;

CREATE TRIGGER IF NOT EXISTS message_before_update_sent
    BEFORE UPDATE OF
        id,
        owner,
        message_uid,
        parent_uid,
        thread_uid,
        fwd,
        "from",
        "to",
        "cc",
        "bcc",
        "group",
        tags,
        attachments,
        mimetype,
        subject,
        snippet,
        body_uri,
        sent_at,
        received_at,
        snoozed_at--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON message
    FOR EACH ROW
    WHEN old.sent_at IS NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Update for sent messages not allowed');
END;

CREATE TRIGGER IF NOT EXISTS message_after_update
    AFTER UPDATE OF
        subject,
        tags,
        mimetype,
        subject,
        snippet,
        body_uri
    ON message
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_label_ids
    AFTER UPDATE OF
        label_ids
    ON message
    FOR EACH ROW
    WHEN new.label_ids <> old.label_ids
BEGIN
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_label
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_label (owner, message_id, label_id, label)
    SELECT new.owner, new.id, cast(value AS BLOB), label.name FROM
        json_each(new.label_ids)
            LEFT JOIN label ON cast(label.id AS BLOB) = cast(value AS BLOB)
    WHERE label.owner = new.owner;
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_to
    AFTER UPDATE OF
        "to"
    ON message
    FOR EACH ROW
    WHEN new."to" <> old."to"
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_to
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_to (owner, message_id, "to")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."to");
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_cc
    AFTER UPDATE OF
        "cc"
    ON message
    FOR EACH ROW
    WHEN new."cc" <> old."cc"
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_cc
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_cc (owner, message_id, "cc")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."cc");
END;

CREATE TRIGGER IF NOT EXISTS bcc
    AFTER UPDATE OF
        "bcc"
    ON message
    FOR EACH ROW
    WHEN new."bcc" <> old."bcc"
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_bcc
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_bcc (owner, message_id, "bcc")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."bcc");
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_group
    AFTER UPDATE OF
        "group"
    ON message
    FOR EACH ROW
    WHEN new."group" <> old."group"
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_group
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_group (owner, message_id, "group")
    SELECT new.owner, new.id, json_extract(value, '$.display_name') || ' ' || json_extract(value, '$.email_address') FROM
        json_each(new."group");
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_attachments
    AFTER UPDATE OF
        attachments
    ON message
    FOR EACH ROW
    WHEN new.attachments <> old.attachments
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    -- todo refine or revamp!!!
    DELETE
    FROM fts_message_attachment
    WHERE owner = old.owner
      AND message_id = old.id;

    INSERT INTO fts_message_attachment (owner, message_id, filename, attachment)
    SELECT new.owner, new.id, json_extract(value, '$.filename'), json_extract(value, '$.attachment') FROM
        json_each(new.attachments);
END;

-- Mark for delete
CREATE TRIGGER IF NOT EXISTS message_before_update_delete
    BEFORE UPDATE OF
        last_stmt
    ON message
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update "last_stmt" not allowed')
    WHERE (new.last_stmt < 0 OR new.last_stmt > 2)
       OR (old.last_stmt = 2 AND new.last_stmt <> old.last_stmt);
END;

CREATE TRIGGER IF NOT EXISTS message_after_update_delete
    AFTER UPDATE OF
        last_stmt
    ON message
    FOR EACH ROW
    WHEN new.last_stmt = 2
BEGIN
    UPDATE history_seq SET num = (num + 1);
    UPDATE message
    SET history_id = (SELECT num FROM history_seq),
        last_stmt  = new.last_stmt,
        timestamp  = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_to
    WHERE owner = old.owner
      AND message_id = old.id;
    DELETE
    FROM fts_message_cc
    WHERE owner = old.owner
      AND message_id = old.id;
    DELETE
    FROM fts_message_bcc
    WHERE owner = old.owner
      AND message_id = old.id;
    DELETE
    FROM fts_message_group
    WHERE owner = old.owner
      AND message_id = old.id;
    DELETE
    FROM fts_message_attachment
    WHERE owner = old.owner
      AND message_id = old.id;
    DELETE
    FROM fts_message_label
    WHERE owner = old.owner
      AND message_id = old.id;
END;

------------------------------filter------------------------------

CREATE TRIGGER IF NOT EXISTS filter_after_insert
    AFTER INSERT
    ON filter
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE filter
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 0,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = new.id;
END;

CREATE TRIGGER IF NOT EXISTS filter_before_update
    BEFORE UPDATE OF
        id,
        owner--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON filter
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update not allowed');
END;

CREATE TRIGGER IF NOT EXISTS filter_after_update
    AFTER UPDATE OF
        name,
        criteria
    ON filter
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE filter
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

-- Mark for delete
CREATE TRIGGER IF NOT EXISTS filter_before_update_delete
    BEFORE UPDATE OF
        last_stmt
    ON filter
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update "last_stmt" not allowed')
    WHERE (new.last_stmt < 0 OR new.last_stmt > 2)
       OR (old.last_stmt = 2 AND new.last_stmt <> old.last_stmt);
END;

CREATE TRIGGER IF NOT EXISTS filter_after_update_delete
    AFTER UPDATE OF
        last_stmt
    ON filter
    FOR EACH ROW
    WHEN new.last_stmt = 2
BEGIN
    UPDATE history_seq SET num = (num + 1);
    UPDATE filter
    SET history_id = (SELECT num FROM history_seq),
        last_stmt  = new.last_stmt,
        timestamp  = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

------------------------------label------------------------------

CREATE TRIGGER IF NOT EXISTS label_after_insert
    AFTER INSERT
    ON label
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE label
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 0,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = new.id;

    INSERT INTO fts_message_label (owner, message_id, label_id, label)
    VALUES (new.owner, NULL, new.id, new.name);
END;

CREATE TRIGGER IF NOT EXISTS label_before_update
    BEFORE UPDATE OF
        id,
        owner,
        role--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON label
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update not allowed');
END;

CREATE TRIGGER IF NOT EXISTS label_after_update_parent_id
    AFTER UPDATE OF
        parent_id
    ON label
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE label
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

CREATE TRIGGER IF NOT EXISTS label_after_update_name
    AFTER UPDATE OF
        name
    ON label
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE label
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    UPDATE fts_message_label
    SET label = new.name
    WHERE owner = old.owner
      AND label_id = old.id;
END;

-- Mark for delete
CREATE TRIGGER IF NOT EXISTS label_before_update_delete
    BEFORE UPDATE OF
        last_stmt
    ON label
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update "last_stmt" not allowed')
    WHERE (new.last_stmt < 0 OR new.last_stmt > 2)
       OR (old.last_stmt = 2 AND new.last_stmt <> old.last_stmt);
END;

CREATE TRIGGER IF NOT EXISTS label_after_update_delete
    AFTER UPDATE OF
        last_stmt
    ON label
    FOR EACH ROW
    WHEN new.last_stmt = 2
BEGIN
    UPDATE history_seq SET num = (num + 1);
    UPDATE label
    SET history_id = (SELECT num FROM history_seq),
        last_stmt  = new.last_stmt,
        timestamp  = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;

    DELETE
    FROM fts_message_label
    WHERE owner = old.owner
      AND label_id = old.id;
END;
