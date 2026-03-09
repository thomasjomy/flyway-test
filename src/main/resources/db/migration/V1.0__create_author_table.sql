CREATE TABLE AUTHOR
(
    id         BIGINT            NOT NULL AUTO_INCREMENT,
    name       VARCHAR(100)      NOT NULL,
    password   VARCHAR(100)      NOT NULL,
    enabled    TINYINT DEFAULT 0 NOT NULL,
    created_at datetime          NULL,
    updated_at datetime          NULL,
    CONSTRAINT pk_author PRIMARY KEY (id)
);

ALTER TABLE AUTHOR ADD CONSTRAINT uc_author_name UNIQUE (name);