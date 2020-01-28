CREATE TABLE json_tree(
                          key ANY,             -- key for current element relative to its parent
                          value ANY,           -- value for the current element
                          type TEXT,           -- 'object','array','string','integer', etc.
                          atom ANY,            -- value for primitive types, null for array & object
                          id INTEGER,          -- integer ID for this element
                          parent INTEGER,      -- integer ID for the parent of this element
                          fullkey TEXT,        -- full path describing the current element
                          path TEXT,           -- path to the container of the current row
                          json JSON HIDDEN,    -- 1st input parameter: the raw JSON
                          root TEXT HIDDEN     -- 2nd input parameter: the PATH at which to start
);