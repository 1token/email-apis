DROP SCHEMA email;
CREATE SCHEMA email;

CREATE TABLE email.timeline_seq
(
    num INT UNSIGNED NOT NULL
);

INSERT INTO email.timeline_seq
SET num = 0;

CREATE TABLE email.history_seq
(
    num INT UNSIGNED NOT NULL
);

INSERT INTO email.history_seq
SET num = 0;

-- Default values are set in triggers

CREATE TABLE email.attachment
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    mimetype      varchar(255)               NOT NULL,
    filename      varchar(255)               NOT NULL,
    content       text                       NOT NULL,
    data_uri      varchar(4096)              NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FULLTEXT KEY mimetype (mimetype),
    FULLTEXT KEY filename (filename),
    FULLTEXT KEY content (content),
    FULLTEXT KEY attachment (mimetype, filename, content)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.message
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    mimetype      varchar(255),
    subject       varchar(255),
    snippet       varchar(255),
    content       text                       NOT NULL,
    body_uri      varchar(4096),
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FULLTEXT KEY subject (subject),
    FULLTEXT KEY content (content),
    FULLTEXT KEY message (subject, content)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.email
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    parent_id     binary(16),
    thread_id     binary(16)                 NOT NULL,
    fwd           bool,
    -- label_ids   binary(16),
    -- from_id        binary(16)             NOT NULL,
    -- to_ids         binary(16)             NOT NULL,
    -- cc_ids         binary(16),
    -- bcc_ids        binary(16),
    -- group_ids      binary(16),
    tags          varchar(4096),
    message_id    binary(16)                 NOT NULL,
    -- attachment_ids binary(16),
    sent_at       datetime,
    received_at   datetime,
    snoozed_at    datetime,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (message_id) REFERENCES email.message (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.recipient
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    email_address varchar(255)               NOT NULL,
    display_name  varchar(255),
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FULLTEXT KEY email_address (email_address),
    FULLTEXT KEY display_name (display_name),
    FULLTEXT KEY recipient (email_address, display_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.label
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    type          varchar(255)               NOT NULL,
    name          varchar(255)               NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FULLTEXT KEY type (type),
    FULLTEXT KEY name (name),
    FULLTEXT KEY label (type, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.filter
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    name          varchar(255)               NOT NULL,
    criteria      varchar(4096),
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE email.email_attachment
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    email_id      binary(16)                 NOT NULL,
    attachment_id binary(16)                 NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (email_id) REFERENCES email.email (id),
    FOREIGN KEY (attachment_id) REFERENCES email.attachment (id)
);

CREATE TABLE email.email_recipient
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    email_id      binary(16)                 NOT NULL,
    recipient_id  binary(16)                 NOT NULL,
    type          varchar(255)               NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FULLTEXT KEY type (type),
    FOREIGN KEY (email_id) REFERENCES email.email (id),
    FOREIGN KEY (recipient_id) REFERENCES email.recipient (id)
);

CREATE TABLE email.email_label
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    email_id      binary(16)                 NOT NULL,
    label_id      binary(16)                 NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (email_id) REFERENCES email.email (id),
    FOREIGN KEY (label_id) REFERENCES email.label (id)
);

CREATE TABLE email.filter_label
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    filter_id     binary(16)                 NOT NULL,
    label_id      binary(16)                 NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (filter_id) REFERENCES email.filter (id),
    FOREIGN KEY (label_id) REFERENCES email.label (id)
);

CREATE TABLE email.filter_recipient
(
    id            binary(16)                 NOT NULL,
    owner         varchar(255)               NOT NULL,
    filter_id     binary(16)                 NOT NULL,
    recipient_id  binary(16)                 NOT NULL,
    type          varchar(255)               NOT NULL,
    timeline_id   bigint                     NOT NULL,
    history_id    bigint                     NOT NULL,
    deleted       tinyint(1) /*DEFAULT 0*/   NOT NULL,
    created_at    datetime /*DEFAULT NOW()*/ NOT NULL,
    updated_at    datetime,
    un_deleted_at datetime,
    PRIMARY KEY (`id`),
    FOREIGN KEY (filter_id) REFERENCES email.filter (id),
    FOREIGN KEY (recipient_id) REFERENCES email.recipient (id)
);

