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
END;

CREATE TRIGGER IF NOT EXISTS message_before_update
    BEFORE UPDATE OF
    id,
               owner,
               parent_id,
               thread_id,
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

CREATE TRIGGER IF NOT EXISTS message_after_update
    AFTER UPDATE OF
    label_ids,
              subject,
              "to",
              "cc",
              "bcc",
              "group",
              tags,
              attachments,
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
END;

CREATE TRIGGER IF NOT EXISTS label_before_update
    BEFORE UPDATE OF
        id,
        owner--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON label
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update not allowed');
END;

CREATE TRIGGER IF NOT EXISTS label_after_update
    AFTER UPDATE OF
        type,
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
END;

------------------------------recipient------------------------------

CREATE TRIGGER IF NOT EXISTS recipient_after_insert
    AFTER INSERT
    ON recipient
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE recipient
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 0,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = new.id;
END;

CREATE TRIGGER IF NOT EXISTS recipient_before_update
    BEFORE UPDATE OF
        id,
        owner--,
--timeline_id,
--history_id,
--last_stmt,
--timestamp
    ON recipient
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update not allowed');
END;

CREATE TRIGGER IF NOT EXISTS recipient_after_update
    AFTER UPDATE OF
        email_address,
        display_name
    ON recipient
    FOR EACH ROW
BEGIN
    UPDATE timeline_seq SET num = (num + 1);
    UPDATE history_seq SET num = (num + 1);
    UPDATE recipient
    SET timeline_id = (SELECT num FROM timeline_seq),
        history_id  = (SELECT num FROM history_seq),
        last_stmt   = 1,
        timestamp   = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

-- Mark for delete
CREATE TRIGGER IF NOT EXISTS recipient_before_update_delete
    BEFORE UPDATE OF
        last_stmt
    ON recipient
    FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Update "last_stmt" not allowed')
    WHERE (new.last_stmt < 0 OR new.last_stmt > 2)
       OR (old.last_stmt = 2 AND new.last_stmt <> old.last_stmt);
END;

CREATE TRIGGER IF NOT EXISTS recipient_after_update_delete
    AFTER UPDATE OF
        last_stmt
    ON recipient
    FOR EACH ROW
    WHEN new.last_stmt = 2
BEGIN
    UPDATE history_seq SET num = (num + 1);
    UPDATE recipient
    SET history_id = (SELECT num FROM history_seq),
        last_stmt  = new.last_stmt,
        timestamp  = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = old.id;
END;

