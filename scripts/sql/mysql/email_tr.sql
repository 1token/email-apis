CREATE TRIGGER email.attachment_create
    BEFORE INSERT
    ON email.attachment
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.mimetype IS NOT NULL AND
       NEW.filename IS NOT NULL AND
       NEW.data_uri IS NOT NULL AND
       NEW.content <=> NEW.content AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.attachment_update
    BEFORE UPDATE
    ON email.attachment
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.mimetype <=> OLD.mimetype AND
       NEW.filename <=> OLD.filename AND
       !(NEW.content <=> OLD.content) AND
       NEW.data_uri <=> OLD.data_uri AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.mimetype <=> OLD.mimetype AND
           NEW.filename <=> OLD.filename AND
           NEW.content <=> OLD.content AND
           NEW.data_uri <=> OLD.data_uri AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.message_create
    BEFORE INSERT
    ON email.message
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.mimetype IS NOT NULL AND
       NEW.subject <=> NEW.subject AND
       NEW.snippet <=> NEW.snippet AND
       NEW.content <=> NEW.content AND
       NEW.body_uri IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.message_update
    BEFORE UPDATE
    ON email.message
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       !(NEW.mimetype <=> OLD.mimetype AND
         NEW.subject <=> OLD.subject AND
         NEW.snippet <=> OLD.snippet AND
         NEW.content <=> OLD.content) AND
       NEW.body_uri <=> OLD.body_uri AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.mimetype <=> OLD.mimetype AND
           NEW.subject <=> OLD.subject AND
           NEW.snippet <=> OLD.snippet AND
           NEW.content <=> OLD.content AND
           NEW.body_uri <=> OLD.body_uri AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.email_create
    BEFORE INSERT
    ON email.email
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.parent_id <=> NEW.parent_id AND
       NEW.thread_id IS NOT NULL AND
       NEW.fwd <=> NEW.fwd AND
       NEW.tags <=> NEW.tags AND
       NEW.message_id IS NOT NULL AND
       NEW.sent_at <=> NEW.sent_at AND
       NEW.received_at <=> NEW.received_at AND
       NEW.snoozed_at <=> NEW.snoozed_at AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.email_update
    BEFORE UPDATE
    ON email.email
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.parent_id <=> OLD.parent_id AND
       NEW.thread_id <=> OLD.thread_id AND
       NEW.fwd <=> OLD.fwd AND
       !(NEW.tags <=> OLD.tags AND
         (OLD.sent_at IS NULL AND NEW.sent_at <=> OLD.sent_at) AND
         NEW.snoozed_at <=> OLD.snoozed_at) AND
       NEW.received_at <=> OLD.received_at AND
       NEW.message_id <=> OLD.message_id AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.parent_id <=> OLD.parent_id AND
           NEW.thread_id <=> OLD.thread_id AND
           NEW.fwd <=> OLD.fwd AND
           NEW.tags <=> OLD.tags AND
           NEW.message_id <=> OLD.message_id AND
           NEW.sent_at <=> OLD.sent_at AND
           NEW.received_at <=> OLD.received_at AND
           NEW.snoozed_at <=> OLD.snoozed_at AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.recipient_create
    BEFORE INSERT
    ON email.recipient
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.email_address IS NOT NULL AND
       NEW.display_name <=> NEW.display_name AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.recipient_update
    BEFORE UPDATE
    ON email.recipient
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       !(NEW.email_address <=> OLD.email_address AND
         NEW.display_name <=> OLD.display_name) AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.email_address <=> OLD.email_address AND
           NEW.display_name <=> OLD.display_name AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.label_create
    BEFORE INSERT
    ON email.label
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.type IS NOT NULL AND
       NEW.name IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.label_update
    BEFORE UPDATE
    ON email.label
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.type <=> OLD.type AND
       !(NEW.name <=> OLD.name) AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.type <=> OLD.type AND
           NEW.name <=> OLD.name AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.filter_create
    BEFORE INSERT
    ON email.filter
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.name IS NOT NULL AND
       NEW.criteria <=> NEW.criteria AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.filter_update
    BEFORE UPDATE
    ON email.filter
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       !(NEW.name <=> OLD.name AND
         NEW.criteria <=> OLD.criteria) AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND OLD.deleted = 0 AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.name <=> OLD.name AND
           NEW.criteria <=> OLD.criteria AND
           NEW.timeline_id <=> OLD.timeline_id AND
           NEW.history_id <=> OLD.history_id AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.email_attachment_create
    BEFORE INSERT
    ON email.email_attachment
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.email_id IS NOT NULL AND
       NEW.attachment_id IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.email_attachment_update
    BEFORE UPDATE
    ON email.email_attachment
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.email_id <=> OLD.email_id AND
       NEW.attachment_id <=> OLD.attachment_id AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted != OLD.deleted AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.email_recipient_create
    BEFORE INSERT
    ON email.email_recipient
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.email_id IS NOT NULL AND
       NEW.recipient_id IS NOT NULL AND
       NEW.type IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.email_recipient_update
    BEFORE UPDATE
    ON email.email_recipient
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.email_id <=> OLD.email_id AND
       NEW.recipient_id <=> OLD.recipient_id AND
       NEW.type <=> OLD.type AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted != OLD.deleted AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.email_label_create
    BEFORE INSERT
    ON email.email_label
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.email_id IS NOT NULL AND
       NEW.label_id IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.email_label_update
    BEFORE UPDATE
    ON email.email_label
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.email_id <=> OLD.email_id AND
       NEW.label_id <=> OLD.label_id AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted != OLD.deleted AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.filter_label_create
    BEFORE INSERT
    ON email.filter_label
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.filter_id IS NOT NULL AND
       NEW.label_id IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.filter_label_update
    BEFORE UPDATE
    ON email.filter_label
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.filter_id <=> OLD.filter_id AND
       NEW.label_id <=> OLD.label_id AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted != OLD.deleted AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;

CREATE TRIGGER email.filter_recipient_create
    BEFORE INSERT
    ON email.filter_recipient
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.filter_id IS NOT NULL AND
       NEW.recipient_id IS NOT NULL AND
       NEW.type IS NOT NULL AND
       NEW.timeline_id IS NULL AND
       NEW.history_id IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline_id = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET new.deleted = 0;
        SET NEW.created_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot insert';
    END IF;
END;

CREATE TRIGGER email.filter_recipient_update
    BEFORE UPDATE
    ON email.filter_recipient
    FOR EACH ROW
BEGIN
    DECLARE hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       NEW.filter_id <=> OLD.filter_id AND
       NEW.recipient_id <=> OLD.recipient_id AND
       NEW.type <=> OLD.type AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted != OLD.deleted AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history_id = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;
