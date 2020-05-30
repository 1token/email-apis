DROP TABLE IF EXISTS timeline_seq;
DROP TABLE IF EXISTS history_seq;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS filter;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS fts_message;
DROP TABLE IF EXISTS fts_message_to;
DROP TABLE IF EXISTS fts_message_cc;
DROP TABLE IF EXISTS fts_message_bcc;
DROP TABLE IF EXISTS fts_message_group;
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
    message_uid binary(16)             NOT NULL,
    parent_uid  binary(16),
    thread_uid  binary(16)             NOT NULL,
    fwd         integer(2)             NOT NULL DEFAULT 0,
    label_ids   text,                            --json label id
    "from"      text                   NOT NULL, --json recipients
    "to"        text,                            --json recipients
    "cc"        text,                            --json recipients
    "bcc"       text,                            --json recipients
    "group"     text,                            --json recipients
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
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    name        varchar(255)           NOT NULL,
    criteria    varchar(4096),
    label_ids   text, --json label id
    recipients  text, --json recipient
    timeline_id integer(8)             NOT NULL DEFAULT 0,
    history_id  integer(8)             NOT NULL DEFAULT 0,
    last_stmt   integer(2)             NOT NULL DEFAULT 0,
    timestamp   integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime')))
);

--roles(system folder): 0-inbox, 1-snoozed, 2-sent, 3-drafts, 4-outbox, 5-deliverybox, 6-terminal, 7...99-reserved
--roles(system label): 100-done, 101-archived, 102-starred, 103-important, 104-chats, 105-spam, 106-unread, 107-999-reserved
--roles(custom label): 1000...
CREATE TABLE label
(
    id              binary(16) PRIMARY KEY NOT NULL,
    owner           varchar(255)           NOT NULL,
    parent_id       binary(16),
    role            integer(4)             NOT NULL DEFAULT 1000,
    name            varchar(255)           NOT NULL,
    --messages_total  integer(4)             NOT NULL DEFAULT 0,
    --messages_unread integer(4)             NOT NULL DEFAULT 0,
    --threads_total   integer(4)             NOT NULL DEFAULT 0,
    --threads_unread  integer(4)             NOT NULL DEFAULT 0,
    timeline_id     integer(8)             NOT NULL DEFAULT 0,
    history_id      integer(8)             NOT NULL DEFAULT 0,
    last_stmt       integer(2)             NOT NULL DEFAULT 0,
    timestamp       integer(4)                      DEFAULT (strftime('%s', DateTime('Now', 'localtime'))),
    FOREIGN KEY (parent_id) REFERENCES label (id) ON DELETE CASCADE
);

CREATE VIRTUAL TABLE fts_message USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    subject,
    message,
    "from",
    tag
);

CREATE VIRTUAL TABLE fts_message_to USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    "to"
);

CREATE VIRTUAL TABLE fts_message_cc USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    "cc"
);

CREATE VIRTUAL TABLE fts_message_bcc USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    "bcc"
);

CREATE VIRTUAL TABLE fts_message_group USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    "group"
);

CREATE VIRTUAL TABLE fts_message_attachment USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    filename,
    attachment
);

CREATE VIRTUAL TABLE fts_message_label USING fts5
(
    owner UNINDEXED,
    message_id UNINDEXED,
    label_id UNINDEXED,
    label
);

CREATE INDEX idx_message_owner ON message (owner);
--CREATE INDEX idx_message_label_ids ON message (label_ids COLLATE NOCASE);
CREATE INDEX idx_message_sent_at ON message (sent_at);
CREATE INDEX idx_message_received_at ON message (received_at);
CREATE INDEX idx_message_timeline_id ON message (timeline_id);
CREATE INDEX idx_message_history_id ON message (history_id);
CREATE INDEX idx_message_last_stmt ON message (last_stmt);

CREATE INDEX idx_filter_owner ON filter (owner);
CREATE INDEX idx_filter_timeline_id ON filter (timeline_id);
CREATE INDEX idx_filter_history_id ON filter (history_id);
CREATE INDEX idx_filter_last_stmt ON filter (last_stmt);

CREATE INDEX idx_label_owner ON label (owner);
CREATE INDEX idx_label_name ON label (name);
CREATE INDEX idx_label_timeline_id ON label (timeline_id);
CREATE INDEX idx_label_history_id ON label (history_id);
CREATE INDEX idx_label_last_stmt ON label (last_stmt);
