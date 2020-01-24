DROP TABLE message;

CREATE TABLE message
(
    id         BLOB(16) PRIMARY KEY NOT NULL,
    subject    TEXT(255),
    snippet    TEXT(255),
    mimetype   TEXT(255),
    body_uri   TEXT(4096),
    -- get Now/UTC, convert to local, convert to string/Unix Time, store as Integer(4)
    created_at INTEGER(4) DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    updated_at INTEGER(4)
);

CREATE Trigger message_updated
    AFTER UPDATE
    ON message
BEGIN
    UPDATE message
        -- same as created_at
    SET updated_at = strftime('%s', DateTime('Now', 'localtime'))
    WHERE id = new.id;
END;

-- convert Unix-Times to DateTimes so not every single query needs to do so
CREATE VIEW IF NOT EXISTS message_vw AS
SELECT id,
       subject,
       snippet,
       mimetype,
       body_uri,
       -- convert Integer(4) (treating it as Unix-Time)
       DateTime(created_at, 'unixepoch') AS created_at,
       -- to YYYY-MM-DD HH:MM:SS
       DateTime(updated_at, 'unixepoch') AS updated_at
FROM message;
