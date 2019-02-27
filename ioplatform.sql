-- MySQL dump 10.16  Distrib 10.2.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: oncoreplatform
-- ------------------------------------------------------
-- Server version	10.2.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''0 - Inactive'',''1 - Active''',
  `created_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'about-us-page','About Us','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',NULL,NULL,NULL,'1','1550065963','1550065963'),(2,'privacy-policy-page','Privacy Policy','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n',NULL,NULL,NULL,'1','1550065963','1550065963'),(3,'terms-of-use-page','Terms of Use','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n',NULL,NULL,NULL,'1','1550065963','1550065963'),(4,'copyright','Copyright','<p>Copyright &copy; 2017</p>\n',NULL,NULL,NULL,'1','1550065963','1550065963');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '''1 - Company Name'',''2 - Address'',''3 - Phone'',''4 - Email''',
  `label` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 1 COMMENT '''1 = yes'', ''0 = no''',
  `updated_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_details`
--

LOCK TABLES `company_details` WRITE;
/*!40000 ALTER TABLE `company_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_inquiries`
--

DROP TABLE IF EXISTS `contact_inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_inquiries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_inquiries`
--

LOCK TABLES `contact_inquiries` WRITE;
/*!40000 ALTER TABLE `contact_inquiries` DISABLE KEYS */;
INSERT INTO `contact_inquiries` VALUES (1,'Vishal Jain','vishal10@yopmail.com',NULL,'test','hi...','117.99.161.152','1550213494'),(2,'Vishal Jain','vishal10@yopmail.com',NULL,'test','hi...','117.99.161.152','1550213562'),(3,'Arundhati Saxena','hr@fidelesys.com',NULL,'Testing','Testing for Contact Us page','182.68.183.42','1550227090'),(4,'AS','krati11.saxena@gmail.com',NULL,'@#$%','Testing','182.68.183.42','1550229205'),(5,'Vishal Jain','vishal.chikki0099@gmail.com',NULL,'test','testing','117.99.175.99','1550740924'),(6,'vipul','vipul@yopmail.com',NULL,'checking inquiry','hi.. its a test inquiry','117.99.175.99','1550744089');
/*!40000 ALTER TABLE `contact_inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_changes`
--

DROP TABLE IF EXISTS `email_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_changes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 - Not Verified'', 1 - Verified',
  `created_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_changes_user_id_foreign` (`user_id`),
  CONSTRAINT `email_changes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_changes`
--

LOCK TABLES `email_changes` WRITE;
/*!40000 ALTER TABLE `email_changes` DISABLE KEYS */;
INSERT INTO `email_changes` VALUES (1,'test_t@yopmail.com',NULL,2,'1','1550066074'),(2,'test@yopmail.com',NULL,3,'1','1550125711'),(3,'testarun1@yopmail.com','bHWS0ylKGtDjpvGHDo5m0sPLLYfLLV',5,'0','1550129423'),(4,'arundhati@yopmail.com','lyHeh1iydiz5PgV1RmSLtAdQLDOWI6',14,'0','1550734051'),(5,'vishaltest@yopmail.com',NULL,15,'1','1550737267'),(6,'stripe@yopmail.com',NULL,16,'1','1550738713');
/*!40000 ALTER TABLE `email_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'user-join-mail','{{app_name}} has invited you to join!','name,join_url','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                <table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\n                        </tr>\n                        <tr>\n                            <td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear {{name}},</h1>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">{{app_name}} has invited you to join! You can join by clicking below button:</p>\n                                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"action\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:30px auto;padding:0;text-align:center;width:100%;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\" width=\"100%\">\n                                                                    <tbody>\n                                                                        <tr>\n                                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                    <tbody>\n                                                                                        <tr>\n                                                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\"><a class=\"button button-blue\" href=\"{{join_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#FFF;text-decoration:none;background-color:#3097D1;border-top:10px solid #3097D1;border-right:18px solid #3097D1;border-bottom:10px solid #3097D1;border-left:18px solid #3097D1;\">Join</a></td>\n                                                                                        </tr>\n                                                                                    </tbody>\n                                                                                </table>\n                                                                            </td>\n                                                                        </tr>\n                                                                    </tbody>\n                                                                </table>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,\n                                                    <br /> {{app_name}}</p>\n                                                <table cellpadding=\"0\" cellspacing=\"0\" class=\"subcopy\" style=\"font-family:Avenir, Helvetica, sans-serif;border-top:1px solid #EDEFF2;margin-top:25px;padding-top:25px;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;line-height:1.5em;margin-top:0;text-align:left;font-size:12px;\">If you&rsquo;re having trouble clicking the &quot;Join&quot; button, copy and paste the URL below into your web browser: <a href=\"{{join_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#3869D4;word-wrap: break-word;display: block;max-width: 570px;\">{{join_url}}</a></p>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>','1550065963'),(2,'user-welcome-mail','Welcome to {{app_name}}!','name,verify_url, confirmation_code','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                <table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\n                        </tr>\n                        <tr>\n                            <td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear {{name}},</h1>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Thanks for creating an account with {{app_name}}. You can activate your email by clicking below button:</p>\n                                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"action\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:30px auto;padding:0;text-align:center;width:100%;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\" width=\"100%\">\n                                                                    <tbody>\n                                                                        <tr>\n                                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                    <tbody>\n                                                                                        <tr>\n                                                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\"><a class=\"button button-blue\" href=\"{{verify_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#FFF;text-decoration:none;background-color:#3097D1;border-top:10px solid #3097D1;border-right:18px solid #3097D1;border-bottom:10px solid #3097D1;border-left:18px solid #3097D1;\">Verify Email</a></td>\n                                                                                        </tr>\n                                                                                    </tbody>\n                                                                                </table>\n                                                                            </td>\n                                                                        </tr>\n                                                                    </tbody>\n                                                                </table>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">If you see the option to put confirmation code, use <strong>{{confirmation_code}}</strong></p>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,\n                                                    <br /> {{app_name}}\n                                                </p>\n                                                <table cellpadding=\"0\" cellspacing=\"0\" class=\"subcopy\" style=\"font-family:Avenir, Helvetica, sans-serif;border-top:1px solid #EDEFF2;margin-top:25px;padding-top:25px;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;line-height:1.5em;margin-top:0;text-align:left;font-size:12px;\">If you&rsquo;re having trouble clicking the &quot;Verify Email&quot; button, copy and paste the URL below into your web browser: <a href=\"{{reset_link}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#3869D4;word-wrap: break-word;display: block;max-width: 570px;\">{{verify_url}}</a></p>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>','1550065963'),(3,'user-verification-mail','Verify your email address!','name,verify_url, confirmation_code','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n						<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\r\n							<tbody>\r\n								<tr>\r\n									<td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\r\n									<h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear {{name}},</h1>\r\n\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">You can activate your email by clicking below button:</p>\r\n\r\n									<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"action\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:30px auto;padding:0;text-align:center;width:100%;\" width=\"100%\">\r\n										<tbody>\r\n											<tr>\r\n												<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\" width=\"100%\">\r\n													<tbody>\r\n														<tr>\r\n															<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n															<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n																<tbody>\r\n																	<tr>\r\n																		<td style=\"font-family:Avenir, Helvetica, sans-serif;\"><a class=\"button button-blue\" href=\"{{verify_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#FFF;text-decoration:none;background-color:#3097D1;border-top:10px solid #3097D1;border-right:18px solid #3097D1;border-bottom:10px solid #3097D1;border-left:18px solid #3097D1;\">Verify Email</a></td>\r\n																	</tr>\r\n																</tbody>\r\n															</table>\r\n															</td>\r\n														</tr>\r\n													</tbody>\r\n												</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">If you see the option to put confirmation code, use <strong>{{confirmation_code}}</strong></p>\r\n\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,<br />\r\n									{{app_name}}</p>\r\n\r\n									<table cellpadding=\"0\" cellspacing=\"0\" class=\"subcopy\" style=\"font-family:Avenir, Helvetica, sans-serif;border-top:1px solid #EDEFF2;margin-top:25px;padding-top:25px;\" width=\"100%\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n												<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;line-height:1.5em;margin-top:0;text-align:left;font-size:12px;\">If you&rsquo;re having trouble clicking the &quot;Verify Email&quot; button, copy and paste the URL below into your web browser: <a href=\"{{reset_link}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#3869D4;word-wrap: break-word;display: block;max-width: 570px;\">{{verify_url}}</a></p>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n						<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\r\n							<tbody>\r\n								<tr>\r\n									<td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','1550737096'),(4,'user-resetpassword-mail','Reset Password!','reset_link','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                <table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\n                        </tr>\n                        <tr>\n                            <td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0 15px;width:100%;\" width=\"100%\">\n                                    <tbody>\n                                        <tr>\n                                            <td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Hello!</h1>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">You are receiving this email because we received a password reset request for your account.</p>\n                                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"action\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:30px auto;padding:0;text-align:center;width:100%;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\" width=\"100%\">\n                                                                    <tbody>\n                                                                        <tr>\n                                                                            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                                    <tbody>\n                                                                                        <tr>\n                                                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\"><a class=\"button button-blue\" href=\"{{reset_link}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#FFF;text-decoration:none;background-color:#3097D1;border-top:10px solid #3097D1;border-right:18px solid #3097D1;border-bottom:10px solid #3097D1;border-left:18px solid #3097D1;\">Reset Password</a></td>\n                                                                                        </tr>\n                                                                                    </tbody>\n                                                                                </table>\n                                                                            </td>\n                                                                        </tr>\n                                                                    </tbody>\n                                                                </table>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">If you did not request a password reset, no further action is required.</p>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,\n                                                    <br /> {{app_name}}\n                                                </p>\n                                                <table cellpadding=\"0\" cellspacing=\"0\" class=\"subcopy\" style=\"font-family:Avenir, Helvetica, sans-serif;border-top:1px solid #EDEFF2;margin-top:25px;padding-top:25px;\" width=\"100%\">\n                                                    <tbody>\n                                                        <tr>\n                                                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;line-height:1.5em;margin-top:0;text-align:left;font-size:12px;\">If you&rsquo;re having trouble clicking the &quot;Reset Password&quot; button, copy and paste the URL below into your web browser: <a href=\"{{reset_link}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#3869D4;word-wrap: break-word;display: block;max-width: 570px;\">{{reset_link}}</a></p>\n                                                            </td>\n                                                        </tr>\n                                                    </tbody>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>','1550065963'),(5,'user-change-password-mail','Password changed!','name','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                <table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\n                        </tr>\n                        <tr>\n                            <td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear {{first_name}},</h1>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">You have successfully changed your password.</p>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">If you did not change password, immediately contact to Administrator.</p>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,\n                                                    <br /> {{app_name}}</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>','1550065963'),(6,'admin-notify-inquiry-mail','User has created an inquiry.','name, subject,inquiry_email,message','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\r\n						<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\r\n							<tbody>\r\n								<tr>\r\n									<td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\r\n									<h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear Admin ,</h1>\r\n\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">{{name}} has sent you an inquiry. Here are the details:</p>\r\n\r\n									<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"action\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:30px auto;padding:0;text-align:center;width:100%;\" width=\"100%\">\r\n										<tbody>\r\n											<tr>\r\n												<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n												<table 100=\"\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir, Helvetica, sans-serif; width=\">\r\n													<tbody>\r\n														<tr>\r\n															<th align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif; \">Name</th>\r\n															<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">{{name}}</td>\r\n														</tr>\r\n														<tr>\r\n															<th align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif; \">Email</th>\r\n															<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">{{inquiry_email}}</td>\r\n														</tr>\r\n														<tr>\r\n															<th align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif; \">Subject</th>\r\n															<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">{{subject}}</td>\r\n														</tr>\r\n														<tr>\r\n															<th align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif; \">Message</th>\r\n															<td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">{{message}}</td>\r\n														</tr>\r\n													</tbody>\r\n												</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,<br />\r\n									{{app_name}}</p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:Avenir, Helvetica, sans-serif;\">\r\n						<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\r\n							<tbody>\r\n								<tr>\r\n									<td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\r\n									<p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','1550231407'),(7,'user-thanku-inquiry-mail','Inquiry sent successfully.','name','<table cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#f5f8fa;margin:0;padding:0;width:100%;\" width=\"100%\">\n    <tbody>\n        <tr>\n            <td align=\"center\" style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                <table cellpadding=\"0\" cellspacing=\"0\" class=\"content\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0;padding:0;width:100%;\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td class=\"header\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:25px 0;text-align:center;\"><a href=\"{{app_url}}\" rel=\"nofollow\" style=\"font-family:Avenir, Helvetica, sans-serif;color:#bbbfc3;font-size:19px;font-weight:bold;text-decoration:none;\">{{app_name}} </a></td>\n                        </tr>\n                        <tr>\n                            <td class=\"body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;border-bottom:1px solid #EDEFF2;border-top:1px solid #EDEFF2;margin:0;padding:0;width:100%;\" width=\"100%\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"inner-body\" style=\"font-family:Avenir, Helvetica, sans-serif;background-color:#FFFFFF;margin:0 auto;padding:0;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <h1 style=\"font-family:Avenir, Helvetica, sans-serif;color:#2F3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left;\">Dear {{name}},</h1>\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">We have received your inquiry. We will contact you soon . </p>\n\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;color:#74787E;font-size:16px;line-height:1.5em;margin-top:0;text-align:left;\">Regards,\n                                                    <br /> {{app_name}}\n                                                </p>\n\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <tr>\n                            <td style=\"font-family:Avenir, Helvetica, sans-serif;\">\n                                <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"footer\" style=\"font-family:Avenir, Helvetica, sans-serif;margin:0 auto;padding:0;text-align:center;width:570px;\" width=\"570\">\n                                    <tbody>\n                                        <tr>\n                                            <td align=\"center\" class=\"content-cell\" style=\"font-family:Avenir, Helvetica, sans-serif;padding:35px;\">\n                                                <p style=\"font-family:Avenir, Helvetica, sans-serif;line-height:1.5em;margin-top:0;color:#AEAEAE;font-size:12px;text-align:center;\">&copy; 2017 {{app_name}}. All rights reserved.</p>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n        </tr>\n    </tbody>\n</table>','1550213555');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (131,'2018_12_11_072105_create_tbl_users',1),(132,'2018_12_11_081857_create_tbl_plans',1),(133,'2018_12_11_100942_company_detail',1),(134,'2018_12_11_105559_create_site_configs_table',1),(135,'2018_12_11_123817_create_user_types_table',1),(136,'2018_12_11_130504_social_networks',1),(137,'2018_12_11_130525_create_email_templates_table',1),(138,'2018_12_11_130725_email_templates_data',1),(139,'2018_12_11_135131_create_cms_table',1),(140,'2018_12_11_135620_contact_inquiry',1),(141,'2018_12_11_143355_cms_data',1),(142,'2018_12_13_074726_create_tbl_user_subscription',1),(143,'2018_12_14_060429_email_change_table',1),(144,'2018_12_17_091627_tbl_payment_methods',1),(145,'2018_12_17_095337_create_tbl_user_transactions',1),(146,'2018_12_18_140003_create_tbl_roles',1),(147,'2018_12_18_140403_create_tbl_permissions',1),(148,'2018_12_27_092956_add_cashier_tbls_field',1),(149,'2019_01_11_060732_create_tbl_platform_master',1),(150,'2019_01_11_061220_create_tbl_user_platform_store',1),(151,'2019_01_12_061334_create_password_resets_table',1),(152,'2019_01_13_111739_create_tbl_user_assigned',1),(153,'2019_01_15_100144_alter_tbl_plan_addcol_stripe_token',1),(154,'2019_02_12_070520_create_tbl_shopify',1),(155,'2019_02_12_070527_create_tbl_shopify_product',1),(156,'2019_02_12_070535_create_tbl_shopify_customers',1),(157,'2019_02_12_070541_create_tbl_shopify_orders',1),(158,'2019_02_14_133827_insert_enquiry_email_template',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,0),(2,1,1),(3,1,2),(4,1,3),(5,2,0),(6,2,1),(7,2,2),(10,3,0),(11,3,1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `special_price` double(8,2) NOT NULL,
  `max_platforms_count` int(11) NOT NULL,
  `max_stores_count` int(11) NOT NULL,
  `total_orders_allowed` int(11) NOT NULL,
  `monthly_orders_allowed` int(11) NOT NULL,
  `users_allowed` int(11) NOT NULL,
  `trial_days` int(11) NOT NULL,
  `stripe_token` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''0 - Inactive'',''1 - Active''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Basic','<p>Free</p>',0.00,0.00,2,2,3,3,5,30,'plan_EWh5nrBVypu8Qc','1','2019-02-14 06:27:24','2019-02-14 06:44:25'),(2,'Premium','<p>Second Level</p>',800.00,699.00,2,3,5,3,5,30,'plan_EWhKpq0R9g6456','1','2019-02-14 06:42:29','2019-02-14 06:51:57'),(3,'Silver','<p>Third Level</p>',5000.00,3999.00,5,8,9,3,5,30,'plan_EWhLC7Hc645mOB','1','2019-02-14 06:43:46','2019-02-19 08:08:17');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_master`
--

DROP TABLE IF EXISTS `platform_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_master`
--

LOCK TABLES `platform_master` WRITE;
/*!40000 ALTER TABLE `platform_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `platform_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''0 - Inactive'',''1 - Active''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  UNIQUE KEY `roles_role_id_unique` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Caas Power Assistant','Role-000srQCxu4Ocj','1','2019-02-14 07:13:39','2019-02-14 07:13:39'),(2,'Developer','Role-000cgBsHLRrRw','1','2019-02-14 11:56:22','2019-02-14 11:56:22'),(3,'QA','Role-000ei1v4D1q8G','1','2019-02-14 12:03:04','2019-02-14 12:03:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopify`
--

DROP TABLE IF EXISTS `shopify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_domain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopify`
--

LOCK TABLES `shopify` WRITE;
/*!40000 ALTER TABLE `shopify` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopify_customers`
--

DROP TABLE IF EXISTS `shopify_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopify_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopify_customers`
--

LOCK TABLES `shopify_customers` WRITE;
/*!40000 ALTER TABLE `shopify_customers` DISABLE KEYS */;
INSERT INTO `shopify_customers` VALUES (1,'{\"id\":967293993012,\"email\":\"test@yopmail.com\",\"accepts_marketing\":true,\"created_at\":\"2019-02-12T01:25:10-05:00\",\"updated_at\":\"2019-02-12T01:25:10-05:00\",\"first_name\":\"Test\",\"last_name\":\"customer\",\"orders_count\":0,\"state\":\"disabled\",\"total_spent\":\"0.00\",\"last_order_id\":null,\"note\":\"\",\"verified_email\":true,\"multipass_identifier\":null,\"tax_exempt\":false,\"phone\":null,\"tags\":\"\",\"last_order_name\":null,\"currency\":\"INR\",\"addresses\":[{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}],\"admin_graphql_api_id\":\"gid:\\/\\/shopify\\/Customer\\/967293993012\",\"default_address\":{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}}','2019-02-14 06:37:15','2019-02-14 06:37:15'),(2,'{\"id\":967293993012,\"email\":\"test@yopmail.com\",\"accepts_marketing\":true,\"created_at\":\"2019-02-12T01:25:10-05:00\",\"updated_at\":\"2019-02-12T01:25:10-05:00\",\"first_name\":\"Test\",\"last_name\":\"customer\",\"orders_count\":0,\"state\":\"disabled\",\"total_spent\":\"0.00\",\"last_order_id\":null,\"note\":\"\",\"verified_email\":true,\"multipass_identifier\":null,\"tax_exempt\":false,\"phone\":null,\"tags\":\"\",\"last_order_name\":null,\"currency\":\"INR\",\"addresses\":[{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}],\"admin_graphql_api_id\":\"gid:\\/\\/shopify\\/Customer\\/967293993012\",\"default_address\":{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}}','2019-02-20 09:19:11','2019-02-20 09:19:11'),(3,'{\"id\":967293993012,\"email\":\"test@yopmail.com\",\"accepts_marketing\":true,\"created_at\":\"2019-02-12T01:25:10-05:00\",\"updated_at\":\"2019-02-12T01:25:10-05:00\",\"first_name\":\"Test\",\"last_name\":\"customer\",\"orders_count\":0,\"state\":\"disabled\",\"total_spent\":\"0.00\",\"last_order_id\":null,\"note\":\"\",\"verified_email\":true,\"multipass_identifier\":null,\"tax_exempt\":false,\"phone\":null,\"tags\":\"\",\"last_order_name\":null,\"currency\":\"INR\",\"addresses\":[{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}],\"admin_graphql_api_id\":\"gid:\\/\\/shopify\\/Customer\\/967293993012\",\"default_address\":{\"id\":1078030893108,\"customer_id\":967293993012,\"first_name\":\"Test\",\"last_name\":\"customer\",\"company\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"India\",\"zip\":\"\",\"phone\":\"\",\"name\":\"Test customer\",\"province_code\":null,\"country_code\":\"IN\",\"country_name\":\"India\",\"default\":true}}','2019-02-21 08:08:54','2019-02-21 08:08:54');
/*!40000 ALTER TABLE `shopify_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopify_orders`
--

DROP TABLE IF EXISTS `shopify_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopify_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopify_orders`
--

LOCK TABLES `shopify_orders` WRITE;
/*!40000 ALTER TABLE `shopify_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopify_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopify_product`
--

DROP TABLE IF EXISTS `shopify_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopify_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopify_product`
--

LOCK TABLES `shopify_product` WRITE;
/*!40000 ALTER TABLE `shopify_product` DISABLE KEYS */;
INSERT INTO `shopify_product` VALUES (1,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-14 06:36:40','2019-02-14 06:36:40'),(2,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-14 06:37:04','2019-02-14 06:37:04'),(3,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-20 08:36:15','2019-02-20 08:36:15'),(4,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-20 09:01:16','2019-02-20 09:01:16'),(5,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-20 09:18:11','2019-02-20 09:18:11'),(6,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 08:08:45','2019-02-21 08:08:45'),(7,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 08:13:26','2019-02-21 08:13:26'),(8,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 10:29:12','2019-02-21 10:29:12'),(9,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 10:49:04','2019-02-21 10:49:04'),(10,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 10:49:07','2019-02-21 10:49:07'),(11,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 11:02:20','2019-02-21 11:02:20'),(12,'{\"id\":1567861047348,\"title\":\"first product\"}','2019-02-21 11:03:02','2019-02-21 11:03:02');
/*!40000 ALTER TABLE `shopify_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configs`
--

DROP TABLE IF EXISTS `site_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configs`
--

LOCK TABLES `site_configs` WRITE;
/*!40000 ALTER TABLE `site_configs` DISABLE KEYS */;
INSERT INTO `site_configs` VALUES (1,'header_script','','1550065963','1550065963'),(2,'footer_script','','1550065963','1550065963');
/*!40000 ALTER TABLE `site_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_networks`
--

DROP TABLE IF EXISTS `social_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_networks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_by` tinyint(4) NOT NULL DEFAULT 1,
  `social_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_on` tinyint(4) NOT NULL DEFAULT 1,
  `updated_at` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_networks`
--

LOCK TABLES `social_networks` WRITE;
/*!40000 ALTER TABLE `social_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_assigned`
--

DROP TABLE IF EXISTS `user_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_assigned` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `primary_user_id` int(10) unsigned NOT NULL,
  `secondary_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_assigned_customer_id_foreign` (`customer_id`),
  KEY `user_assigned_primary_user_id_foreign` (`primary_user_id`),
  KEY `user_assigned_secondary_user_id_foreign` (`secondary_user_id`),
  CONSTRAINT `user_assigned_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_assigned_primary_user_id_foreign` FOREIGN KEY (`primary_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_assigned_secondary_user_id_foreign` FOREIGN KEY (`secondary_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_assigned`
--

LOCK TABLES `user_assigned` WRITE;
/*!40000 ALTER TABLE `user_assigned` DISABLE KEYS */;
INSERT INTO `user_assigned` VALUES (1,3,6,12),(2,10,7,7);
/*!40000 ALTER TABLE `user_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment_methods`
--

DROP TABLE IF EXISTS `user_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `payment_method` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saved_token` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_expiry` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_cvv` tinyint(4) NOT NULL,
  `cc_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_payment_methods_user_id_foreign` (`user_id`),
  CONSTRAINT `user_payment_methods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment_methods`
--

LOCK TABLES `user_payment_methods` WRITE;
/*!40000 ALTER TABLE `user_payment_methods` DISABLE KEYS */;
INSERT INTO `user_payment_methods` VALUES (1,3,'stripe',NULL,NULL,'2/2029',0,'Visa',NULL),(2,3,'stripe',NULL,NULL,'1/2020',0,'Visa',NULL),(3,15,'paypal',NULL,NULL,NULL,0,NULL,'vishal10@fidelesys.com'),(4,16,'stripe',NULL,NULL,'2/2023',0,'Visa',NULL),(5,10,'paypal',NULL,NULL,NULL,0,NULL,'vishal10@fidelesys.com'),(6,17,'stripe',NULL,NULL,'12/2020',0,'Visa',NULL);
/*!40000 ALTER TABLE `user_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plan_subscriptions`
--

DROP TABLE IF EXISTS `user_plan_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plan_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `plan_id` int(10) unsigned NOT NULL,
  `platform_id` int(10) unsigned NOT NULL,
  `primary_platform_id` int(11) NOT NULL,
  `plan_start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `plan_payment_date` timestamp NULL DEFAULT NULL,
  `plan_upgrade_date` timestamp NULL DEFAULT NULL,
  `plan_expiring_date` timestamp NULL DEFAULT NULL,
  `trial_days` int(11) NOT NULL,
  `free_trial_expire_date` timestamp NULL DEFAULT NULL,
  `allowed_addon_count` int(11) NOT NULL,
  `payment_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '''0 - Pending'',''1 - Done''',
  `stripe_id` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `plan_duration_months` enum('0','6','12') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `additional_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''0 - Inactive'',''1 - Active''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_plan_subscriptions_user_id_foreign` (`user_id`),
  KEY `user_plan_subscriptions_plan_id_foreign` (`plan_id`),
  CONSTRAINT `user_plan_subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_plan_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plan_subscriptions`
--

LOCK TABLES `user_plan_subscriptions` WRITE;
/*!40000 ALTER TABLE `user_plan_subscriptions` DISABLE KEYS */;
INSERT INTO `user_plan_subscriptions` VALUES (1,3,2,0,0,'2019-02-14 06:47:39','2019-03-16 06:47:02',NULL,'2019-08-13 06:47:02',30,'2019-03-16 06:47:02',1,'0','tok_1E3dzpFWyZ2H52PHX7VhZMYb','Premium',1,'6',NULL,'1','2019-02-14 06:47:02','2019-02-14 06:47:39'),(2,3,2,0,0,'2019-02-19 07:50:03','2019-03-16 06:49:10',NULL,'2019-08-13 06:49:10',30,'2019-03-16 06:49:10',1,'0','tok_1E3e1rFWyZ2H52PHtnnB9Ej8','Premium',1,'6',NULL,'1','2019-02-14 06:49:10','2019-02-19 07:50:03'),(3,15,1,0,0,'2019-02-21 08:40:29','2019-03-23 08:40:29',NULL,'2019-03-23 08:40:29',30,'2019-03-23 08:40:29',0,'0',NULL,NULL,1,'0',NULL,'1','2019-02-21 08:40:29','2019-02-21 08:40:29'),(4,16,3,0,0,'2019-02-21 08:46:14','2019-03-23 08:46:14',NULL,'2019-08-20 08:46:14',30,'2019-03-23 08:46:14',0,'0','tok_1E6DC0FWyZ2H52PHdweUdzEq','Silver',1,'0',NULL,'1','2019-02-21 08:46:14','2019-02-21 08:46:14'),(5,10,2,0,0,'2019-02-21 09:54:16','2019-03-23 09:54:16',NULL,'2019-08-20 09:54:16',30,'2019-03-23 09:54:16',0,'0',NULL,NULL,1,'0',NULL,'1','2019-02-21 09:54:16','2019-02-21 09:54:16'),(6,17,3,0,0,'2019-02-22 17:04:59','2019-03-24 17:04:59',NULL,'2019-08-21 17:04:59',30,'2019-03-24 17:04:59',0,'0','tok_1E6hSEFWyZ2H52PHp658sQiB','Silver',1,'0',NULL,'1','2019-02-22 17:04:59','2019-02-22 17:04:59');
/*!40000 ALTER TABLE `user_plan_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_platform_store_mapping`
--

DROP TABLE IF EXISTS `user_platform_store_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_platform_store_mapping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `platform_id` int(10) unsigned NOT NULL,
  `store_name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_url` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_sso_token` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_api_token` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_admin_user` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_admin_password` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftp_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssh_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifs_id` int(10) unsigned NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''0 - Inactive'',''1 - Active''',
  PRIMARY KEY (`id`),
  KEY `user_platform_store_mapping_user_id_foreign` (`user_id`),
  KEY `user_platform_store_mapping_platform_id_foreign` (`platform_id`),
  CONSTRAINT `user_platform_store_mapping_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platform_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_platform_store_mapping_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_platform_store_mapping`
--

LOCK TABLES `user_platform_store_mapping` WRITE;
/*!40000 ALTER TABLE `user_platform_store_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_platform_store_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_transactions`
--

DROP TABLE IF EXISTS `user_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_plan_id` int(10) unsigned NOT NULL,
  `transaction_id` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upm_id` int(10) unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '''0 - Plan'',''1 - Addon''',
  `payment_status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '''0 - Pending'',''1 - Success'',''2 - Failure''',
  `payment_attempts` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_transactions_user_plan_id_foreign` (`user_plan_id`),
  KEY `user_transactions_upm_id_foreign` (`upm_id`),
  KEY `user_transactions_user_id_foreign` (`user_id`),
  CONSTRAINT `user_transactions_upm_id_foreign` FOREIGN KEY (`upm_id`) REFERENCES `user_payment_methods` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_transactions_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_transactions`
--

LOCK TABLES `user_transactions` WRITE;
/*!40000 ALTER TABLE `user_transactions` DISABLE KEYS */;
INSERT INTO `user_transactions` VALUES (1,3,2,'Trans-KRM5GHtcTA',1,0.50,'0','0',0,'2019-02-14 06:47:02','2019-02-14 06:47:02'),(2,3,2,'Trans-WKER0ZLda1',2,0.50,'0','0',0,'2019-02-14 06:49:10','2019-02-14 06:49:10'),(3,15,1,'Trans-iqy28XzKV6',3,0.50,'0','0',0,'2019-02-21 08:40:29','2019-02-21 08:40:29'),(4,16,3,'Trans-1J5IM8pGCS',4,0.50,'0','0',0,'2019-02-21 08:46:14','2019-02-21 08:46:14'),(5,10,2,'Trans-UDmcBC2JOf',5,0.50,'0','0',0,'2019-02-21 09:54:16','2019-02-21 09:54:16'),(6,17,3,'Trans-HTi5fezUxR',6,0.50,'0','0',0,'2019-02-22 17:04:59','2019-02-22 17:04:59');
/*!40000 ALTER TABLE `user_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '''1- Member'',''2 - Admin'',''3- Guest'',''4- Potential'',''5- Customer'' - Edit this field to get more user types',
  PRIMARY KEY (`type_id`),
  KEY `user_types_user_id_foreign` (`user_id`),
  CONSTRAINT `user_types_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,1,'2'),(2,2,'3'),(3,3,'5'),(5,5,'3'),(6,6,'1'),(7,7,'1'),(9,9,'3'),(10,10,'5'),(11,11,'3'),(12,12,'1'),(13,13,'1'),(14,14,'3'),(15,15,'4'),(16,16,'5'),(17,17,'5');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_setting` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_source` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '''0 - Pending'', ''1 - Active'', ''2 - Inactive'''', ''3 - Blocked''',
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Admin','hello.lds@yopmail.com',NULL,'9929616191','$2y$10$Mv4ysVOUqgtISZYfj2y5Fub5GHpxznstjso5FNYqbySz266LuUsMi','0w9xbxVKaF1KYPPMHyurfYRgP0Hq8tZLzXGfy9lz1jWBRSx8hHtNb42xjYv8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-13 13:52:43','2019-02-13 13:52:43','2019-02-21 10:26:09'),(2,NULL,'arun1','test_t@yopmail.com',NULL,'24243535345','$2y$10$yLFvRFqEw9UaoZNsuqCrjudtkBDmxRPHycj57uE4KQu5SCTRDT84.','1Ohs3CdYf04Co9KgzMlCKnZ0bO0gVdhTT1wQ5djyxIVPSTZV1x3dPK6Wq9BW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','2019-02-13 13:54:34','2019-02-13 13:54:34','2019-02-14 12:06:14'),(3,NULL,'Arundhati Saxena','test@yopmail.com',NULL,'123456789','$2y$10$.tZPSUnJ1qCW4KqEiiUzPeLBumJwg6r6akWzJV12Jgpq2CweIAeXG','tZ9wqS0cVkMU0IzMCOjD7brX3phWUbWIvC62dJYqNgh149fshY0azCGKa6be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-14 06:28:31','2019-02-14 06:28:31','2019-02-14 07:29:49'),(5,NULL,'test','testarun1@yopmail.com',NULL,'9929616191','$2y$10$iMM4D5tVMU8sd2EkR2ekQuD7a/1EqGxVjzh2S6ImljqSPLGLH3hbC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-02-14 07:30:23','2019-02-14 07:30:23','2019-02-14 07:30:23'),(6,1,'Arundhati','krati11.saxena@gmail.com',NULL,'9929616129','$2y$10$26AvduK9jYG2gRmbemYhoO7Rud2CmZ5cRpkEE2ucJwr5wBYGExRzK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-02-14 11:49:47','2019-02-14 11:49:47','2019-02-14 11:50:15'),(7,1,'testAS','test_as@yopmail.com',NULL,'2345678901','$2y$10$vmI.guPQMrqWufmYk7XwfOy5pjl2FxcnJj9eEFRip8pnj4sSXG4.m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-14 11:53:02','2019-02-14 11:53:02','2019-02-14 11:55:18'),(9,NULL,'vishal jain','vishal.chikki0099@gmail.com',NULL,NULL,'$2y$10$BDX.tHqaBNKfh0q5jXr73OnPODjedE94LEU./sUl6lzMq.uw7ppK6','tCRLVlECfMqjs3nVMQ3Ewg1hE91XCwP4l4teyweRQR5KLeXLq9p4VT8gDR4x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-15 14:02:22','2019-02-15 14:02:22','2019-02-15 14:05:08'),(10,NULL,'Vishal Jain','vishal@fidelesys.com',NULL,NULL,'$2y$10$iVI0dXYABjPlJNn9c6Dh.eGieuyGbYIwzCj9p2o7aFk.uB21wa3ze','YPGVkzzIO4uNTr2JCb6DD0eh8u60QpicsF8cD37VHa1sMcgGuKRH5XOiNAQK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-15 14:10:32','2019-02-15 14:10:32','2019-02-21 09:55:19'),(11,NULL,'lalit sain','lalit@fidelesys.com',NULL,NULL,'$2y$10$hKnJ4h5tY0/zADDzkgNK/upfrQ0v72ySe6WAA/1iFBbhSIDJXgTcq','IKHypKIoQXOnaLFfhRQMQsCezqXRyA0FuZlrK3K5sx1LFjhKL5CRlNALIDmg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-15 14:10:55','2019-02-15 14:10:55','2019-02-15 14:13:01'),(12,2,'Tester','test_sa@yopmail.com',NULL,'9929616191','$2y$10$AYnT/wHDEqNc3S8UzwNe2umlncCGZIDVqzo3JoOHT5F5yGaX7T24u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-02-19 08:15:40','2019-02-19 08:15:40','2019-02-19 08:15:40'),(13,2,'AS','test119@yopmail.com',NULL,'9929616191','$2y$10$LtjLZUbUPnm5XIxyFUmoIuVw/e.Ko/aKQOvdiWe5WD8SQpRUf4lkS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-02-19 08:19:37','2019-02-19 08:19:37','2019-02-19 08:19:37'),(14,NULL,'arundhati','arundhati@yopmail.com',NULL,'1234567890','$2y$10$vXhmOiLE2Q/Ny33j5z2C7e8NO50IZxCHSYhzMzrQ2mG99e9xquEZu','RyGym4rnmuHSKBVrtihNvDwN2C1wAThMr8BWfQ7gO7WkSJi9jVKwSrY1F67i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2019-02-21 07:27:31','2019-02-21 07:27:31','2019-02-21 07:28:03'),(15,NULL,'Vishal Jain','vishaltest@yopmail.com',NULL,'7597900055','$2y$10$tJSqRnocPCxmWwjJQyTCp.IqVoIoI33iQ7/gayxTrXUvLcku3MT3S','9YbBbMOAToimP0aFuAIXRG18JMeZd7njtaVZRqRWm13d4O1THqjf2lqbplUN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-21 08:21:07','2019-02-21 08:21:07','2019-02-21 08:40:38'),(16,NULL,'Test User','stripe@yopmail.com',NULL,'7597900055','$2y$10$OBqYoqjzOrg.LEtoxMeJD.z97b..tvillb3fBqvvlvChrovVlYPFO','PswjNR63bliKgt3iw6k5KJvcimWgFzASqS3kOTihFtHqFhGYaca6CaNxMcm3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-21 08:45:13','2019-02-21 08:45:13','2019-02-21 08:46:21'),(17,NULL,'vipul dadhich','vipul.dadhich@gmail.com',NULL,NULL,'$2y$10$Vy69QXiw2Tn8pf6CNJVYEOTv3PZIOoxha/kyrCnThpKelxYbn/TU.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2019-02-22 17:03:52','2019-02-22 17:03:52','2019-02-22 17:03:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-24 18:44:21
