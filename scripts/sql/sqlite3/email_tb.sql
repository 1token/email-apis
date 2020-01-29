DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS filter;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS recipient;
DROP TABLE IF EXISTS fts_message;
DROP TABLE IF EXISTS fts_attachment;
VACUUM;

CREATE TABLE message
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    parent_id   binary(16),
    thread_id   binary(16)             NOT NULL,
    fwd         integer(2)             NOT NULL DEFAULT 0,
    label_ids   text,                            --json
    "from"      text                   NOT NULL, --json
    "to"        text,                            --json
    "cc"        text,                            --json
    "bcc"       text,                            --json
    "group"     text,                            --json
    tags        text,                            --json
    attachments text,                            --json
    mimetype    varchar(255),
    subject     varchar(255),
    snippet     varchar(255),
    body_uri    varchar(4096),
    sent_at     integer(4),
    received_at integer(4),
    snoozed_at  integer(4),
    timeline_id integer(8)             NOT NULL,
    history_id  integer(8)             NOT NULL,
    -- get Now/UTC, convert to local, convert to string/Unix Time, store as Integer(4)
    created_at  integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    updated_at  integer(4),
    deleted_at  integer(4)
);

CREATE TABLE filter
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    name        varchar(255)           NOT NULL,
    criteria    varchar(4096),
    timeline_id integer(8)             NOT NULL,
    history_id  integer(8)             NOT NULL,
    -- get Now/UTC, convert to local, convert to string/Unix Time, store as Integer(4)
    created_at  integer(4) DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    updated_at  integer(4),
    deleted_at  integer(4)
);

CREATE TABLE label
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    type        varchar(255)           NOT NULL,
    name        varchar(255)           NOT NULL,
    timeline_id integer(8)             NOT NULL,
    history_id  integer(8)             NOT NULL,
    -- get Now/UTC, convert to local, convert to string/Unix Time, store as Integer(4)
    created_at  integer(4) DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    updated_at  integer(4),
    deleted_at  integer(4)
);

CREATE TABLE recipient
(
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    email_address varchar(255)           NOT NULL,
    display_name  varchar(255),
    timeline_id   integer(8)             NOT NULL,
    history_id    integer(8)             NOT NULL,
    -- get Now/UTC, convert to local, convert to string/Unix Time, store as Integer(4)
    created_at    integer(4) DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    updated_at    integer(4),
    deleted_at    integer(4)
);

CREATE VIRTUAL TABLE fts_message USING fts5
(
    id UNINDEXED,
    subject,
    message,
    "from",
    "to",
    "cc",
    "bcc",
    "group",
    tag,
    label
);

CREATE VIRTUAL TABLE fts_attachment USING fts5
(
    id UNINDEXED,
    filename,
    attachment
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
       DateTime(updated_at, 'unixepoch') AS updated_at,
       DateTime(deleted_at, 'unixepoch') AS deleted_at
FROM message;
