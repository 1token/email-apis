DROP TABLE IF EXISTS timeline_seq;
DROP TABLE IF EXISTS history_seq;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS filter;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS recipient;
DROP TABLE IF EXISTS fts_message;
DROP TABLE IF EXISTS fts_message_recipient;
DROP TABLE IF EXISTS fts_message_attachment;
DROP TABLE IF EXISTS fts_message_label;
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
    label_ids   text,                            --json label id
    "from"      text                   NOT NULL, --json recipient
    "to"        text,                            --json recipient
    "cc"        text,                            --json recipient
    "bcc"       text,                            --json recipient
    "group"     text,                            --json recipient
    tags        text,                            --json key/value
    attachments text,                            --json mimetype, filename, hash
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
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    name          varchar(255)           NOT NULL,
    criteria      varchar(4096),
    label_ids     text, --json label id
    recipient_ids text, --json recipient id
    timeline_id   integer(8)             NOT NULL DEFAULT 0,
    history_id    integer(8)             NOT NULL DEFAULT 0,
    last_stmt     integer(2)             NOT NULL DEFAULT 0,
    timestamp     integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE TABLE recipient
(
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    email_address varchar(255)           NOT NULL,
    display_name  varchar(255),
    timeline_id   integer(8)             NOT NULL DEFAULT 0,
    history_id    integer(8)             NOT NULL DEFAULT 0,
    last_stmt     integer(2)             NOT NULL DEFAULT 0,
    timestamp     integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE TABLE label
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    type        integer(2)             NOT NULL DEFAULT 1, --0-system, 1--custom
    label       varchar(255)           NOT NULL,
    timeline_id integer(8)             NOT NULL DEFAULT 0,
    history_id  integer(8)             NOT NULL DEFAULT 0,
    last_stmt   integer(2)             NOT NULL DEFAULT 0,
    timestamp   integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

CREATE VIRTUAL TABLE fts_message USING fts5
(
    message_id UNINDEXED,
    subject,
    message,
    "from",
    tag
);

CREATE VIRTUAL TABLE fts_message_recipient USING fts5
(
    message_id UNINDEXED,
    recipient
);

CREATE VIRTUAL TABLE fts_message_attachment USING fts5
(
    message_id UNINDEXED,
    filename,
    attachment
);

CREATE VIRTUAL TABLE fts_message_label USING fts5
(
    message_id UNINDEXED,
    label_id UNINDEXED,
    label
);

CREATE INDEX idx_message_owner ON message (owner);
CREATE INDEX idx_message_sent_at ON message (sent_at);
CREATE INDEX idx_message_received_at ON message (received_at);
CREATE INDEX idx_message_timeline_id ON message (timeline_id);
CREATE INDEX idx_message_history_id ON message (history_id);
CREATE INDEX idx_message_last_stmt ON message (last_stmt);

CREATE INDEX idx_filter_owner ON filter (owner);
CREATE INDEX idx_filter_timeline_id ON filter (timeline_id);
CREATE INDEX idx_filter_history_id ON filter (history_id);
CREATE INDEX idx_filter_last_stmt ON filter (last_stmt);

CREATE INDEX idx_recipient_owner ON recipient (owner);
CREATE INDEX idx_recipient_timeline_id ON recipient (timeline_id);
CREATE INDEX idx_recipient_history_id ON recipient (history_id);
CREATE INDEX idx_recipient_last_stmt ON recipient (last_stmt);

CREATE INDEX idx_label_owner ON label (owner);
CREATE INDEX idx_label_timeline_id ON label (timeline_id);
CREATE INDEX idx_label_history_id ON label (history_id);
CREATE INDEX idx_label_last_stmt ON label (last_stmt);
