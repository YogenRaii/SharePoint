SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `chapter` (
  `id`              BIGINT(20) NOT NULL,
  `dateCreated`     DATETIME     DEFAULT NULL,
  `description`     LONGTEXT,
  `displayOrder`    INT(11)    NOT NULL,
  `isActive`        BIT(1)     NOT NULL,
  `numberOfViewers` INT(11)    NOT NULL,
  `slug`            VARCHAR(255) DEFAULT NULL,
  `title`           VARCHAR(255) DEFAULT NULL,
  `languageId`      BIGINT(20)   DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 27;

INSERT INTO `chapter` (`id`, `dateCreated`, `description`, `displayOrder`, `isActive`, `numberOfViewers`, `slug`, `title`, `languageId`)
VALUES
  (1, '2015-12-21 22:46:19',
   'This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.',
   1, b'1', 1, 'Hello-world-in-java', 'Hello wrold in Java', 1),
  (2, '2015-12-21 22:46:19', 'This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.', 1, b'0', 1, 'Hello-world-in-java1', 'Hello wrold in Java1', 1),
  (3, '2015-12-21 22:46:19', 'This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.', 1, b'0', 1, 'Hello-world-in-java2', 'Hello wrold in Java', 1),
  (5, '2015-12-21 23:36:35', 'This course introduces you the APIs, implement it using Jersey and run it on Tomcat.', 1, b'0', 1, 'Developing-REST-APIs-with-JAX-RS2', 'Developing REST APIs with JAX-RS', 1),
  (6, '2015-12-22 00:07:22', 'This course introduces you the APIs, implement it using Jersey and run it on Tomcat.', 1, b'0', 1, 'Developing-REST-APIs-with-JAX-RS', 'Learning Spring Core', 2),
  (7, '2015-12-22 00:08:22', 'This course introduces you the APIs, implement it using Jersey and run it on Tomcat.', 1, b'0', 1, 'Developing-REST-APIs-with-JAX-RS1', 'Learning Spring Core', 2),
  (8, '2015-12-22 12:42:01', 'This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'sudarshan', 'JavaScript Fundamentals', 4),
  (9, '2015-12-22 14:02:37', 'This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'test-now', 'JavaScript Fundamentals', 4),
  (10, '2015-12-22 14:03:38', 'This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.', 1, b'0', 1, 'JavaScript-Fundamentals-Angular', 'JavaScript Fundamentals Angular', 4),
  (11, '2015-12-22 14:50:22', 'This course introduces you the APIs, implement it using  -- NotThis course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them. Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript  This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.', 1, b'0', 1, 'Angular-JavaScript-Fundamentals-Angular2-', 'Angular JavaScript Fundamentals Angular2 ', 5),
  (13, '2015-12-23 15:02:01', 'The basic building block for user interface is a View object which is created from the View class and occupies a rectangular area on the screen and is responsible for drawing and event handling. View is the base class for widgets, which are used to create interactive UI components like buttons, text fields, etc.', 1, b'0', 1, 'Android-User-Interface-1', 'Android User Interface ', 9),
  (24, '2015-12-24 13:05:33',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, b'0', 1, 'RESTful-URI-types0', 'RESTful URI types', 2),
  (25, '2015-12-24 13:06:34',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, b'0', 1, 'Inversion-Of-Control-(IOC)-and-Dependency-Injection0',
   'Inversion Of Control (IOC) and Dependency Injection', 2),
  (26, '2015-12-24 13:14:30',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, b'0', 1, 'Hello-wrold-in-struts205', 'Hello wrold in struts', 8);

CREATE TABLE IF NOT EXISTS `chaptercontent` (
  `id`              BIGINT(20)   NOT NULL,
  `dateCreated`     DATETIME     DEFAULT NULL,
  `description`     LONGTEXT     NOT NULL,
  `displayOrder`    INT(11)      NOT NULL,
  `image`           VARCHAR(255) DEFAULT NULL,
  `isActive`        BIT(1)       NOT NULL,
  `numberOfViewers` INT(11)      NOT NULL,
  `slug`            VARCHAR(255) DEFAULT NULL,
  `title`           VARCHAR(255) NOT NULL,
  `chapterId`       BIGINT(20)   DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 28;

INSERT INTO `chaptercontent` (`id`, `dateCreated`, `description`, `displayOrder`, `image`, `isActive`, `numberOfViewers`, `slug`, `title`, `chapterId`)
VALUES
  (14, '2015-12-08 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'What is spring framework ', 2),
  (15, '2015-12-10 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'Spring Modules', 2),
  (18, '2015-12-18 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'Spring Modules67', 2),
  (21, '2015-12-02 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'Where JavaScript', 8),
  (22, '2015-12-30 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'Document Object Model', 8),
  (23, '2015-12-01 00:00:00',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, '', 'Angualr Hello world Object Model', 8),
  (27, '2015-12-28 13:31:58',
   'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript',
   1, 'image.jpg', b'0', 1, 'What-is-Dom421', 'What is Dom', 8);

CREATE TABLE IF NOT EXISTS `language` (
  `id`    BIGINT(20)   NOT NULL,
  `name`  VARCHAR(255) NOT NULL,
  `image` VARCHAR(255)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 10;

INSERT INTO `language` (`id`, `name`, `image`) VALUES
  (1, 'Core Java', '1_logo.png'),
  (2, 'Spring Framework', '2_logo.png'),
  (3, 'C', '3_logo.png'),
  (4, 'C++', '4_logo.png'),
  (5, 'AngularJS', '5_logo.png'),
  (6, 'Servlets and JSP', '6_logo.png'),
  (7, 'Algorithms', '7_logo.png'),
  (8, 'JavaScript', '8_logo.png'),
  (9, 'PHP', '9_logo.png');

CREATE TABLE IF NOT EXISTS `message` (
  `id`      INT(11)      NOT NULL,
  `date`    DATETIME     DEFAULT NULL,
  `email`   VARCHAR(255) NOT NULL,
  `name`    VARCHAR(255) NOT NULL,
  `message` LONGTEXT     NOT NULL,
  `phone`   VARCHAR(255) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 7;

INSERT INTO `message` (`id`, `date`, `email`, `name`, `message`, `phone`) VALUES
  (3, '2016-02-03 16:41:13', 'yogen.rai.992@gmail.com', 'Yogen Rai', 'You''ve created nice app', '6419808605'),
  (5, '2016-02-03 19:25:40', 'ygnrai@gmail.com', 'Shyamu Neupane', 'New comment is available now', '6419808605'),
  (6, '2016-02-03 19:25:56', 'ygnrai@gmail.com', 'Shyamu Neupane', 'I''m again sending you the final mesg.',
   '6419808605');

CREATE TABLE IF NOT EXISTS `user` (
  `id`        BIGINT(20) NOT NULL,
  `email`     VARCHAR(255) DEFAULT NULL,
  `firstName` VARCHAR(255) DEFAULT NULL,
  `lastName`  VARCHAR(255) DEFAULT NULL,
  `password`  VARCHAR(255) DEFAULT NULL,
  `role`      VARCHAR(255) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 4;

INSERT INTO `user` (`id`, `email`, `firstName`, `lastName`, `password`, `role`) VALUES
  (1, 'admin@gmail.com', 'Samul', 'Neupane', 'admin', 'ROLE_ADMIN'),
  (2, 'sn@gmail.com', 'Sudarshan', 'Neupane', 'admin', 'ROLE_WRITER'),
  (3, 'yogen.rai.992@gmail.com', 'Yogen', 'Rai', 'yogen', 'ROLE_WRITER');

CREATE TABLE IF NOT EXISTS `writer_language` (
  `writer_id`   BIGINT(20) NOT NULL,
  `language_id` BIGINT(20) NOT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

INSERT INTO `writer_language` (`writer_id`, `language_id`) VALUES
  (2, 1),
  (3, 2),
  (2, 2),
  (3, 4);


ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_le27rwllt6q0mu4499flvcxy8` (`languageId`);

ALTER TABLE `chaptercontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_4npca6tx24yw4pb2rkm5o4d82` (`chapterId`);

ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `writer_language`
  ADD KEY `FK_88cwyxhidlceyr6sx7xt51jlm` (`language_id`),
  ADD KEY `FK_120na26glr273xw1eows0vyr3` (`writer_id`);


ALTER TABLE `chapter`
  MODIFY `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 27;
ALTER TABLE `chaptercontent`
  MODIFY `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 28;
ALTER TABLE `language`
  MODIFY `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 10;
ALTER TABLE `message`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
ALTER TABLE `user`
  MODIFY `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;

ALTER TABLE `chapter`
  ADD CONSTRAINT `FK_le27rwllt6q0mu4499flvcxy8` FOREIGN KEY (`languageId`) REFERENCES `language` (`id`);

ALTER TABLE `chaptercontent`
  ADD CONSTRAINT `FK_4npca6tx24yw4pb2rkm5o4d82` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`);

ALTER TABLE `writer_language`
  ADD CONSTRAINT `FK_120na26glr273xw1eows0vyr3` FOREIGN KEY (`writer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_88cwyxhidlceyr6sx7xt51jlm` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
