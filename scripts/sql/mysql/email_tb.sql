DROP SCHEMA email;
CREATE SCHEMA email;

CREATE TABLE email.seqnum
(
    num INT UNSIGNED NOT NULL
);

INSERT INTO email.seqnum
SET num = 0;

CREATE TABLE email.attachment
(
    id         binary(16) PRIMARY KEY NOT NULL,
    owner      varchar(255)           NOT NULL,
    filename   varchar(255),
    mimetype   varchar(255),
    data_uri   varchar(4096),
    created_at datetime DEFAULT NOW()
);

CREATE TABLE email.message
(
    id         binary(16) PRIMARY KEY NOT NULL,
    owner      varchar(255)           NOT NULL,
    subject    varchar(255),
    snippet    varchar(255),
    mimetype   varchar(255),
    body_uri   varchar(4096),
    timeline   bigint                 NOT NULL,
    created_at datetime DEFAULT NOW(),
    updated_at datetime ON UPDATE NOW()
);

CREATE TRIGGER email.message_create
    BEFORE INSERT
    ON email.message
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.message_update
    BEFORE UPDATE
    ON email.message
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.envelope
(
    id         binary(16) PRIMARY KEY NOT NULL,
    owner      varchar(255)           NOT NULL,
    -- from_id        binary(16)             NOT NULL,
    -- to_ids         binary(16)             NOT NULL,
    -- cc_ids         binary(16),
    -- bcc_ids        binary(16),
    -- group_ids      binary(16),
    tags       varchar(4096),
    -- message_id     binary(16)             NOT NULL,
    -- attachment_ids binary(16),
    timeline   bigint                 NOT NULL,
    created_at datetime DEFAULT NOW(),
    updated_at datetime ON UPDATE NOW()
);

CREATE TRIGGER email.envelope_create
    BEFORE INSERT
    ON email.envelope
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.envelope_update
    BEFORE UPDATE
    ON email.envelope
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.draft
(
    id         binary(16) PRIMARY KEY NOT NULL,
    owner      varchar(255)           NOT NULL,
    -- label_ids   binary(16),
    -- envelope_id binary(16)             NOT NULL,
    timeline   bigint                 NOT NULL,
    created_at datetime DEFAULT NOW(),
    updated_at datetime ON UPDATE NOW()
);

CREATE TRIGGER email.draft_create
    BEFORE INSERT
    ON email.draft
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.draft_update
    BEFORE UPDATE
    ON email.draft
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.email
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    -- label_ids   binary(16),
    -- envelope_id binary(16)             NOT NULL,
    sent_at     datetime               NOT NULL,
    received_at datetime,
    snoozed_at  datetime,
    fwd         bool,
    timeline    bigint                 NOT NULL,
    created_at  datetime DEFAULT NOW(),
    updated_at  datetime ON UPDATE NOW()
);

CREATE TRIGGER email.email_create
    BEFORE INSERT
    ON email.email
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.email_update
    BEFORE UPDATE
    ON email.email
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.label
(
    id    binary(16) PRIMARY KEY NOT NULL,
    owner varchar(255)           NOT NULL,
    name  varchar(255)           NOT NULL,
    type  int                    NOT NULL
);

CREATE TABLE email.recipient
(
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    email_address varchar(255)           NOT NULL,
    display_name  varchar(255),
    timeline      bigint                 NOT NULL
);

CREATE TRIGGER email.recipient_create
    BEFORE INSERT
    ON email.recipient
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.recipient_update
    BEFORE UPDATE
    ON email.recipient
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.envelope_message
(
    id          binary(16) PRIMARY KEY NOT NULL,
    owner       varchar(255)           NOT NULL,
    envelope_id binary(16)             NOT NULL,
    message_id  binary(16)             NOT NULL,
    timeline    bigint                 NOT NULL,
    FOREIGN KEY (envelope_id) REFERENCES email.envelope (id),
    FOREIGN KEY (message_id) REFERENCES email.message (id)
);

CREATE TRIGGER email.envelope_message_create
    BEFORE INSERT
    ON email.envelope_message
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.envelope_message_update
    BEFORE UPDATE
    ON email.envelope_message
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.envelope_attachment
(
    id            binary(16) PRIMARY KEY NOT NULL,
    owner         varchar(255)           NOT NULL,
    envelope_id   binary(16)             NOT NULL,
    attachment_id binary(16)             NOT NULL,
    timeline      bigint                 NOT NULL,
    FOREIGN KEY (envelope_id) REFERENCES email.envelope (id),
    FOREIGN KEY (attachment_id) REFERENCES email.attachment (id)
);

CREATE TRIGGER email.envelope_attachment_create
    BEFORE INSERT
    ON email.envelope_attachment
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.envelope_attachment_update
    BEFORE UPDATE
    ON email.envelope_attachment
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.envelope_recipient
(
    id           binary(16) PRIMARY KEY NOT NULL,
    owner        varchar(255)           NOT NULL,
    envelope_id  binary(16)             NOT NULL,
    recipient_id binary(16)             NOT NULL,
    type         int                    NOT NULL,
    timeline     bigint                 NOT NULL,
    FOREIGN KEY (envelope_id) REFERENCES email.envelope (id),
    FOREIGN KEY (recipient_id) REFERENCES email.recipient (id)
);

CREATE TRIGGER email.envelope_recipient_create
    BEFORE INSERT
    ON email.envelope_recipient
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TRIGGER email.envelope_recipient_update
    BEFORE UPDATE
    ON email.envelope_recipient
    FOR EACH ROW
BEGIN
    DECLARE tid bigint;
    UPDATE email.seqnum SET num = LAST_INSERT_ID(num + 1);
    SET tid = LAST_INSERT_ID();
    SET NEW.timeline = tid;
END;

CREATE TABLE email.draft_label
(
    id       binary(16) PRIMARY KEY NOT NULL,
    owner    varchar(255)           NOT NULL,
    draft_id binary(16)             NOT NULL,
    label_id binary(16)             NOT NULL,
    FOREIGN KEY (draft_id) REFERENCES email.draft (id),
    FOREIGN KEY (label_id) REFERENCES email.label (id)
);

CREATE TABLE email.email_label
(
    id       binary(16) PRIMARY KEY NOT NULL,
    owner    varchar(255)           NOT NULL,
    email_id binary(16)             NOT NULL,
    label_id binary(16)             NOT NULL,
    FOREIGN KEY (email_id) REFERENCES email.email (id),
    FOREIGN KEY (label_id) REFERENCES email.label (id)
);

