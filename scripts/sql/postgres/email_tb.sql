DROP SCHEMA email CASCADE;
CREATE SCHEMA email;

CREATE TABLE email.message
(
    id         uuid PRIMARY KEY NOT NULL,
    subject    character varying(255),
    snippet    character varying(255),
    mimetype   character varying(255),
    body_uri   character varying(4096),
    created_at timestamptz DEFAULT now(),
    updated_at timestamptz
);

CREATE FUNCTION email.message_updated() RETURNS trigger
    LANGUAGE plpgsql
    SECURITY DEFINER
AS
$$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$;

CREATE TRIGGER message_updated
    BEFORE UPDATE
    ON email.message
    FOR EACH ROW
EXECUTE PROCEDURE email.message_updated();