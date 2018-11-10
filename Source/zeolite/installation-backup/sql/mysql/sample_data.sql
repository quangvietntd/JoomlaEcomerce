-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2009 at 05:25 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ja_zeolite2`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__banner`
--

DROP TABLE IF EXISTS `#__banner`;
CREATE TABLE IF NOT EXISTS `#__banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__banner`
--

INSERT INTO `#__banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 305, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 305, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 300, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 300, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 90, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 88, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__bannerclient`
--

DROP TABLE IF EXISTS `#__bannerclient`;
CREATE TABLE IF NOT EXISTS `#__bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__bannerclient`
--

INSERT INTO `#__bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__bannertrack`
--

DROP TABLE IF EXISTS `#__bannertrack`;
CREATE TABLE IF NOT EXISTS `#__bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) TYPE=MyISAM;

--
-- Dumping data for table `#__bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) TYPE=MyISAM  AUTO_INCREMENT=42 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Business: General', '', 'business-general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(34, 0, 'Demo category', '', 'demo-category', '', '5', 'left', '<p>Eget libero porttitor semper Aenean id id id senectus est vitae. Sit nec risus a risus Donec Phasellus vel vitae eu leo. Habitasse magna eleifend ipsum fringilla tellus pharetra morbi pretium id Lorem.</p>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(41, 0, 'Best selling products', '', 'best-selling-products', '', '5', 'left', '<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__components`
--

DROP TABLE IF EXISTS `#__components`;
CREATE TABLE IF NOT EXISTS `#__components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) TYPE=MyISAM  AUTO_INCREMENT=36 ;

--
-- Dumping data for table `#__components`
--

INSERT INTO `#__components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=en-GB\nsite=en-GB', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1),
(35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.0\nDEV_STATUS=stable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) TYPE=MyISAM  AUTO_INCREMENT=88 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div>\r\nJoomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications.\r\n</div>\r\n\r\n<p>Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users. </p>\r\n\r\n', '\r\n\r\n<p>With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.</p>\r\n\r\n<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p>\r\n\r\n<p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p>\r\n\r\n<p>Thinking Web publishing? Think Joomla!</p>', 1, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2008-05-05 03:35:16', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 32, 0, 2, '', '', 0, 93, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 0, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:19:35', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 6, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', 0, 1, 0, 3, '2004-08-09 22:30:34', 62, '', '2007-11-08 12:20:41', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 7, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of hundreds of free <a href="http://extensions.joomla.org" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions</a>  library today. </p>', '', 0, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:21:51', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 8, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a>  The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p><p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p><p>The Joomla! licence has always been GPL.</p>', '', 1, 4, 0, 25, '2004-08-20 10:11:07', 62, '', '2007-11-04 23:02:47', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 114, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla! Core Team consists of volunteer developers, designers, administrators and managers who, together with a large range of Work Groups of dedicated community members have taken Joomla! to new heights in its relatively short life. This well-oiled machine is often copied but never surpassed.  Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '<p>The project has a nice balance of legacy development from well-known coders such as Andrew Eddie (who pioneered Mambo''s early success) to some young guns like Johan Janssens and Louis Landry.  This dynamic trio has been further strengthening the project by bringing in new talent.  In open source development people joke about the ''bus'' factor.  Projects which don''t have coding ''spread'' are considered less sound should their single lead developer get hit by a bus.</p>', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:10:35', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 3, '', '', 0, 55, 'robots=\nauthor='),
(7, 'Stick to the Code!', 'stick-to-the-code', '', 'To ensure this code release, Wilco Jansen resorted to sending rum to joint lead-developer Johan Janssens.  Johan, who''s had a penchant for rum ever since the first "Pirate''s of the Caribbean" movie screened, took the bait, mixed it with Cola, and here we are with our latest 1.5 release.  It looks like pirate talk will figure quite a lot in future Joomla! development! ', '<strong><br />Translation for you real pirates:<br /></strong> <br />First Mate Wilco resorted t'' sendin'' rum t'' joint Capt''n Johan. Johan, who''s had a penchant for rum ever since t'' first "Pirate''s o'' t'' Caribbean" movie screened, took t'' bait, mixed it with molasses, and here we be with our latest 1.5 release. It looks like pirate talk will figure quite a lot in future Joomla! development!', 1, 1, 0, 1, '2004-07-07 12:00:00', 62, '', '2007-11-25 22:37:55', 62, 0, '0000-00-00 00:00:00', '2004-07-07 11:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 13, 0, 4, '', '', 0, 55, 'robots=\nauthor='),
(8, 'The Legend of Buca di Beppo', 'the-legend-of-buca-di-beppo', '', '<p>The legend of Buca di Beppo involves a covert meeting of key developers in a Mafia-style restaurant in the United States.  ''Bucas'' has on more than one occasion been the catalyst for key (and in some cases considered insurmountable) development ''humps'' being overcome.</p><p>With copius amounts of food and wine flowing, the creative juices of coders seem to work keener, faster, and problems are solved. Louis Landry famously agreed that living near a Bucas could actually lead to faster development cycles.</p><p>Mmmm. A restaurant with photos of famous Mafia films like <em>The Godfather</em> and violin cases leaning against the booths.  Makes you wonder, doesn''t it?  </p><p>If Joomla! was a commercial venture, we''re sure management would actually consider building a Bucas inside the building!</p><p>Masterchief meet Bugsy Landry. </p>', '', 1, 1, 0, 1, '2004-04-12 09:54:06', 62, '', '2007-11-08 12:14:09', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 242, 'robots=\nauthor='),
(9, '1 Million Smiles', '1-million-smiles', '', '<p>The Joomla! team has about 1 million good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had more than 1 million downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:16:19', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 6, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://joomlacode.org" title="The Joomla! Code Repository">JoomlaCode</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://dev.joomla.org/content/view/42/66/" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 3, 0, 32, '2006-09-30 14:06:37', 62, '', '2007-11-08 11:55:56', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 15, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2006-09-30 20:27:52', 62, '', '2007-11-08 11:01:01', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 13, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use utf-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 3, 0, 31, '2006-10-05 01:11:29', 62, '', '2007-11-08 11:39:51', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 8, '', '', 0, 28, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 3, 0, 28, '2006-10-06 16:47:35', 62, '', '2007-11-04 23:12:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 10, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 3, 0, 31, '2006-10-06 21:27:49', 62, '', '2007-05-03 09:39:48', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 6, '', '', 0, 22, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perfom actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 3, 0, 31, '2006-10-06 19:28:35', 62, '', '2007-11-08 11:26:51', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 7, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', 1, 3, 0, 28, '2006-10-06 19:29:28', 62, '', '2007-11-08 11:03:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 19, 'robots=\nauthor='),
(17, 'My MySQL  database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 3, 0, 31, '2006-10-07 09:30:37', 62, '', '2007-11-08 11:39:01', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 7, '', '', 0, 8, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Choose from over 360 News Feeds from around the world </li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site</li></ul>', 1, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2007-11-04 16:38:53', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 4, '', '', 0, 82, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.</p>\r\n\r\n<p>So what''s the catch? How much does this system cost?</p>\r\n\r\n<p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p>\r\n\r\n<p>Joomla! changes all that ...Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache.</p>\r\n\r\n<p>It is easy to install and administer, and is reliable. </p>\r\n\r\n<p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p>\r\n\r\n<p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community.</p>', '', 1, 4, 0, 29, '2006-10-09 07:49:20', 62, '', '2008-05-06 04:56:41', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 2, '', '', 0, 209, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p><p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p><p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p><p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a>  (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p><p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p><h1>Documentation </h1><p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p><p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p><h1>Want to help? </h1><p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/viewforum.php?f=62" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/viewforum.php?f=60" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p><p><a class="urlextern" href="http://forum.joomla.org/viewforum.php?f=391" target="_blank" title="http://forum.joomla.org/viewforum.php?f=59" onclick="return svchk()"><br /></a></p>', '', 1, 4, 0, 25, '2006-10-09 08:33:57', 62, '', '2008-06-06 09:45:32', 65, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 1, '', '', 0, 543, 'robots=\nauthor='),
(21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 140,000 active registered Users on the <a href="http://forums.joomla.org">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Nearly 1,900,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>2200+ Extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li><li><span>Alexa report [November 2007]: Joomla.org at #690 of the busiest Web sites in the world.</span></li></ul>', '', 1, 4, 0, 30, '2006-10-09 16:46:37', 62, '', '2007-11-04 18:24:09', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 198, 'robots=\nauthor='),
(22, 'What''s New In 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n\r\n', '\r\n\r\n<p>The goals for the Joomla! 1.5 release are to: </p>\r\n\r\n<ul>\r\n<li>Substantially improve usability, manageability, and scalability far beyond the original Mambo foundations.</li>\r\n<li>Expand accessibility to support internationalisation, double-byte characters and Right-to-Left support for Arabic, Farsi, and Hebrew languages for example amongst others.</li>\r\n<li>Extend the integration of external applications through Web Services and remote authentication such as the Lightweight Directory Access Protocol (LDAP).</li>\r\n<li>Enhance the content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination.</li>\r\n<li>Achieve a more sustainable and flexible framework for Component and Extension developers.</li>\r\n<li>Deliver backward compatibility with previous releases of Components, Templates, Modules and other Extensions.</li>\r\n</ul>', 1, 4, 0, 29, '2006-10-11 22:13:58', 62, '', '2008-05-06 04:55:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 288, 'robots=\nauthor='),
(44, 'Zeolite''s Typography', 'zeolites-typography', '', '<p>This page presents most of typographical aspects of JA Zeolite. <span class="highlight">Make your readers happy</span> with great Typography and User Experience!</p>\r\n\r\n<h1>This is an Heading 1</h1>\r\n<p>Lorem tortor Curabitur urna interdum Maecenas ut felis Sed euismod id. Congue Quisque augue elit dolor nibh id lobortis egestas tristique fringilla. Laoreet elit.</p>\r\n\r\n<h2>This is an Heading 2</h2>\r\n<p>Wisi sed pede Phasellus Vestibulum elit consequat consequat eu pellentesque metus. Laoreet Vestibulum pharetra pede mattis nunc dapibus id magna a dictumst.</p>\r\n\r\n<p>Below is a sample of <strong>&lt;pre&gt;</strong> or <strong>&lt;div class="code"&gt;</strong></p>\r\n<pre>\r\n#ja-rightcol {\r\n  width: 180px;\r\n  float: right;\r\n  color: #EEEEEE;\r\n}\r\n</pre>\r\n\r\n<h3>This is an Heading 3</h3>\r\n<p>Wisi sed pede Phasellus Vestibulum elit consequat consequat eu pellentesque metus. Laoreet Vestibulum pharetra pede mattis nunc dapibus id magna a dictumst. Nunc cursus sem et pretium sapien eget consectetuer malesuada Phasellus Curabitur.</p>\r\n\r\n<p>Enim tortor consequat gravida molestie <span class="big-highlight">This is a big highlight</span> ipsum enim dictum ligula tortor</p>\r\n\r\n<ol>\r\n<li>This is a sample <strong>Ordered List</strong>.</li>\r\n<li>Lorem ipsum dolor sit amet consectetuer.</li>\r\n<li>Condimentum quis.</li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n</ol>\r\n\r\n<h4>This is an Heading 4</h4>\r\n<p>Wisi sed pede Phasellus Vestibulum elit consequat consequat eu pellentesque metus. Laoreet Vestibulum pharetra pede mattis nunc dapibus id magna a dictumst. Nunc cursus sem et pretium sapien eget consectetuer malesuada Phasellus Curabitur.</p>\r\n\r\n<ul>\r\n<li>This is a sample <strong>Unordered List</strong>.</li>\r\n<li>Condimentum quis.</li>\r\n<li>Congue Quisque augue elit dolor.</li>\r\n<li>Nunc cursus sem et pretium sapien eget.</li>\r\n</ul>\r\n\r\n<ul class="checklist">\r\n<li>This is a sample <strong>Check list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n\r\n\r\n<ul class="stars">\r\n<li>This is a sample <strong>Unordered list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n\r\n<ul class="arrow">\r\n<li>This is a sample <strong>Unordered list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n\r\n<div class="bubble1"><div><div><div><div><div>\r\n    This is a sample Bubble. Use &lt;<strong>div class="bubble1"&gt;</strong> &lt;div&gt; &lt;div&gt; &lt;div&gt; &lt;div&gt; &lt;div&gt; Your Bubble goes here! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;&lt;span class="author"&gt;ROUNDED SPEECH BUBBLE&lt;/span&gt;\r\n<strong>&lt;/div&gt;</strong>\r\n</div></div></div></div></div>\r\n<span class="author">ROUNDED SPEECH BUBBLE.</span>\r\n</div>\r\n\r\n<div class="bubble2"><div><div><div><div><div>\r\n  This is a sample Bubble. Use &lt;<strong>div class="bubble2"&gt;</strong>&lt;div&gt;&lt;div&gt;&lt;div&gt; &lt;div&gt;&lt;div&gt;Your Bubble goes here! &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span class="author"&gt;SQUARE SPEECH BUBBLE.&lt;/span&gt;\r\n<strong>&lt;/div&gt;</strong>\r\n</div></div></div></div></div>\r\n<span class="author">SQUARE SPEECH BUBBLE</span>.\r\n</div>\r\n\r\n<div class="bubble3"><div><div><div><div><div>\r\n    This is a sample Bubble. Use &lt;<strong>div class="bubble3"&gt;</strong> &lt;div&gt; &lt;div&gt; &lt;div&gt; &lt;div&gt; &lt;div&gt; Your Bubble goes here! &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;&lt;/div&gt;&lt;span class="author"&gt;ROUNDED THINKING BUBBLE&lt;/span&gt;\r\n<strong>&lt;/div&gt;</strong>\r\n</div></div></div></div></div>\r\n<span class="author">ROUNDED THINKING BUBBLE</span>.\r\n</div>\r\n\r\n<div class="bubble4"><div><div><div><div><div>\r\n  This is a sample Bubble. Use &lt;<strong>div class="bubble4"&gt;</strong>&lt;div&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt; Your Bubble goes here! &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;span class="author"&gt;SQUARE THINKING BUBBLE&lt;/span&gt;\r\n<strong>&lt;/div&gt;</strong>\r\n</div></div></div></div></div>\r\n<span class="author">SQUARE THINKING BUBBLE</span>.\r\n</div>\r\n\r\n<p class="stickynote">This is a sample clip note. Use <strong>&lt;p class="stickynote"&gt;Your clip note goes here!&lt;/p&gt;</strong> to form a clip note!</p>\r\n\r\n<p class="download">This is a sample download. Use <strong>&lt;div class="download"&gt;&lt;p&gt;Your download goes here!&lt;/p&gt;</strong> to form a download!</p>\r\n\r\n<blockquote><span class="open">T</span>his is a sample Blockquote. Use <strong>&lt;blockquote&gt;Your quote goes here!&lt;/blockquote&gt;</strong> to form a quote!</blockquote>\r\n\r\n<blockquote><span class="open">T</span>his is a sample Blockquote. Use <strong>&lt;blockquote&gt;&lt;span class="open"&gt;Y&lt;/span&gt;our quote goes her&lt;span class="close"&gt;e!&lt;/span&gt;&lt;/blockquote&gt;</strong> to form a quote<span class="close">!</span></blockquote>\r\n\r\n<p class="blocknumber"><span class="bignumber">01</span>This is a sample block number. Use <strong>&lt;p class="blocknumber"&gt;&lt;span class="bignumber"&gt;01.&lt;/span&gt;Your content goes here!&lt;/p&gt;</strong> to form a block number!</p>\r\n\r\n<p class="blocknumber"><span class="bignumber">02</span>This is a sample block number. Use <strong>&lt;p class="blocknumber"&gt;&lt;span class="bignumber"&gt;02.&lt;/span&gt;Your content goes here!&lt;/p&gt;</strong> to form a block number!</p>\r\n\r\n<p class="blocknumber"><span class="bignumber">03</span>This is a sample block number. Use <strong>&lt;p class="blocknumber"&gt;&lt;span class="bignumber"&gt;03.&lt;/span&gt;Your content goes here!&lt;/p&gt;</strong> to form a block number!</p>\r\n\r\n<p class="error">This is a sample error message. Use <strong>&lt;p class="error"&gt;Your error message goes here!&lt;/p&gt;</strong>.</p>\r\n\r\n<p class="message">This is a sample info message. Use <strong>&lt;p class="message"&gt;Your info message goes here!&lt;/p&gt;</strong>.</p>\r\n\r\n<p class="tips">This is a sample tips message. Use <strong>&lt;p class="tips"&gt;Your tips goes here!&lt;/p&gt;</strong>.</p>\r\n\r\n<p>This is a <span class="highlight">highlight phrase</span>. Use <strong>&lt;span class="highlight"&gt;Your highlight phrase goes here!&lt;/span&gt;</strong>.</p>\r\n\r\n<p><span class="dropcap">T</span>his is a Magazine Style Drop Cap. The first letter in this paragraph is big. JA Zeolite bring into your Jooomla template the magazine drop cap technique and CSS2 includes the first-letter pseudo class. In all fairness to the paragraph itself we probably should type enough to see how it looks when it is surrounded by its textual friends by using more words.</p>\r\n\r\n<div class="legend">\r\n<h3 class="legend-title">Legend style</h3>\r\n<p>Use <strong>&lt;div class="legend"&gt;&lt;h3 class="legend-title"&gt;Your title&lt;/h3&gt;&lt;p&gt;</strong>Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum Curabitur consectetuer.<strong>&lt;/p&gt;&lt;/div&gt;</strong></p>\r\n</div>\r\n\r\n<div class="legend-hilite">\r\n<h3 class="legend-title">Legend style</h3>\r\n<p>Use <strong>&lt;div class="legend-red"&gt;&lt;h3 class="legend-title"&gt;Your title&lt;/h3&gt;&lt;p&gt;</strong>Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum Curabitur consectetuer.<strong>&lt;/p&gt;&lt;/div&gt;</strong></p>\r\n</div>', '', 1, 0, 0, 0, '2008-05-07 08:21:33', 62, '', '2009-01-06 09:03:38', 62, 0, '0000-00-00 00:00:00', '2008-05-07 08:21:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 53, 0, 1, '', '', 0, 1712, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 4, 0, 25, '2006-10-11 04:22:14', 62, '', '2007-11-04 23:07:08', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 54, 'robots=\nauthor=');
INSERT INTO `#__content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> \r\n\r\n<h2>Content </h2>\r\n\r\n<p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p>\r\n\r\n<h3>Blog Layout</h3>\r\n\r\n<p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p>\r\n\r\n<h3>Blog Archive Layout</h3>\r\n\r\n<p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p>\r\n\r\n<h3>List Layout</h3>\r\n\r\n<p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p>\r\n\r\n<h2>Wrapper</h2>\r\n<p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p>\r\n\r\n<h2>Content Parameters</h2>\r\n<p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', 1, 4, 0, 29, '2006-10-12 22:33:10', 62, '', '2008-05-06 04:58:08', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 5, '', '', 0, 475, 'robots=\nauthor='),
(25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details visit the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> and <a href="http://forum.joomla.org" title="The Joomla! Community Forums">Forums</a>', '', 1, 3, 0, 31, '2006-10-11 00:42:31', 62, '', '2007-11-08 11:36:52', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 26, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the Joomla! help site: Language Packs and Localised Releases<br />   <a href="http://help.joomla.org/content/view/1651/243/" target="_blank" title="Joomla! help site: Language Packs and Localised Releases">http://help.joomla.org/content/view/1651/243/</a></p>', '', 1, 4, 0, 29, '2006-10-11 06:00:00', 62, '', '2007-11-08 14:49:48', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, 'About Joomla!, General, Extensions', '', 0, 145, 'robots=\nauthor='),
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a>  are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p><p><strong>Do you want to join in?</strong></p><p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>                  <ul><li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>. </li><li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a>  and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>.      </li></ul>           <p> That''s all you need to know if you''d like to join the Joomla! development community.  </p>', '', 1, 4, 0, 30, '2006-10-12 16:50:48', 62, '', '2007-11-04 18:29:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 2, '', '', 0, 75, 'robots=\nauthor='),
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 3, 0, 31, '2006-10-11 01:10:59', 62, '', '2007-11-08 11:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 18, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 3, 0, 32, '2006-10-11 03:11:38', 62, '', '2007-05-03 09:40:32', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. In addition some translation teams are offering fully localised versions of the entire package. Please check the <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Joomla! help site for links">Joomla! Help Site for links</a>   to locations where languages and localised versions can be found.', '', 1, 3, 0, 32, '2006-10-11 01:12:18', 62, '', '2007-11-08 11:45:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 7, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 3, 0, 27, '2006-10-11 09:12:55', 62, '', '2007-11-08 12:03:24', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 3, 0, 28, '2006-10-10 23:13:33', 62, '', '2007-11-08 11:23:56', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 14, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 3, 0, 31, '2006-10-11 15:14:11', 62, '', '2007-11-08 11:23:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 5, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 3, 0, 32, '2006-10-11 17:14:57', 62, '', '2007-11-08 11:46:29', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 3, 0, 31, '2006-10-10 23:15:36', 62, '', '2007-11-08 11:25:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 17, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 3, 0, 28, '2006-10-10 23:16:20', 62, '', '2007-11-04 23:10:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 3, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 3, 0, 28, '2006-10-11 09:17:00', 62, '', '2007-11-08 11:04:30', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 3, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is on our <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Help Site">Help Site</a>.</p>', '', 1, 3, 0, 32, '2006-10-11 17:18:14', 62, '', '2007-11-08 11:42:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 3, 0, 27, '2006-10-11 09:19:01', 62, '', '2007-11-08 12:01:26', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 20, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 3, 0, 27, '2006-10-11 05:19:43', 62, '', '2007-11-08 12:02:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 0, 1, 0, 3, '2006-10-12 00:17:31', 62, '', '2007-11-08 12:17:53', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 5, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', '<p>Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.</p>', '', 0, 1, 0, 3, '2006-10-12 00:25:50', 62, '', '2008-06-05 10:13:50', 63, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 4, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p>\r\n\r\n<ul>\r\n<li>Section Blog</li>\r\n<li>Section Table</li>\r\n<li> Blog Category</li>\r\n<li>Category Table</li>\r\n</ul>\r\n\r\n<p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p>\r\n\r\n<p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong>Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</strong>.</p>', '', 1, 0, 0, 0, '2006-10-12 09:26:52', 62, '', '2008-05-06 04:53:34', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 49, 'robots=\nauthor='),
(45, 'Senectus nonummy gravida semper pretium', 'senectus-nonummy-gravida-semper-pretium', '', '<p>Lorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit. Wisi Ut ac Vestibulum sit venenatis Nullam convallis odio condimentum sit. Ipsum urna pretium elit Pellentesque porttitor nibh Nullam Maecenas dui eros.Sit id Phasellus orci Sed lobortis.</p>\r\n\r\n<p>Tortor eros hendrerit nulla pede gravida iaculis Nulla porttitor Nam interdum.</p>\r\n\r\n', '\r\n\r\n<p>Senectus nonummy gravida semper pretium ac nibh arcu eget dapibus augue. Id sit consequat metus nunc ut enim tortor libero eros pharetra. Diam Duis Phasellus at purus Nulla at Curabitur elit dui ac. Eros ante accumsan egestas ut Praesent quis facilisi id orci ut. Suspendisse sed netus venenatis hendrerit vel nulla elit fermentum dolor hendrerit. Sit id Phasellus orci Sed lobortis massa vel Donec tortor.</p>\r\n\r\n<h3>Cras Vestibulum Nam risus condimentum</h3>\r\n\r\n<ul class="checklist">\r\n<li>Vestibulum Nam risus condimentum</li>\r\n<li>Integer tristique adipiscing ut ut montes.</li>\r\n<li>ortor eros hendrerit nulla pede gravida iaculis</li>\r\n<li>Accumsan sem venenatis egestas ut fermentum dui Mauris</li>\r\n</ul>\r\n\r\n<p>Tortor eros hendrerit nulla pede gravida iaculis Nulla porttitor Nam interdum. Turpis Nunc porta habitasse odio pretium nibh Nunc orci augue tincidunt. Accumsan sem venenatis egestas ut fermentum dui Mauris id et Vestibulum.</p>', 1, 5, 0, 34, '2008-05-10 01:42:27', 62, '', '2008-07-22 02:17:30', 63, 0, '0000-00-00 00:00:00', '2008-05-10 01:42:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, '', '', 0, 134, 'robots=\nauthor='),
(46, 'Welcome to JA Zeolite', 'welcome-to-ja-zeolite', '', '<img src="images/stories/demo/sam-16.jpg" alt="Apple MacBook" align="left" title="Apple MacBook" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer rhoncus Aenean ut venenatis vel. Id tristique est libero pretium purus condimentum ligula euismod commodo et. Wisi justo nibh et eget at Curabitur et ac pede orci. Sed risus Nam ut In magna sagittis pede mauris id nibh. At mi ornare elit ac ac neque dui vitae tellus semper. Morbi felis eget fames lobortis faucibus tortor gravida Nulla vitae ut.</p>\r\n\r\n', '\r\n\r\n<p>Ac Donec et quis quis vel Pellentesque mauris suscipit in Maecenas. Ut a molestie id et Suspendisse mauris enim pellentesque dui pede. Curabitur wisi metus lobortis In Mauris vel eget eleifend id augue. Felis tellus elit malesuada ante In mi justo a eu Nam. Non justo orci wisi id dictumst nibh pretium eget Phasellus Vivamus. Elit magna.</p>\r\n\r\n<p>Risus est orci tristique Duis aliquam nunc ut at facilisis pede. At in rhoncus tellus augue morbi tellus tincidunt dui nunc facilisis. Quis pellentesque eget vel Nunc semper vel semper condimentum semper eleifend. Malesuada Pellentesque eros eleifend ante nisl vitae Vestibulum nibh auctor Donec. Feugiat ut interdum ut volutpat Morbi quis Proin ac ipsum Nam. Nonummy urna metus condimentum nibh nibh enim convallis pede nulla id. Eget scelerisque.</p>\r\n\r\n<p>Lorem Nulla adipiscing Mauris risus laoreet interdum eros facilisi neque Nunc. Turpis ut Nulla lobortis lacus dictum velit metus sociis risus nunc. Felis enim aliquam ante eget In ut fringilla dis ac urna. Tortor elit montes urna semper tortor leo interdum accumsan justo amet. Montes enim hac Ut nisl Suspendisse orci Nunc laoreet.</p>\r\n\r\n<p>Adipiscing porttitor libero vitae risus fringilla dignissim sapien vitae rutrum id. Nulla pellentesque in nibh sapien Donec ornare ut pede laoreet Vestibulum. Sollicitudin velit orci congue condimentum augue nibh netus Suspendisse nascetur nibh. Purus dolor pellentesque libero at eros id elit non Duis enim. Sem odio at eros elit eu mauris vestibulum laoreet massa In. Lacinia purus ut lobortis Curabitur euismod.</p>\r\n\r\n<p>Quam pellentesque at et auctor Curabitur dui magnis cursus Nam fames. Mauris Integer tincidunt vitae sem a nibh ligula Nam eget semper. Nulla eget Quisque ac pretium nunc porttitor pretium sagittis Integer feugiat. Laoreet In magna wisi sit tellus ut tellus congue nec tellus. Penatibus semper Nam fames dui Fusce tellus sem tempor lacus sed. Consequat vitae mauris volutpat in habitant hendrerit Curabitur quis metus.</p>', 1, 5, 0, 34, '2008-05-10 01:49:25', 62, '', '2009-01-06 10:23:53', 62, 0, '0000-00-00 00:00:00', '2008-05-10 01:49:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 46, 0, 2, '', '', 0, 72, 'robots=\nauthor='),
(47, 'WinDVD 9 Plus', 'windvd-9-plus', '', '<img src="images/stories/demo/sam-15.jpg" alt="WinDVD 9 Plus" align="left" title="WinDVD 9 Plus" class="caption" />\r\n\r\n<p>Risus est orci tristique Duis aliquam nunc ut at facilisis pede. At in rhoncus tellus augue morbi tellus tincidunt dui nunc facilisis. Quis pellentesque eget vel Nunc semper vel semper condimentum semper eleifend.</p>\r\n\r\n<p>Feugiat ut interdum ut volutpat <a href="#" title="Sample link">Morbi quis Proin ac ipsum nam.</a></p>\r\n\r\n', '\r\n\r\n<p>Lorem Nulla adipiscing Mauris risus laoreet interdum eros facilisi neque Nunc. Turpis ut Nulla lobortis lacus dictum velit metus sociis risus nunc. Felis enim aliquam ante eget In ut fringilla dis ac urna. Tortor elit montes urna semper tortor leo interdum accumsan justo amet. Montes enim hac Ut nisl Suspendisse orci Nunc laoreet.</p>\r\n\r\n<p>Adipiscing porttitor libero vitae risus fringilla dignissim sapien vitae rutrum id. Nulla pellentesque in nibh sapien Donec ornare ut pede laoreet Vestibulum. Sollicitudin velit orci congue condimentum augue nibh netus Suspendisse nascetur nibh. Purus dolor pellentesque libero at eros id elit non Duis enim. Sem odio at eros elit eu mauris vestibulum laoreet massa In. Lacinia purus ut lobortis Curabitur euismod.</p>\r\n\r\n<p>Quam pellentesque at et auctor Curabitur dui magnis cursus Nam fames. Mauris Integer tincidunt vitae sem a nibh ligula Nam eget semper. Nulla eget Quisque ac pretium nunc porttitor pretium sagittis Integer feugiat. Laoreet In magna wisi sit tellus ut tellus congue nec tellus. Penatibus semper Nam fames dui Fusce tellus sem tempor lacus sed. Consequat vitae mauris volutpat in habitant hendrerit Curabitur quis metus.</p>\r\n\r\n<p>Elit id urna Nullam ac enim Curabitur pellentesque nunc elit nisl. Elit leo ac neque orci Vestibulum orci Curabitur lacinia ut Aenean. Montes non nec Curabitur nibh sodales ipsum consequat Nam morbi ligula. Ac Aliquam massa lorem pretium tincidunt orci libero eros dui sapien. Vestibulum consequat et in scelerisque Donec vel parturient tempus Nunc quis. Purus auctor sed nec vel faucibus vitae aliquam.</p>\r\n\r\n<p>Congue non tellus quis nulla pretium Curabitur et et pretium aliquet. Adipiscing quis et vestibulum sit Pellentesque nec condimentum turpis tincidunt laoreet. Rutrum turpis Fusce Lorem Vestibulum ut consectetuer Vivamus sit ullamcorper Morbi. Donec Vestibulum at et ac tellus Suspendisse tincidunt natoque est Vivamus. Vitae Aenean nulla id tincidunt semper neque est elit auctor Quisque. Curabitur amet montes diam augue sed Nunc tortor ac condimentum.</p>', 1, 5, 0, 34, '2008-05-10 01:54:56', 62, '', '2009-01-06 10:23:38', 62, 0, '0000-00-00 00:00:00', '2008-05-10 01:54:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 51, 0, 1, '', '', 0, 219, 'robots=\nauthor='),
(52, 'Creative Work', 'creative-work', '', '<img src="images/stories/demo/design.png" alt="Web Design" title="Web Design" align="right" />\r\n\r\nNulla feugiat accumsan enim mollis eros dolor accumsan Aenean malesuada.', '', 1, 1, 0, 3, '2008-06-03 04:22:58', 65, '', '2008-06-06 10:41:57', 65, 0, '0000-00-00 00:00:00', '2008-06-03 04:22:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 3, '', '', 0, 4, 'robots=\nauthor='),
(53, 'Professional Service', 'professional-service', '', '<img src="images/stories/demo/topsl-1.png" alt="sample image" title="sample image" align="right" />\r\n\r\nLorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit.', '', 1, 1, 0, 3, '2008-06-03 04:22:58', 65, '', '2008-06-06 10:41:29', 65, 0, '0000-00-00 00:00:00', '2008-06-03 04:22:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 2, 'robots=\nauthor='),
(54, 'Special Client', 'special-client', '', '<img src="images/stories/demo/rubik.png" alt="Special Client" title="Special Client" align="right" />\r\n\r\nConsectetuer ante Nam dictumst tortor rhoncus neque sagittis semper sem Vestibulum.', '', 1, 1, 0, 3, '2008-06-05 10:13:58', 63, '', '2008-06-06 12:13:00', 63, 0, '0000-00-00 00:00:00', '2008-06-05 10:13:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 1, 'robots=\nauthor='),
(83, 'Toshiba', 'toshiba', '', '<img src="images/stories/demo/sam-5.jpg" alt="Sample image" align="left" title="Sample image" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n\r\n', '\r\n\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod. </p>\r\n\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', 1, 5, 0, 41, '2009-01-02 08:48:36', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-02 08:48:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 5, '', '', 0, 4, 'robots=\nauthor='),
(84, 'Dell XPS', 'dell-xps', '', '<img src="images/stories/demo/sam-4.jpg" alt="Sample image" align="left" title="Sample image" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n\r\n', '\r\n\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod. </p>\r\n\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', 1, 5, 0, 41, '2009-01-02 08:49:25', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-02 08:49:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `#__content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(85, 'Apple Mac Air', 'apple-mac-air', '', '<img src="images/stories/demo/sam-3.jpg" alt="Sample image" align="left" title="Sample image" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod. </p>\r\n\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', '', 1, 5, 0, 41, '2009-01-02 08:50:07', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-02 08:50:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(86, 'Mac book air2', 'mac-book-air2', '', '<img src="images/stories/demo/sam-9.jpg" alt="Sample image" align="left" title="Sample image" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod. </p>\r\n\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', '', 1, 5, 0, 41, '2009-01-02 08:50:35', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-02 08:50:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 1, 'robots=\nauthor='),
(87, 'Lorem ipsum dolor', 'lorem-ipsum-dolor', '', '<img src="images/stories/demo/sam-10.jpg" alt="Sample image" align="left" title="Sample image" class="caption" />\r\n\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod. </p>\r\n\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', '', 1, 5, 0, 41, '2009-01-02 08:51:00', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-02 08:51:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_items`
--

DROP TABLE IF EXISTS `#__core_log_items`;
CREATE TABLE IF NOT EXISTS `#__core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM;

--
-- Dumping data for table `#__core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM;

--
-- Dumping data for table `#__core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__groups`
--

DROP TABLE IF EXISTS `#__groups`;
CREATE TABLE IF NOT EXISTS `#__groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__groups`
--

INSERT INTO `#__groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) TYPE=MyISAM  AUTO_INCREMENT=74 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=0\nnum_intro_articles=2\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=1\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=home.png\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', 1, 27, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 50, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Help', 'joomla-help', 'http://help.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 0, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Demo Content', 'demo', 'index.php?option=com_content&view=section&id=5', 'component', 0, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'Cover Flown', 'cover-flown', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', -2, 0, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=2\nnum_intro_articles=0\nnum_columns=1\nnum_links=3\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 27, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 1, 50, 4, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 0, 0, 11, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 27, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=2\nnum_intro_articles=0\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=The News\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(53, 'mainmenu', 'Typography', 'typography', 'index.php?option=com_content&view=article&id=44', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=edit.png\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Navigation', 'navigation', 'index.php?option=com_content&view=article&id=20', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=new.png\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'JA Split menu', 'ja-split-menu', '?ja_menu=split', 'url', 1, 54, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(56, 'mainmenu', 'JA Suckerfish menu', 'ja-suckerfish-menu', '?ja_menu=css', 'url', 1, 54, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(57, 'mainmenu', 'JA Moo menu', 'ja-moo-menu', '?ja_menu=moo', 'url', 1, 54, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(58, 'mainmenu', 'Layouts', 'layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=cut.png\nsecure=0\n\n', 0, 0, 0),
(59, 'mainmenu', 'Wrapper (full width)', 'wrapper-full-width', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 58, 17, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=www.google.com\nscrolling=auto\nwidth=100%\nheight=500\nheight_auto=0\nadd_scheme=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(60, 'mainmenu', 'Content + Left col', 'content--left-col', 'index.php?option=com_content&view=article&id=26', 'component', 1, 58, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(61, 'mainmenu', 'Content + Right col', 'content-right-col', 'index.php?option=com_content&view=article&id=27', 'component', -2, 0, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'mainmenu', 'All extra modules', 'all-extra-modules', 'index.php?option=com_content&view=article&id=22', 'component', 1, 58, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(63, 'othermenu', 'JoomlArt Home', 'joomlart-home', 'http://www.joomlart.com', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(64, 'othermenu', 'JoomlArt Forum', 'joomlart-forum', 'http://www.joomlart.com/forums/', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(65, 'mainmenu', 'Colors', 'colors', 'index.php?option=com_content&view=article&id=8', 'component', 1, 0, 20, 0, 8, 62, '2009-01-06 03:31:57', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=attachment.png\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'Cyan color', 'cyan-color', '?ja_color=cyan', 'url', 1, 65, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(66, 'mainmenu', 'Default color', 'jacolordefault', '?ja_color=default', 'url', 1, 65, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(67, 'mainmenu', 'Red color', 'red-color', '?ja_color=red', 'url', -2, 0, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(69, 'mainmenu', 'Blue color', 'blue-color', '?ja_color=blue', 'url', 1, 65, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(70, 'mainmenu', 'Without extra modules', 'without-extra-modules', 'index.php?option=com_content&view=article&id=18', 'component', 1, 58, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(71, 'mainmenu', 'Shop', 'shop', 'index.php?option=com_virtuemart', 'component', 1, 0, 34, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=add_to_shopping_cart.png\nsecure=0\n\n', 0, 0, 0),
(72, 'mainmenu', 'Content + Right Col', 'content--right-col', 'index.php?option=com_content&view=article&id=20', 'component', 1, 58, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(73, 'mainmenu', 'Red color', 'red-color', '?ja_color=red', 'url', 1, 65, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) TYPE=MyISAM  AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__migration_backlinks`
--

DROP TABLE IF EXISTS `#__migration_backlinks`;
CREATE TABLE IF NOT EXISTS `#__migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) TYPE=MyISAM  AUTO_INCREMENT=98 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'User Menu', '', 6, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Login Form', '', 7, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 1, 0, ''),
(19, 'Latest News', '', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(20, 'Statistics', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=0\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(21, 'Who''s Online', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, ''),
(22, 'Most Popular', '', 0, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=\nshow_front=1\ncount=5\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(23, 'Archive', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 0, 'catid=3\nlayout=default\nimage=0\nlink_titles=\nshowLastSeparator=1\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Related Items', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 0, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 4, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(30, 'Banners', '', 0, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Users Resources', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(32, 'Wrapper', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(38, 'Advertisement', '', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(39, 'Example Pages', '', 7, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Key Concepts', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/viewforum.php?f=8" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/viewforum.php?f=432" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(47, 'Support Center', 'Elit mauris consectetuer curabitur\r\n\r\n<ul>\r\n<li><strong>Tel:</strong> (+844) 2212820</li>\r\n<li><strong>Fax:</strong> (+844) 2212820</li>\r\n<li><strong>Email:</strong> contact@joomlart.com</li>\r\n<li><strong>Website:</strong>www.joomart.com</li>\r\n</ul>', 0, 'user5', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(48, 'Today Blogs', '<div style="padding-top: 0 !important;" class="ja-innerdiv clearfix">\r\n<strong><a href="#" title="Sample link">Live wirelessly. Print Wirelessly.</a></strong><br />\r\nMalesuada sociis nec at odio Pellentesque ligula neque euismod.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<strong><a href="#" title="Sample link">Pellentesque Phasellus sodales</a></strong><br />\r\nA Vivamus velit et volutpat wisi quis neque elit risus Vestibulum...\r\n</div>', 0, 'user6', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(95, 'Popular products', '', 0, 'ja-slider', 62, '2009-01-06 09:16:39', 1, 'mod_ja_contentscroll', 0, 0, 1, 'moduleclass_sfx=_black\nmootools=0\naddstyle=1\nshowtitle=1\nshowreadmore=0\nshowintrotext=0\nshowimages=1\nautoresize=1\ncatid=41\nlink_titles=1\nlink_images=1\nnumchar=0\nxheight=190\nxwidth=160\niheight=150\niwidth=140\nnumElem=3\n\n', 0, 0, ''),
(77, 'mod_jaslideshow', '', 0, 'ja-slideshow', 62, '2009-01-06 10:25:50', 1, 'mod_jaslideshow', 0, 0, 0, 'play=1\nswidth=950\nsheight=298\nfolder=images/stories/slideshow/\nfolder_thumb=images/stories/fruit/thumbs\naltimage=JA slide show\norderby=0\nsort=\nsetimagearray=\nstartwith=\nautoresize=0\ntimedisplay=10\ntimeanimation=2\nanimation=fade\nppercent=10\nzpercent=10\neffect=bounceOut\nnavigation=\ntwidth=100\ntheight=100\nswitch_action=click\nshowDescription=0\ndescription_effect=fade\ndescription=\n\n', 0, 0, ''),
(92, 'Sample module', '<div class="ja-innerdiv clearfix" style="padding-top: 0 !important;">\r\n<span class="title"><a href="#" title="Sample link">Save Instantly on All Colors</a></span>\r\n<img src="images/stories/demo/sam-12.gif" alt="" align="left" />\r\nPede Vivamus rhoncus tellus velit ornare elit leo pellentesque vitae.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<span class="title"><a href="#" title="Sample link">Kingston Data Traveler 2 GB</a></span>\r\n<img src="images/stories/demo/sam-13.jpg" alt="" align="left" />\r\nEu orci nibh et est congue scelerisque convallis at leo et. Id nascetur Quisque Aenean justo.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<span class="title"><a href="#" title="Sample link">Save Instantly on All Colors</a></span>\r\n<img src="images/stories/demo/sam-14.jpg" alt="" align="left" />\r\nLigula risus elit enim tristique tortor semper enim Curabitur et Vestibulum.\r\n</div>', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(83, 'Your Shopping Cart ', '', 0, 'vm-cart', 62, '2009-01-03 09:45:54', 1, 'mod_virtuemart_cart', 0, 0, 1, 'moduleclass_sfx=\nvmCartDirection=0\nvmEnableGreyBox=1\n\n', 0, 0, ''),
(93, 'Banner2', '<img src="images/stories/demo/sam-2.jpg" alt="Sample adv2" />', 7, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(78, 'Categories', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_product_categories', 0, 0, 1, 'menutype=links\njscook_type=tree\njscookMenu_style=ThemeOffice\nmenu_orientation=vbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(79, 'Featured Products', '', 0, 'vm-fp', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=3\nshow_price=1\nshow_addtocart=1\ndisplay_style=table\nproducts_per_row=3\ncategory_id=\ncache=0\nmoduleclass_sfx=_hilite\nclass_sfx=\n\n', 0, 0, ''),
(96, 'Change Currency', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_currencies', 0, 0, 1, 'text_before=\nproduct_currency=AUD,USD,YER,\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(97, 'Payment method', '<img src="images/stories/demo/payment-method.gif" alt="Payment method" />', 8, 'right', 62, '2009-01-06 02:52:16', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=_blank\n\n', 0, 0, ''),
(94, 'Banner', '<img src="images/stories/demo/sam-1.jpg" alt="Sample banner" />', 4, 'left', 62, '2009-01-06 06:43:57', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=_blank\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 1),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 18),
(1, 20),
(1, 24),
(1, 28),
(1, 29),
(1, 30),
(1, 38),
(1, 40),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 60),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 70),
(1, 71),
(16, 62),
(17, 0),
(18, 1),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(18, 18),
(18, 20),
(18, 24),
(18, 28),
(18, 29),
(18, 30),
(18, 38),
(18, 40),
(18, 43),
(18, 44),
(18, 45),
(18, 46),
(18, 47),
(18, 51),
(18, 52),
(18, 54),
(18, 55),
(18, 56),
(18, 57),
(18, 58),
(18, 62),
(18, 63),
(18, 64),
(18, 72),
(19, 1),
(19, 11),
(19, 12),
(19, 13),
(19, 14),
(19, 18),
(19, 20),
(19, 24),
(19, 28),
(19, 29),
(19, 30),
(19, 38),
(19, 40),
(19, 43),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 51),
(19, 52),
(19, 54),
(19, 55),
(19, 56),
(19, 57),
(19, 58),
(19, 60),
(19, 62),
(19, 63),
(19, 64),
(19, 71),
(20, 1),
(21, 1),
(21, 72),
(22, 1),
(22, 11),
(22, 12),
(22, 13),
(22, 14),
(22, 18),
(22, 20),
(22, 24),
(22, 28),
(22, 29),
(22, 30),
(22, 38),
(22, 40),
(22, 43),
(22, 44),
(22, 45),
(22, 46),
(22, 47),
(22, 51),
(22, 52),
(22, 54),
(22, 55),
(22, 56),
(22, 57),
(22, 58),
(22, 60),
(22, 62),
(22, 63),
(22, 64),
(22, 70),
(22, 71),
(25, 0),
(27, 0),
(29, 0),
(30, 62),
(31, 1),
(31, 11),
(31, 12),
(31, 13),
(31, 14),
(31, 18),
(31, 20),
(31, 24),
(31, 28),
(31, 29),
(31, 30),
(31, 38),
(31, 40),
(31, 43),
(31, 44),
(31, 45),
(31, 46),
(31, 47),
(31, 51),
(31, 52),
(31, 53),
(31, 58),
(31, 63),
(31, 64),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 1),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(40, 18),
(40, 20),
(40, 24),
(40, 28),
(40, 29),
(40, 30),
(40, 38),
(40, 40),
(40, 43),
(40, 44),
(40, 45),
(40, 46),
(40, 47),
(40, 51),
(40, 52),
(40, 53),
(47, 1),
(47, 11),
(47, 12),
(47, 13),
(47, 14),
(47, 18),
(47, 20),
(47, 24),
(47, 28),
(47, 29),
(47, 30),
(47, 38),
(47, 40),
(47, 43),
(47, 44),
(47, 45),
(47, 46),
(47, 47),
(47, 51),
(47, 52),
(47, 54),
(47, 55),
(47, 56),
(47, 57),
(47, 58),
(47, 60),
(47, 62),
(47, 63),
(47, 64),
(47, 71),
(48, 1),
(48, 11),
(48, 12),
(48, 13),
(48, 14),
(48, 18),
(48, 20),
(48, 24),
(48, 28),
(48, 29),
(48, 30),
(48, 38),
(48, 40),
(48, 43),
(48, 44),
(48, 45),
(48, 46),
(48, 47),
(48, 51),
(48, 52),
(48, 54),
(48, 55),
(48, 56),
(48, 57),
(48, 58),
(48, 60),
(48, 62),
(48, 63),
(48, 64),
(48, 71),
(77, 1),
(77, 62),
(78, 1),
(78, 11),
(78, 12),
(78, 13),
(78, 14),
(78, 18),
(78, 20),
(78, 24),
(78, 28),
(78, 29),
(78, 30),
(78, 38),
(78, 40),
(78, 43),
(78, 44),
(78, 45),
(78, 46),
(78, 47),
(78, 51),
(78, 52),
(78, 53),
(78, 54),
(78, 55),
(78, 56),
(78, 57),
(78, 58),
(78, 60),
(78, 63),
(78, 64),
(78, 70),
(78, 71),
(79, 1),
(83, 0),
(92, 1),
(92, 11),
(92, 12),
(92, 13),
(92, 14),
(92, 18),
(92, 20),
(92, 24),
(92, 28),
(92, 29),
(92, 30),
(92, 38),
(92, 40),
(92, 43),
(92, 44),
(92, 45),
(92, 46),
(92, 47),
(92, 51),
(92, 52),
(92, 54),
(92, 55),
(92, 56),
(92, 57),
(92, 58),
(92, 63),
(92, 64),
(92, 70),
(92, 72),
(93, 1),
(93, 11),
(93, 12),
(93, 13),
(93, 14),
(93, 18),
(93, 20),
(93, 24),
(93, 28),
(93, 29),
(93, 30),
(93, 38),
(93, 40),
(93, 43),
(93, 44),
(93, 45),
(93, 46),
(93, 47),
(93, 51),
(93, 52),
(93, 54),
(93, 55),
(93, 56),
(93, 57),
(93, 58),
(93, 59),
(93, 60),
(93, 62),
(93, 63),
(93, 64),
(93, 70),
(94, 1),
(94, 11),
(94, 12),
(94, 13),
(94, 14),
(94, 18),
(94, 20),
(94, 24),
(94, 28),
(94, 29),
(94, 30),
(94, 38),
(94, 40),
(94, 43),
(94, 44),
(94, 45),
(94, 46),
(94, 47),
(94, 51),
(94, 52),
(94, 54),
(94, 55),
(94, 56),
(94, 57),
(94, 58),
(94, 60),
(94, 63),
(94, 64),
(94, 70),
(95, 1),
(96, 1),
(96, 11),
(96, 12),
(96, 13),
(96, 14),
(96, 18),
(96, 20),
(96, 24),
(96, 28),
(96, 29),
(96, 30),
(96, 38),
(96, 40),
(96, 43),
(96, 44),
(96, 45),
(96, 46),
(96, 47),
(96, 51),
(96, 52),
(96, 54),
(96, 55),
(96, 56),
(96, 57),
(96, 58),
(96, 62),
(96, 63),
(96, 64),
(96, 70),
(96, 71),
(96, 72),
(97, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) TYPE=MyISAM  AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__newsfeeds`
--

INSERT INTO `#__newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0),
(4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0),
(6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(7, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__plugins`
--

DROP TABLE IF EXISTS `#__plugins`;
CREATE TABLE IF NOT EXISTS `#__plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) TYPE=MyISAM  AUTO_INCREMENT=38 ;

--
-- Dumping data for table `#__plugins`
--

INSERT INTO `#__plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'Virtuemart Extended Search Plugin', 'vmxsearch.plugin', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'density_flag=1\nname_flag=1\nsku_flag=1\ndesc_flag=1\nsdesc_flag=1\nurl_flag=1\nreview_flag=1\nmanufacturer_flag=1\ncategory_flag=1\nparent_filter=both\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `#__polls`
--

DROP TABLE IF EXISTS `#__polls`;
CREATE TABLE IF NOT EXISTS `#__polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=15 ;

--
-- Dumping data for table `#__polls`
--

INSERT INTO `#__polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 12, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `#__poll_data`
--

DROP TABLE IF EXISTS `#__poll_data`;
CREATE TABLE IF NOT EXISTS `#__poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) TYPE=MyISAM  AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__poll_data`
--

INSERT INTO `#__poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 3),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__poll_date`
--

DROP TABLE IF EXISTS `#__poll_date`;
CREATE TABLE IF NOT EXISTS `#__poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) TYPE=MyISAM  AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__poll_date`
--

INSERT INTO `#__poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14),
(12, '2009-01-06 03:22:59', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `#__poll_menu`
--

DROP TABLE IF EXISTS `#__poll_menu`;
CREATE TABLE IF NOT EXISTS `#__poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__sections`
--

DROP TABLE IF EXISTS `#__sections`;
CREATE TABLE IF NOT EXISTS `#__sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) TYPE=MyISAM  AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__sections`
--

INSERT INTO `#__sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 15, ''),
(5, 'Demo section', '', 'demo-section', '', 'content', 'left', '<p>Eget libero porttitor semper Aenean id id id senectus est vitae. Sit nec risus a risus Donec Phasellus vel vitae eu leo. Habitasse magna eleifend ipsum fringilla tellus pharetra morbi pretium id Lorem.</p>', 1, 0, '0000-00-00 00:00:00', 6, 0, 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__stats_agents`
--

DROP TABLE IF EXISTS `#__stats_agents`;
CREATE TABLE IF NOT EXISTS `#__stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) TYPE=MyISAM;

--
-- Dumping data for table `#__stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__templates_menu`
--

DROP TABLE IF EXISTS `#__templates_menu`;
CREATE TABLE IF NOT EXISTS `#__templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__templates_menu`
--

INSERT INTO `#__templates_menu` (`template`, `menuid`, `client_id`) VALUES
('ja_zeolite', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_affiliate`
--

DROP TABLE IF EXISTS `#__vm_affiliate`;
CREATE TABLE IF NOT EXISTS `#__vm_affiliate` (
  `affiliate_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `active` char(1) NOT NULL default 'N',
  `rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`affiliate_id`)
) TYPE=MyISAM COMMENT='Used to store affiliate user entries' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__vm_affiliate`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_affiliate_sale`
--

DROP TABLE IF EXISTS `#__vm_affiliate_sale`;
CREATE TABLE IF NOT EXISTS `#__vm_affiliate_sale` (
  `order_id` int(11) NOT NULL default '0',
  `visit_id` varchar(32) NOT NULL default '',
  `affiliate_id` int(11) NOT NULL default '0',
  `rate` int(2) NOT NULL default '0',
  PRIMARY KEY  (`order_id`)
) TYPE=MyISAM COMMENT='Stores orders that affiliates have placed';

--
-- Dumping data for table `#__vm_affiliate_sale`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_auth_group`
--

DROP TABLE IF EXISTS `#__vm_auth_group`;
CREATE TABLE IF NOT EXISTS `#__vm_auth_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(128) default NULL,
  `group_level` int(11) default NULL,
  PRIMARY KEY  (`group_id`)
) TYPE=MyISAM  COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__vm_auth_group`
--

INSERT INTO `#__vm_auth_group` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'admin', 0),
(2, 'storeadmin', 250),
(3, 'shopper', 500),
(4, 'demo', 750);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_auth_user_group`
--

DROP TABLE IF EXISTS `#__vm_auth_user_group`;
CREATE TABLE IF NOT EXISTS `#__vm_auth_user_group` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) TYPE=MyISAM COMMENT='Maps the user to user groups';

--
-- Dumping data for table `#__vm_auth_user_group`
--

INSERT INTO `#__vm_auth_user_group` (`user_id`, `group_id`) VALUES
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_auth_user_vendor`
--

DROP TABLE IF EXISTS `#__vm_auth_user_vendor`;
CREATE TABLE IF NOT EXISTS `#__vm_auth_user_vendor` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) TYPE=MyISAM COMMENT='Maps a user to a vendor';

--
-- Dumping data for table `#__vm_auth_user_vendor`
--

INSERT INTO `#__vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(71, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_cart`
--

DROP TABLE IF EXISTS `#__vm_cart`;
CREATE TABLE IF NOT EXISTS `#__vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL,
  PRIMARY KEY  (`user_id`)
) TYPE=MyISAM COMMENT='Stores the cart contents of a user';

--
-- Dumping data for table `#__vm_cart`
--

INSERT INTO `#__vm_cart` (`user_id`, `cart_content`, `last_updated`) VALUES
(64, 'a:4:{i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"31";s:9:"parent_id";s:2:"31";s:11:"category_id";N;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"23";s:9:"parent_id";s:2:"23";s:11:"category_id";s:2:"11";s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"21";s:9:"parent_id";s:2:"21";s:11:"category_id";s:2:"11";s:11:"description";s:0:"";}s:3:"idx";i:3;}', '2008-11-10 11:03:26'),
(63, 'a:2:{s:3:"idx";i:1;i:0;a:5:{s:8:"quantity";i:6;s:10:"product_id";s:2:"20";s:9:"parent_id";s:2:"20";s:11:"category_id";s:2:"11";s:11:"description";s:0:"";}}', '2008-07-24 17:37:44'),
(65, 'a:6:{s:3:"idx";i:5;i:0;a:5:{s:8:"quantity";i:4;s:10:"product_id";s:2:"30";s:9:"parent_id";s:2:"30";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:3;s:10:"product_id";s:2:"28";s:9:"parent_id";s:2:"28";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:5;s:10:"product_id";s:2:"31";s:9:"parent_id";s:2:"31";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:3;a:5:{s:8:"quantity";i:15;s:10:"product_id";s:2:"29";s:9:"parent_id";s:2:"29";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:4;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"35";s:9:"parent_id";s:2:"35";s:11:"category_id";s:2:"14";s:11:"description";s:0:"";}}', '2008-07-28 11:41:32'),
(69, 'a:1:{s:3:"idx";i:0;}', '2008-07-25 08:36:25'),
(62, 'a:7:{s:3:"idx";i:6;i:0;a:5:{s:8:"quantity";i:10;s:10:"product_id";s:2:"20";s:9:"parent_id";i:20;s:11:"category_id";i:11;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:3;s:10:"product_id";s:2:"21";s:9:"parent_id";i:21;s:11:"category_id";i:11;s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:2;s:10:"product_id";s:2:"23";s:9:"parent_id";i:23;s:11:"category_id";i:11;s:11:"description";s:0:"";}i:3;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"36";s:9:"parent_id";i:36;s:11:"category_id";N;s:11:"description";s:0:"";}i:4;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"30";s:9:"parent_id";i:30;s:11:"category_id";i:13;s:11:"description";s:0:"";}i:5;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"28";s:9:"parent_id";i:28;s:11:"category_id";i:13;s:11:"description";s:0:"";}}', '2009-01-06 17:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_category`
--

DROP TABLE IF EXISTS `#__vm_category`;
CREATE TABLE IF NOT EXISTS `#__vm_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `category_name` varchar(128) NOT NULL default '',
  `category_description` text,
  `category_thumb_image` varchar(255) default NULL,
  `category_full_image` varchar(255) default NULL,
  `category_publish` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `category_browsepage` varchar(255) NOT NULL default 'browse_1',
  `products_per_row` tinyint(2) NOT NULL default '1',
  `category_flypage` varchar(255) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) TYPE=MyISAM  COMMENT='Product Categories are stored here' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `#__vm_category`
--

INSERT INTO `#__vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
(12, 1, 'Mouse and Keyboard', '<p>Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>', 'resized/Mouse_and_Keyboa_48873e99b9dec_120x120.jpg', 'Mouse_and_Keyboa_48873e99c7b1a.jpg', 'N', 1216720550, 1216822937, 'managed', 1, 'flypage.tpl', 5),
(11, 1, 'Monitors', '<p>Nec et id aliquam eros volutpat ligula Quisque gravida mus id. Leo ligula adipiscing auctor platea In a semper Vivamus neque eu. Et sollicitudin eros tempor a tincidunt quis justo Lorem lacinia wisi. Mattis est tellus interdum elit et vestibulum condimentum nec convallis lobortis.</p>', 'resized/Monitors___Proje_48873f34e9ffa_120x120.jpg', 'Monitors___Proje_48873f35034e2.jpg', 'Y', 1216716886, 1216828365, 'managed', 1, 'flypage.tpl', 4),
(13, 1, 'Laptops', '<p>Eget vestibulum wisi felis augue gravida mauris orci ligula nibh Quisque. Sit Cum Nullam nulla Curabitur Curabitur adipiscing id pretium convallis tellus. Integer morbi nunc semper nec quis congue malesuada ut a felis. Euismod non ridiculus Lorem tortor faucibus pellentesque Proin Aliquam nonummy tempor.</p>', 'resized/Laptops_48873d786ac78_120x120.jpg', 'Laptops_48873d7878bab.jpg', 'Y', 1216805543, 1216822648, 'managed', 1, 'flypage.tpl', 6),
(14, 1, 'Macs and iPod', '<p>Elit parturient Curabitur elit Maecenas Vestibulum at augue id tincidunt Aenean. Nam dis ipsum consequat malesuada libero laoreet ac Lorem Fusce natoque. Vestibulum nec eget justo malesuada lacinia Pellentesque tellus orci felis nibh. Pede est lacinia turpis pharetra neque eget id leo Curabitur quis. Proin ut Nullam magna nibh Aenean auctor malesuada feugiat hac consequat. Eget penatibus odio dui.</p>\r\n\r\n<p>Curabitur quis interdum ullamcorper et wisi Ut Pellentesque quam natoque velit. Euismod mauris lorem rhoncus felis cursus gravida at lorem auctor Vestibulum. Ullamcorper velit elit semper volutpat nibh Vivamus ac Nam elit pellentesque. Et vel consequat purus semper dignissim et Nulla Phasellus vitae dictumst. Congue enim Vivamus Quisque lobortis Integer elit sollicitudin.</p>', 'resized/Macs_and_iPod_48873c79856db_120x120.jpg', 'Macs_and_iPod_48873c7993779.jpg', 'Y', 1216805619, 1216822393, 'managed', 1, 'flypage.tpl', 7);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_category_xref`
--

DROP TABLE IF EXISTS `#__vm_category_xref`;
CREATE TABLE IF NOT EXISTS `#__vm_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  `category_list` int(11) default NULL,
  PRIMARY KEY  (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) TYPE=MyISAM COMMENT='Category child-parent relation list';

--
-- Dumping data for table `#__vm_category_xref`
--

INSERT INTO `#__vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(0, 14, NULL),
(0, 13, NULL),
(0, 12, NULL),
(0, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_country`
--

DROP TABLE IF EXISTS `#__vm_country`;
CREATE TABLE IF NOT EXISTS `#__vm_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL default '1',
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) TYPE=MyISAM  COMMENT='Country records' AUTO_INCREMENT=245 ;

--
-- Dumping data for table `#__vm_country`
--

INSERT INTO `#__vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW'),
(240, 1, 'East Timor', 'XET', 'XE'),
(241, 1, 'Jersey', 'XJE', 'XJ'),
(242, 1, 'St. Barthelemy', 'XSB', 'XB'),
(243, 1, 'St. Eustatius', 'XSE', 'XU'),
(244, 1, 'Canary Islands', 'XCA', 'XC');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_coupons`
--

DROP TABLE IF EXISTS `#__vm_coupons`;
CREATE TABLE IF NOT EXISTS `#__vm_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` enum('percent','total') NOT NULL default 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL default 'gift',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`coupon_id`)
) TYPE=MyISAM  COMMENT='Used to store coupon codes' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__vm_coupons`
--

INSERT INTO `#__vm_coupons` (`coupon_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`) VALUES
(1, 'test1', 'total', 'gift', '6.00'),
(2, 'test2', 'percent', 'permanent', '15.00'),
(3, 'test3', 'total', 'permanent', '4.00'),
(4, 'test4', 'total', 'gift', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_creditcard`
--

DROP TABLE IF EXISTS `#__vm_creditcard`;
CREATE TABLE IF NOT EXISTS `#__vm_creditcard` (
  `creditcard_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `creditcard_name` varchar(70) NOT NULL default '',
  `creditcard_code` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`creditcard_id`)
) TYPE=MyISAM  COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__vm_creditcard`
--

INSERT INTO `#__vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_csv`
--

DROP TABLE IF EXISTS `#__vm_csv`;
CREATE TABLE IF NOT EXISTS `#__vm_csv` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_name` varchar(128) NOT NULL default '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL default '0',
  `field_required` char(1) default 'N',
  PRIMARY KEY  (`field_id`)
) TYPE=MyISAM  COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

--
-- Dumping data for table `#__vm_csv`
--

INSERT INTO `#__vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 5, 'N'),
(3, 'product_desc', '', 6, 'N'),
(4, 'product_thumb_image', '', 7, 'N'),
(5, 'product_full_image', '', 8, 'N'),
(6, 'product_weight', '', 9, 'N'),
(7, 'product_weight_uom', 'KG', 10, 'N'),
(8, 'product_length', '', 11, 'N'),
(9, 'product_width', '', 12, 'N'),
(10, 'product_height', '', 13, 'N'),
(11, 'product_lwh_uom', '', 14, 'N'),
(12, 'product_in_stock', '0', 15, 'N'),
(13, 'product_available_date', '', 16, 'N'),
(14, 'product_discount_id', '', 17, 'N'),
(15, 'product_name', '', 2, 'Y'),
(16, 'product_price', '', 4, 'N'),
(17, 'category_path', '', 3, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_currency`
--

DROP TABLE IF EXISTS `#__vm_currency`;
CREATE TABLE IF NOT EXISTS `#__vm_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) TYPE=MyISAM  COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

--
-- Dumping data for table `#__vm_currency`
--

INSERT INTO `#__vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentine Peso', 'ARS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Nuevo Sol', 'PEN'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Zloty', 'PLZ'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'RON'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'RUB'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRL'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK'),
(158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_export`
--

DROP TABLE IF EXISTS `#__vm_export`;
CREATE TABLE IF NOT EXISTS `#__vm_export` (
  `export_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `export_name` varchar(255) default NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL default 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`export_id`)
) TYPE=MyISAM COMMENT='Export Modules' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__vm_export`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_function`
--

DROP TABLE IF EXISTS `#__vm_function`;
CREATE TABLE IF NOT EXISTS `#__vm_function` (
  `function_id` int(11) NOT NULL auto_increment,
  `module_id` int(11) default NULL,
  `function_name` varchar(32) default NULL,
  `function_class` varchar(32) default NULL,
  `function_method` varchar(32) default NULL,
  `function_description` text,
  `function_perms` varchar(255) default NULL,
  PRIMARY KEY  (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) TYPE=MyISAM  COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

--
-- Dumping data for table `#__vm_function`
--

INSERT INTO `#__vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to phpshop.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none'),
(124, 98, 'affiliateAdd', 'ps_affiliate', 'add', '', 'admin,storeadmin'),
(125, 98, 'affiliateUpdate', 'ps_affiliate', 'update', '', 'admin,storeadmin'),
(126, 98, 'affiliateDelete', 'ps_affiliate', 'delete', '', 'admin,storeadmin'),
(127, 98, 'affiliateEmail', 'ps_affiliate', 'email', '', 'admin,storeadmin'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin'),
(169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin'),
(170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin'),
(171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin'),
(172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin'),
(173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none'),
(174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none'),
(175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin'),
(176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin'),
(177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin'),
(178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin'),
(179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin'),
(180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin'),
(181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin'),
(182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin'),
(183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin'),
(184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin'),
(185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin'),
(186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin'),
(187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none'),
(188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none'),
(189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none'),
(190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none'),
(191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none'),
(192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin'),
(193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin'),
(194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_manufacturer`
--

DROP TABLE IF EXISTS `#__vm_manufacturer`;
CREATE TABLE IF NOT EXISTS `#__vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `mf_name` varchar(64) default NULL,
  `mf_email` varchar(255) default NULL,
  `mf_desc` text,
  `mf_category_id` int(11) default NULL,
  `mf_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`manufacturer_id`)
) TYPE=MyISAM  COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__vm_manufacturer`
--

INSERT INTO `#__vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_manufacturer_category`
--

DROP TABLE IF EXISTS `#__vm_manufacturer_category`;
CREATE TABLE IF NOT EXISTS `#__vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL auto_increment,
  `mf_category_name` varchar(64) default NULL,
  `mf_category_desc` text,
  PRIMARY KEY  (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) TYPE=MyISAM  COMMENT='Manufactorers are assigned to these categories' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__vm_manufacturer_category`
--

INSERT INTO `#__vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_module`
--

DROP TABLE IF EXISTS `#__vm_module`;
CREATE TABLE IF NOT EXISTS `#__vm_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(255) default NULL,
  `module_description` text,
  `module_perms` varchar(255) default NULL,
  `module_publish` char(1) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) TYPE=MyISAM  COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

--
-- Dumping data for table `#__vm_module`
--

INSERT INTO `#__vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'storeadmin,admin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(98, 'affiliate', 'administrate the affiliates on your store.', 'storeadmin,admin', 'N', 99),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_orders`
--

DROP TABLE IF EXISTS `#__vm_orders`;
CREATE TABLE IF NOT EXISTS `#__vm_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `order_number` varchar(32) default NULL,
  `user_info_id` varchar(32) default NULL,
  `order_total` decimal(15,5) NOT NULL default '0.00000',
  `order_subtotal` decimal(15,5) default NULL,
  `order_tax` decimal(10,2) default NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) default NULL,
  `order_shipping_tax` decimal(10,2) default NULL,
  `coupon_discount` decimal(12,2) NOT NULL default '0.00',
  `coupon_code` varchar(32) default NULL,
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `order_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `ship_method_id` varchar(255) default NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) TYPE=MyISAM  COMMENT='Used to store all orders' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__vm_orders`
--

INSERT INTO `#__vm_orders` (`order_id`, `user_id`, `vendor_id`, `order_number`, `user_info_id`, `order_total`, `order_subtotal`, `order_tax`, `order_tax_details`, `order_shipping`, `order_shipping_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `cdate`, `mdate`, `ship_method_id`, `customer_note`, `ip_address`) VALUES
(1, 64, 1, '64_7378425b1cc2fffcda854ac9669a9', 'b184584a15c4db23a9510387973ec9cf', '838.79000', '751.04850', '61.96', 'a:0:{}', '25.78', '0.00', '0.00', '', '0.00', 'USD', 'P', 1216884355, 1216884355, 'standard_shipping|DHL|Europe &gt; 4kg|25.78|9', 'Just make the first test order', '10.0.0.52'),
(2, 63, 1, '63_ff89e043016f581e5887b42b65910', '14b19cb36eed6d49df50055a3b44b360', '6019.47000', '5526.54042', '456.10', 'a:0:{}', '34.98', '0.00', '0.00', '', '-2.00', 'USD', 'P', 1216895631, 1216895631, 'standard_shipping|DHL|World_2 &gt; 4kg|34.98|17', '', '10.0.0.203'),
(3, 65, 1, '65_32e4b6b5f40f6cb418b08f3bb4747', 'f37b2ffe05540e92e9d7b78e29842c8c', '412.00000', '354.93764', '29.43', 'a:0:{}', '25.78', '0.00', '0.00', '', '-2.00', 'USD', 'P', 1216901955, 1216901955, 'standard_shipping|DHL|Europe &gt; 4kg|25.78|9', '', '10.0.0.230');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_order_history`
--

DROP TABLE IF EXISTS `#__vm_order_history`;
CREATE TABLE IF NOT EXISTS `#__vm_order_history` (
  `order_status_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_code` char(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_status_history_id`)
) TYPE=MyISAM  COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__vm_order_history`
--

INSERT INTO `#__vm_order_history` (`order_status_history_id`, `order_id`, `order_status_code`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 'P', '2008-07-24 14:25:55', 1, ''),
(2, 2, 'P', '2008-07-24 17:33:51', 1, ''),
(3, 3, 'P', '2008-07-24 19:19:15', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_order_item`
--

DROP TABLE IF EXISTS `#__vm_order_item`;
CREATE TABLE IF NOT EXISTS `#__vm_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `user_info_id` varchar(32) default NULL,
  `vendor_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `order_item_sku` varchar(64) NOT NULL default '',
  `order_item_name` varchar(64) NOT NULL default '',
  `product_quantity` int(11) default NULL,
  `product_item_price` decimal(15,5) default NULL,
  `product_final_price` decimal(12,2) NOT NULL default '0.00',
  `order_item_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_attribute` text,
  PRIMARY KEY  (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) TYPE=MyISAM  COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__vm_order_item`
--

INSERT INTO `#__vm_order_item` (`order_item_id`, `order_id`, `user_info_id`, `vendor_id`, `product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_final_price`, `order_item_currency`, `order_status`, `cdate`, `mdate`, `product_attribute`) VALUES
(1, 1, 'b184584a15c4db23a9510387973ec9cf', 1, 28, 'LT001', 'HP Pavilion DV6910US 15.4', 1, '749.99000', '811.86', 'USD', 'P', 1216884355, 1216884355, ''),
(2, 1, 'b184584a15c4db23a9510387973ec9cf', 1, 31, 'LT004', 'HP Pavilion TX2510US 12.1', 1, '1.06200', '1.15', 'USD', 'P', 1216884355, 1216884355, ''),
(3, 2, '14b19cb36eed6d49df50055a3b44b360', 1, 29, 'LT002', 'Toshiba Satellite A305', 6, '1.14900', '1.24', 'USD', 'P', 1216895631, 1216895631, ''),
(4, 2, '14b19cb36eed6d49df50055a3b44b360', 1, 20, 'MP001', 'HP W2207 22 Widescreen', 24, '229.99000', '248.96', 'USD', 'P', 1216895631, 1216895631, ''),
(5, 3, 'f37b2ffe05540e92e9d7b78e29842c8c', 1, 27, 'MK004', 'Logitech diNovo Edge', 1, '154.99000', '167.78', 'USD', 'P', 1216901955, 1216901955, ''),
(6, 3, 'f37b2ffe05540e92e9d7b78e29842c8c', 1, 26, 'MK003', 'Logitech G5 Laser Mouse', 4, '49.99000', '54.11', 'USD', 'P', 1216901955, 1216901955, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_order_payment`
--

DROP TABLE IF EXISTS `#__vm_order_payment`;
CREATE TABLE IF NOT EXISTS `#__vm_order_payment` (
  `order_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) default NULL,
  `order_payment_code` varchar(30) NOT NULL default '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) default NULL,
  `order_payment_name` varchar(255) default NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) TYPE=MyISAM COMMENT='The payment method that was chosen for a specific order';

--
-- Dumping data for table `#__vm_order_payment`
--

INSERT INTO `#__vm_order_payment` (`order_id`, `payment_method_id`, `order_payment_code`, `order_payment_number`, `order_payment_expire`, `order_payment_name`, `order_payment_log`, `order_payment_trans_id`) VALUES
(1, 4, '', NULL, NULL, NULL, '', ''),
(2, 2, '', NULL, NULL, NULL, 'Payment information captured for later processing.<br />', ''),
(3, 2, '', NULL, NULL, NULL, 'Payment information captured for later processing.<br />', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_order_status`
--

DROP TABLE IF EXISTS `#__vm_order_status`;
CREATE TABLE IF NOT EXISTS `#__vm_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` char(1) NOT NULL default '',
  `order_status_name` varchar(64) default NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) TYPE=MyISAM  COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__vm_order_status`
--

INSERT INTO `#__vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `order_status_description`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', '', 1, 1),
(2, 'C', 'Confirmed', '', 2, 1),
(3, 'X', 'Cancelled', '', 3, 1),
(4, 'R', 'Refunded', '', 4, 1),
(5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_order_user_info`
--

DROP TABLE IF EXISTS `#__vm_order_user_info`;
CREATE TABLE IF NOT EXISTS `#__vm_order_user_info` (
  `order_info_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) TYPE=MyISAM  COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__vm_order_user_info`
--

INSERT INTO `#__vm_order_user_info` (`order_info_id`, `order_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
(1, 1, 64, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'khanhlh@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(2, 2, 63, 'BT', NULL, 'Joom', 'Mrs.', 'Phuong', 'Nguyen', 'Thi', '0912877211', '', '', '23T', '', 'Hanoi', '-', 'VNM', '084', 'phuongnt83@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(3, 3, 65, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'nnth@nnth.info', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_payment_method`
--

DROP TABLE IF EXISTS `#__vm_payment_method`;
CREATE TABLE IF NOT EXISTS `#__vm_payment_method` (
  `payment_method_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `payment_method_name` varchar(255) default NULL,
  `payment_class` varchar(50) NOT NULL default '',
  `shopper_group_id` int(11) default NULL,
  `payment_method_discount` decimal(12,2) default NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL,
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL,
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL,
  `list_order` int(11) default NULL,
  `payment_method_code` varchar(8) default NULL,
  `enable_processor` char(1) default NULL,
  `is_creditcard` tinyint(1) NOT NULL default '0',
  `payment_enabled` char(1) NOT NULL default 'N',
  `accepted_creditcards` varchar(128) NOT NULL default '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY  (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) TYPE=MyISAM  COMMENT='The payment methods of your store' AUTO_INCREMENT=18 ;

--
-- Dumping data for table `#__vm_payment_method`
--

INSERT INTO `#__vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `payment_method_discount_is_percent`, `payment_method_discount_max_amount`, `payment_method_discount_min_amount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 6, '0.00', 0, '0.00', '0.00', 4, 'PO', 'N', 0, 'Y', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 0, '0.00', '0.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, '0.00', '0.00', 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, '0.00', '0.00', 0, 'PP', 'P', 0, 'Y', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" border="0" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, '0.00', '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com.au/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com.au/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, '0.00', '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '0.00', '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, '0.00', '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, '0.00', '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, '0.00', '0.00', 0, 'EWAY', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, '0.00', '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, '0.00', '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, '0.00', '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, '0.00', '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', ''),
(15, 1, 'Dankort / PBS', 'ps_pbs', 5, '0.00', 0, '0.00', '0.00', 0, 'PBS', 'P', 0, 'N', '', '', ''),
(16, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, '0.00', 0, '0.00', '0.00', 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(17, 1, 'ePay', 'ps_epay', 5, '0.00', 0, '0.00', '0.00', 0, 'EPAY', 'P', 0, 'Y', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db =& new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product`
--

DROP TABLE IF EXISTS `#__vm_product`;
CREATE TABLE IF NOT EXISTS `#__vm_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `product_parent_id` int(11) NOT NULL default '0',
  `product_sku` varchar(64) NOT NULL default '',
  `product_s_desc` varchar(255) default NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) default NULL,
  `product_full_image` varchar(255) default NULL,
  `product_publish` char(1) default NULL,
  `product_weight` decimal(10,4) default NULL,
  `product_weight_uom` varchar(32) default 'pounds.',
  `product_length` decimal(10,4) default NULL,
  `product_width` decimal(10,4) default NULL,
  `product_height` decimal(10,4) default NULL,
  `product_lwh_uom` varchar(32) default 'inches',
  `product_url` varchar(255) default NULL,
  `product_in_stock` int(11) NOT NULL default '0',
  `product_available_date` int(11) default NULL,
  `product_availability` varchar(56) NOT NULL default '',
  `product_special` char(1) default NULL,
  `product_discount_id` int(11) default NULL,
  `ship_code_id` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_name` varchar(64) default NULL,
  `product_sales` int(11) NOT NULL default '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` tinyint(2) NOT NULL default '0',
  `product_unit` varchar(32) default NULL,
  `product_packaging` int(11) default NULL,
  `child_options` varchar(45) default NULL,
  `quantity_options` varchar(45) default NULL,
  `child_option_ids` varchar(45) default NULL,
  `product_order_levels` varchar(45) default NULL,
  PRIMARY KEY  (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) TYPE=MyISAM  COMMENT='All products are stored here.' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `#__vm_product`
--

INSERT INTO `#__vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`) VALUES
(22, 1, 0, 'MP003', 'Quis tortor malesuada morbi Integer feugiat ut Fusce elit consequat turpis. Ut at vel Vestibulum laoreet ac et non ut convallis tempor. At consectetuer Ut Sed dapibus pede fames platea nunc nulla nisl.', 'Quis tortor malesuada morbi Integer feugiat ut Fusce elit consequat turpis. Ut at vel Vestibulum laoreet ac et non ut convallis tempor. At consectetuer Ut Sed dapibus pede fames platea nunc nulla nisl.', 'resized/Samsung_SyncMast_4887fcba1d33e_120x120.jpg', 'Samsung_SyncMast_4887fcba2d0a1.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216659600, '', 'N', 1, NULL, 1216717658, 1216871622, 'Samsung SyncMaster 2253LW', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(21, 1, 0, 'MP002', 'Nec et id aliquam eros volutpat ligula Quisque gravida mus id. Leo ligula adipiscing auctor platea In a semper Vivamus neque eu. Et sollicitudin eros tempor a tincidunt quis justo Lorem lacinia wisi.', 'Nec et id aliquam eros volutpat ligula Quisque gravida mus id. Leo ligula adipiscing auctor platea In a semper Vivamus neque eu. Et sollicitudin eros tempor a tincidunt quis justo Lorem lacinia wisi.', 'resized/HP_W2408H_24__Wi_4887fc7fd51e9_120x120.jpg', 'HP_W2408H_24__Wi_4887fc7fe40a5.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216659600, '', 'Y', 1, NULL, 1216717461, 1216872697, 'HP W2408H 24 Widescreen', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(20, 1, 0, 'MP001', 'Quis tortor malesuada morbi Integer feugiat ut Fusce elit consequat turpis. Ut at vel Vestibulum laoreet ac et non ut convallis tempor. At consectetuer Ut Sed dapibus pede fames platea nunc nulla nisl.', 'Quis tortor malesuada morbi Integer feugiat ut Fusce elit consequat turpis. Ut at vel Vestibulum laoreet ac et non ut convallis tempor. At consectetuer Ut Sed dapibus pede fames platea nunc nulla nisl.', 'resized/HP_W2207_22__Wid_4887fc5aa1e24_120x120.jpg', 'HP_W2207_22__Wid_4887fc5ab07ac.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -24, 1216659600, '', 'Y', 0, NULL, 1216717195, 1216872762, 'HP W2207 22 Widescreen', 24, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(23, 1, 0, 'MP004', 'Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas. Ornare In ligula Nullam nec', '<p>Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>\r\n\r\n<p>Nibh nisl sodales turpis libero id nunc ut dictum hendrerit dolor. Turpis at Aenean vitae nunc eros Vestibulum laoreet semper eros at. Curabitur Vivamus vitae eu at odio velit Vestibulum id dui sagittis. Ante laoreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.</p>\r\n\r\n<p>Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas. Ornare In ligula Nullam nec In semper consequat lacus vel et. Turpis lacus pretium lacus tempus semper id Curabitur tincidunt tincidunt Vivamus. Interdum a libero tortor adipiscing ullamcorper Sed justo facilisis laoreet euismod. Ac et porttitor.</p>', 'resized/Samsung_SyncMast_4887fca7231ed_120x120.jpg', 'Samsung_SyncMast_4887fca7379e0.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216656000, '', 'Y', 0, NULL, 1216719659, 1231161166, 'Samsung SyncMaster', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(24, 1, 0, 'MK001', 'Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas.', '<p>Lorem ipsum dolor sit amet consectetuer malesuada congue volutpat dui ligula. Enim pellentesque fringilla pellentesque congue eu ipsum quis vel venenatis ridiculus. Cum iaculis nisl sed sed enim laoreet Nulla id cursus a. Penatibus nisl sed adipiscing metus eget Aliquam fames Suspendisse nunc in. Quis nibh condimentum condimentum Donec tempus sapien non Aliquam auctor Curabitur. Nullam sem Nullam Sed faucibus Aliquam sit vitae egestas dis faucibus. </p>\r\n\r\n<p>Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>\r\n\r\n<p>Nibh nisl sodales turpis libero id nunc ut dictum hendrerit dolor. Turpis at Aenean vitae nunc eros Vestibulum laoreet semper eros at. Curabitur Vivamus vitae eu at odio velit Vestibulum id dui sagittis. Ante laoreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.</p>', 'resized/Logitech_VX_Nano_4887fd5b877c1_120x120.jpg', 'Logitech_VX_Nano_4887fd5b9684b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216659600, '', 'Y', 0, NULL, 1216720626, 1216871771, 'Logitech VX Nano Cordless', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(25, 1, 0, 'MK002', 'Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condime', '<p>Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>\r\n\r\n<p>Nibh nisl sodales turpis libero id nunc ut dictum hendrerit dolor. Turpis at Aenean vitae nunc eros Vestibulum laoreet semper eros at. Curabitur Vivamus vitae eu at odio velit Vestibulum id dui sagittis. Ante laoreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.</p>\r\n\r\n<p>Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas. Ornare In ligula Nullam nec In semper consequat lacus vel et. Turpis lacus pretium lacus tempus semper id Curabitur tincidunt tincidunt Vivamus. Interdum a libero tortor adipiscing ullamcorper Sed justo facilisis laoreet euismod. Ac et porttitor.</p>', 'resized/Logitech_V450_Co_4887fd3f31e09_120x120.jpg', 'Logitech_V450_Co_4887fd3f4078d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216659600, '', 'N', 0, NULL, 1216720769, 1216871743, 'Logitech V450 Cordless', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(26, 1, 0, 'MK003', 'Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas.', '<p>Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>\r\n\r\n<p>Nibh nisl sodales turpis libero id nunc ut dictum hendrerit dolor. Turpis at Aenean vitae nunc eros Vestibulum laoreet semper eros at. Curabitur Vivamus vitae eu at odio velit Vestibulum id dui sagittis. Ante laoreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.</p>\r\n\r\n<p>Morbi Ut quis Donec Aliquam velit risus augue Integer senectus orci. Sapien amet sollicitudin Nulla sed parturient odio risus volutpat nibh nonummy. In Vivamus nunc condimentum tortor tincidunt lacinia magna at gravida egestas. Ornare In ligula Nullam nec In semper consequat lacus vel et. Turpis lacus pretium lacus tempus semper id Curabitur tincidunt tincidunt Vivamus. Interdum a libero tortor adipiscing ullamcorper Sed justo facilisis laoreet euismod. Ac et porttitor.</p>', 'resized/Logitech_G5_Lase_4887fd1adfee6_120x120.jpg', 'Logitech_G5_Lase_4887fd1aef95e.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -4, 1216659600, '', 'N', 1, NULL, 1216720878, 1216871719, 'Logitech G5 Laser Mouse', 4, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(27, 1, 0, 'MK004', 'oreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.', '<p>Lorem ipsum dolor sit amet consectetuer malesuada congue volutpat dui ligula. Enim pellentesque fringilla pellentesque congue eu ipsum quis vel venenatis ridiculus. Cum iaculis nisl sed sed enim laoreet Nulla id cursus a. Penatibus nisl sed adipiscing metus eget Aliquam fames Suspendisse nunc in. Quis nibh condimentum condimentum Donec tempus sapien non Aliquam auctor Curabitur. Nullam sem Nullam Sed faucibus Aliquam sit vitae egestas dis faucibus. </p>\r\n\r\n<p>Vestibulum urna leo Nullam id semper vitae parturient tortor nibh Lorem. Lorem quis auctor In pede Nam sapien penatibus malesuada Vestibulum velit. Et pretium tincidunt vestibulum urna Sed quis vel condimentum pede felis. Libero ante sapien rutrum condimentum dolor tristique morbi eu ipsum pellentesque. Interdum et augue sem ante pellentesque ligula Quisque molestie pellentesque Lorem. Congue lacus Nam Ut diam non purus.</p>\r\n\r\n<p>Nibh nisl sodales turpis libero id nunc ut dictum hendrerit dolor. Turpis at Aenean vitae nunc eros Vestibulum laoreet semper eros at. Curabitur Vivamus vitae eu at odio velit Vestibulum id dui sagittis. Ante laoreet aliquam neque congue nec semper amet eu Nam leo. Eu Curabitur justo augue urna semper Cum mattis justo quis.</p>', 'resized/Logitech_diNovo__4887fcffe6f8f_120x120.jpg', 'Logitech_diNovo__4887fd0000cb3.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -1, 1216659600, '', 'N', 0, NULL, 1216721103, 1216871692, 'Logitech diNovo Edge', 1, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(28, 1, 0, 'LT001', 'Curabitur quis interdum ullamcorper et wisi Ut Pellentesque quam natoque velit. Euismod mauris lorem rhoncus felis cursus gravida at lorem auctor Vestibulum.', '<p>Curabitur quis interdum ullamcorper et wisi Ut Pellentesque quam natoque velit. Euismod mauris lorem rhoncus felis cursus gravida at lorem auctor Vestibulum. Ullamcorper velit elit semper volutpat nibh Vivamus ac Nam elit pellentesque. Et vel consequat purus semper dignissim et Nulla Phasellus vitae dictumst. Congue enim Vivamus Quisque lobortis Integer elit sollicitudin.</p>\r\n\r\n<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>', 'resized/HP_Pavilion_DV69_4887fdaf501b6_120x120.jpg', 'HP_Pavilion_DV69_4887fdaf61df9.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -1, 1216746000, '', 'Y', 0, NULL, 1216805730, 1216871867, 'HP Pavilion DV6910US 15.4', 1, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(29, 1, 0, 'LT002', 'Elit parturient Curabitur elit Maecenas Vestibulum at augue id tincidunt Aenean. Nam dis ipsum consequat malesuada libero laoreet ac Lorem Fusce natoque. Vestibulum nec eget justo malesuada lacinia Pellentesque tellus orci felis nibh. Pede est lacinia tur', '<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>\r\n\r\n<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>', 'resized/Toshiba_Satellit_4887fdf0289f9_120x120.jpg', 'Toshiba_Satellit_4887fdf0374fa.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -6, 1216746000, '', 'N', 0, NULL, 1216805863, 1216872740, 'Toshiba Satellite A305', 6, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(30, 1, 0, 'LT003', 'Curabitur quis interdum ullamcorper et wisi Ut Pellentesque quam natoque velit. Euismod mauris lorem rhoncus felis cursus gravida at lorem auctor Vestibulum. Ullamcorper velit elit semper volutpat nibh Vivamus ac Nam elit pellentesque.', '<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>\r\n\r\n<p>Tristique metus ligula ipsum wisi magna elit libero urna interdum at. Et turpis pretium condimentum justo Curabitur non feugiat sociis adipiscing lorem. Sed Nulla tempor tempus libero tincidunt tempor adipiscing mus eget Aliquam. Feugiat nonummy vel id lacus leo Vestibulum dictumst Quisque malesuada faucibus. Nascetur consectetuer cursus vitae auctor Vestibulum platea magna dolor tincidunt vel. Lorem laoreet condimentum.</p>', 'resized/HP_2133_KR922UT__4887fd97650e3_120x120.jpg', 'HP_2133_KR922UT__4887fd9773825.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'N', 0, NULL, 1216806219, 1216871843, 'HP 2133-KR922UT 8.9', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(31, 1, 0, 'LT004', 'Sapien Nam nisl nibh id quis aliquam convallis massa nibh cursus. Eget amet condimentum id mauris Curabitur est Morbi neque mattis mauris. Et lacus vitae malesuada eget semper id sagittis ultrices mollis nascetur.', '<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>\r\n\r\n<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>\r\n\r\n<p>Tristique metus ligula ipsum wisi magna elit libero urna interdum at. Et turpis pretium condimentum justo Curabitur non feugiat sociis adipiscing lorem. Sed Nulla tempor tempus libero tincidunt tempor adipiscing mus eget Aliquam. Feugiat nonummy vel id lacus leo Vestibulum dictumst Quisque malesuada faucibus. Nascetur consectetuer cursus vitae auctor Vestibulum platea magna dolor tincidunt vel. Lorem laoreet condimentum.</p>', 'resized/HP_Pavilion_TX25_4887fdd326dfd_120x120.jpg', 'HP_Pavilion_TX25_4887fdd336283.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', -1, 1216746000, '', 'Y', 0, NULL, 1216806380, 1216871903, 'HP Pavilion TX2510US 12.1', 1, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(32, 1, 0, 'MA001', 'Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi', '<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>\r\n\r\n<p>Tristique metus ligula ipsum wisi magna elit libero urna interdum at. Et turpis pretium condimentum justo Curabitur non feugiat sociis adipiscing lorem. Sed Nulla tempor tempus libero tincidunt tempor adipiscing mus eget Aliquam. Feugiat nonummy vel id lacus leo Vestibulum dictumst Quisque malesuada faucibus. Nascetur consectetuer cursus vitae auctor Vestibulum platea magna dolor tincidunt vel. Lorem laoreet condimentum.</p>', 'resized/Apple_MacBook_Pr_4887feaea4956_120x120.jpg', 'Apple_MacBook_Pr_4887feaebe5f7.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'N', 0, NULL, 1216807370, 1216875582, 'MacBook Pro MB133LL/A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(33, 1, 0, 'MA002', 'Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero.', '<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>\r\n\r\n<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>\r\n\r\n<p>Tristique metus ligula ipsum wisi magna elit libero urna interdum at. Et turpis pretium condimentum justo Curabitur non feugiat sociis adipiscing lorem. Sed Nulla tempor tempus libero tincidunt tempor adipiscing mus eget Aliquam. Feugiat nonummy vel id lacus leo Vestibulum dictumst Quisque malesuada faucibus. Nascetur consectetuer cursus vitae auctor Vestibulum platea magna dolor tincidunt vel. Lorem laoreet condimentum.</p>', 'resized/Apple_MacBook_MB_4887fe8a0ff48_120x120.jpg', 'Apple_MacBook_MB_4887fe8a2d064.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'N', 0, NULL, 1216807526, 1216875617, 'MacBook MB404LL/A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(34, 1, 0, 'MA003', 'Elit parturient Curabitur elit Maecenas Vestibulum at augue id tincidunt Aenean. Nam dis ipsum consequat malesuada libero laoreet ac Lorem Fusce natoque. Vestibulum nec eget justo malesuada lacinia Pellentesque tellus orci felis nibh. Pede est lacinia tur', '<p>Elit parturient Curabitur elit Maecenas Vestibulum at augue id tincidunt Aenean. Nam dis ipsum consequat malesuada libero laoreet ac Lorem Fusce natoque. Vestibulum nec eget justo malesuada lacinia Pellentesque tellus orci felis nibh. Pede est lacinia turpis pharetra neque eget id leo Curabitur quis. Proin ut Nullam magna nibh Aenean auctor malesuada feugiat hac consequat. Eget penatibus odio dui.</p>\r\n\r\n<p>Curabitur quis interdum ullamcorper et wisi Ut Pellentesque quam natoque velit. Euismod mauris lorem rhoncus felis cursus gravida at lorem auctor Vestibulum. Ullamcorper velit elit semper volutpat nibh Vivamus ac Nam elit pellentesque. Et vel consequat purus semper dignissim et Nulla Phasellus vitae dictumst. Congue enim Vivamus Quisque lobortis Integer elit sollicitudin.</p>\r\n\r\n<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>', 'resized/Apple_MacBook_MB_4887fe68cfe74_120x120.jpg', 'Apple_MacBook_MB_4887fe68e4960.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'N', 0, NULL, 1216807817, 1216875633, 'MacBook MB403LL/A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(35, 1, 0, 'MA004', 'Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed t', '<p>Dui auctor egestas et tempus cursus semper tellus velit urna metus. Aliquam leo vitae ut pretium odio sollicitudin et tempus Nam Integer. A Vestibulum Nunc quis Ut ut orci interdum ac Maecenas id. Vivamus congue tortor at interdum tincidunt gravida iaculis nunc id enim. Ut wisi magna sed egestas Phasellus felis eros auctor odio nulla. Nunc id felis ligula at Vestibulum quis vel enim id et. </p>\r\n\r\n<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>', 'resized/Apple_MacBook_Pr_4887fecb6ad0c_120x120.jpg', 'Apple_MacBook_Pr_4887fecb80b5d.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'N', 0, NULL, 1216808435, 1216875600, 'MacBook Pro MB166LL/A', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(36, 1, 0, 'MK005', 'Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi', '<p>Eget et dapibus sagittis dui consectetuer accumsan Mauris Vestibulum nulla velit. Curabitur Sed accumsan et habitasse sed arcu gravida laoreet Phasellus Curabitur. Interdum sit Lorem elit mauris Nam et Lorem Vestibulum nibh ac. Ipsum tellus id vitae Sed tellus In nulla augue id platea. Condimentum vestibulum turpis est Curabitur dui pretium Maecenas.</p>\r\n\r\n<p>Volutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique Vestibulum Vivamus id nunc rutrum tortor libero. Penatibus malesuada dolor In laoreet morbi morbi Nulla tempus elit parturient. Magna dui neque quam Vestibulum vel Curabitur ac.</p>', 'resized/Microsoft_SideWi_4887fd6d2c80d_120x120.jpg', 'Microsoft_SideWi_4887fd6d3a692.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'Y', 0, NULL, 1216808782, 1216871801, 'Microsoft SideWinder', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(37, 1, 0, 'MP005', 'Sed nisl fermentum Nunc iaculis quis vel nibh consequat urna nulla. Pede justo Integer Curabitur pellentesque tellus auctor eget Sed tellus Nam. Diam ligula senectus', '<p>Sed nisl fermentum Nunc iaculis quis vel nibh consequat urna nulla. Pede justo Integer Curabitur pellentesque tellus auctor eget Sed tellus Nam. Diam ligula senectus enim Nullam risus faucibus ipsum wisi leo vel. Justo leo elit turpis hendrerit justo vitae condimentum quis Nunc felis. Tellus tristique leo Phasellus leo lacinia enim.</p>\r\n\r\n<p>Feugiat Nunc eros tincidunt risus urna libero lacus felis urna Nulla. Nam quis auctor pretium Nam Donec justo at pretium et nunc. Sem lobortis tempor dolor porttitor fermentum ut Vivamus massa lacinia orci. Hendrerit magna iaculis convallis auctor Vestibulum ut sem metus at habitasse. Semper Lorem ante at Phasellus eros elit neque elit eu est. Tellus ante convallis In.</p>', 'resized/X2Gen_22__Widesc_488740ba9a5cf_120x120.jpg', 'X2Gen_22__Widesc_488740baab04b.jpg', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 1216746000, '', 'Y', 0, NULL, 1216823482, 1216872720, 'X2Gen 22 Widescreen', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_attribute`
--

DROP TABLE IF EXISTS `#__vm_product_attribute`;
CREATE TABLE IF NOT EXISTS `#__vm_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_value` char(255) NOT NULL default '',
  PRIMARY KEY  (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) TYPE=MyISAM  COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__vm_product_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_attribute_sku`
--

DROP TABLE IF EXISTS `#__vm_product_attribute_sku`;
CREATE TABLE IF NOT EXISTS `#__vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_list` int(11) NOT NULL default '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) TYPE=MyISAM COMMENT='Attributes for a Parent Product used by its Child Products';

--
-- Dumping data for table `#__vm_product_attribute_sku`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_category_xref`
--

DROP TABLE IF EXISTS `#__vm_product_category_xref`;
CREATE TABLE IF NOT EXISTS `#__vm_product_category_xref` (
  `category_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_list` int(11) default NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) TYPE=MyISAM COMMENT='Maps Products to Categories';

--
-- Dumping data for table `#__vm_product_category_xref`
--

INSERT INTO `#__vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(11, 22, 1),
(11, 21, 1),
(11, 20, 1),
(11, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 30, 1),
(13, 31, 1),
(14, 32, 1),
(14, 33, 1),
(14, 34, 1),
(14, 35, 1),
(12, 36, 1),
(11, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_discount`
--

DROP TABLE IF EXISTS `#__vm_product_discount`;
CREATE TABLE IF NOT EXISTS `#__vm_product_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `is_percent` tinyint(1) NOT NULL default '0',
  `start_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`discount_id`)
) TYPE=MyISAM  COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__vm_product_discount`
--

INSERT INTO `#__vm_product_discount` (`discount_id`, `amount`, `is_percent`, `start_date`, `end_date`) VALUES
(1, '20.00', 1, 1097704800, 1194390000),
(2, '2.00', 0, 1098655200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_download`
--

DROP TABLE IF EXISTS `#__vm_product_download`;
CREATE TABLE IF NOT EXISTS `#__vm_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) TYPE=MyISAM COMMENT='Active downloads for selling downloadable goods';

--
-- Dumping data for table `#__vm_product_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_files`
--

DROP TABLE IF EXISTS `#__vm_product_files`;
CREATE TABLE IF NOT EXISTS `#__vm_product_files` (
  `file_id` int(19) NOT NULL auto_increment,
  `file_product_id` int(11) NOT NULL default '0',
  `file_name` varchar(128) NOT NULL default '',
  `file_title` varchar(128) NOT NULL default '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL default '',
  `file_mimetype` varchar(64) NOT NULL default '',
  `file_url` varchar(254) NOT NULL default '',
  `file_published` tinyint(1) NOT NULL default '0',
  `file_is_image` tinyint(1) NOT NULL default '0',
  `file_image_height` int(11) NOT NULL default '0',
  `file_image_width` int(11) NOT NULL default '0',
  `file_image_thumb_height` int(11) NOT NULL default '50',
  `file_image_thumb_width` int(11) NOT NULL default '0',
  PRIMARY KEY  (`file_id`)
) TYPE=MyISAM COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__vm_product_files`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_mf_xref`
--

DROP TABLE IF EXISTS `#__vm_product_mf_xref`;
CREATE TABLE IF NOT EXISTS `#__vm_product_mf_xref` (
  `product_id` int(11) default NULL,
  `manufacturer_id` int(11) default NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) TYPE=MyISAM COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `#__vm_product_mf_xref`
--

INSERT INTO `#__vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(22, 1),
(21, 1),
(20, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_price`
--

DROP TABLE IF EXISTS `#__vm_product_price`;
CREATE TABLE IF NOT EXISTS `#__vm_product_price` (
  `product_price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `product_price` decimal(12,5) default NULL,
  `product_currency` char(16) default NULL,
  `product_price_vdate` int(11) default NULL,
  `product_price_edate` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `price_quantity_start` int(11) unsigned NOT NULL default '0',
  `price_quantity_end` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) TYPE=MyISAM  COMMENT='Holds price records for a product' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `#__vm_product_price`
--

INSERT INTO `#__vm_product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`, `price_quantity_start`, `price_quantity_end`) VALUES
(22, 22, '290.99000', 'USD', 0, 0, 1216717658, 1216871622, 5, 0, 0),
(21, 21, '464.99000', 'USD', 0, 0, 1216717461, 1216872697, 5, 0, 0),
(20, 20, '229.99000', 'USD', 0, 0, 1216717195, 1216872762, 5, 0, 0),
(23, 23, '290.27000', 'USD', 0, 0, 1216719659, 1231161166, 5, 0, 0),
(24, 24, '48.99000', 'USD', 0, 0, 1216720626, 1216871771, 5, 0, 0),
(25, 25, '34.24000', 'USD', 0, 0, 1216720769, 1216871743, 5, 0, 0),
(26, 26, '49.99000', 'USD', 0, 0, 1216720878, 1216871719, 5, 0, 0),
(27, 27, '154.99000', 'USD', 0, 0, 1216721103, 1216871692, 5, 0, 0),
(28, 28, '749.99000', 'USD', 0, 0, 1216805730, 1216871867, 5, 0, 0),
(29, 29, '1.14900', 'USD', 0, 0, 1216805863, 1216872740, 5, 0, 0),
(30, 30, '499.99000', 'USD', 0, 0, 1216806219, 1216871843, 5, 0, 0),
(31, 31, '1.06200', 'USD', 0, 0, 1216806380, 1216871903, 5, 0, 0),
(32, 32, '1.91800', 'USD', 0, 0, 1216807370, 1216875582, 5, 0, 0),
(33, 33, '1.49900', 'USD', 0, 0, 1216807526, 1216875617, 5, 0, 0),
(34, 34, '1.26900', 'USD', 0, 0, 1216807817, 1216875633, 5, 0, 0),
(35, 35, '2.75800', 'USD', 0, 0, 1216808435, 1216875600, 5, 0, 0),
(36, 36, '52.92000', 'USD', 0, 0, 1216808782, 1216871801, 5, 0, 0),
(37, 37, '999.00000', 'USD', 0, 0, 1216823482, 1216872720, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_product_type_xref`
--

DROP TABLE IF EXISTS `#__vm_product_product_type_xref`;
CREATE TABLE IF NOT EXISTS `#__vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL default '0',
  `product_type_id` int(11) NOT NULL default '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) TYPE=MyISAM COMMENT='Maps products to a product type';

--
-- Dumping data for table `#__vm_product_product_type_xref`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_relations`
--

DROP TABLE IF EXISTS `#__vm_product_relations`;
CREATE TABLE IF NOT EXISTS `#__vm_product_relations` (
  `product_id` int(11) NOT NULL default '0',
  `related_products` text,
  PRIMARY KEY  (`product_id`)
) TYPE=MyISAM;

--
-- Dumping data for table `#__vm_product_relations`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_reviews`
--

DROP TABLE IF EXISTS `#__vm_product_reviews`;
CREATE TABLE IF NOT EXISTS `#__vm_product_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  `user_rating` tinyint(1) NOT NULL default '0',
  `review_ok` int(11) NOT NULL default '0',
  `review_votes` int(11) NOT NULL default '0',
  `published` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) TYPE=MyISAM  AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__vm_product_reviews`
--

INSERT INTO `#__vm_product_reviews` (`review_id`, `product_id`, `comment`, `userid`, `time`, `user_rating`, `review_ok`, `review_votes`, `published`) VALUES
(1, 23, 'I purchased this monitor 2 weeks ago! This is a great product with very reasonable price! Recommended!', 65, 1216884388, 5, 0, 0, 'Y'),
(2, 36, 'This is a good mouse. However, the price should be lower. Love the color, speed, smooth wheel.... Go go go.', 64, 1216884834, 4, 0, 0, 'Y'),
(3, 36, 'Wow, so crazy mouse!!! Must have one. <br />\r\n<br />\r\nVolutpat et Maecenas eget fringilla eleifend in gravida et id Lorem. Lorem odio nibh accumsan dui nibh dui at magnis congue turpis. Dui Vestibulum netus tristique', 65, 1216885161, 5, 0, 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_type`
--

DROP TABLE IF EXISTS `#__vm_product_type`;
CREATE TABLE IF NOT EXISTS `#__vm_product_type` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) NOT NULL default '',
  `product_type_description` text,
  `product_type_publish` char(1) default NULL,
  `product_type_browsepage` varchar(255) default NULL,
  `product_type_flypage` varchar(255) default NULL,
  `product_type_list_order` int(11) default NULL,
  PRIMARY KEY  (`product_type_id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__vm_product_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_type_parameter`
--

DROP TABLE IF EXISTS `#__vm_product_type_parameter`;
CREATE TABLE IF NOT EXISTS `#__vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL default '0',
  `parameter_name` varchar(255) NOT NULL default '',
  `parameter_label` varchar(255) NOT NULL default '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL default '0',
  `parameter_type` char(1) NOT NULL default 'T',
  `parameter_values` varchar(255) default NULL,
  `parameter_multiselect` char(1) default NULL,
  `parameter_default` varchar(255) default NULL,
  `parameter_unit` varchar(32) default NULL,
  PRIMARY KEY  (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) TYPE=MyISAM COMMENT='Parameters which are part of a product type';

--
-- Dumping data for table `#__vm_product_type_parameter`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_product_votes`
--

DROP TABLE IF EXISTS `#__vm_product_votes`;
CREATE TABLE IF NOT EXISTS `#__vm_product_votes` (
  `product_id` int(255) NOT NULL default '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL default '0',
  `rating` tinyint(1) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) TYPE=MyISAM COMMENT='Stores all votes for a product';

--
-- Dumping data for table `#__vm_product_votes`
--

INSERT INTO `#__vm_product_votes` (`product_id`, `votes`, `allvotes`, `rating`, `lastip`) VALUES
(23, '5', 1, 5, '10.0.0.101'),
(36, '5,4', 2, 5, '10.0.0.52');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_shipping_carrier`
--

DROP TABLE IF EXISTS `#__vm_shipping_carrier`;
CREATE TABLE IF NOT EXISTS `#__vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL auto_increment,
  `shipping_carrier_name` char(80) NOT NULL default '',
  `shipping_carrier_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_carrier_id`)
) TYPE=MyISAM  COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__vm_shipping_carrier`
--

INSERT INTO `#__vm_shipping_carrier` (`shipping_carrier_id`, `shipping_carrier_name`, `shipping_carrier_list_order`) VALUES
(1, 'DHL', 0),
(2, 'UPS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_shipping_label`
--

DROP TABLE IF EXISTS `#__vm_shipping_label`;
CREATE TABLE IF NOT EXISTS `#__vm_shipping_label` (
  `order_id` int(11) NOT NULL default '0',
  `shipper_class` varchar(32) default NULL,
  `ship_date` varchar(32) default NULL,
  `service_code` varchar(32) default NULL,
  `special_service` varchar(32) default NULL,
  `package_type` varchar(16) default NULL,
  `order_weight` decimal(10,2) default NULL,
  `is_international` tinyint(1) default NULL,
  `additional_protection_type` varchar(16) default NULL,
  `additional_protection_value` decimal(10,2) default NULL,
  `duty_value` decimal(10,2) default NULL,
  `content_desc` varchar(255) default NULL,
  `label_is_generated` tinyint(1) NOT NULL default '0',
  `tracking_number` varchar(32) default NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL default '0',
  `signature_image` blob,
  PRIMARY KEY  (`order_id`)
) TYPE=MyISAM COMMENT='Stores information used in generating shipping labels';

--
-- Dumping data for table `#__vm_shipping_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_shipping_rate`
--

DROP TABLE IF EXISTS `#__vm_shipping_rate`;
CREATE TABLE IF NOT EXISTS `#__vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL auto_increment,
  `shipping_rate_name` varchar(255) NOT NULL default '',
  `shipping_rate_carrier_id` int(11) NOT NULL default '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL default '',
  `shipping_rate_zip_end` varchar(32) NOT NULL default '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL default '0',
  `shipping_rate_vat_id` int(11) NOT NULL default '0',
  `shipping_rate_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_rate_id`)
) TYPE=MyISAM  COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `#__vm_shipping_rate`
--

INSERT INTO `#__vm_shipping_rate` (`shipping_rate_id`, `shipping_rate_name`, `shipping_rate_carrier_id`, `shipping_rate_country`, `shipping_rate_zip_start`, `shipping_rate_zip_end`, `shipping_rate_weight_start`, `shipping_rate_weight_end`, `shipping_rate_value`, `shipping_rate_package_fee`, `shipping_rate_currency_id`, `shipping_rate_vat_id`, `shipping_rate_list_order`) VALUES
(1, 'Inland &gt; 4kg', 1, 'DEU', '00000', '99999', '0.000', '4.000', '5.62', '2.00', 47, 0, 1),
(2, 'Inland &gt; 8kg', 1, 'DEU', '00000', '99999', '4.000', '8.000', '6.39', '2.00', 47, 0, 2),
(3, 'Inland &gt; 12kg', 1, 'DEU', '00000', '99999', '8.000', '12.000', '7.16', '2.00', 47, 0, 3),
(4, 'Inland &gt; 20kg', 1, 'DEU', '00000', '99999', '12.000', '20.000', '8.69', '2.00', 47, 0, 4),
(5, 'EU+ &gt;  4kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '4.000', '14.57', '2.00', 47, 0, 5),
(6, 'EU+ &gt;  8kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '4.000', '8.000', '18.66', '2.00', 47, 0, 6),
(7, 'EU+ &gt; 12kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '8.000', '12.000', '22.57', '2.00', 47, 0, 7),
(8, 'EU+ &gt; 20kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '12.000', '20.000', '30.93', '2.00', 47, 0, 8),
(9, 'Europe &gt; 4kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '0.000', '4.000', '23.78', '2.00', 47, 0, 9),
(10, 'Europe &gt;  8kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '4.000', '8.000', '29.91', '2.00', 47, 0, 10),
(11, 'Europe &gt; 12kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '8.000', '12.000', '36.05', '2.00', 47, 0, 11),
(12, 'Europe &gt; 20kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '12.000', '20.000', '48.32', '2.00', 47, 0, 12),
(13, 'World_1 &gt;  4kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '0.000', '4.000', '26.84', '2.00', 47, 0, 13),
(14, 'World_1 &gt; 8kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '4.000', '8.000', '35.02', '2.00', 47, 0, 14),
(15, 'World_1 &gt;12kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '8.000', '12.000', '43.20', '2.00', 47, 0, 15),
(16, 'World_1 &gt;20kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '12.000', '20.000', '59.57', '2.00', 47, 0, 16),
(17, 'World_2 &gt; 4kg', 1, '', '00000', '99999', '0.000', '4.000', '32.98', '2.00', 47, 0, 17),
(18, 'World_2 &gt; 8kg', 1, '', '00000', '99999', '4.000', '8.000', '47.29', '2.00', 47, 0, 18),
(19, 'World_2 &gt; 12kg', 1, '', '00000', '99999', '8.000', '12.000', '61.61', '2.00', 47, 0, 19),
(20, 'World_2 &gt; 20kg', 1, '', '00000', '99999', '12.000', '20.000', '90.24', '2.00', 47, 0, 20),
(21, 'UPS Express', 2, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '20.000', '5.24', '2.00', 47, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_shopper_group`
--

DROP TABLE IF EXISTS `#__vm_shopper_group`;
CREATE TABLE IF NOT EXISTS `#__vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `shopper_group_name` varchar(32) default NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL default '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL default '1',
  `default` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) TYPE=MyISAM  COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__vm_shopper_group`
--

INSERT INTO `#__vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(6, 1, 'Gold Level', 'Gold Level phpShoppers.', '0.00', 1, 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_shopper_vendor_xref`
--

DROP TABLE IF EXISTS `#__vm_shopper_vendor_xref`;
CREATE TABLE IF NOT EXISTS `#__vm_shopper_vendor_xref` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `customer_number` varchar(32) default NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) TYPE=MyISAM COMMENT='Maps a user to a Shopper Group of a Vendor';

--
-- Dumping data for table `#__vm_shopper_vendor_xref`
--

INSERT INTO `#__vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, ''),
(63, 1, 5, ''),
(64, 1, 5, ''),
(65, 1, 5, ''),
(66, 1, 5, ''),
(67, 1, 5, ''),
(68, 1, 5, ''),
(71, 1, 5, '113624889897e86c98');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_state`
--

DROP TABLE IF EXISTS `#__vm_state`;
CREATE TABLE IF NOT EXISTS `#__vm_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) TYPE=MyISAM  COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

--
-- Dumping data for table `#__vm_state`
--

INSERT INTO `#__vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AT'),
(70, 13, 'New South Wales', 'NSW', 'NW'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TA'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'México (Estado de)', 'EDM', 'EM'),
(92, 138, 'Michoacán', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo León', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'Querétaro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis Potosí', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'Yucatán', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'Amapá', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'Bahía', 'BAH', 'BA'),
(114, 30, 'Ceará', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'Goiás', 'GOI', 'GO'),
(118, 30, 'Maranhão', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas Geraís', 'MIG', 'MG'),
(122, 30, 'Paraná', 'PAR', 'PR'),
(123, 30, 'Paraíba', 'PRB', 'PB'),
(124, 30, 'Pará', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PE'),
(126, 30, 'Piauí', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'Rondônia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'São Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', '34'),
(137, 44, 'Beijing', 'BEI', '11'),
(138, 44, 'Chongqing', 'CHO', '50'),
(139, 44, 'Fujian', 'FUJ', '35'),
(140, 44, 'Gansu', 'GAN', '62'),
(141, 44, 'Guangdong', 'GUA', '44'),
(142, 44, 'Guangxi Zhuang', 'GUZ', '45'),
(143, 44, 'Guizhou', 'GUI', '52'),
(144, 44, 'Hainan', 'HAI', '46'),
(145, 44, 'Hebei', 'HEB', '13'),
(146, 44, 'Heilongjiang', 'HEI', '23'),
(147, 44, 'Henan', 'HEN', '41'),
(148, 44, 'Hubei', 'HUB', '42'),
(149, 44, 'Hunan', 'HUN', '43'),
(150, 44, 'Jiangsu', 'JIA', '32'),
(151, 44, 'Jiangxi', 'JIX', '36'),
(152, 44, 'Jilin', 'JIL', '22'),
(153, 44, 'Liaoning', 'LIA', '21'),
(154, 44, 'Nei Mongol', 'NML', '15'),
(155, 44, 'Ningxia Hui', 'NIH', '64'),
(156, 44, 'Qinghai', 'QIN', '63'),
(157, 44, 'Shandong', 'SNG', '37'),
(158, 44, 'Shanghai', 'SHH', '31'),
(159, 44, 'Shaanxi', 'SHX', '61'),
(160, 44, 'Sichuan', 'SIC', '51'),
(161, 44, 'Tianjin', 'TIA', '12'),
(162, 44, 'Xinjiang Uygur', 'XIU', '65'),
(163, 44, 'Xizang', 'XIZ', '54'),
(164, 44, 'Yunnan', 'YUN', '53'),
(165, 44, 'Zhejiang', 'ZHE', '33'),
(166, 104, 'Gaza Strip', 'GZS', 'GZ'),
(167, 104, 'West Bank', 'WBK', 'WB'),
(168, 104, 'Other', 'OTH', 'OT'),
(169, 151, 'St. Maarten', 'STM', 'SM'),
(170, 151, 'Bonaire', 'BNR', 'BN'),
(171, 151, 'Curacao', 'CUR', 'CR'),
(172, 175, 'Alba', 'ABA', 'AB'),
(173, 175, 'Arad', 'ARD', 'AR'),
(174, 175, 'Arges', 'ARG', 'AG'),
(175, 175, 'Bacau', 'BAC', 'BC'),
(176, 175, 'Bihor', 'BIH', 'BH'),
(177, 175, 'Bistrita-Nasaud', 'BIS', 'BN'),
(178, 175, 'Botosani', 'BOT', 'BT'),
(179, 175, 'Braila', 'BRL', 'BR'),
(180, 175, 'Brasov', 'BRA', 'BV'),
(181, 175, 'Bucuresti', 'BUC', 'B'),
(182, 175, 'Buzau', 'BUZ', 'BZ'),
(183, 175, 'Calarasi', 'CAL', 'CL'),
(184, 175, 'Caras Severin', 'CRS', 'CS'),
(185, 175, 'Cluj', 'CLJ', 'CJ'),
(186, 175, 'Constanta', 'CST', 'CT'),
(187, 175, 'Covasna', 'COV', 'CV'),
(188, 175, 'Dambovita', 'DAM', 'DB'),
(189, 175, 'Dolj', 'DLJ', 'DJ'),
(190, 175, 'Galati', 'GAL', 'GL'),
(191, 175, 'Giurgiu', 'GIU', 'GR'),
(192, 175, 'Gorj', 'GOR', 'GJ'),
(193, 175, 'Hargita', 'HRG', 'HR'),
(194, 175, 'Hunedoara', 'HUN', 'HD'),
(195, 175, 'Ialomita', 'IAL', 'IL'),
(196, 175, 'Iasi', 'IAS', 'IS'),
(197, 175, 'Ilfov', 'ILF', 'IF'),
(198, 175, 'Maramures', 'MAR', 'MM'),
(199, 175, 'Mehedinti', 'MEH', 'MH'),
(200, 175, 'Mures', 'MUR', 'MS'),
(201, 175, 'Neamt', 'NEM', 'NT'),
(202, 175, 'Olt', 'OLT', 'OT'),
(203, 175, 'Prahova', 'PRA', 'PH'),
(204, 175, 'Salaj', 'SAL', 'SJ'),
(205, 175, 'Satu Mare', 'SAT', 'SM'),
(206, 175, 'Sibiu', 'SIB', 'SB'),
(207, 175, 'Suceava', 'SUC', 'SV'),
(208, 175, 'Teleorman', 'TEL', 'TR'),
(209, 175, 'Timis', 'TIM', 'TM'),
(210, 175, 'Tulcea', 'TUL', 'TL'),
(211, 175, 'Valcea', 'VAL', 'VL'),
(212, 175, 'Vaslui', 'VAS', 'VS'),
(213, 175, 'Vreancea', 'VRA', 'VN'),
(214, 105, 'Agrigento', 'AGR', 'AG'),
(215, 105, 'Alessandria', 'ALE', 'AL'),
(216, 105, 'Ancona', 'ANC', 'AN'),
(217, 105, 'Aosta', 'AOS', 'AO'),
(218, 105, 'Arezzo', 'ARE', 'AR'),
(219, 105, 'Ascoli Piceno', 'API', 'AP'),
(220, 105, 'Asti', 'AST', 'AT'),
(221, 105, 'Avellino', 'AVE', 'AV'),
(222, 105, 'Bari', 'BAR', 'BA'),
(223, 105, 'Belluno', 'BEL', 'BL'),
(224, 105, 'Benevento', 'BEN', 'BN'),
(225, 105, 'Bergamo', 'BEG', 'BG'),
(226, 105, 'Biella', 'BIE', 'BI'),
(227, 105, 'Bologna', 'BOL', 'BO'),
(228, 105, 'Bolzano', 'BOZ', 'BZ'),
(229, 105, 'Brescia', 'BRE', 'BS'),
(230, 105, 'Brindisi', 'BRI', 'BR'),
(231, 105, 'Cagliari', 'CAG', 'CA'),
(232, 105, 'Caltanissetta', 'CAL', 'CL'),
(233, 105, 'Campobasso', 'CBO', 'CB'),
(234, 105, 'Carbonia-Iglesias', 'CAR', 'CI'),
(235, 105, 'Caserta', 'CAS', 'CE'),
(236, 105, 'Catania', 'CAT', 'CT'),
(237, 105, 'Catanzaro', 'CTZ', 'CZ'),
(238, 105, 'Chieti', 'CHI', 'CH'),
(239, 105, 'Como', 'COM', 'CO'),
(240, 105, 'Cosenza', 'COS', 'CS'),
(241, 105, 'Cremona', 'CRE', 'CR'),
(242, 105, 'Crotone', 'CRO', 'KR'),
(243, 105, 'Cuneo', 'CUN', 'CN'),
(244, 105, 'Enna', 'ENN', 'EN'),
(245, 105, 'Ferrara', 'FER', 'FE'),
(246, 105, 'Firenze', 'FIR', 'FI'),
(247, 105, 'Foggia', 'FOG', 'FG'),
(248, 105, 'Forli-Cesena', 'FOC', 'FC'),
(249, 105, 'Frosinone', 'FRO', 'FR'),
(250, 105, 'Genova', 'GEN', 'GE'),
(251, 105, 'Gorizia', 'GOR', 'GO'),
(252, 105, 'Grosseto', 'GRO', 'GR'),
(253, 105, 'Imperia', 'IMP', 'IM'),
(254, 105, 'Isernia', 'ISE', 'IS'),
(255, 105, 'L''Aquila', 'AQU', 'AQ'),
(256, 105, 'La Spezia', 'LAS', 'SP'),
(257, 105, 'Latina', 'LAT', 'LT'),
(258, 105, 'Lecce', 'LEC', 'LE'),
(259, 105, 'Lecco', 'LCC', 'LC'),
(260, 105, 'Livorno', 'LIV', 'LI'),
(261, 105, 'Lodi', 'LOD', 'LO'),
(262, 105, 'Lucca', 'LUC', 'LU'),
(263, 105, 'Macerata', 'MAC', 'MC'),
(264, 105, 'Mantova', 'MAN', 'MN'),
(265, 105, 'Massa-Carrara', 'MAS', 'MS'),
(266, 105, 'Matera', 'MAA', 'MT'),
(267, 105, 'Medio Campidano', 'MED', 'VS'),
(268, 105, 'Messina', 'MES', 'ME'),
(269, 105, 'Milano', 'MIL', 'MI'),
(270, 105, 'Modena', 'MOD', 'MO'),
(271, 105, 'Napoli', 'NAP', 'NA'),
(272, 105, 'Novara', 'NOV', 'NO'),
(273, 105, 'Nuoro', 'NUR', 'NU'),
(274, 105, 'Ogliastra', 'OGL', 'OG'),
(275, 105, 'Olbia-Tempio', 'OLB', 'OT'),
(276, 105, 'Oristano', 'ORI', 'OR'),
(277, 105, 'Padova', 'PDA', 'PD'),
(278, 105, 'Palermo', 'PAL', 'PA'),
(279, 105, 'Parma', 'PAA', 'PR'),
(280, 105, 'Pavia', 'PAV', 'PV'),
(281, 105, 'Perugia', 'PER', 'PG'),
(282, 105, 'Pesaro e Urbino', 'PES', 'PU'),
(283, 105, 'Pescara', 'PSC', 'PE'),
(284, 105, 'Piacenza', 'PIA', 'PC'),
(285, 105, 'Pisa', 'PIS', 'PI'),
(286, 105, 'Pistoia', 'PIT', 'PT'),
(287, 105, 'Pordenone', 'POR', 'PN'),
(288, 105, 'Potenza', 'PTZ', 'PZ'),
(289, 105, 'Prato', 'PRA', 'PO'),
(290, 105, 'Ragusa', 'RAG', 'RG'),
(291, 105, 'Ravenna', 'RAV', 'RA'),
(292, 105, 'Reggio Calabria', 'REG', 'RC'),
(293, 105, 'Reggio Emilia', 'REE', 'RE'),
(294, 105, 'Rieti', 'RIE', 'RI'),
(295, 105, 'Rimini', 'RIM', 'RN'),
(296, 105, 'Roma', 'ROM', 'RM'),
(297, 105, 'Rovigo', 'ROV', 'RO'),
(298, 105, 'Salerno', 'SAL', 'SA'),
(299, 105, 'Sassari', 'SAS', 'SS'),
(300, 105, 'Savona', 'SAV', 'SV'),
(301, 105, 'Siena', 'SIE', 'SI'),
(302, 105, 'Siracusa', 'SIR', 'SR'),
(303, 105, 'Sondrio', 'SOO', 'SO'),
(304, 105, 'Taranto', 'TAR', 'TA'),
(305, 105, 'Teramo', 'TER', 'TE'),
(306, 105, 'Terni', 'TRN', 'TR'),
(307, 105, 'Torino', 'TOR', 'TO'),
(308, 105, 'Trapani', 'TRA', 'TP'),
(309, 105, 'Trento', 'TRE', 'TN'),
(310, 105, 'Treviso', 'TRV', 'TV'),
(311, 105, 'Trieste', 'TRI', 'TS'),
(312, 105, 'Udine', 'UDI', 'UD'),
(313, 105, 'Varese', 'VAR', 'VA'),
(314, 105, 'Venezia', 'VEN', 'VE'),
(315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB'),
(316, 105, 'Vercelli', 'VER', 'VC'),
(317, 105, 'Verona', 'VRN', 'VR'),
(318, 105, 'Vibo Valenzia', 'VIV', 'VV'),
(319, 105, 'Vicenza', 'VII', 'VI'),
(320, 105, 'Viterbo', 'VIT', 'VT'),
(321, 195, 'A Coruña', 'ACO', '15'),
(322, 195, 'Alava', 'ALA', '01'),
(323, 195, 'Albacete', 'ALB', '02'),
(324, 195, 'Alicante', 'ALI', '03'),
(325, 195, 'Almeria', 'ALM', '04'),
(326, 195, 'Asturias', 'AST', '33'),
(327, 195, 'Avila', 'AVI', '05'),
(328, 195, 'Badajoz', 'BAD', '06'),
(329, 195, 'Baleares', 'BAL', '07'),
(330, 195, 'Barcelona', 'BAR', '08'),
(331, 195, 'Burgos', 'BUR', '09'),
(332, 195, 'Caceres', 'CAC', '10'),
(333, 195, 'Cadiz', 'CAD', '11'),
(334, 195, 'Cantabria', 'CAN', '39'),
(335, 195, 'Castellon', 'CAS', '12'),
(336, 195, 'Ceuta', 'CEU', '51'),
(337, 195, 'Ciudad Real', 'CIU', '13'),
(338, 195, 'Cordoba', 'COR', '14'),
(339, 195, 'Cuenca', 'CUE', '16'),
(340, 195, 'Girona', 'GIR', '17'),
(341, 195, 'Granada', 'GRA', '18'),
(342, 195, 'Guadalajara', 'GUA', '19'),
(343, 195, 'Guipuzcoa', 'GUI', '20'),
(344, 195, 'Huelva', 'HUL', '21'),
(345, 195, 'Huesca', 'HUS', '22'),
(346, 195, 'Jaen', 'JAE', '23'),
(347, 195, 'La Rioja', 'LRI', '26'),
(348, 195, 'Las Palmas', 'LPA', '35'),
(349, 195, 'Leon', 'LEO', '24'),
(350, 195, 'Lleida', 'LLE', '25'),
(351, 195, 'Lugo', 'LUG', '27'),
(352, 195, 'Madrid', 'MAD', '28'),
(353, 195, 'Malaga', 'MAL', '29'),
(354, 195, 'Melilla', 'MEL', '52'),
(355, 195, 'Murcia', 'MUR', '30'),
(356, 195, 'Navarra', 'NAV', '31'),
(357, 195, 'Ourense', 'OUR', '32'),
(358, 195, 'Palencia', 'PAL', '34'),
(359, 195, 'Pontevedra', 'PON', '36'),
(360, 195, 'Salamanca', 'SAL', '37'),
(361, 195, 'Santa Cruz de Tenerife', 'SCT', '38'),
(362, 195, 'Segovia', 'SEG', '40'),
(363, 195, 'Sevilla', 'SEV', '41'),
(364, 195, 'Soria', 'SOR', '42'),
(365, 195, 'Tarragona', 'TAR', '43'),
(366, 195, 'Teruel', 'TER', '44'),
(367, 195, 'Toledo', 'TOL', '45'),
(368, 195, 'Valencia', 'VAL', '46'),
(369, 195, 'Valladolid', 'VLL', '47'),
(370, 195, 'Vizcaya', 'VIZ', '48'),
(371, 195, 'Zamora', 'ZAM', '49'),
(372, 195, 'Zaragoza', 'ZAR', '50'),
(373, 11, 'Aragatsotn', 'ARG', 'AG'),
(374, 11, 'Ararat', 'ARR', 'AR'),
(375, 11, 'Armavir', 'ARM', 'AV'),
(376, 11, 'Gegharkunik', 'GEG', 'GR'),
(377, 11, 'Kotayk', 'KOT', 'KT'),
(378, 11, 'Lori', 'LOR', 'LO'),
(379, 11, 'Shirak', 'SHI', 'SH'),
(380, 11, 'Syunik', 'SYU', 'SU'),
(381, 11, 'Tavush', 'TAV', 'TV'),
(382, 11, 'Vayots-Dzor', 'VAD', 'VD'),
(383, 11, 'Yerevan', 'YER', 'ER'),
(384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI'),
(385, 99, 'Andhra Pradesh', 'AND', 'AN'),
(386, 99, 'Arunachal Pradesh', 'ARU', 'AR'),
(387, 99, 'Assam', 'ASS', 'AS'),
(388, 99, 'Bihar', 'BIH', 'BI'),
(389, 99, 'Chandigarh', 'CHA', 'CA'),
(390, 99, 'Chhatisgarh', 'CHH', 'CH'),
(391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD'),
(392, 99, 'Daman & Diu', 'DAM', 'DA'),
(393, 99, 'Delhi', 'DEL', 'DE'),
(394, 99, 'Goa', 'GOA', 'GO'),
(395, 99, 'Gujarat', 'GUJ', 'GU'),
(396, 99, 'Haryana', 'HAR', 'HA'),
(397, 99, 'Himachal Pradesh', 'HIM', 'HI'),
(398, 99, 'Jammu & Kashmir', 'JAM', 'JA'),
(399, 99, 'Jharkhand', 'JHA', 'JH'),
(400, 99, 'Karnataka', 'KAR', 'KA'),
(401, 99, 'Kerala', 'KER', 'KE'),
(402, 99, 'Lakshadweep', 'LAK', 'LA'),
(403, 99, 'Madhya Pradesh', 'MAD', 'MD'),
(404, 99, 'Maharashtra', 'MAH', 'MH'),
(405, 99, 'Manipur', 'MAN', 'MN'),
(406, 99, 'Meghalaya', 'MEG', 'ME'),
(407, 99, 'Mizoram', 'MIZ', 'MI'),
(408, 99, 'Nagaland', 'NAG', 'NA'),
(409, 99, 'Orissa', 'ORI', 'OR'),
(410, 99, 'Pondicherry', 'PON', 'PO'),
(411, 99, 'Punjab', 'PUN', 'PU'),
(412, 99, 'Rajasthan', 'RAJ', 'RA'),
(413, 99, 'Sikkim', 'SIK', 'SI'),
(414, 99, 'Tamil Nadu', 'TAM', 'TA'),
(415, 99, 'Tripura', 'TRI', 'TR'),
(416, 99, 'Uttaranchal', 'UAR', 'UA'),
(417, 99, 'Uttar Pradesh', 'UTT', 'UT'),
(418, 99, 'West Bengal', 'WES', 'WE'),
(419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO'),
(420, 101, 'Ardabil', 'ARD', 'AR'),
(421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG'),
(422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS'),
(423, 101, 'Bushehr', 'BUS', 'BU'),
(424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM'),
(425, 101, 'Esfahan', 'ESF', 'ES'),
(426, 101, 'Fars', 'FAR', 'FA'),
(427, 101, 'Gilan', 'GIL', 'GI'),
(428, 101, 'Gorgan', 'GOR', 'GO'),
(429, 101, 'Hamadan', 'HAM', 'HA'),
(430, 101, 'Hormozgan', 'HOR', 'HO'),
(431, 101, 'Ilam', 'ILA', 'IL'),
(432, 101, 'Kerman', 'KER', 'KE'),
(433, 101, 'Kermanshah', 'BAK', 'BA'),
(434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ'),
(435, 101, 'Khorasan-e Razavi', 'KHR', 'KR'),
(436, 101, 'Khorasan-e Shomali', 'KHS', 'KS'),
(437, 101, 'Khuzestan', 'KHU', 'KH'),
(438, 101, 'Kordestan', 'KOR', 'KO'),
(439, 101, 'Lorestan', 'LOR', 'LO'),
(440, 101, 'Markazi', 'MAR', 'MR'),
(441, 101, 'Mazandaran', 'MAZ', 'MZ'),
(442, 101, 'Qazvin', 'QAS', 'QA'),
(443, 101, 'Qom', 'QOM', 'QO'),
(444, 101, 'Semnan', 'SEM', 'SE'),
(445, 101, 'Sistan va Baluchestan', 'SBA', 'SB'),
(446, 101, 'Tehran', 'TEH', 'TE'),
(447, 101, 'Yazd', 'YAZ', 'YA'),
(448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_tax_rate`
--

DROP TABLE IF EXISTS `#__vm_tax_rate`;
CREATE TABLE IF NOT EXISTS `#__vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,4) default NULL,
  PRIMARY KEY  (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) TYPE=MyISAM  COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__vm_tax_rate`
--

INSERT INTO `#__vm_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.0825');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_userfield`
--

DROP TABLE IF EXISTS `#__vm_userfield`;
CREATE TABLE IF NOT EXISTS `#__vm_userfield` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL default '',
  `maxlength` int(11) default NULL,
  `size` int(11) default NULL,
  `required` tinyint(4) default '0',
  `ordering` int(11) default NULL,
  `cols` int(11) default NULL,
  `rows` int(11) default NULL,
  `value` varchar(50) default NULL,
  `default` int(11) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `registration` tinyint(1) NOT NULL default '0',
  `shipping` tinyint(1) NOT NULL default '0',
  `account` tinyint(1) NOT NULL default '1',
  `readonly` tinyint(1) NOT NULL default '0',
  `calculated` tinyint(1) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  `vendor_id` int(11) default NULL,
  `params` mediumtext,
  PRIMARY KEY  (`fieldid`)
) TYPE=MyISAM  COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `#__vm_userfield`
--

INSERT INTO `#__vm_userfield` (`fieldid`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `shipping`, `account`, `readonly`, `calculated`, `sys`, `vendor_id`, `params`) VALUES
(1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, ''),
(35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL),
(8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL),
(21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, ''),
(26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL),
(28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL),
(29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_userfield_values`
--

DROP TABLE IF EXISTS `#__vm_userfield_values`;
CREATE TABLE IF NOT EXISTS `#__vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`)
) TYPE=MyISAM  COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__vm_userfield_values`
--

INSERT INTO `#__vm_userfield_values` (`fieldvalueid`, `fieldid`, `fieldtitle`, `fieldvalue`, `ordering`, `sys`) VALUES
(1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1),
(2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1),
(3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_user_info`
--

DROP TABLE IF EXISTS `#__vm_user_info`;
CREATE TABLE IF NOT EXISTS `#__vm_user_info` (
  `user_info_id` varchar(32) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `perms` varchar(40) NOT NULL default 'shopper',
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) TYPE=MyISAM COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `#__vm_user_info`
--

INSERT INTO `#__vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('951070a696b70cfd7440e9234111b9ec', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'webmaster@joomlart.com', NULL, NULL, NULL, NULL, NULL, 1209353539, 1215547331, 'shopper', '', '', '', '', '', 'Checking'),
('14b19cb36eed6d49df50055a3b44b360', 63, 'BT', NULL, 'Joom', 'Mrs.', 'Phuong', 'Nguyen', 'Thi', '0912877211', '', '', '23T', '', 'Hanoi', '-', 'VNM', '084', 'phuongnt83@gmail.com', NULL, NULL, NULL, NULL, NULL, 1211246122, 1216895412, 'shopper', '', '', '', '', '', 'Checking'),
('b184584a15c4db23a9510387973ec9cf', 64, 'BT', NULL, 'J.C', '', 'Le', 'Khanh', '', '43244324', '', '', '14, 72/73/108 Quan Nhan', '', 'Hanoi', '-', 'BHR', '321212', 'khanhlh@gmail.com', NULL, NULL, NULL, NULL, NULL, 1211505085, 1216890100, 'shopper', '', '', '', '', '', 'Checking'),
('f37b2ffe05540e92e9d7b78e29842c8c', 65, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'nnth@nnth.info', NULL, NULL, NULL, NULL, NULL, 1211938625, 1216342634, 'shopper', '', '', '', '', '', 'Checking'),
('a9f949b4e96057615236179fdb2741f6', 66, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'nh@nh.hong', NULL, NULL, NULL, NULL, NULL, 1215130432, 1215573978, 'shopper', '', '', '', '', '', 'Checking'),
('4e0a5a5de523323298406c7d1ddf6ed6', 67, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'fewfew@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1215564223, 0, 'shopper', '', '', '', '', '', 'Checking'),
('6f25fe097cc2209c79efedd1da0d3883', 68, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'aaaa@aaa.com', NULL, NULL, NULL, NULL, NULL, 1215565413, 0, 'shopper', '', '', '', '', '', 'Checking'),
('6c8c9bcbe4cc3e109d6defd337fff1a9', 71, 'BT', '-default-', '', '', '', 'hshs', '', '', '', '', '', '', '', 'AL', 'USA', '', 'a@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1216973179, 1216973179, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_vendor`
--

DROP TABLE IF EXISTS `#__vm_vendor`;
CREATE TABLE IF NOT EXISTS `#__vm_vendor` (
  `vendor_id` int(11) NOT NULL auto_increment,
  `vendor_name` varchar(64) default NULL,
  `contact_last_name` varchar(32) NOT NULL default '',
  `contact_first_name` varchar(32) NOT NULL default '',
  `contact_middle_name` varchar(32) default NULL,
  `contact_title` varchar(32) default NULL,
  `contact_phone_1` varchar(32) NOT NULL default '',
  `contact_phone_2` varchar(32) default NULL,
  `contact_fax` varchar(32) default NULL,
  `contact_email` varchar(255) default NULL,
  `vendor_phone` varchar(32) default NULL,
  `vendor_address_1` varchar(64) NOT NULL default '',
  `vendor_address_2` varchar(64) default NULL,
  `vendor_city` varchar(32) NOT NULL default '',
  `vendor_state` varchar(32) NOT NULL default '',
  `vendor_country` varchar(32) NOT NULL default 'US',
  `vendor_zip` varchar(32) NOT NULL default '',
  `vendor_store_name` varchar(128) NOT NULL default '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) default NULL,
  `vendor_thumb_image` varchar(255) default NULL,
  `vendor_full_image` varchar(255) default NULL,
  `vendor_currency` varchar(16) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `vendor_image_path` varchar(255) default NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL default '',
  `vendor_min_pov` decimal(10,2) default NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL default '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL default '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL,
  PRIMARY KEY  (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) TYPE=MyISAM  COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__vm_vendor`
--

INSERT INTO `#__vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`, `vendor_accepted_currencies`, `vendor_address_format`, `vendor_date_format`) VALUES
(1, 'Washupito''s Tiendita', 'Owner', 'Demo', 'Store', 'Mr.', '555-555-1212', '555-555-1212', '555-555-1212', 'webmaster@joomlart.com', '555-555-1212', '100 Washupito Avenue, N.W.', '', 'Lake Forest', 'CA', 'USA', '92630', 'Washupito''s Tiendita', '<p>We have the best tools for do-it-yourselfers.  Check us out! </p>\r\n		<p>We were established in 1969 in a time when getting good tools was expensive, but the quality was good.  Now that only a select few of those authentic tools survive, we have dedicated this store to bringing the experience alive for collectors and master mechanics everywhere.</p>\r\n		<p>You can easily find products selecting the category you would like to browse above.</p>', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'USD', 950302468, 968309845, 'shop_image/', '<h5>You haven''t configured any terms of service yet. Click <a href=administrator/index2.php?page=store.store_form&option=com_virtuemart>here</a> to change this text.</h5>', 'http://10.0.0.101/ja_works/ja_mesolite', '0.00', '0.00', '1|$|2|.| |2|1', 'USD', '{storename}\n{address_1}\n{address_2}\n{city}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_vendor_category`
--

DROP TABLE IF EXISTS `#__vm_vendor_category`;
CREATE TABLE IF NOT EXISTS `#__vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL auto_increment,
  `vendor_category_name` varchar(64) default NULL,
  `vendor_category_desc` text,
  PRIMARY KEY  (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) TYPE=MyISAM  COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__vm_vendor_category`
--

INSERT INTO `#__vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `#__vm_visit`
--

DROP TABLE IF EXISTS `#__vm_visit`;
CREATE TABLE IF NOT EXISTS `#__vm_visit` (
  `visit_id` varchar(255) NOT NULL default '',
  `affiliate_id` int(11) NOT NULL default '0',
  `pages` int(11) NOT NULL default '0',
  `entry_page` varchar(255) NOT NULL default '',
  `exit_page` varchar(255) NOT NULL default '',
  `sdate` int(11) NOT NULL default '0',
  `edate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`visit_id`)
) TYPE=MyISAM COMMENT='Records the visit of an affiliate';

--
-- Dumping data for table `#__vm_visit`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_waiting_list`
--

DROP TABLE IF EXISTS `#__vm_waiting_list`;
CREATE TABLE IF NOT EXISTS `#__vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `notify_email` varchar(150) NOT NULL default '',
  `notified` enum('0','1') default '0',
  `notify_date` timestamp NOT NULL,
  PRIMARY KEY  (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) TYPE=MyISAM COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__vm_waiting_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__vm_zone_shipping`
--

DROP TABLE IF EXISTS `#__vm_zone_shipping`;
CREATE TABLE IF NOT EXISTS `#__vm_zone_shipping` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_cost` decimal(10,2) default NULL,
  `zone_limit` decimal(10,2) default NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`zone_id`)
) TYPE=MyISAM  COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__vm_zone_shipping`
--

INSERT INTO `#__vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

DROP TABLE IF EXISTS `#__weblinks`;
CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) TYPE=MyISAM  AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__weblinks`
--

INSERT INTO `#__weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
