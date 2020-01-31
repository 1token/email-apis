DROP VIEW IF EXISTS message_vw;

-- convert Unix-Times to DateTimes so not every single query needs to do so
CREATE VIEW IF NOT EXISTS message_vw AS
SELECT m.id,
       m.owner,
       --(SELECT json_group_array(json_object('id', cast(l.id AS INTEGER), 'name', l.name))
       -- FROM label AS l
       --WHERE l.id = cast(3134 AS BLOB) OR l.id = cast(3143 AS BLOB)) AS labels,
       (SELECT json_group_array(json_object('id', cast(l2.value AS INTEGER), 'name', lab.name)) FROM message m2, json_each(m2.label_ids) l2
       LEFT JOIN label lab ON cast(l2.value AS BLOB) = cast(lab.id AS BLOB)
       WHERE m2.id = m.id) AS labels,
       subject,
       snippet,
       --mimetype,
       --body_uri,
       "from",
       "to"--,
       --timeline_id,
       -- convert Integer(4) (treating it as Unix-Time)
       -- to YYYY-MM-DD HH:MM:SS
       --DateTime(timestamp, 'unixepoch') AS timestamp
FROM message m
--WHERE m.owner = 'john.doe@foo.org'
ORDER BY timeline_id
;

/*
SELECT m.id, l.value, lab.name FROM message m, json_each(m.label_ids) l
LEFT JOIN label lab ON cast(l.value AS BLOB) = cast(lab.id AS BLOB)
WHERE m.id = cast(1001 AS BLOB);

SELECT json_array(label_ids) FROM message;*/
