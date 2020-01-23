DROP SCHEMA email;
CREATE SCHEMA email;

CREATE TABLE email.message
(
    id         binary(16) PRIMARY KEY NOT NULL,
    subject    varchar(255),
    body_uri   varchar(4096),
    mimetype   varchar(255),
    created_at datetime DEFAULT NOW(),
    updated_at datetime ON UPDATE NOW()
);

/*CREATE TRIGGER message_updated BEFORE UPDATE ON email.message
FOR EACH ROW SET NEW.updated_at = NOW();*/