--the fastest
--EXPLAIN QUERY PLAN
SELECT DISTINCT m.id,
       m.owner,
       (SELECT json_group_array(json_object('id', cast(lbl.label_id AS INTEGER), 'name', lbl.label))
        FROM fts_message_label AS lbl
        WHERE cast(m.id AS BLOB) = cast(lbl.message_id AS BLOB)
        --AND lbl.owner = m.owner
        --AND lbl.owner = 'john.doe@foo.org'
           ) AS labels,
       subject,
       snippet,
       --mimetype,
       --body_uri,
       "from",
       "to",
       tags--,
       --timeline_id,
       -- convert Integer(4) (treating it as Unix-Time)
       -- to YYYY-MM-DD HH:MM:SS
       --DateTime(timestamp, 'unixepoch') AS timestamp
FROM message m INNER JOIN fts_message_label flbl
                          ON m.id = flbl.message_id --AND
                             --flbl.owner = 'john.doe@foo.org'
WHERE m.owner = 'john.doe@foo.org' AND
    (cast(flbl.label_id AS BLOB) = cast(3143 AS BLOB) OR cast(flbl.label_id AS BLOB) = cast(3133 AS BLOB)) AND
        m.last_stmt < 2
ORDER BY m.timeline_id DESC
--LIMIT 2
;

--fast, labels ordered by label name
--EXPLAIN QUERY PLAN
SELECT DISTINCT m.id,
                m.owner,
                (SELECT json_group_array(json_object('id', cast(lbl0.label_id AS INTEGER), 'name', lbl0.label))
                 FROM (SELECT lbl.label_id, lbl.label FROM fts_message_label AS lbl
                       WHERE cast(m.id AS BLOB) = cast(lbl.message_id AS BLOB)
                             --AND lbl.owner = m.owner
                             --AND lbl.owner = 'john.doe@foo.org'
                       ORDER BY lbl.label
                      ) AS lbl0) AS labels,
                subject,
                snippet
FROM message m INNER JOIN fts_message_label flbl
                          ON m.id = flbl.message_id --AND
                             --flbl.owner = 'john.doe@foo.org'
WHERE m.owner = 'john.doe@foo.org' AND
    (cast(flbl.label_id AS BLOB) = cast(3143 AS BLOB) OR cast(flbl.label_id AS BLOB) = cast(3133 AS BLOB)) AND
        m.last_stmt < 2
ORDER BY m.timeline_id DESC
--LIMIT 2
;

--labels ordered by label name
--EXPLAIN QUERY PLAN
SELECT DISTINCT m.id,
                m.owner,
                (SELECT json_group_array(json_object('id', cast(lbl0.label_id AS INTEGER), 'name', lbl0.label))
                 FROM (SELECT lbl.label_id, lbl.label FROM fts_message_label AS lbl
                 WHERE cast(m.id AS BLOB) = cast(lbl.message_id AS BLOB)
                    --AND lbl.owner = m.owner
                    --AND lbl.owner = 'john.doe@foo.org'
                     ORDER BY lbl.label
                ) AS lbl0) AS labels,
                subject,
                snippet,
                --mimetype,
                --body_uri,
                "from",
                "to",
                tags--,
                --timeline_id,
                -- convert Integer(4) (treating it as Unix-Time)
                -- to YYYY-MM-DD HH:MM:SS
                --DateTime(timestamp, 'unixepoch') AS timestamp
FROM message m,
     json_each(m.label_ids) lbl2
         INNER JOIN label ON
                 cast(label.id AS BLOB) = cast(value AS BLOB) AND
                 label.owner = 'john.doe@foo.org' AND
             --label.owner = m.owner AND
             --(label.id = cast(3143 AS BLOB) OR label.id = cast(3133 AS BLOB)) AND
                 label.last_stmt < 2
WHERE m.owner = 'john.doe@foo.org' AND
    (cast(lbl2.value AS BLOB) = cast(3143 AS BLOB) OR cast(lbl2.value AS BLOB) = cast(3133 AS BLOB)) AND
  --(m.label_ids LIKE '%3143%' OR m.label_ids LIKE '%3133%') AND
        m.last_stmt < 2
ORDER BY m.timeline_id DESC
--LIMIT 2
;

--fast, labels ordered by position in label_ids
--EXPLAIN QUERY PLAN
SELECT DISTINCT m.id,
                m.owner,
                (SELECT json_group_array(json_object('id', cast(value AS INTEGER), 'name', label.name))
                 FROM json_each(m.label_ids)
                          CROSS JOIN label ON --LEFT JOIN and CROSS JOIN preserves order by position in label_ids
                             cast(label.id AS BLOB) = cast(value AS BLOB) AND
                         --label.owner = m.owner AND
                         --label.owner = 'john.doe@foo.org' AND
                             label.last_stmt < 2
                ) AS labels,
                subject,
                snippet,
                --mimetype,
                --body_uri,
                "from",
                "to",
                tags--,
                --timeline_id,
                -- convert Integer(4) (treating it as Unix-Time)
                -- to YYYY-MM-DD HH:MM:SS
                --DateTime(timestamp, 'unixepoch') AS timestamp
FROM message m INNER JOIN fts_message_label flbl
                          ON m.id = flbl.message_id --AND
                             --flbl.owner = 'john.doe@foo.org'
WHERE m.owner = 'john.doe@foo.org' AND
    (cast(flbl.label_id AS BLOB) = cast(3143 AS BLOB) OR cast(flbl.label_id AS BLOB) = cast(3133 AS BLOB)) AND
        m.last_stmt < 2
ORDER BY m.timeline_id DESC
--LIMIT 2
;

--labels ordered by position in label_ids
--EXPLAIN QUERY PLAN
SELECT DISTINCT m.id,
       m.owner,
       (SELECT json_group_array(json_object('id', cast(value AS INTEGER), 'name', label.name))
        FROM json_each(m.label_ids)
                 CROSS JOIN label ON --LEFT JOIN and CROSS JOIN preserves order by position in label_ids
            cast(label.id AS BLOB) = cast(value AS BLOB) AND
            --label.owner = m.owner AND
            --label.owner = 'john.doe@foo.org' AND
            label.last_stmt < 2
       ) AS labels,
       subject,
       snippet,
       --mimetype,
       --body_uri,
       "from",
       "to",
       tags--,
       --timeline_id,
       -- convert Integer(4) (treating it as Unix-Time)
       -- to YYYY-MM-DD HH:MM:SS
       --DateTime(timestamp, 'unixepoch') AS timestamp
FROM message m,
     json_each(m.label_ids) lbl2
         INNER JOIN label ON
             cast(label.id AS BLOB) = cast(value AS BLOB) AND
             label.owner = 'john.doe@foo.org' AND
             --label.owner = m.owner AND
             --(label.id = cast(3143 AS BLOB) OR label.id = cast(3133 AS BLOB)) AND
            label.last_stmt < 2
WHERE m.owner = 'john.doe@foo.org' AND
    (cast(lbl2.value AS BLOB) = cast(3143 AS BLOB) OR cast(lbl2.value AS BLOB) = cast(3133 AS BLOB)) AND
    --(m.label_ids LIKE '%3143%' OR m.label_ids LIKE '%3133%') AND
    m.last_stmt < 2
ORDER BY m.timeline_id DESC
--LIMIT 2
;

--labels ordered by position in label_ids
--EXPLAIN QUERY PLAN
SELECT DISTINCT f.id,
                f.owner,
                (SELECT json_group_array(json_object('id', cast(value AS INTEGER), 'name', label.name))
                 FROM json_each(f.label_ids)
                          CROSS JOIN label ON --LEFT JOIN and CROSS JOIN preserves order by position in label_ids
                             cast(label.id AS BLOB) = cast(value AS BLOB) AND
                         --label.owner = m.owner AND
                         --label.owner = 'john.doe@foo.org' AND
                             label.last_stmt < 2
                ) AS labels,
                f.name,
                f.criteria,
                f.recipients--,
                --timeline_id,
                -- convert Integer(4) (treating it as Unix-Time)
                -- to YYYY-MM-DD HH:MM:SS
                --DateTime(timestamp, 'unixepoch') AS timestamp
FROM filter f,
     json_each(f.label_ids) lbl2
         INNER JOIN label ON
                 cast(label.id AS BLOB) = cast(value AS BLOB) AND
                 label.owner = 'john.doe@foo.org' AND
             --label.owner = m.owner AND
             --(label.id = cast(3143 AS BLOB) OR label.id = cast(3133 AS BLOB)) AND
                 label.last_stmt < 2
WHERE f.owner = 'john.doe@foo.org' AND
    (cast(lbl2.value AS BLOB) = cast(3143 AS BLOB) OR cast(lbl2.value AS BLOB) = cast(3133 AS BLOB)) AND
  --(m.label_ids LIKE '%3143%' OR m.label_ids LIKE '%3133%') AND
        f.last_stmt < 2
ORDER BY f.timeline_id DESC
--LIMIT 2
;

