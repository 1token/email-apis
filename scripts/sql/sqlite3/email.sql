DROP TABLE IF EXISTS fts_sender;
DROP TABLE IF EXISTS fts_recipient;
DROP TABLE IF EXISTS fts_subject;
DROP TABLE IF EXISTS fts_content;
DROP TABLE IF EXISTS recipient;
DROP TABLE IF EXISTS message;
VACUUM;

CREATE TABLE recipient
(
    recipient_id TEXT,
    type         TEXT,
    email        TEXT,
    name         TEXT
);

CREATE TABLE message
(
    message_id  TEXT,
    hash        TEXT,
    date        INTEGER,
    received    INTEGER,
    subject     TEXT,
    sender      TEXT,
    [from]      TEXT,
    [to]        TEXT,
    cc          TEXT,
    bcc         TEXT,
    reply_to    TEXT,
    content     TEXT,
    embedded    INTEGER,
    attached    INTEGER,
    size        INTEGER,
    thread_root INTEGER,
    thread_lvl  INTEGER,
    thread_lft  INTEGER,
    thread_rgt  INTEGER,
    thread_par  INTEGER
);

CREATE INDEX message_id ON message (message_id);
CREATE INDEX hash ON message (hash);
CREATE INDEX received ON message (received);
CREATE INDEX date ON message (date);
CREATE INDEX size ON message (size);
CREATE INDEX attached ON message (attached);
CREATE INDEX embedded ON message (embedded);
CREATE INDEX thread_root ON message (thread_root);
CREATE INDEX thread_lvl ON message (thread_lvl);
CREATE INDEX thread_lft ON message (thread_lft);
CREATE INDEX thread_par ON message (thread_par);

CREATE VIRTUAL TABLE fts_subject USING fts5
(
    subject,
    content=message,
    content_rowid=rowid
);
INSERT INTO fts_subject(fts_subject)
VALUES ('rebuild');

CREATE VIRTUAL TABLE fts_content USING fts5
(
    content,
    content=message,
    content_rowid=rowid
);
INSERT INTO fts_content(fts_content)
VALUES ('rebuild');

CREATE VIRTUAL TABLE fts_sender USING fts5
(
    `from`,
    sender,
    content=message,
    content_rowid=rowid
);
INSERT INTO fts_sender(fts_sender)
VALUES ('rebuild');

/*CREATE VIRTUAL TABLE fts_recipient USING fts5
(
    `to`,
    cc,
    bcc,
    content=message,
    content_rowid=rowid
);
INSERT INTO fts_recipient(fts_recipient)
VALUES ('rebuild');*/

CREATE VIRTUAL TABLE fts_recipient USING fts5
(
    type,
    email,
    name,
    content=recipient,
    content_rowid=recipient_id
);
INSERT INTO fts_recipient(fts_recipient)
VALUES ('rebuild');

CREATE TRIGGER message_ai_fts
    AFTER INSERT
    ON message
BEGIN
    INSERT INTO fts_subject(rowid, subject) VALUES (new.rowid, new.subject);
    INSERT INTO fts_content(rowid, content) VALUES (new.rowid, new.content);
    INSERT INTO fts_sender(rowid, `from`, sender) VALUES (new.rowid, new.`from`, new.sender);
    -- INSERT INTO fts_recipient(rowid, `to`, cc, bcc) VALUES (new.rowid, new.`to`, new.cc, new.bcc);
    IF new.to IS NOT NULL THEN

    ENDIF;
END;

/*CREATE TRIGGER message_ad_fts
    AFTER DELETE
    ON message
BEGIN
    INSERT INTO fts_subject(fts_subject, rowid, subject) VALUES ('delete', old.rowid, old.subject);
    INSERT INTO fts_content(fts_content, rowid, content) VALUES ('delete', old.rowid, old.content);
    INSERT INTO fts_sender(fts_sender, rowid, `from`, sender) VALUES ('delete', old.rowid, old.`from`, old.sender);
    INSERT INTO fts_recipient(fts_recipient, rowid, `to`, cc, bcc)
    VALUES ('delete', old.rowid, old.`to`, old.cc, old.bcc);
END;

CREATE TRIGGER message_au_fts
    AFTER UPDATE
    ON message
    WHEN
            new.subject != old.subject OR
            new.content != old.content OR
            new.`to` != old.`to` OR
            new.cc != old.cc OR
            new.bcc != old.bcc OR
            new.`from` != old.`from` OR
            new.sender != old.sender OR
            new.rowid != old.rowid
BEGIN
    INSERT INTO fts_subject(fts_subject, rowid, subject) VALUES ('delete', old.rowid, old.subject);
    INSERT INTO fts_subject(rowid, subject) VALUES (new.rowid, new.subject);
    INSERT INTO fts_content(fts_content, rowid, content) VALUES ('delete', old.rowid, old.content);
    INSERT INTO fts_content(rowid, content) VALUES (new.rowid, new.content);
    INSERT INTO fts_sender(fts_sender, rowid, `from`, sender) VALUES ('delete', old.rowid, old.`from`, old.sender);
    INSERT INTO fts_sender(rowid, `from`, sender) VALUES (new.rowid, new.`from`, new.sender);
    INSERT INTO fts_recipient(fts_recipient, rowid, `to`, cc, bcc)
    VALUES ('delete', old.rowid, old.`to`, old.cc, old.bcc);
    INSERT INTO fts_recipient(rowid, `to`, cc, bcc) VALUES (new.rowid, new.`to`, new.cc, new.bcc);
END;*/
