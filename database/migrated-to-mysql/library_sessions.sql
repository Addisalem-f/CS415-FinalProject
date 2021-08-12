CREATE TABLE `sessions` (
    `ID` INTEGER NOT NULL,
    `_id` LONGTEXT,
    `expires` DATETIME,
    `session_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `sessions_session` (
    `ID` INTEGER NOT NULL,
    `cookie_fk` INTEGER,
    `flash_fk` INTEGER,
    `passport_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `sessions_session_cookie` (
    `ID` INTEGER NOT NULL,
    `originalMaxAge` LONGTEXT,
    `expires` LONGTEXT,
    `secure` LONGTEXT,
    `httpOnly` BIT,
    `domain` LONGTEXT,
    `path` LONGTEXT,
    `sameSite` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `sessions_session_flash` (
    `ID` INTEGER NOT NULL,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `sessions_session_passport` (
    `ID` INTEGER NOT NULL,
    `user` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `sessions`
ADD CONSTRAINT `s3t_sessions_sessions_session_0` FOREIGN KEY (`session_fk`) REFERENCES `sessions_session`(`ID`);


ALTER TABLE `sessions_session`
ADD CONSTRAINT `s3t_sessions_session_sessions_session_cookie_0` FOREIGN KEY (`cookie_fk`) REFERENCES `sessions_session_cookie`(`ID`),
ADD CONSTRAINT `s3t_sessions_session_sessions_session_flash_0` FOREIGN KEY (`flash_fk`) REFERENCES `sessions_session_flash`(`ID`),
ADD CONSTRAINT `s3t_sessions_session_sessions_session_passport_0` FOREIGN KEY (`passport_fk`) REFERENCES `sessions_session_passport`(`ID`);



-- { _id: null }
INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (0);

INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (0, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (0, 0, 0, NULL);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (0, 'IhdgwQSHTxIUUKkrASJ9Hq8sLUYF-ge3', '2021-08-25 02:50:19.238000', 0);


-- { _id: null }
INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (1, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session_passport` (`ID`, `user`)
    VALUES
        (0, 'myAdmin');

INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (1);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (1, 1, 1, 0);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (1, 'BEI9EkCU4Bp9r13e-mMAhKUJuC1C0zBy', '2021-08-25 16:05:24.233000', 1);


-- { _id: null }
INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (2, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session_passport` (`ID`, `user`)
    VALUES
        (1, 'myAdmin');

INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (2);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (2, 2, 2, 1);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (2, 'IoWrlVjI1XSaPnNG_AcnYIP8_xzOBR82', '2021-08-25 16:08:17.014000', 2);


-- { _id: null }
INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (3, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session_passport` (`ID`, `user`)
    VALUES
        (2, 'myAdmin');

INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (3);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (3, 3, 3, 2);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (3, 'SvNZ4jA5qfxygw7RRW3NoVPC0blKv4Qv', '2021-08-25 16:11:42.506000', 3);


-- { _id: null }
INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (4);

INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (4, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (4, 4, 4, NULL);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (4, '6tEZCfKMN2uqJZ9y6RUJtm5W6GIhHOLj', '2021-08-25 16:47:40.874000', 4);


-- { _id: null }
INSERT INTO `sessions_session_cookie` (`ID`, `originalMaxAge`, `expires`, `secure`, `httpOnly`, `domain`, `path`, `sameSite`)
    VALUES
        (5, NULL, NULL, NULL, TRUE, NULL, '/', NULL);

INSERT INTO `sessions_session_passport` (`ID`, `user`)
    VALUES
        (3, 'chimdi');

INSERT INTO `sessions_session_flash` (`ID`)
    VALUES
        (5);

INSERT INTO `sessions_session` (`ID`, `cookie_fk`, `flash_fk`, `passport_fk`)
    VALUES
        (5, 5, 5, 3);

INSERT INTO `sessions` (`ID`, `_id`, `expires`, `session_fk`)
    VALUES
        (5, 'GXakHtIfyjgmXIW9N9Bznfpl9mw7CjnW', '2021-08-26 19:34:57.550000', 5);

