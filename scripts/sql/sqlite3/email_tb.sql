DROP TABLE IF EXISTS timeline_seq;
DROP TABLE IF EXISTS history_seq;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS filter;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS recipient;
DROP TABLE IF EXISTS fts_message;
DROP TABLE IF EXISTS fts_attachment;
VACUUM;

CREATE TABLE timeline_seq
(
    num integer(8) NOT NULL
);

INSERT INTO timeline_seq (num)
VALUES (0);

CREATE TABLE history_seq
(
    num integer(8) NOT NULL
);

INSERT INTO history_seq (num)
VALUES (0);

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
    timeline_id integer(8)             NOT NULL DEFAULT 0,
    history_id  integer(8)             NOT NULL DEFAULT 0,
    last_stmt   integer(2)             NOT NULL DEFAULT 0,
    timestamp   integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE TABLE filter
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    name        varchar(255)           NOT NULL,
    criteria    varchar(4096),
    timeline_id integer(8)             NOT NULL,
    history_id  integer(8)             NOT NULL,
    last_stmt   integer(2)             NOT NULL DEFAULT 0,
    timestamp   integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE TABLE label
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    type        varchar(255)           NOT NULL,
    name        varchar(255)           NOT NULL,
    timeline_id integer(8)             NOT NULL,
    history_id  integer(8)             NOT NULL,
    last_stmt   integer(2)             NOT NULL DEFAULT 0,
    timestamp   integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE TABLE recipient
(
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    email_address varchar(255)           NOT NULL,
    display_name  varchar(255),
    timeline_id   integer(8)             NOT NULL,
    history_id    integer(8)             NOT NULL,
    last_stmt     integer(2)             NOT NULL DEFAULT 0,
    timestamp     integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
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

