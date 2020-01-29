-- convert Unix-Times to DateTimes so not every single query needs to do so
CREATE VIEW IF NOT EXISTS message_vw AS
SELECT id,
       subject,
       snippet,
       mimetype,
       body_uri,
       -- convert Integer(4) (treating it as Unix-Time)
       -- to YYYY-MM-DD HH:MM:SS
       DateTime(timestamp, 'unixepoch') AS timestamp
FROM message;