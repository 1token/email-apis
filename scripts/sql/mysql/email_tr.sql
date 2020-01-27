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
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id <=> OLD.id AND
       NEW.owner <=> OLD.owner AND
       !(NEW.mimetype <=> OLD.mimetype AND
         NEW.filename <=> OLD.filename AND
         NEW.data_uri <=> OLD.data_uri) AND
       NEW.timeline_id <=> OLD.timeline_id AND
       NEW.history_id <=> OLD.history_id AND
       NEW.deleted <=> OLD.deleted AND
       OLD.deleted <=> false AND
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
           NEW.filename <=> OLD.filename AND
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




CREATE TRIGGER email.email_create
    BEFORE INSERT
    ON email.email
    FOR EACH ROW
BEGIN
    DECLARE tid, hid bigint DEFAULT 0;
    IF NEW.id IS NOT NULL AND
       NEW.owner IS NOT NULL AND
       NEW.thread_id IS NOT NULL AND
       NEW.filename IS NOT NULL AND
       NEW.mimetype IS NOT NULL AND
       NEW.data_uri IS NOT NULL AND
       NEW.timeline IS NULL AND
       NEW.history IS NULL AND
       NEW.deleted IS NULL AND
       NEW.created_at IS NULL AND
       NEW.updated_at IS NULL AND
       NEW.un_deleted_at IS NULL THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        SET NEW.timeline = tid;
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history = hid;
        SET new.deleted = false;
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
       !(NEW.filename <=> OLD.filename AND
         NEW.mimetype <=> OLD.mimetype AND
         NEW.data_uri <=> OLD.data_uri) AND
       NEW.timeline <=> OLD.timeline AND
       NEW.history <=> OLD.history AND
       NEW.deleted <=> OLD.deleted AND
       OLD.deleted <=> false AND
       NEW.created_at <=> OLD.created_at AND
       NEW.updated_at <=> OLD.updated_at AND
       NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.timeline_seq SET num = LAST_INSERT_ID(num + 1);
        SET tid = LAST_INSERT_ID();
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.timeline = tid;
        SET NEW.updated_at = NOW();
    ELSEIF NEW.id <=> OLD.id AND
           NEW.owner <=> OLD.owner AND
           NEW.parent_id <=> OLD.parent_id AND
           NEW.thread_id <=> OLD.thread_id AND
           NEW.filename <=> OLD.filename AND
           NEW.mimetype <=> OLD.mimetype AND
           NEW.data_uri <=> OLD.data_uri AND
           NEW.timeline <=> OLD.timeline AND
           NEW.history <=> OLD.history AND
           NEW.deleted != OLD.deleted AND
           NEW.created_at <=> OLD.created_at AND
           NEW.updated_at <=> OLD.updated_at AND
           NEW.un_deleted_at <=> OLD.un_deleted_at THEN
        UPDATE email.history_seq SET num = LAST_INSERT_ID(num + 1);
        SET hid = LAST_INSERT_ID();
        SET NEW.history = hid;
        SET NEW.un_deleted_at = NOW();
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot update';
    END IF;
END;