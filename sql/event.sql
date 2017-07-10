CREATE TABLE EVENT (
    EVENTID CHAR(36),
    TYPE CHAR(30),
    AGGREGID CHAR(36),
    ENTITYID CHAR(36),
    DATA JSONB,
    USERID CHAR(36),
    STORED TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    NR DECIMAL(9),
    PRIMARY KEY (EVENTID)
)

CREATE INDEX EVENT1 ON EVENT (AGGREGID, STORED, NR)