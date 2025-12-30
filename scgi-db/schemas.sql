/* Database */
CREATE DATABASE IF NOT EXISTS dbScgi
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

/* Database selection */
USE dbScgi;

/* SQL Mode Config */
SET sql_mode = 'TRADITIONAL';

/* Table for Users */
CREATE TABLE IF NOT EXISTS tbUsers (
    user_id_pk      BIGINT UNSIGNED AUTO_INCREMENT,
    user_fullname   VARCHAR(255)    NOT NULL,
    user_email      VARCHAR(254)    NOT NULL UNIQUE,
    user_doc        VARCHAR(14)     NOT NULL UNIQUE,
    PRIMARY KEY (user_id_pk),
    CHECK (CHAR_LENGTH(user_fullname) > 0)
    CHECK (user_email REGEXP '^[a-zA-Z_.]+@[a-zA-Z_.]+$'),
    CHECK (user_doc RLIKE '^[0-9]{11}|[0-9]{14}$'),
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

/* Table for Transactions */
CREATE TABLE IF NOT EXISTS tbTransactions (
    transaction_id_pk       BIGINT UNSIGNED AUTO_INCREMENT,
    transaction_user_id_fk  BIGINT UNSIGNED NOT NULL,
    transaction_value       DECIMAL(10, 2)  NOT NULL,
    transaction_description VARCHAR(512),
    transaction_category    ENUM('INC_SALARY', 'INC_INVESTMENT', 'INC_FREELANCE', 'INC_DONATION', 
                            'EXP_FOOD', 'EXP_TRANSPORT', 'EXP_ENTERTAINMENT', 'EXP_INVOICE', 
                            'OTHER')        NOT NULL,
    PRIMARY KEY (transaction_id_pk),
    FOREIGN KEY (transaction_user_id_fk) REFERENCES tbUsers(user_id_pk)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

/* Table for Goals */
CREATE TABLE IF NOT EXISTS tbGoals (
    goal_id_pk          BIGINT UNSIGNED     AUTO_INCREMENT,
    goal_user_id_fk     BIGINT UNSIGNED     NOT NULL,
    goal_value          DECIMAL(10, 2)      NOT NULL,
    goal_title          VARCHAR(276)        NOT NULL,
    goal_description    VARCHAR(512),
    goal_status         ENUM('OPEN', 
                        'CLOSED'),          DEFAULT 'OPEN',
    goal_limit_date     DATE                NOT NULL
    PRIMARY KEY (goal_id_pk),
    FOREIGN KEY (goal_user_id_fk) REFERENCES tbUsers(user_id_pk)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

/* Destroy Tables and Database */
-- DROP TABLE IF EXISTS tbUsers;
-- DROP TABLE IF EXISTS tbTransactions;
-- DROP TABLE IF EXISTS tbGoals;
-- DROP DATABASE IF EXISTS dbScgi;
