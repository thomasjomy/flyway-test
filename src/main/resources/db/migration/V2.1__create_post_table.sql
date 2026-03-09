CREATE TABLE POST
(
    id            BIGINT                        NOT NULL AUTO_INCREMENT,
    title         VARCHAR(200)                  NOT NULL,
    `description` LONGTEXT                      NULL,
    status        VARCHAR(10) DEFAULT 'PENDING' NOT NULL,
    author_id     BIGINT                        NOT NULL,
    created_at    datetime                      NULL,
    updated_at    datetime                      NULL,
    CONSTRAINT pk_post PRIMARY KEY (id)
);

ALTER TABLE POST ADD CONSTRAINT uc_post_title UNIQUE (title);

ALTER TABLE POST
    ADD CONSTRAINT FK_POST_ON_AUTHOR FOREIGN KEY (author_id) REFERENCES AUTHOR (id);