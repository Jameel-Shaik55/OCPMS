/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.4.32-MariaDB : Database - campus
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`campus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `campus`;

/*Table structure for table `coding_results` */

DROP TABLE IF EXISTS `coding_results`;

CREATE TABLE `coding_results` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `student_email` varchar(200) DEFAULT NULL,
  `company_email` varchar(200) DEFAULT NULL,
  `question_id` varchar(200) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `output` varchar(200) DEFAULT NULL,
  `expected_output` varchar(200) DEFAULT NULL,
  `match` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `coding_results` */

insert  into `coding_results`(`id`,`student_email`,`company_email`,`question_id`,`code`,`output`,`expected_output`,`match`) values (1,'nakku@gmail.com','takeoff@gmail.com','1','https://www.programiz.com/online-compiler/8G4IoBoZhNaZ2','Error executing code: Unauthorized Request','1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz','0'),(2,'nakku@gmail.com','takeoff@gmail.com','2','https://www.programiz.com/online-compiler/9SqfMoaAQ648L','Error executing code: Unauthorized Request','[1, 2, 3, 4, 5, 6]','0'),(3,'nakku@gmail.com','takeoff@gmail.com','3','https://www.programiz.com/online-compiler/8gfnCLLqFugzl','Error executing code: Unauthorized Request','2','0'),(4,'nakku@gmail.com','takeoff@gmail.com','4','https://www.programiz.com/online-compiler/8G4IoFD4VNaI7','Error executing code: Unauthorized Request','5','0');

/*Table structure for table `coding_tests` */

DROP TABLE IF EXISTS `coding_tests`;

CREATE TABLE `coding_tests` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `company_email` varchar(200) DEFAULT NULL,
  `question_text` longtext DEFAULT NULL,
  `sample_input` longtext DEFAULT NULL,
  `expected_output` longtext DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `coding_tests` */

insert  into `coding_tests`(`Id`,`company_email`,`question_text`,`sample_input`,`expected_output`,`language`) values (1,'takeoff@gmail.com','Write a function that prints the numbers from 1 to n. For multiples of three, print \"Fizz\" instead of the number, and for the multiples of five, print \"Buzz\". For numbers which are multiples of both three and five, print \"FizzBuzz','15','1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz','python'),(2,'takeoff@gmail.com','Write a function to merge two sorted lists into one sorted list.','[1, 3, 5], [2, 4, 6]','[1, 2, 3, 4, 5, 6]','python'),(3,'takeoff@gmail.com','Write a function to count the number of vowels in a given string.','\"hello\"','2','python'),(4,'takeoff@gmail.com','Write a function to find the second largest number in a list.','[1, 5, 3, 9, 2]','5','python'),(5,'tsc@gmail.com','How do you swap two numbers without using a third variable in Java?','a is 10 and b is 20','After swapping, i need this answer a is 20 and b is 10','java');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `postal_code` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `company` */

insert  into `company`(`Id`,`company_name`,`email`,`password`,`phone`,`address`,`city`,`state`,`postal_code`,`country`,`website`,`description`,`logo`) values (1,'takeoff','takeoff@gmail.com','1212','07458965874','tpt','tirupati','andra','58990','India','https://www.tcs.com/','sdfsdf','a.jpg'),(2,'ymts','ymts@gmail.com','1212','58745896587','tpt','tirupati','andra','58990','India','https://ymtsindia.com/','1234sacfdsf','timeline4.jpg'),(3,'tcs','tsc@gmail.com','1212','07458965874','tpt','tprupathi','andra','58990','India','https://www.tcsion.com/SelfServices/','Best Company','history-img1.jpg');

/*Table structure for table `drive` */

DROP TABLE IF EXISTS `drive`;

CREATE TABLE `drive` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `company_email` varchar(200) DEFAULT NULL,
  `date_of_conduct` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `job_vacancies` varchar(200) DEFAULT NULL,
  `job_description` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `drive` */

insert  into `drive`(`id`,`company_email`,`date_of_conduct`,`position`,`location`,`job_vacancies`,`job_description`,`salary`,`department`,`company_name`,`website`,`logo`) values (1,'takeoff@gmail.com','2024-08-31','python trainee','banaglore','32','good','2.5-3.5 lacs','cse','takeoff','https://www.tcs.com/','a.jpg'),(2,'ymts@gmail.com','2024-08-31','java developer','Chenay','12','mhbhgv','2.5-3.5 lacs','cse','ymts','https://ymtsindia.com/','timeline4.jpg'),(3,'tsc@gmail.com','2024-09-01','java developer','Chenay','12','Training for fresher for 2  months','2.5-3.5 lacs','cse','tcs','https://www.tcsion.com/SelfServices/','history-img1.jpg');

/*Table structure for table `driverequest` */

DROP TABLE IF EXISTS `driverequest`;

CREATE TABLE `driverequest` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) DEFAULT NULL,
  `company_email` varchar(200) DEFAULT NULL,
  `date_of_conduct` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `job_vacancies` varchar(200) DEFAULT NULL,
  `job_description` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `driverequest` */

insert  into `driverequest`(`id`,`company_name`,`company_email`,`date_of_conduct`,`position`,`location`,`job_vacancies`,`job_description`,`salary`,`department`,`website`,`logo`,`Status`) values (1,'takeoff','takeoff@gmail.com','2024-08-31','python trainee','banaglore','32','good','2.5-3.5 lacs','cse','https://www.tcs.com/','a.jpg','Approved'),(2,'tcs','tsc@gmail.com','2024-09-01','java developer','Chenay','12','Training for fresher for 2  months','2.5-3.5 lacs','cse','https://www.tcsion.com/SelfServices/','history-img1.jpg','Approved');

/*Table structure for table `mcqquestion` */

DROP TABLE IF EXISTS `mcqquestion`;

CREATE TABLE `mcqquestion` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `company_email` varchar(200) DEFAULT NULL,
  `question_text` varchar(200) DEFAULT NULL,
  `option1` varchar(200) DEFAULT NULL,
  `option2` varchar(200) DEFAULT NULL,
  `option3` varchar(200) DEFAULT NULL,
  `option4` varchar(200) DEFAULT NULL,
  `correct_option` varchar(200) DEFAULT NULL,
  `stage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mcqquestion` */

insert  into `mcqquestion`(`Id`,`company_email`,`question_text`,`option1`,`option2`,`option3`,`option4`,`correct_option`,`stage`) values (1,'takeoff@gmail.com','Who developed Python Programming Language?','Wick van Rossum','Rasmus Lerdorf','Guido van Rossum','Niene Stoms','option3','MCQ'),(2,'takeoff@gmail.com','Which type of Programming does Python support?','object-oriented programming','structured programming','functional programming','all of the mentioned','option4','MCQ'),(3,'takeoff@gmail.com','Is Python case sensitive when dealing with identifiers?','no',' yes','machine dependent','none of the mentioned','option2','MCQ'),(4,'takeoff@gmail.com',' Which of the following is the correct extension of the Python file?','.python','.pl','.py','.p','option3','MCQ'),(5,'takeoff@gmail.com','Is Python code compiled or interpreted?','Python code is both compiled and interpreted','Python code is neither compiled nor interpreted','Python code is only compiled','Python code is only interpreted','option1','MCQ'),(6,'takeoff@gmail.com','All keywords in Python are in _________','Capitalized',' lower case','UPPER CASE','None of the mentioned','option4','MCQ'),(7,'takeoff@gmail.com','What will be the value of the following Python expression?   4 + 3 % 5','7','2','4','1','option1','MCQ'),(8,'takeoff@gmail.com','Which of the following is used to define a block of code in Python language?','Indentation',' Key','Brackets','All of the mentioned','option1','MCQ'),(9,'takeoff@gmail.com','Which keyword is used for function in Python language?','Function','def','Fun','Define','option2','MCQ'),(10,'ymts@gmail.com','Which of the following functions can help us to find the version of python that we are currently working on?','sys.version(1)  ','sys.version(0)','sys.version()','sys.version','option4','MCQ'),(11,'tsc@gmail.com','Who invented Java Programming?','Guido van Rossum','James Gosling','Dennis Ritchie','suresh changdra','option2','MCQ');

/*Table structure for table `student_answers` */

DROP TABLE IF EXISTS `student_answers`;

CREATE TABLE `student_answers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(200) DEFAULT NULL,
  `student_email` varchar(200) DEFAULT NULL,
  `company_email` varchar(200) DEFAULT NULL,
  `question_id` varchar(200) DEFAULT NULL,
  `question_text` varchar(200) DEFAULT NULL,
  `selected_answer` varchar(200) DEFAULT NULL,
  `correct_answer` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `student_answers` */

insert  into `student_answers`(`id`,`student_name`,`student_email`,`company_email`,`question_id`,`question_text`,`selected_answer`,`correct_answer`,`Status`) values (1,'preeti','preeti@gmail.com','takeoff@gmail.com','1','Who developed Python Programming Language?','option2','option3','pending'),(2,'preeti','preeti@gmail.com','takeoff@gmail.com','2','Which type of Programming does Python support?','option2','option4','pending'),(3,'preeti','preeti@gmail.com','takeoff@gmail.com','3','Is Python case sensitive when dealing with identifiers?','option3','option2','pending'),(4,'preeti','preeti@gmail.com','takeoff@gmail.com','4',' Which of the following is the correct extension of the Python file?','option3','option3','pending'),(5,'preeti','preeti@gmail.com','takeoff@gmail.com','5','Is Python code compiled or interpreted?','option3','option1','pending'),(6,'preeti','preeti@gmail.com','takeoff@gmail.com','6','All keywords in Python are in _________','option3','option4','pending'),(7,'preeti','preeti@gmail.com','takeoff@gmail.com','7','What will be the value of the following Python expression?   4 + 3 % 5','option3','option1','pending'),(8,'preeti','preeti@gmail.com','takeoff@gmail.com','8','Which of the following is used to define a block of code in Python language?','option3','option1','pending'),(9,'preeti','preeti@gmail.com','takeoff@gmail.com','9','Which keyword is used for function in Python language?','option2','option2','pending'),(10,'nakku','nakku@gmail.com','takeoff@gmail.com','1','Who developed Python Programming Language?','option3','option3','pending'),(11,'nakku','nakku@gmail.com','takeoff@gmail.com','2','Which type of Programming does Python support?','option4','option4','pending'),(12,'nakku','nakku@gmail.com','takeoff@gmail.com','3','Is Python case sensitive when dealing with identifiers?','option2','option2','pending'),(13,'nakku','nakku@gmail.com','takeoff@gmail.com','4',' Which of the following is the correct extension of the Python file?','option3','option3','pending'),(14,'nakku','nakku@gmail.com','takeoff@gmail.com','5','Is Python code compiled or interpreted?','option1','option1','pending'),(15,'nakku','nakku@gmail.com','takeoff@gmail.com','6','All keywords in Python are in _________','option4','option4','pending'),(16,'nakku','nakku@gmail.com','takeoff@gmail.com','7','What will be the value of the following Python expression?   4 + 3 % 5','option1','option1','pending'),(17,'nakku','nakku@gmail.com','takeoff@gmail.com','8','Which of the following is used to define a block of code in Python language?','option1','option1','pending'),(18,'nakku','nakku@gmail.com','takeoff@gmail.com','9','Which keyword is used for function in Python language?','option3','option2','pending'),(19,'raju','raju@gmail.com','takeoff@gmail.com','1','Who developed Python Programming Language?','option3','option3','pending'),(20,'raju','raju@gmail.com','takeoff@gmail.com','2','Which type of Programming does Python support?','option4','option4','pending'),(21,'raju','raju@gmail.com','takeoff@gmail.com','3','Is Python case sensitive when dealing with identifiers?','option2','option2','pending'),(22,'raju','raju@gmail.com','takeoff@gmail.com','4',' Which of the following is the correct extension of the Python file?','option3','option3','pending'),(23,'raju','raju@gmail.com','takeoff@gmail.com','5','Is Python code compiled or interpreted?','option1','option1','pending'),(24,'raju','raju@gmail.com','takeoff@gmail.com','6','All keywords in Python are in _________','option4','option4','pending'),(25,'raju','raju@gmail.com','takeoff@gmail.com','7','What will be the value of the following Python expression?   4 + 3 % 5','option1','option1','pending'),(26,'raju','raju@gmail.com','takeoff@gmail.com','8','Which of the following is used to define a block of code in Python language?','option1','option1','pending'),(27,'raju','raju@gmail.com','takeoff@gmail.com','9','Which keyword is used for function in Python language?','option2','option2','pending');

/*Table structure for table `studentrequest` */

DROP TABLE IF EXISTS `studentrequest`;

CREATE TABLE `studentrequest` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `stdname` varchar(200) DEFAULT NULL,
  `student_email` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `tenth_marks` varchar(200) DEFAULT NULL,
  `twelfth_marks` varchar(200) DEFAULT NULL,
  `current_marks` varchar(200) DEFAULT NULL,
  `collegename` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `company_email` varchar(200) DEFAULT NULL,
  `date_of_conduct` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `resume` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `studentrequest` */

insert  into `studentrequest`(`id`,`stdname`,`student_email`,`year`,`tenth_marks`,`twelfth_marks`,`current_marks`,`collegename`,`department`,`position`,`location`,`company_email`,`date_of_conduct`,`profile`,`resume`,`Status`) values (1,'preeti','preeti@gmail.com','4','76','78','98','svcc','cse','python trainee','Bangalore','takeoff@gmail.com','2024-08-31','static/profiles/a.jpg','static/profiles/20240828071333authentication-framework.pdf','Selected'),(2,'nakku','nakku@gmail.com','4','76','78','98','rrce','cse','python trainee','Bangalore','takeoff@gmail.com','2024-08-31','static/profiles/b.jpg','static/profiles/Data Security in Cloud Computing.pdf','nextexam'),(3,'raju','raju@gmail.com','4','76','78','98','svcc','cse','python trainee','Chennai','takeoff@gmail.com','2024-08-31','static/profiles/index-product2.jpg','static/profiles/20240828071333authentication-framework.pdf','nextexam');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `rollno` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `sem` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `Datetime` datetime DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `students` */

insert  into `students`(`Id`,`name`,`email`,`rollno`,`year`,`sem`,`branch`,`password`,`contact`,`address`,`Datetime`,`profile`) values (1,'lakshmi','laskshim@gmail.com','svcc123','4','2','cse','1212','85478569885','tpt','2024-08-29 11:22:23','static/profiles/a.jpg'),(2,'preeti','preeti@gmail.com','svcc123','4','2','cse','1212','07458965874','tpt','2024-08-29 11:35:18','static/profiles/a.jpg'),(3,'nakku','nakku@gmail.com','rr123','4','2','cse','1212','07458965874','tpt','2024-08-29 11:35:36','static/profiles/b.jpg'),(4,'ravi','ravi@gmail.com','rrce123','4','2','cse','1212','07458965874','tpt','2024-08-29 11:35:58','static/profiles/c.jpg'),(5,'raju','raju@gmail.com','svcc111','4','2','cse','1212','07458965874','tpt','2024-08-30 15:55:50','static/profiles/index-product2.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
DROP TABLE IF EXISTS `qsn_ans`;

CREATE TABLE `qsn_ans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qsn` varchar(100) DEFAULT NULL,
  `opt1` varchar(100) DEFAULT NULL,
  `opt2` varchar(100) DEFAULT NULL,
  `opt3` varchar(100) DEFAULT NULL,
  `opt4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



