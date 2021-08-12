CREATE TABLE `books` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `title` LONGTEXT,
    `author` LONGTEXT,
    `ISBN` LONGTEXT,
    `category` LONGTEXT,
    `stock` INTEGER,
    `description` LONGTEXT,
    `__v` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `books_comments` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `ObjectId` VARBINARY(12),
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `books_comments`
ADD CONSTRAINT `s3t_books_comments_books_0` FOREIGN KEY (`parent_fk`) REFERENCES `books`(`ID`);



-- { _id: null }
INSERT INTO `books` (`ID`, `_id`, `title`, `author`, `ISBN`, `category`, `stock`, `description`, `__v`)
    VALUES
        (0, x'61137B898DEEDE351C9418FB', 'MongoDB', 'Obinna kalu', '48549848423', 'Technology', 1, '<p>&nbsp;</p>\r\n\r\n<p>It can achieve this through the use of JSON documents.<strong>MongoDB</strong>&nbsp;is also a cross platform DBMS, currently supporting Windows, Mac, Solaris, and various Linux distributions at the time of writing. A&nbsp;<strong>MongoDB</strong>&nbsp;database is different to a relational database in that,&nbsp;<strong>MongoDB</strong>&nbsp;uses a document-oriented model to store data.</p>\r\n', 0);


-- { _id: null }
INSERT INTO `books` (`ID`, `_id`, `title`, `author`, `ISBN`, `category`, `stock`, `description`, `__v`)
    VALUES
        (1, x'6115434DDE904B3530F1960D', 'Data Science', 'Andiamlek', '9374392u2955', 'Mathematics', 1, '<p>Data science is a &quot;concept to unify&nbsp;<a>statistics</a>,&nbsp;<a>data analysis</a>,&nbsp;<a>informatics</a>, and their related methods&quot; in order to &quot;understand and analyze actual phenomena&quot; with data.<a>[</a></p>\r\n', 0);


-- { _id: null }
INSERT INTO `books` (`ID`, `_id`, `title`, `author`, `ISBN`, `category`, `stock`, `description`, `__v`)
    VALUES
        (2, x'61154DD90ABE4B5DB04A697E', 'React', 'Assad', '9374392u295555', 'Technology', 5, '<p>respond or behave in a particular way in response to something.</p>\r\n', 1);

INSERT INTO `books_comments` (`ID`, `parent_fk`, `INDEX`, `ObjectId`)
    VALUES
        (0, 2, 0, x'61154F1C0ABE4B5DB04A697F');


-- { _id: null }
INSERT INTO `books` (`ID`, `_id`, `title`, `author`, `ISBN`, `category`, `stock`, `description`, `__v`)
    VALUES
        (3, x'611554B00ABE4B5DB04A6987', 'Ralational Databases', 'levi', '55421258425', 'Technology', 2, '<p>jhvbdfjhvbcjvbdxj</p>\r\n', 0);

