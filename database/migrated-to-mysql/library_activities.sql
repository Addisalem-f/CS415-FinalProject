CREATE TABLE `activities` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `entryTime` DATETIME,
    `info_fk` INTEGER,
    `category` LONGTEXT,
    `time_fk` INTEGER,
    `user_id_fk` INTEGER,
    `__v` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `activities_info` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `title` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `activities_time` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `issueDate` DATETIME,
    `returnDate` DATETIME,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `activities_user_id` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `username` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `activities`
ADD CONSTRAINT `s3t_activities_activities_info_0` FOREIGN KEY (`info_fk`) REFERENCES `activities_info`(`ID`),
ADD CONSTRAINT `s3t_activities_activities_time_0` FOREIGN KEY (`time_fk`) REFERENCES `activities_time`(`ID`),
ADD CONSTRAINT `s3t_activities_activities_user_id_0` FOREIGN KEY (`user_id_fk`) REFERENCES `activities_user_id`(`ID`);



-- { _id: null }
INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (0, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (0, x'61136DAF71268D2970C1E68F', '2021-08-11 06:09:48.397000', NULL, 'Upload Photo', NULL, 0, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (0, x'61136E5071268D2970C1E690', '2021-08-11 06:09:48.402000', '2021-08-18 06:09:48.402000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (1, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (0, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (1, x'61136E5071268D2970C1E692', '2021-08-11 06:09:48.397000', 0, 'Issue', 0, 1, 0);


-- { _id: null }
INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (2, x'61136FDC71268D2970C1E693', 'addisal');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (2, x'6113722271268D2970C1E694', '2021-08-11 06:09:48.397000', NULL, 'Upload Photo', NULL, 2, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (1, x'61136E5071268D2970C1E690', '2021-08-11 06:09:48.402000', '2021-08-18 06:09:48.402000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (3, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (1, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (3, x'61145E2193D95D36103A6952', '2021-08-11 23:28:15.734000', 1, 'Return', 1, 3, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (2, x'6115439DDE904B3530F1960E', '2021-08-12 15:47:59.645000', '2021-08-19 15:47:59.645000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (4, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (2, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (4, x'6115439DDE904B3530F19610', '2021-08-12 15:47:59.623000', 2, 'Issue', 2, 4, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (3, x'6115439DDE904B3530F1960E', '2021-08-12 15:47:59.645000', '2021-08-26 15:47:59.645000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (5, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (3, x'6115439DDE904B3530F1960E', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (5, x'61154AF8DE904B3530F19611', '2021-08-12 15:47:59.623000', 3, 'Renew', 3, 5, 0);


-- { _id: null }
INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (6, x'6113611FB39AE82A60DF88F4', 'myAdmin');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (4, x'61154DD90ABE4B5DB04A697E', 'React');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (6, x'61154F1C0ABE4B5DB04A6980', '2021-08-12 16:31:47.205000', 4, 'Comment', NULL, 6, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (4, x'61154FA30ABE4B5DB04A6981', '2021-08-12 16:31:47.235000', '2021-08-19 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (7, x'61136FDC71268D2970C1E693', 'addisal');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (5, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (7, x'61154FA30ABE4B5DB04A6983', '2021-08-12 16:31:47.205000', 5, 'Issue', 4, 7, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (5, x'61154FA30ABE4B5DB04A6981', '2021-08-12 16:31:47.235000', '2021-08-19 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (8, x'61136FDC71268D2970C1E693', 'addisal');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (6, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (8, x'61154FAF0ABE4B5DB04A6984', '2021-08-12 16:31:47.205000', 6, 'Return', 5, 8, 0);


-- { _id: null }
INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (9, x'61136FDC71268D2970C1E693', 'addisal');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (7, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (9, x'611553D40ABE4B5DB04A6986', '2021-08-12 16:31:47.205000', 7, 'Comment', NULL, 9, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (6, x'6115552F0ABE4B5DB04A6989', '2021-08-12 16:31:47.235000', '2021-08-19 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (10, x'611554F00ABE4B5DB04A6988', 'chimdi');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (8, x'61137B898DEEDE351C9418FB', 'MongoDB');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (10, x'6115552F0ABE4B5DB04A698B', '2021-08-12 16:31:47.205000', 8, 'Issue', 6, 10, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (7, x'6115552F0ABE4B5DB04A6989', '2021-08-12 16:31:47.235000', '2021-08-19 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (11, x'611554F00ABE4B5DB04A6988', 'chimdi');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (9, x'61137B898DEEDE351C9418FB', 'MongoDB');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (11, x'6115554D0ABE4B5DB04A698C', '2021-08-12 16:31:47.205000', 9, 'Return', 7, 11, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (8, x'611555610ABE4B5DB04A698D', '2021-08-12 16:31:47.235000', '2021-08-19 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (12, x'611554F00ABE4B5DB04A6988', 'chimdi');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (10, x'6115434DDE904B3530F1960D', 'Data Science');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (12, x'611555610ABE4B5DB04A698F', '2021-08-12 16:31:47.205000', 10, 'Issue', 8, 12, 0);


-- { _id: null }
INSERT INTO `activities_time` (`ID`, `id`, `issueDate`, `returnDate`)
    VALUES
        (9, x'611555610ABE4B5DB04A698D', '2021-08-12 16:31:47.235000', '2021-08-26 16:31:47.235000');

INSERT INTO `activities_user_id` (`ID`, `id`, `username`)
    VALUES
        (13, x'611554F00ABE4B5DB04A6988', 'chimdi');

INSERT INTO `activities_info` (`ID`, `id`, `title`)
    VALUES
        (11, x'611555610ABE4B5DB04A698D', 'Data Science');

INSERT INTO `activities` (`ID`, `_id`, `entryTime`, `info_fk`, `category`, `time_fk`, `user_id_fk`, `__v`)
    VALUES
        (13, x'611555670ABE4B5DB04A6990', '2021-08-12 16:31:47.205000', 11, 'Renew', 9, 13, 0);

