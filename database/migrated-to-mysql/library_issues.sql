CREATE TABLE `issues` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `book_info_fk` INTEGER,
    `user_id_fk` INTEGER,
    `__v` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `issues_book_info` (
    `ID` INTEGER NOT NULL,
    `issueDate` DATETIME,
    `returnDate` DATETIME,
    `isRenewed` BIT,
    `id` VARBINARY(12),
    `title` LONGTEXT,
    `author` LONGTEXT,
    `ISBN` LONGTEXT,
    `category` LONGTEXT,
    `stock` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `issues_user_id` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `username` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `issues`
ADD CONSTRAINT `s3t_issues_issues_book_info_0` FOREIGN KEY (`book_info_fk`) REFERENCES `issues_book_info`(`ID`),
ADD CONSTRAINT `s3t_issues_issues_user_id_0` FOREIGN KEY (`user_id_fk`) REFERENCES `issues_user_id`(`ID`);



-- { _id: null }
INSERT INTO `issues_book_info` (`ID`, `issueDate`, `returnDate`, `isRenewed`, `id`, `title`, `author`, `ISBN`, `category`, `stock`)
    VALUES
        (0, '2021-08-12 15:47:59.645000', '2021-08-26 15:47:59.645000', TRUE, x'6113622BB39AE82A60DF88F5', 'AngularJS', 'Shresta', '9374392u29', 'Technology', 2);

INSERT INTO `issues_user_id` (`ID`, `id`, `username`)
    VALUES
        (0, x'61136C2971268D2970C1E68E', 'seli');

INSERT INTO `issues` (`ID`, `_id`, `book_info_fk`, `user_id_fk`, `__v`)
    VALUES
        (0, x'6115439DDE904B3530F1960E', 0, 0, 0);


-- { _id: null }
INSERT INTO `issues_book_info` (`ID`, `issueDate`, `returnDate`, `isRenewed`, `id`, `title`, `author`, `ISBN`, `category`, `stock`)
    VALUES
        (1, '2021-08-12 16:31:47.235000', '2021-08-26 16:31:47.235000', TRUE, x'6115434DDE904B3530F1960D', 'Data Science', 'Andiamlek', '9374392u2955', 'Mathematics', 1);

INSERT INTO `issues_user_id` (`ID`, `id`, `username`)
    VALUES
        (1, x'611554F00ABE4B5DB04A6988', 'chimdi');

INSERT INTO `issues` (`ID`, `_id`, `book_info_fk`, `user_id_fk`, `__v`)
    VALUES
        (1, x'611555610ABE4B5DB04A698D', 1, 1, 0);

