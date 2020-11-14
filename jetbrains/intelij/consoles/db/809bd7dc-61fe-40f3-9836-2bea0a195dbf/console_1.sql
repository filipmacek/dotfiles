CREATE TABLE users (
                       ID BIGSERIAL PRIMARY KEY,
                       USER_NAME VARCHAR NOT NULL UNIQUE,
                       FIRST_NAME VARCHAR NOT NULL,
                       LAST_NAME VARCHAR NOT NULL,
                       EMAIL VARCHAR NOT NULL,
                       PASSWORD VARCHAR NOT NULL
                         VARCHAR NOT NULL DEFAULT 'Customer'
)
