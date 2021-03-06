CREATE TABLE `users` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `joined` DATETIME,
    `image` LONGTEXT,
    `violationFlag` BIT,
    `fines` INTEGER,
    `isAdmin` BIT,
    `username` LONGTEXT,
    `email` LONGTEXT,
    `salt` LONGTEXT,
    `hash` LONGTEXT,
    `__v` INTEGER,
    `firstName` LONGTEXT,
    `lastName` LONGTEXT,
    `gender` LONGTEXT,
    `address` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `users_bookIssueInfo` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `Object_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `users_bookIssueInfo_Object` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `users_bookIssueInfo`
ADD CONSTRAINT `s3t_users_bookIssueInfo_users_0` FOREIGN KEY (`parent_fk`) REFERENCES `users`(`ID`),
ADD CONSTRAINT `s3t_users_bookIssueInfo_users_bookIssueInfo_Objec_0` FOREIGN KEY (`Object_fk`) REFERENCES `users_bookIssueInfo_Object`(`ID`);



-- { _id: null }
INSERT INTO `users` (`ID`, `_id`, `joined`, `image`, `violationFlag`, `fines`, `isAdmin`, `username`, `email`, `salt`, `hash`, `__v`, `firstName`, `lastName`, `gender`, `address`)
    VALUES
        (0, x'6113611FB39AE82A60DF88F4', '2021-08-11 05:19:59.149000', '', FALSE, 0, TRUE, 'myAdmin', 'addi@yahoo.com', 'd315dc69a0ed3d87bac146fb7c1848583c6ce41c0411e349ede597e5289007b9', 'f1f6ee57a8740b98715b0af74a70fa2dd52ba442edaf3e16034b05716657914579299ee7fa3d43edaf1b2e6a42de3a1e4a7ca8833635095b46aab9abbeea0514da41eac50c220858e436cf3f586d53e7d7757ebfd4c9846360341649685f3510edc551a1a71f56ee0ded1a8c538f0b853940ed7aa2f744c4e432ead3dcc30ae772077420264dfb34e3fe5819d490f51b87b9f89214e9a8796f566c80d54e190d7c96c05263020a300fa94e31c000ba063dead20de432f307430258ca26f646b56592c957b13d6e243ee9c1403b0d4a7e69d5633d8b82c36240932b4d099e74a353bd32e43cebc4db0c386f4ac278b30f07eba2b87bec585e254ec0b858d568486844c10ad2e5f49f78cdc4609fffe33d74674d720aff4dd85aa60d97bdec3c9fe722f8d978dba2fe0f4fa047372cfe59f376c5aadc819fd2fdbc695ba009570c81cb1c88f8d001bdf462f7be92a9287754069ea68ae7a0b3c36abbd12cf47a5a962b5ea645a84e1348640885a3912dd7407d5837bbb9f51c38ae8d6f8cecf2d881e808f466561a3a180ac48920ebc1f0ea08905b347e4290b010e8115fa4e5d4d3efa4b7042a137ecaae98a95a865da68188d28d684dc2ced002fc08f6d95e45c48b489b118410ec0ea9d6cc73afefdfc8fb35726427407ca54d3c0bf0c74827acb6b50044aaa6c03093c054c1af823d06529ea701f06c0162439fd67e43a4ee', 0, 'Adika', 'F', 'Male', '2404 east tower d');


-- { _id: null }
INSERT INTO `users` (`ID`, `_id`, `joined`, `image`, `violationFlag`, `fines`, `isAdmin`, `username`, `email`, `salt`, `hash`, `__v`, `firstName`, `lastName`, `gender`, `address`)
    VALUES
        (1, x'61136C2971268D2970C1E68E', '2021-08-11 06:09:48.218000', 'h90wgowuddu__FB_IMG_16147245445009713.jpg', FALSE, 0, FALSE, 'seli', 'seli@outlook.edu.uk', '4c8d57cec4d73551ffc448089463a5012daf8dfbf877c9903d3ca9a2194fa775', '0692ba9bc6898bc786143fe02ee4733b98772444f5629d2ff3c8c57761fcf4150b7876adc1210c6e04d1bbcbcae2b9cc239b4e8e0ef8b9075ea605c7b823acc821cae462d42bf65ea856a6e9f2a66ca47e0ac46dfcc07a20679c68e0f2ba07029d0776aa3fb7ccef90146307e1a4b880b9b94b9b4cf0e17e9f46c0ea090f3a309ddac483e91cf85bf4c3d69523638a22b0ee61f95aa9c04f94c77df9de3f458c16481fa1e6f871867811f39e1934d5a80099d104fc46a2c572fb2452443dafc6f2298232d6990df0577a6a0b258a28ab27a68e20b18b6dc1afff4fa381164d8d07dcf74e0256744029a018a6664d2b9b0736cc5f14c78963790b94182604388892715f32a4a08d61a9e8a5edb400674ada89af9ca84750aa33e9c89f1d6a0db046cdc3667559dc09d723952f7dcbe5571595ed7aae739836a9624cc2aa68fb6e40b9497fad896446572a38d665228f3f7f52d217e0cc6901e48a8c108113a44a5dbfc42666c5138e64a8e413bc9b47f82c8f409291f1d4511778fb134652b2468b59a61419adcf127104c0a7380b808a048211cbfaa62642431f337bc20fc4f5198705404c245f231d48341dc7fdd3d5c42eb17fdbc7213133e5199c03743ff959aaaa78c1e7b4162bdca3dddc7f38943de5c0b5e793080a6899ee7d88ebced80fae37dd5f8ff066c57fccfe0187266fea8bfde0aedea722200d1303e936c977', 3, 'selome', 'A', 'Female', '3432  awasa, 4th St');

INSERT INTO `users_bookIssueInfo_Object` (`ID`, `_id`)
    VALUES
        (0, x'6113622BB39AE82A60DF88F5');

INSERT INTO `users_bookIssueInfo` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (0, 1, 0, 0);


-- { _id: null }
INSERT INTO `users` (`ID`, `_id`, `joined`, `image`, `violationFlag`, `fines`, `isAdmin`, `username`, `email`, `salt`, `hash`, `__v`, `firstName`, `lastName`, `gender`, `address`)
    VALUES
        (2, x'61136FDC71268D2970C1E693', '2021-08-11 06:09:48.218000', 'yjazqdtbjqd__IMG_20200912_052315_131.jpg', FALSE, 0, FALSE, 'addisal', 'neeworld@yahoo.com', '9b921a0aaa389736b3ee6c4cfe6a1d990fbcbd3aa98c58388ff5a2049d549748', '21a4e581f3cf1ced5b68eb94a9ee670d23278571001805beb5995b0fec641a7981d28a5d9906eb4d6c2d53ba115791fd43d54b8fd7cb4660d8e8dd7440bef8c756a070f352cba49126dbb9847c0df2141f7b6db357e26c376affe249c7f26292043208c428d1745972a25b969385227f54dbfffbec9d527321a44e70af61fb61ca9f937d9c4744ecf3414efafda968715f5988ad2aafe0a7be9ef82145bbb267b1380689964757a649e62b4ac04ca34decea095aa10f37728ecd4d14a57ae496269cc50b6129e4bafb97bc16514377e5fff1272e9d768aa98eb461c18ce7c9ee751271b9303d4dd3af99d8d1bac54db1cc1f4c125a3bf81db4561dd213f00f20192a8fd6931363d1faa69f32a6a5f7de48e124c7f7f24f715c29bd06cc4a1ed0087f2097985c5674ae0fb2f798bbbadb95a802321d0ab0fac0422b167df7e43df6d10767c8bd5affcee780d04fd0abf0909590ebaa58f7f34b89b5e8ce4a8330b7a1ff9aa5fa601c8abce4d79af0ed17afd6c66f7082b22c8a0ced9f1679a040ee287d7b111c0c65f7eb3ef99e14dd5ab5ea57da263a1c2d60751cab10d979ada94d6c20ae9b7960ecdb30824bf9cf664ee2d1e76c8c7f130e5d32caea7743c1290948dbbf65ee93195d9f63141db57fc69b9838c6d818b52bdc65b43b9bffa5cba7e5f746a3275fbee85f44a34c06efea25fa03f36b59f1992a261392996914', 2, 'Addisalem', 'Desalegn', 'Male', '1000 N 4th St');


-- { _id: null }
INSERT INTO `users` (`ID`, `_id`, `joined`, `image`, `violationFlag`, `fines`, `isAdmin`, `username`, `email`, `salt`, `hash`, `__v`, `firstName`, `lastName`, `gender`, `address`)
    VALUES
        (3, x'611554F00ABE4B5DB04A6988', '2021-08-12 16:31:46.149000', '', FALSE, 0, TRUE, 'chimdi', 'chimdi1@gmial.com', '63ce3c4ca3daf4faa1b6b13bc2e7a675fd1133778e04504ca890b821baf05789', '2afbba8f4ad8e8a0e363052b7c9ed78df08ac0da115cf3e90800bb24c52742a76f2fc0026b9beadaa9550850059a40038d6320de876142b653451e48b12d48987401239f53e5986dfe4975de540fdebcc637783513d131fe10114cc958dd2375933320261b2c2e8db7cfe6ab17420fc33dc67f7629a905143059e22fe0e14510a77ad852e2980cd09a065c32add3c94069721d0b79236ead7abd3f5378f65d882ed3b88f8d23355bcce577962c5902d53eee41886db706f1ff5a9644ef4e97075bc0876f495a53e61bdd976dde4f8023d7c4c4273c9653722f2b96d36aeafc0fe9f2419eea575afcf8853efb8fa78907d30b0be53a5c6db218012063c5a7e6ba1e299e813547623cef3faaa8fc61097f1e410d142aabf564736fb124a747e1db6fc39e28974b4ad5378e6d12fc5faf1baeee5cea3e62a46ccf53031682b755ce9c363634a2e47edc60948a81408c3bde20ef44593c7e8a16870f6fbb1b2cf97c686fc98a930098410c57f9338effbba186abb68b42a0456bc5c269498cbf18f2db4e3af173a1c94c33a9ce52757b742d94a63762117f5719e169635f2bbc3905cf754e8203c6f67445fea5fb2bd5f637d34085559dcabe7299806b8d2d717f1ecc6569f706c7848e8c511d697fb2a3656c6b094d197a03c3da1275a61322df17ac66f128fd679b9c1126aa53d3ef18d496d93891876665f5b70a9e551b763775', 3, NULL, NULL, NULL, NULL);

INSERT INTO `users_bookIssueInfo_Object` (`ID`, `_id`)
    VALUES
        (1, x'6115434DDE904B3530F1960D');

INSERT INTO `users_bookIssueInfo` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (1, 3, 0, 1);

