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
