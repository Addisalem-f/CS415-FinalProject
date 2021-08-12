CREATE TABLE `comments` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `date` DATETIME,
    `text` LONGTEXT,
    `author_fk` INTEGER,
    `book_fk` INTEGER,
    `__v` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `comments_author` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `username` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `comments_book` (
    `ID` INTEGER NOT NULL,
    `id` VARBINARY(12),
    `title` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `comments`
ADD CONSTRAINT `s3t_comments_comments_author_0` FOREIGN KEY (`author_fk`) REFERENCES `comments_author`(`ID`),
ADD CONSTRAINT `s3t_comments_comments_book_0` FOREIGN KEY (`book_fk`) REFERENCES `comments_book`(`ID`);



-- { _id: null }
INSERT INTO `comments_author` (`ID`, `id`, `username`)
    VALUES
        (0, x'6113611FB39AE82A60DF88F4', 'myAdmin');

INSERT INTO `comments_book` (`ID`, `id`, `title`)
    VALUES
        (0, x'61154DD90ABE4B5DB04A697E', 'React');

INSERT INTO `comments` (`ID`, `_id`, `date`, `text`, `author_fk`, `book_fk`, `__v`)
    VALUES
        (0, x'61154F1C0ABE4B5DB04A697F', '2021-08-12 16:31:47.240000', 'this looks great', 0, 0, 0);


-- { _id: null }
INSERT INTO `comments_author` (`ID`, `id`, `username`)
    VALUES
        (1, x'61136FDC71268D2970C1E693', 'addisal');

INSERT INTO `comments_book` (`ID`, `id`, `title`)
    VALUES
        (1, x'6113622BB39AE82A60DF88F5', 'AngularJS');

INSERT INTO `comments` (`ID`, `_id`, `date`, `text`, `author_fk`, `book_fk`, `__v`)
    VALUES
        (1, x'611553D40ABE4B5DB04A6985', '2021-08-12 16:31:47.240000', 'hgjgjghjg', 1, 1, 0);

