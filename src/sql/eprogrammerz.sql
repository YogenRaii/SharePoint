
INSERT INTO `Chapter` (`id`, `dateCreated`, `description`, `displayOrder`, `isActive`, `numberOfViewers`, `slug`, `title`, `languageId`) VALUES
(1, '2015-12-21 22:46:19', '<p>Java programming language was originally developed by Sun Microsystems which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems&rsquo; Java platform (Java 1.0 [J2SE]).</p>\n\n<ul>\n	<li>As of December 2008, the latest release of the Java Standard Edition is 6 (J2SE).</li>\n	<li>With the advancement of Java and its widespread popularity, multiple configurations were built to suite various types of platforms. Ex: J2EE for Enterprise Applications, J2ME for Mobile Applications.</li>\n	<li>Sun Microsystems has renamed the new J2 versions as Java SE, Java EE and Java ME, respectively.</li>\n	<li>Java is guaranteed to be Write Once, Run Anywhere.</li>\n</ul>\n', 1, b'1', 1, 'Java-Overview482', 'Java Overview', 1),
(2, '2015-12-21 22:46:19', '<p>When we consider a Java program, it can be defined as a collection of objects that communicate via invoking each other&#39;s methods. Let us now briefly look into what do class, object, methods and instance variables mean.</p>\n\n<ul>\n	<li><strong>Object</strong> - Objects have states and behaviors. Example: A dog has states-color, name, breed as well as behaviors -wagging, barking, eating. An object is an instance of a class.</li>\n	<li><strong>Class</strong> - A class can be defined as a template/blue print that describes the behaviors/states that object of its type support.</li>\n	<li><strong>Methods</strong> - A method is basically a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.</li>\n	<li><strong>Instance Variables</strong> - Each object has its unique set of instance variables. An object&#39;s state is created by the values assigned to these instance variables.</li>\n</ul>\n', 1, b'0', 1, 'First-Java-Program---Hello-World!931', 'First Java Program - Hello World!', 1),
(3, '2015-12-21 22:46:19', '<p>Java programs are a collection of whitespace, identifiers, literals, comments, operators, separators, and keywords.</p>\n', 1, b'0', 1, 'Lexical-Issues829', 'Lexical Issues', 1),
(5, '2015-12-21 23:36:35', '<p>The following list shows the reserved words in Java. These reserved words may not be used as constant or variable or any other identifier names.</p>\n\n<p>abstract<br />\nassert<br />\nboolean<br />\nbreak<br />\nbyte<br />\ncase<br />\ncatch<br />\nchar<br />\nclass<br />\nconst<br />\ncontinue<br />\ndefault<br />\ndo<br />\ndouble<br />\nelse<br />\nenum<br />\nextends<br />\nfinal<br />\nfinally<br />\nfloat<br />\nfor<br />\ngoto<br />\nif<br />\nimplements<br />\nimport<br />\ninstanceof<br />\nint<br />\ninterface<br />\nlong<br />\nnative<br />\nnew<br />\npackage<br />\nprivate<br />\nprotected<br />\npublic<br />\nreturn<br />\nshort<br />\nstatic<br />\nstrictfp<br />\nsuper<br />\nswitch<br />\nsynchronized<br />\nthis<br />\nthrow<br />\nthrows<br />\ntransient<br />\ntry<br />\nvoid<br />\nvolatile<br />\nwhile</p>\n', 1, b'0', 1, 'Java-Keywords6', 'Java Keywords', 1),
(6, '2015-12-22 00:07:22', 'This course introduces you the APIs, implement it using Jersey and run it on Tomcat.', 1, b'0', 1, 'Developing-REST-APIs-with-JAX-RS', 'Learning Spring Core', 2),
(7, '2015-12-22 00:08:22', 'This course introduces you the APIs, implement it using Jersey and run it on Tomcat.', 1, b'0', 1, 'Developing-REST-APIs-with-JAX-RS1', 'Learning Spring Core', 2),
(8, '2015-12-22 12:42:01', 'This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'sudarshan', 'JavaScript Fundamentals', 4),
(9, '2015-12-22 14:02:37', 'This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'test-now', 'JavaScript Fundamentals', 4),
(10, '2015-12-22 14:03:38', 'This course provides an introduction to Java Servlet technology. You will learn how to develop Java web applications using Servlets. you will also understand the life cycle of Servlets, how they work and how to configure them.', 1, b'0', 1, 'JavaScript-Fundamentals-Angular', 'JavaScript Fundamentals Angular', 4),
(24, '2015-12-24 13:05:33', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'RESTful-URI-types0', 'RESTful URI types', 2),
(25, '2015-12-24 13:06:34', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, b'0', 1, 'Inversion-Of-Control-(IOC)-and-Dependency-Injection0', 'Inversion Of Control (IOC) and Dependency Injection', 2),
(27, NULL, '<p>this is fucking headache topic</p>\n', 0, b'0', 0, NULL, 'Serialization and deserialization', NULL),
(28, '2016-02-21 22:42:30', '<p>this is second one of the imp thing here.</p>\n', 1, b'0', 1, 'PTCL-Work-Menu304', 'PTCL Work Menu', 1),
(29, '2016-02-21 22:51:47', 'and here is third try\n', 1, b'0', 1, 'Serialization-and-deserialization-modified26', 'Serialization and deserialization modified', 1),
(31, '2016-02-21 22:58:05', '<p>nepal is hre</p>\n', 1, b'0', 1, 'Serialization-and-deserialization-spring698', 'Serialization and deserialization spring', 2);

-- --------------------------------------------------------

--
-- Dumping data for table `chaptercontent`
--

INSERT INTO `ChapterContent` (`id`, `dateCreated`, `description`, `displayOrder`, `image`, `isActive`, `numberOfViewers`, `slug`, `title`, `chapterId`) VALUES
(14, '2015-12-08 00:00:00', '<p>Let us look at a simple code that would print the words &quot;Hello World&quot;.</p>\n\n<pre>\n/* This is my first java program. * This will print &#39;Hello World&#39; as the output */\n\npublic class MyFirstJavaProgram{\n            public static void main(String[]args){\n                     System.out.println(&quot;Hello World&quot;); // prints Hello World\n            }\n}</pre>\n', 1, 'image.jpg', b'0', 1, 'Hello-world-in-Java404', 'Hello world in Java', 2),
(15, '2015-12-10 00:00:00', '<p>About Java programs, it is very important to keep in mind the following points.</p>\n\n<ul>\n	<li><strong>Case Sensitivity - </strong>Java is case sensitive, which means identifier Hello and hello would have different meaning in Java.</li>\n	<li><strong>Class Names - </strong>For all class names, the first letter should be in Upper Case. If several words are used to form a name of the class, each inner word&#39;s first letter should be in Upper Case. Example class <em>MyFirstJavaClass</em></li>\n	<li><strong>Method Names - </strong>All method names should start with a Lower Case letter. If several words are used to form the name of the method, then each inner word&#39;s first letter should be in Upper Case. Example <code>public void myMethodName()</code></li>\n	<li><strong>Program File Name - </strong>Name of the program file should exactly match the class name. When saving the file, you should save it using the class name (Remember Java is case sensitive) and append <code>&#39;.java</code>&#39; to the end of the name (if the file name and the class name do not match your program will not compile). Example : Assume <code>&#39;MyFirstJavaProgram&#39;</code> is the class name, then the file should be saved as <code>&#39;MyFirstJavaProgram.java</code>&#39;</li>\n	<li><strong><code>public static void main(String args[])</code> - </strong>Java program processing starts from the <code>main</code>() method, which is a mandatory part of every Java program.</li>\n</ul>\n', 1, 'image.jpg', b'0', 1, 'Basic-Syntax436', 'Basic Syntax', 2),
(18, '2015-12-18 00:00:00', '<pre style="color: rgb(0, 0, 0); font-family: ''Courier New''; font-size: 12pt;">\n<span style="color:#808080;font-style:italic;">/* Here is another short example. Call this file &quot;Example2.java&quot;. */\n</span><span style="color:#000080;font-weight:bold;">class </span>Example2 { \n    <span style="color:#000080;font-weight:bold;">public static void </span>main(String args[]) { \n        <span style="color:#000080;font-weight:bold;">int </span>num; <span style="color:#808080;font-style:italic;">// this declares a variable called num \n</span><span style="color:#808080;font-style:italic;">        </span>num = <span style="color:#0000ff;">100</span>; <span style="color:#808080;font-style:italic;">// this assigns num the value 100 \n</span><span style="color:#808080;font-style:italic;">        </span>System.out.println(<span style="color:#008000;font-weight:bold;">&quot;This is num: &quot; </span>+ num); \n        num = num * <span style="color:#0000ff;">2</span>; \n        System.out.print(<span style="color:#008000;font-weight:bold;">&quot;The value of num * 2 is &quot;</span>); \n        System.out.println(num); \n    } \n}\n</pre>\n', 1, 'image.jpg', b'0', 1, 'Second-Java-Program477', 'Second Java Program', 2),
(21, '2015-12-02 00:00:00', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, 'image.jpg', b'0', 1, '', 'Where JavaScript', 8),
(22, '2015-12-30 00:00:00', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, 'image.jpg', b'0', 1, '', 'Document Object Model', 8),
(23, '2015-12-01 00:00:00', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, 'image.jpg', b'0', 1, '', 'Angualr Hello world Object Model', 8),
(27, '2015-12-28 13:31:58', 'This course introduces you the APIs, implement it using  --Not Its JavascriptThis course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript This course introduces you the APIs, implement it using  --Not Its Javascript', 1, 'image.jpg', b'0', 1, 'What-is-Dom421', 'What is Dom', 8),
(35, '2016-02-22 21:43:21', '<ul>\n	<li>Simple</li>\n	<li>Object-oriented</li>\n	<li>Robust</li>\n	<li>Multithreaded</li>\n	<li>Architecture-neutral</li>\n	<li>Interpreted</li>\n	<li>High performance</li>\n	<li>Distributed</li>\n	<li>Dynamic</li>\n</ul>\n', 1, NULL, b'0', 1, 'Java-Buzzwords518', 'Java Buzzwords', 1),
(36, '2016-02-22 22:14:24', '<ul>\n	<li><strong>Whitespace</strong></li>\n</ul>\n\n<p>Java is a free-form language. This means that you do not need to follow any special indentation rules. For instance, the Example program could have been written all on one line or in any other strange way you felt like typing it, as long as there was at least one whitespace character between each token that was not already delineated by an operator or separator. In Java, whitespace is a space, tab, or newline.</p>\n\n<ul>\n	<li><strong>Identifiers:</strong></li>\n</ul>\n\n<p>All Java components require names. Names used for classes, variables and methods are called identifiers.</p>\n\n<ul>\n	<li><strong>Literals</strong></li>\n</ul>\n\n<p>A constant value in Java is created by using a literal representation of it. For example, here are some literals: 100 98.6 &#39;X&#39; &quot;This is a test&quot; Left to right, the first literal specifies an integer, the next is a floating-point value, the third is a character constant, and the last is a string. A literal can be used anywhere a value of its type is allowed.</p>\n\n<ul>\n	<li><strong>Comments</strong></li>\n</ul>\n\n<p>As mentioned, there are three types of comments defined by Java. You have already seen two: single-line and multiline. The third type is called a documentation comment. This type of comment is used to produce an HTML file that documents your program. The documentation comment begins with a /** and ends with a */.</p>\n\n<ul>\n	<li><strong>Separators</strong></li>\n</ul>\n\n<p>In Java, there are a few characters that are used as separators. The most commonly used separator in Java is the semicolon. As you have seen, it is used to terminate statements.</p>\n\n<p>The separators are shown in the following table:</p>\n\n<table align="center" border="1" cellpadding="1" cellspacing="1" style="width: 400px;" class="table table-striped">\n	<thead>\n		<tr>\n			<th scope="col">Symbol</th>\n			<th scope="col">Name</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>( )</td>\n			<td>Parentheses</td>\n		</tr>\n		<tr>\n			<td>{ }</td>\n			<td>Braces</td>\n		</tr>\n		<tr>\n			<td>[ ]</td>\n			<td><span style="line-height: 20.8px;">Brackets</span></td>\n		</tr>\n		<tr>\n			<td>:</td>\n			<td>Semicolon</td>\n		</tr>\n		<tr>\n			<td>,</td>\n			<td>Comma</td>\n		</tr>\n		<tr>\n			<td>.</td>\n			<td>Period</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 1, NULL, b'0', 1, 'To-be-noted20', 'To be noted', 3);

-- --------------------------------------------------------

-- Dumping data for table `language`
--

INSERT INTO `Language` (`id`, `name`, `image`) VALUES
(1, 'Core Java', '/resources/front/img/languages\\java-logo.png'),
(2, 'Spring Framework', '/resources/front/img/languages\\2_logo.png'),
(4, 'C  ', '/resources/front/img/languages\\C-logo.png'),
(34, 'Servlets and JSP', '/resources/front/img/languages\\6_logo.png'),
(35, 'AngularJS', '/resources/front/img/languages\\aj-logo.png'),
(36, 'Algorithms', '/resources/front/img/languages\\algorithms-logo.png'),
(37, 'JavaScript', '/resources/front/img/languages\\javascript-logo.png'),
(38, 'PHP', '/resources/front/img/languages\\php-logo.png'),
(39, 'C   - CPP', '/resources/front/img/languages\\cpp-logo.png');

-- --------------------------------------------------------


--
-- Dumping data for table `message`
--

INSERT INTO `Message` (`id`, `date`, `email`, `name`, `message`, `phone`) VALUES
(3, '2016-02-03 16:41:13', 'yogen.rai.992@gmail.com', 'Yogen Rai', 'You''ve created nice app', '6419808605'),
(5, '2016-02-03 19:25:40', 'ygnrai@gmail.com', 'Shyamu Neupane', 'New comment is available now', '6419808605'),
(6, '2016-02-22 21:04:01', 'yogen.rai.992@gmail.com', 'Yogen Rai', 'Awesome message from yogen is here.', '6419808605');

-- --------------------------------------------------------


--
-- Dumping data for table `user`
--

INSERT INTO `User` (`id`, `email`, `firstName`, `lastName`, `password`, `role`) VALUES
(1, 'admin@gmail.com', 'Samul', 'Neupane', 'admin', 'ROLE_ADMIN'),
(2, 'sn@gmail.com', 'Sudarshan', 'Neupane', 'admin', 'ROLE_WRITER'),
(3, 'yogen.rai.992@gmail.com', 'Yogen', 'Rai', 'yogen', 'ROLE_WRITER');

-- --------------------------------------------------------


--
-- Dumping data for table `writer_language`
--

INSERT INTO `Writer_language` (`writer_id`, `language_id`) VALUES
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 4),
(1, 2),
(1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `Chapter`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_le27rwllt6q0mu4499flvcxy8` (`languageId`);

--
-- Indexes for table `chaptercontent`
--
ALTER TABLE `ChapterContent`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_4npca6tx24yw4pb2rkm5o4d82` (`chapterId`);

--
-- Indexes for table `language`
--
ALTER TABLE `Language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `Message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `User`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writer_language`
--
ALTER TABLE `Writer_language`
 ADD KEY `FK_88cwyxhidlceyr6sx7xt51jlm` (`language_id`), ADD KEY `FK_120na26glr273xw1eows0vyr3` (`writer_id`);

