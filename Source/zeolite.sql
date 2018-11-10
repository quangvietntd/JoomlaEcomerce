-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 18, 2012 at 11:35 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `zeolite`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_banner`
-- 

CREATE TABLE `bak_banner` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_banner`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_bannerclient`
-- 

CREATE TABLE `bak_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_bannerclient`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_bannertrack`
-- 

CREATE TABLE `bak_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_categories`
-- 

CREATE TABLE `bak_categories` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_components`
-- 

CREATE TABLE `bak_components` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `bak_components`
-- 

INSERT INTO `bak_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `bak_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `bak_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `bak_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `bak_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `bak_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `bak_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `bak_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `bak_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html', 1);
INSERT INTO `bak_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1);
INSERT INTO `bak_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `bak_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `bak_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `bak_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_contact_details`
-- 

CREATE TABLE `bak_contact_details` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_contact_details`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_content`
-- 

CREATE TABLE `bak_content` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_content`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_content_frontpage`
-- 

CREATE TABLE `bak_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_content_frontpage`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_content_rating`
-- 

CREATE TABLE `bak_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_acl_aro`
-- 

CREATE TABLE `bak_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `bak_core_acl_aro`
-- 

INSERT INTO `bak_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_acl_aro_groups`
-- 

CREATE TABLE `bak_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `bak_core_acl_aro_groups`
-- 

INSERT INTO `bak_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `bak_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `bak_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `bak_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `bak_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `bak_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `bak_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `bak_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `bak_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `bak_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `bak_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_acl_aro_map`
-- 

CREATE TABLE `bak_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_acl_aro_sections`
-- 

CREATE TABLE `bak_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `bak_core_acl_aro_sections`
-- 

INSERT INTO `bak_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_acl_groups_aro_map`
-- 

CREATE TABLE `bak_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_core_acl_groups_aro_map`
-- 

INSERT INTO `bak_core_acl_groups_aro_map` VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_log_items`
-- 

CREATE TABLE `bak_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_core_log_searches`
-- 

CREATE TABLE `bak_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_groups`
-- 

CREATE TABLE `bak_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_groups`
-- 

INSERT INTO `bak_groups` VALUES (0, 'Public');
INSERT INTO `bak_groups` VALUES (1, 'Registered');
INSERT INTO `bak_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_menu`
-- 

CREATE TABLE `bak_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `bak_menu`
-- 

INSERT INTO `bak_menu` VALUES (1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_menu_types`
-- 

CREATE TABLE `bak_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `bak_menu_types`
-- 

INSERT INTO `bak_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_messages`
-- 

CREATE TABLE `bak_messages` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_messages_cfg`
-- 

CREATE TABLE `bak_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_migration_backlinks`
-- 

CREATE TABLE `bak_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_modules`
-- 

CREATE TABLE `bak_modules` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `bak_modules`
-- 

INSERT INTO `bak_modules` VALUES (1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, '');
INSERT INTO `bak_modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `bak_modules` VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `bak_modules` VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `bak_modules` VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_modules_menu`
-- 

CREATE TABLE `bak_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_modules_menu`
-- 

INSERT INTO `bak_modules_menu` VALUES (1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_newsfeeds`
-- 

CREATE TABLE `bak_newsfeeds` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_plugins`
-- 

CREATE TABLE `bak_plugins` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `bak_plugins`
-- 

INSERT INTO `bak_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `bak_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `bak_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `bak_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `bak_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `bak_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `bak_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `bak_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `bak_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `bak_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `bak_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `bak_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `bak_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n');
INSERT INTO `bak_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `bak_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `bak_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `bak_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `bak_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `bak_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_polls`
-- 

CREATE TABLE `bak_polls` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_polls`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_poll_data`
-- 

CREATE TABLE `bak_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_poll_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_poll_date`
-- 

CREATE TABLE `bak_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_poll_date`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_poll_menu`
-- 

CREATE TABLE `bak_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_sections`
-- 

CREATE TABLE `bak_sections` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_sections`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_session`
-- 

CREATE TABLE `bak_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_session`
-- 

INSERT INTO `bak_session` VALUES ('', '1325926511', 'e4b9bcb41815e9faa35345e33f3ceac5', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1325926497;s:18:"session.timer.last";i:1325926497;s:17:"session.timer.now";i:1325926511;s:22:"session.client.browser";s:98:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.63 Safari/535.7";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:62:"C:\\AppServ\\www\\zeolite\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_stats_agents`
-- 

CREATE TABLE `bak_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `bak_templates_menu`
-- 

CREATE TABLE `bak_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bak_templates_menu`
-- 

INSERT INTO `bak_templates_menu` VALUES ('rhuk_milkyway', 0, 0);
INSERT INTO `bak_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_users`
-- 

CREATE TABLE `bak_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

-- 
-- Dumping data for table `bak_users`
-- 

INSERT INTO `bak_users` VALUES (62, 'Administrator', 'admin', 'quangvietntd@gmail.com', 'd2404424c86fc0e451f1af4772949fa1:ecfI5liUEy8Echckmps8N9uME57EtjzT', 'Super Administrator', 0, 1, 25, '2012-01-07 15:54:14', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `bak_weblinks`
-- 

CREATE TABLE `bak_weblinks` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bak_weblinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_banner`
-- 

CREATE TABLE `jos_banner` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_banner`
-- 

INSERT INTO `jos_banner` VALUES (1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', NULL, '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (3, 1, '', 'Joomla!', 'joomla', 0, 307, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', NULL, '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (4, 1, '', 'JoomlaCode', 'joomlacode', 0, 307, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 302, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 302, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 90, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', NULL, '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');
INSERT INTO `jos_banner` VALUES (8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 88, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannerclient`
-- 

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_bannerclient`
-- 

INSERT INTO `jos_bannerclient` VALUES (1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannertrack`
-- 

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_categories`
-- 

CREATE TABLE `jos_categories` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `jos_categories`
-- 

INSERT INTO `jos_categories` VALUES (1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 62, '2012-01-16 09:23:52', '', 1, 0, 1, '');
INSERT INTO `jos_categories` VALUES (2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (5, 0, 'Business: General', '', 'business-general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, '');
INSERT INTO `jos_categories` VALUES (12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 62, '2012-01-16 09:33:08', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (34, 0, 'Demo category', '', 'demo-category', '', '5', 'left', '<p>Eget libero porttitor semper Aenean id id id senectus est vitae. Sit nec risus a risus Donec Phasellus vel vitae eu leo. Habitasse magna eleifend ipsum fringilla tellus pharetra morbi pretium id Lorem.</p>', 1, 62, '2012-01-17 11:13:27', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (41, 0, 'Best selling products', '', 'best-selling-products', '', '5', 'left', '<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>', 1, 62, '2012-01-17 11:13:04', NULL, 2, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_components`
-- 

CREATE TABLE `jos_components` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `jos_components`
-- 

INSERT INTO `jos_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n', 1);
INSERT INTO `jos_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1);
INSERT INTO `jos_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=vi-VN\nsite=vi-VN\n\n', 1);
INSERT INTO `jos_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=0\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (34, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.0\nDEV_STATUS=stable', 1);
INSERT INTO `jos_components` VALUES (36, 'JCE Administration', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE Administration', 'com_jce', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (37, 'Control Panel', '', 0, 36, 'option=com_jce', 'Control Panel', 'com_jce', 0, 'templates/khepri/images/menu/icon-16-cpanel.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (38, 'Configuration', '', 0, 36, 'option=com_jce&type=config', 'Configuration', 'com_jce', 1, 'templates/khepri/images/menu/icon-16-config.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (39, 'Groups', '', 0, 36, 'option=com_jce&type=group', 'Groups', 'com_jce', 2, 'templates/khepri/images/menu/icon-16-user.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (40, 'Plugins', '', 0, 36, 'option=com_jce&type=plugin', 'Plugins', 'com_jce', 3, 'templates/khepri/images/menu/icon-16-plugin.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (41, 'Install', '', 0, 36, 'option=com_jce&type=install', 'Install', 'com_jce', 4, 'templates/khepri/images/menu/icon-16-install.png', 0, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_contact_details`
-- 

CREATE TABLE `jos_contact_details` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_contact_details`
-- 

INSERT INTO `jos_contact_details` VALUES (1, 'Công ty TNHH vi tính Quang Việt', 'cong-ty-tnhh-vi-tinh-quang-vit', 'Position', '225 An Dương Vương Phường 4 Quận 5', 'Hồ Chí Minh', '', 'Việt Nam', '', '0984510852', 'Fax', '', 'powered_by.png', 'top', 'quangvietntd@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=0\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=0\nshow_postcode=0\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 63, 12, 0, '0984510852', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content`
-- 

CREATE TABLE `jos_content` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

-- 
-- Dumping data for table `jos_content`
-- 

INSERT INTO `jos_content` VALUES (1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div>\r\nJoomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications.\r\n</div>\r\n\r\n<p>Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users. </p>\r\n\r\n', '\r\n\r\n<p>With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.</p>\r\n\r\n<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p>\r\n\r\n<p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p>\r\n\r\n<p>Thinking Web publishing? Think Joomla!</p>', -2, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2008-05-05 03:35:16', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 32, 0, 0, '', '', 0, 93, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', -2, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:19:35', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', -2, 1, 0, 3, '2004-08-09 22:30:34', 62, '', '2007-11-08 12:20:41', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of hundreds of free <a href="http://extensions.joomla.org" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions</a>  library today. </p>', '', -2, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2007-11-08 12:21:51', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a>  The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p><p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p><p>The Joomla! licence has always been GPL.</p>', '', -2, 4, 0, 25, '2004-08-20 10:11:07', 62, '', '2007-11-04 23:02:47', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 114, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla! Core Team consists of volunteer developers, designers, administrators and managers who, together with a large range of Work Groups of dedicated community members have taken Joomla! to new heights in its relatively short life. This well-oiled machine is often copied but never surpassed.  Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '<p>The project has a nice balance of legacy development from well-known coders such as Andrew Eddie (who pioneered Mambo''s early success) to some young guns like Johan Janssens and Louis Landry.  This dynamic trio has been further strengthening the project by bringing in new talent.  In open source development people joke about the ''bus'' factor.  Projects which don''t have coding ''spread'' are considered less sound should their single lead developer get hit by a bus.</p>', -2, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:10:35', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 55, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (7, 'Stick to the Code!', 'stick-to-the-code', '', 'To ensure this code release, Wilco Jansen resorted to sending rum to joint lead-developer Johan Janssens.  Johan, who''s had a penchant for rum ever since the first "Pirate''s of the Caribbean" movie screened, took the bait, mixed it with Cola, and here we are with our latest 1.5 release.  It looks like pirate talk will figure quite a lot in future Joomla! development! ', '<strong><br />Translation for you real pirates:<br /></strong> <br />First Mate Wilco resorted t'' sendin'' rum t'' joint Capt''n Johan. Johan, who''s had a penchant for rum ever since t'' first "Pirate''s o'' t'' Caribbean" movie screened, took t'' bait, mixed it with molasses, and here we be with our latest 1.5 release. It looks like pirate talk will figure quite a lot in future Joomla! development!', -2, 1, 0, 1, '2004-07-07 12:00:00', 62, '', '2007-11-25 22:37:55', 62, 0, '0000-00-00 00:00:00', '2004-07-07 11:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 13, 0, 0, '', '', 0, 55, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (8, 'The Legend of Buca di Beppo', 'the-legend-of-buca-di-beppo', '', '<p>The legend of Buca di Beppo involves a covert meeting of key developers in a Mafia-style restaurant in the United States.  ''Bucas'' has on more than one occasion been the catalyst for key (and in some cases considered insurmountable) development ''humps'' being overcome.</p><p>With copius amounts of food and wine flowing, the creative juices of coders seem to work keener, faster, and problems are solved. Louis Landry famously agreed that living near a Bucas could actually lead to faster development cycles.</p><p>Mmmm. A restaurant with photos of famous Mafia films like <em>The Godfather</em> and violin cases leaning against the booths.  Makes you wonder, doesn''t it?  </p><p>If Joomla! was a commercial venture, we''re sure management would actually consider building a Bucas inside the building!</p><p>Masterchief meet Bugsy Landry. </p>', '', -2, 1, 0, 1, '2004-04-12 09:54:06', 62, '', '2007-11-08 12:14:09', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 259, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (9, '1 Million Smiles', '1-million-smiles', '', '<p>The Joomla! team has about 1 million good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had more than 1 million downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', -2, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:16:19', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://joomlacode.org" title="The Joomla! Code Repository">JoomlaCode</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://dev.joomla.org/content/view/42/66/" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', -2, 3, 0, 32, '2006-09-30 14:06:37', 62, '', '2007-11-08 11:55:56', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 15, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', -2, 3, 0, 28, '2006-09-30 20:27:52', 62, '', '2007-11-08 11:01:01', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 13, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (12, 'Why does Joomla! 1.5 use utf-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', -2, 3, 0, 31, '2006-10-05 01:11:29', 62, '', '2007-11-08 11:39:51', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 28, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', -2, 3, 0, 28, '2006-10-06 16:47:35', 62, '', '2007-11-04 23:12:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 10, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', -2, 3, 0, 31, '2006-10-06 21:27:49', 62, '', '2007-05-03 09:39:48', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 0, '', '', 0, 22, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perfom actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', -2, 3, 0, 31, '2006-10-06 19:28:35', 62, '', '2007-11-08 11:26:51', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', -2, 3, 0, 28, '2006-10-06 19:29:28', 62, '', '2007-11-08 11:03:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 19, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (17, 'My MySQL  database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', -2, 3, 0, 31, '2006-10-07 09:30:37', 62, '', '2007-11-08 11:39:01', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Choose from over 360 News Feeds from around the world </li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site</li></ul>', -2, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2007-11-04 16:38:53', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 82, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.</p>\r\n\r\n<p>So what''s the catch? How much does this system cost?</p>\r\n\r\n<p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p>\r\n\r\n<p>Joomla! changes all that ...Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache.</p>\r\n\r\n<p>It is easy to install and administer, and is reliable. </p>\r\n\r\n<p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p>\r\n\r\n<p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community.</p>', '', -2, 4, 0, 29, '2006-10-09 07:49:20', 62, '', '2008-05-06 04:56:41', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 0, '', '', 0, 209, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p><p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p><p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p><p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a>  (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p><p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p><h1>Documentation </h1><p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p><p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p><h1>Want to help? </h1><p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/viewforum.php?f=62" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/viewforum.php?f=60" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p><p><a class="urlextern" href="http://forum.joomla.org/viewforum.php?f=391" target="_blank" title="http://forum.joomla.org/viewforum.php?f=59" onclick="return svchk()"><br /></a></p>', '', -2, 4, 0, 25, '2006-10-09 08:33:57', 62, '', '2008-06-06 09:45:32', 65, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 0, '', '', 0, 573, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 140,000 active registered Users on the <a href="http://forums.joomla.org">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Nearly 1,900,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>2200+ Extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li><li><span>Alexa report [November 2007]: Joomla.org at #690 of the busiest Web sites in the world.</span></li></ul>', '', -2, 4, 0, 30, '2006-10-09 16:46:37', 62, '', '2007-11-04 18:24:09', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 198, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (22, 'What''s New In 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n\r\n', '\r\n\r\n<p>The goals for the Joomla! 1.5 release are to: </p>\r\n\r\n<ul>\r\n<li>Substantially improve usability, manageability, and scalability far beyond the original Mambo foundations.</li>\r\n<li>Expand accessibility to support internationalisation, double-byte characters and Right-to-Left support for Arabic, Farsi, and Hebrew languages for example amongst others.</li>\r\n<li>Extend the integration of external applications through Web Services and remote authentication such as the Lightweight Directory Access Protocol (LDAP).</li>\r\n<li>Enhance the content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination.</li>\r\n<li>Achieve a more sustainable and flexible framework for Component and Extension developers.</li>\r\n<li>Deliver backward compatibility with previous releases of Components, Templates, Modules and other Extensions.</li>\r\n</ul>', -2, 4, 0, 29, '2006-10-11 22:13:58', 62, '', '2008-05-06 04:55:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 289, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (44, 'Công ty TNHH vi tính Quang Việt', 'gioithieu', '', '<p>&nbsp;</p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 115%"> Công ty QUANG VIỆT được thành lập từ năm 2001 I.Lĩnh Vực Hoạt Động:<br /> <br /> -Chúng tôi chuyên cung cấp thiết bị tin học và văn phòng ,cung cấp giải pháp công nghệ thông tin hiệu quả và kinh tế nhất cho người sử dụng , giúp nâng cao hiệu suất công việc và tăng khả năng cạnh tranh .<br /> <br /> <strong><span style="color: #ff6d00">A – Giải pháp công nghệ thông tin toàn diện cho doanh nghiệp :</span></strong><br /> <br /> -Công ty QUANG VIỆT là nơi cung cấp chuyên nghiệp uy tín lâu năm các giải pháp tổng thể về công nghệ thông tin; từ các thiết bị cho người dùng cuối và hệ thống mạng LAN / Intranet; đến các giải pháp ứng dụng và phần mềm đảm bảo tính hiệu quả của đầu tư và giải quyết tốt nhu cầu của các đối tượng khách hàng khác nhau; và các dịch vụ tư vấn/hỗ trợ người dùng trong quá trình làm việc, nâng cấp , bảo trì , khôi phục hệ thống, thiết kế-lắp đặt-bảo mật cho các hệ thống mạng của Doanh nghiệp, Công ty, Ngân hàng, Trường học … , chuyển giao công nghệ , huấn luyện , đào tạo theo các yêu cầu kỹ thuật khác nhau<br /> -Đội ngũ nhân viên được đào tạo chuyên nghiệp , chuyên môn cao và kinh nghiệm lâu năm trong lĩnh vực viễn thông tin học đã giúp chúng tôi củng cố uy tín đối với các đối tác , các nhà cung cấp và khách hàng trong nước .<br /> <br /> <strong><span style="color: #ff6d00">B ­ Cung cấp thiết bị tin học :</span></strong><br /> <br /> -Máy Tính QUANG VIỆT® là sản phẩm đăng ký "Thương Hiệu Máy Tính Việt Nam".<br /> -Máy tính QUANG VIỆT® được lắp ráp hoàn toàn tại Việt Nam, với các linh kiện của các hãng sản xuất phần cứng nổi tiếng trên Thế Giới, và theo đúng tiêu chuẩn quốc tế.<br /> -Máy tính QUANG VIỆT® đem lại hiệu quả công việc cho doanh nghiệp, niềm vui học hỏi làm việc tại gia đình, kết quả học tập tốt cho sinh viên.<br /> -Máy tính QUANG VIỆT®, sự cần thiết trong gia đình, nhu cầu thiết thực của doanh nghiệp.<br /> -Ngành tin học đang phát triển rất nhanh tại Việt Nam , nhu cầu của khách hàng trong lĩnh vực này ngày càng nhiều và đa dạng . Vì vậy công ty đã mở rộng hoạt động cung cấp giải pháp mạng, máy tính , phụ kiện máy tính , thiết bị ngoại vi , thiết bị văn phòng ( Máy Photocopy , Máy Chiếu , Máy Chấm Công…) và cả những sản phẩm đặc biệt như thiết bị Buddy , Office Station (máy tính trạm không cần CPU ) cho phép hai hoặc nhiều máy tính sử dụng chung một CPU , hoặc các thiết bị dành cho phòng học đa phương tiện nhằm cung cấp cho khách hàng nhiều sản phẩm hơn.<br /> -Hiện nay , chúng tôi là đại lý bán hàng của nhiều hãng danh tiếng thế giới trong lĩnh vực tin học như : COMPAQ , IBM, HP , EPSON, INTEL , ACER , LG, SAMSUNG, MICROSOFT , SONY, TOSHIBA, SHARP, CREATIVE,ASUS , GIGABYTE, SEAGATE, 3 COM, ARES , SANTAK..</span></p><p>&nbsp;</p><div class="legend-hilite"> </div>', '', 1, 0, 0, 0, '2012-01-16 00:00:00', 62, '', '2012-01-16 14:23:44', 62, 0, '0000-00-00 00:00:00', '2012-01-16 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 59, 0, 3, '', '', 0, 1760, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (88, 'Tuyển dụng', 'tuyn-dng', '', '<p style="color: #000000; font-family: Tahoma; font-size: 11px; line-height: normal; text-align: left; background-color: #c0c0c0; margin-left: 27pt" class="MsoNormal"><strong><span style="font-size: 18pt; color: red">Công ty vi tính Quang Việt cần tuyển nhân viên :</span></strong></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong> </strong></span></p><h3 style="color: #000000; font-family: Tahoma; text-align: left; background-color: #c0c0c0; margin-left: 45pt; text-indent: -0.25in; line-height: 16px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy">-<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><span style="font-size: 14pt; line-height: 24px; color: navy">Năng động, linh họat nhiệt huyết và có tinh thần trách nhiệm trong công việc.</span></h3><h3 style="color: #000000; font-family: Tahoma; text-align: left; background-color: #c0c0c0; margin-left: 45pt; text-indent: -0.25in; line-height: 16px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy">-<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><span style="font-size: 14pt; line-height: 24px; color: navy">Khả năng làm việc độc lập, ứng xử linh họat.</span></h3><h3 style="color: #000000; font-family: Tahoma; text-align: left; background-color: #c0c0c0; margin-left: 45pt; text-indent: -0.25in; line-height: 16px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy">-<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><span style="font-size: 14pt; line-height: 24px; color: navy">Môi trường làm việc năng động.</span></h3><h3 style="color: #000000; font-family: Tahoma; text-align: left; background-color: #c0c0c0; margin-left: 45pt; text-indent: -0.25in; line-height: 16px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy">-<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><span style="font-size: 14pt; line-height: 24px; color: navy">Ưu tiên có kinh nghiệm.</span></h3><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: red"><strong> </strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 24px; color: red">1.<u>Nhân viên kinh doanh</u></span><span style="font-size: 14pt; line-height: 24px; color: navy"> <br />- Có tinh thần trách nhiệm, khả năng làm việc độc lập, ứng xử linh họat.<br />- Khả năng giao tiếp, thuyết phục và chăm sóc khách hàng tốt.</span></strong></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>- Tiếng anh giao tiếp,  vi tính thành thạo.<br /><br /></strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 24px; color: red">2.<u>Nhân viên kế tóan </u></span><u><span style="font-size: 14pt; line-height: 24px; color: navy"><br /></span></u><span style="font-size: 14pt; line-height: 24px; color: navy">- Tốt nghiệp chuyên ngành kế tóan tài chính<br />- Có kinh  nghiệm làm báo cáo thuế</span></strong></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>- Vi tính thành thạo<br /><br /></strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: red"><strong>3. <u>Nhân viên Kỹ thuật – Bảo hành</u></strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>-  Tốt nghiệp chuyên  ngành có liên quan</strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>- Ưu tiên có kinh nghiệm</strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: red"><strong> </strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: red"><strong>4. <u>Nhân viên giao nhận</u></strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>-  Nam , dưới 40 tuổi</strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; margin-left: 27pt; line-height: 14px" class="MsoNormal"><span style="font-size: 14pt; line-height: 24px; color: navy"><strong>- Sức khỏe tốt, biết nhiều đường trong phạm vi thành phố.</strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; text-indent: 27pt; line-height: 14px" class="MsoNormal"><span style="color: navy"><strong> </strong></span></p><p style="color: #000000; font-family: Tahoma; font-size: 11px; text-align: left; background-color: #c0c0c0; text-indent: 27pt; line-height: 14px" class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 24px; color: navy">Liên hệ nộp hồ sơ tại số 225 An Dương Vương P4 Q5 gặp anh Việt (Miễn tiếp qua điện thoại ) .</span></strong></p>', '', -2, 0, 0, 0, '2012-01-16 09:58:53', 62, '', '2012-01-16 10:03:12', 62, 0, '0000-00-00 00:00:00', '2012-01-16 09:58:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', -2, 4, 0, 25, '2006-10-11 04:22:14', 62, '', '2007-11-04 23:07:08', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 54, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> \r\n\r\n<h2>Content </h2>\r\n\r\n<p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p>\r\n\r\n<h3>Blog Layout</h3>\r\n\r\n<p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p>\r\n\r\n<h3>Blog Archive Layout</h3>\r\n\r\n<p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p>\r\n\r\n<h3>List Layout</h3>\r\n\r\n<p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p>\r\n\r\n<h2>Wrapper</h2>\r\n<p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p>\r\n\r\n<h2>Content Parameters</h2>\r\n<p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', -2, 4, 0, 29, '2006-10-12 22:33:10', 62, '', '2008-05-06 04:58:08', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 489, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details visit the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> and <a href="http://forum.joomla.org" title="The Joomla! Community Forums">Forums</a>', '', -2, 3, 0, 31, '2006-10-11 00:42:31', 62, '', '2007-11-08 11:36:52', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 27, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the Joomla! help site: Language Packs and Localised Releases<br />   <a href="http://help.joomla.org/content/view/1651/243/" target="_blank" title="Joomla! help site: Language Packs and Localised Releases">http://help.joomla.org/content/view/1651/243/</a></p>', '', -2, 4, 0, 29, '2006-10-11 06:00:00', 62, '', '2007-11-08 14:49:48', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, 'About Joomla!, General, Extensions', '', 0, 145, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a>  are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p><p><strong>Do you want to join in?</strong></p><p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>                  <ul><li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>. </li><li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a>  and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>.      </li></ul>           <p> That''s all you need to know if you''d like to join the Joomla! development community.  </p>', '', -2, 4, 0, 30, '2006-10-12 16:50:48', 62, '', '2007-11-04 18:29:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 76, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', -2, 3, 0, 31, '2006-10-11 01:10:59', 62, '', '2007-11-08 11:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 18, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', -2, 3, 0, 32, '2006-10-11 03:11:38', 62, '', '2007-05-03 09:40:32', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. In addition some translation teams are offering fully localised versions of the entire package. Please check the <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Joomla! help site for links">Joomla! Help Site for links</a>   to locations where languages and localised versions can be found.', '', -2, 3, 0, 32, '2006-10-11 01:12:18', 62, '', '2007-11-08 11:45:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', -2, 3, 0, 27, '2006-10-11 09:12:55', 62, '', '2007-11-08 12:03:24', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', -2, 3, 0, 28, '2006-10-10 23:13:33', 62, '', '2007-11-08 11:23:56', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 14, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', -2, 3, 0, 31, '2006-10-11 15:14:11', 62, '', '2007-11-08 11:23:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', -2, 3, 0, 32, '2006-10-11 17:14:57', 62, '', '2007-11-08 11:46:29', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', -2, 3, 0, 31, '2006-10-10 23:15:36', 62, '', '2007-11-08 11:25:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 17, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', -2, 3, 0, 28, '2006-10-10 23:16:20', 62, '', '2007-11-04 23:10:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', -2, 3, 0, 28, '2006-10-11 09:17:00', 62, '', '2007-11-08 11:04:30', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is on our <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Help Site">Help Site</a>.</p>', '', -2, 3, 0, 32, '2006-10-11 17:18:14', 62, '', '2007-11-08 11:42:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', -2, 3, 0, 27, '2006-10-11 09:19:01', 62, '', '2007-11-08 12:01:26', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 20, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', -2, 3, 0, 27, '2006-10-11 05:19:43', 62, '', '2007-11-08 12:02:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', -2, 1, 0, 3, '2006-10-12 00:17:31', 62, '', '2007-11-08 12:17:53', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (42, 'Newsflash 4', 'newsflash-4', '', '<p>Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.</p>', '', -2, 1, 0, 3, '2006-10-12 00:25:50', 62, '', '2008-06-05 10:13:50', 63, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (43, 'Khuyến mãi', 'khuyenmai', '', '<p>&nbsp;</p><p style="margin-bottom: 0.0001pt; text-align: center; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><strong><span style="font-size: 13.5pt; font-family: Tahoma, sans-serif; color: red">CHƯƠNG TRÌNH KHUYẾN MÃI “TRI ÂN KHÁCH HÀNG”</span></strong><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"><br /> <br /> </span><strong><span style="font-size: 13.5pt; font-family: Tahoma, sans-serif; color: black">-o0o-</span></strong><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p style="margin-bottom: 0.0001pt; line-height: normal" class="MsoNormal"><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"><br /> </span><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: blue; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Để cảm ơn quý khách hàng đã ủng hộ vi tính Quang Việt trong suốt thời gian qua, đặc biệt quý khách hàng đã ủng hộ vi tính Quang Việt trong Chương trình lễ khai trương showroom 115-117 Nguyễn Cư Trinh ngày 11/06 và Chương trình Expo ngày 14/07-17/07. <br /> Từ ngày 20/07/2011 đến hết ngày 15/08/2011, tại showroom Công ty vi tính Quang Việt sẽ tưng bừng diễn ra chương trình khuyến mãi “Tri ân khách hàng” với nhiều sản phẩm và quà tặng hấp dẫn.</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"><br /> <br /> <br /> </span><strong><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: navy; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Nội dung chương trình :</span></strong><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"><br /> Trong thời gian diễn ra chương trình khuyến mãi, khi khách hàng mua bất kỳ dòng sản phẩm Laptop </span><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: red; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">HP CQ42</span><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> sẽ được tặng ngay 03 phần quà:<br /> </span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"><br /> <!--[if !supportLineBreakNewLine]--><br /> <!--[endif]--></span><span style="font-size: 12pt"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 13.5pt; font-family: Tahoma, sans-serif; color: black">Chuột HP Laser 983AA trị giá 250.000đ;</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 13.5pt; font-family: Tahoma, sans-serif; color: black">Phần mềm Norton Internet Security 2011 trị giá 290.000đ;</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 13.5pt; font-family: Tahoma, sans-serif; color: black">Balo HP xinh xắn trị giá 200.000đ;</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p class="MsoNormal"><span style="font-size: 13pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black"><br /> </span><strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Đặc biệt :</span></strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> Khi mua Laptop </span><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: red; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">HP G42</span><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> hoặc </span><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: red; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">HP Probook-4420s</span><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">, ngoài 03 phần quà trên, khách hàng sẽ được </span><strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: red; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Tặng thêm 01 Điện thoại Mobistar @68</span></strong><strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> </span></strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">trị giá </span><strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: red; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">800.000đ.</span></strong></p>  <p style="margin-bottom: 0.0001pt; line-height: normal" class="MsoNormal"><strong><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: navy; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Thể lệ chương trình:</span></strong><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"><br /> </span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"><br /> <!--[if !supportLineBreakNewLine]--><br /> <!--[endif]--></span><span style="font-size: 12pt"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black">Quà tặng không có giá trị quy đổi thành tiền mặt, không xuất hóa đơn tài chính.</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black">Chương trình chỉ áp dụng cho khách hàng tiêu dùng cuối, không áp dụng cho đơn hàng dự án, các công ty tin học, đại lý, nhân viên Hãng và Công ty vi tính Quang Việt.</span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black">Không áp dụng đồng thời với các chương trình khuyến mãi chạy cùng thời điểm.</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p style="margin-top: 0in; margin-right: 12pt; margin-left: 24pt; margin-bottom: 0.0001pt; text-align: center; text-indent: -0.25in; line-height: 15pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial" class="MsoNormal" align="center"><!--[if !supportLists]--><span style="font-size: 10pt; font-family: Symbol; color: black">·<span style="font: normal normal normal 7pt/normal ''Times New Roman''">         </span></span><!--[endif]--><span style="font-size: 12pt; font-family: Tahoma, sans-serif; color: black">Chương trình có thể kết thúc trước hạn khi hết hàng.</span><span style="font-size: 13pt; font-family: Tahoma, sans-serif; color: black"></span></p>  <p class="MsoNormal"><span style="font-size: 13pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black"><br /> </span><em><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Thông tin chi tiết xin liên hệ:</span></em><span style="font-size: 13pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black"><br /> </span><strong><em><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Công ty TNHH Vi tính </span></em></strong><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: blue; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> </span><strong><em><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">Quang Việt</span></em></strong><span style="font-size: 13pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black"><br /> </span><em><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">225 An Dương Vương, P4, Quận 5, TpHCM</span></em><span style="font-size: 13pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black"><br /> </span><em><span style="font-size: 12pt; line-height: 115%; font-family: Tahoma, sans-serif; color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial">HOTLINE: 08-3920 3921 ext 105,101 Hoặc 0933 808 837</span></em></p>  <p class="MsoNormal">&nbsp;</p><p>&nbsp;</p>', '', 1, 0, 0, 0, '2012-01-16 00:00:00', 62, '', '2012-01-16 14:41:16', 62, 0, '0000-00-00 00:00:00', '2012-01-16 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 4, 'Uncategorized,Uncategorized,Example Pages and Menu Links', '', 0, 59, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (45, 'Senectus nonummy gravida semper pretium', 'senectus-nonummy-gravida-semper-pretium', '', '<p>Lorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit. Wisi Ut ac Vestibulum sit venenatis Nullam convallis odio condimentum sit. Ipsum urna pretium elit Pellentesque porttitor nibh Nullam Maecenas dui eros.Sit id Phasellus orci Sed lobortis.</p>\r\n\r\n<p>Tortor eros hendrerit nulla pede gravida iaculis Nulla porttitor Nam interdum.</p>\r\n\r\n', '\r\n\r\n<p>Senectus nonummy gravida semper pretium ac nibh arcu eget dapibus augue. Id sit consequat metus nunc ut enim tortor libero eros pharetra. Diam Duis Phasellus at purus Nulla at Curabitur elit dui ac. Eros ante accumsan egestas ut Praesent quis facilisi id orci ut. Suspendisse sed netus venenatis hendrerit vel nulla elit fermentum dolor hendrerit. Sit id Phasellus orci Sed lobortis massa vel Donec tortor.</p>\r\n\r\n<h3>Cras Vestibulum Nam risus condimentum</h3>\r\n\r\n<ul class="checklist">\r\n<li>Vestibulum Nam risus condimentum</li>\r\n<li>Integer tristique adipiscing ut ut montes.</li>\r\n<li>ortor eros hendrerit nulla pede gravida iaculis</li>\r\n<li>Accumsan sem venenatis egestas ut fermentum dui Mauris</li>\r\n</ul>\r\n\r\n<p>Tortor eros hendrerit nulla pede gravida iaculis Nulla porttitor Nam interdum. Turpis Nunc porta habitasse odio pretium nibh Nunc orci augue tincidunt. Accumsan sem venenatis egestas ut fermentum dui Mauris id et Vestibulum.</p>', -2, 5, 0, 34, '2008-05-10 01:42:27', 62, '', '2008-07-22 02:17:30', 63, 0, '0000-00-00 00:00:00', '2008-05-10 01:42:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, '', '', 0, 134, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (46, 'Laptop Aspire 5755G tốc độ 2,2 GHz', 'tablet-co-thit-k-p-nht-ca-toshiba-trinh-lang', '', '<h1 class="Title" align="left"><span style="font-size: 12pt;">Aspire 5755G sở hữu bộ vi xử lý lõi tứ Intel Sandy Bridge Core i7-2670QM và turbo boost lên đến 3,1 GHz. Máy còn được tích hợp NVIDIA GeForce GT 630M 2 GB VRAM, 2 GB DDR3 và ổ cứng lên tới 750 GB SATA HDD.\r\n', '\r\n<br /></span></h1>\r\n<p class="Normal">Mặc dù không có thiết kế mới lạ nhưng Aspire 5755G vẫn giữ được vẻ hiện đại nhờ lớp vỏ công nghệ phủ bóng gợn sóng. Đặc biệt, với mép viền được bo góc và làm vát tinh tế, chiếc máy tính nhìn mỏng hơn.</p>\r\n<table cellspacing="0" cellpadding="3" width="1" align="center" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/Hinh-1.jpg" width="400" height="291" alt="Hinh-1" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Image">Dù thiết kế không mới, nhưng Aspire 5755G vẫn giữ được vẻ hiện đại và mạnh mẽ</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Bề mặt nắp và bên trong của Aspire 5755G có 4 màu gồm đỏ, nâu, xanh hay đen tùy thuộc vào model khác nhau. Tuy nhiên, phần bàn phím và kê tay có màu xám bạc mờ giống màu nhôm trong tất cả các model. Máy được trang bị màn hình LED 15,6 inch với độ phân giải 1366 x 768 pixel kèm nghệ Acer CineCrystal cho độ sáng cao lên đến 200 nits. Máy có trọng lượng chỉ khoảng 2,6 kg. Với công nghệ Acer CineCrystal cho độ sáng cao lên đến 200 nits.</p>\r\n<p class="Normal">Sản phẩm được trang bị đầu đọc thẻ, ba cổng USB trong đó có một cổng USB 3.0 cho tốc độ truyền dữ liệu nhanh gấp 10 lần USB 2.0, hai đầu ra video VGA, hai jack cắm tai nghe và micro, một cổng RJ45 Gigabit LAN, khóa Kensington.</p>\r\n<p class="Normal">Aspire 5755 có các kết nối mạng tiêu chuẩn như Wi-Fi, Ethernet, Bluetooth 3.0, công nghệ độc quyền Clear.fi. của Acer hỗ trợ chia sẻ các tập tin đa phương tiện một cách dễ dàng. Ngoài ra, MTXT này cũng có các tùy chọn khác, như: ổ đĩa Blu-ray hoặc ổ DVD, ngõ đầu ra HDMI, webcam HD và microphone cho phép thực hiện các cuộc gọi video độ nét cao. Máy còn có khả năng kết nối trực tiếp với TV nhờ công nghệ hiển thị không dây Intel WiDi, đáp ứng tối đa nhu cầu giải trí của người dùng.</p>\r\n<p class="Normal">Đồng thời, máy còn được hỗ trợ Microsoft DirectX 11, Nvidia PhysX, OpenEXR High Dynamic-Range (HDR) technology, Shader Model 5.0 , CUDA technologies, PureVideo HD technology, cho hiệu năng đồ họa tốt. Với sức mạnh này, máy có thể chơi hầu hết được các game PC hạng nặng như: Battle Field 3, Call of Duty 3 và render hình mượt cho các ứng dụng đồ họa lớn.</p>\r\n<table cellspacing="0" cellpadding="3" width="1" align="center" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/Hinh-2.jpg" width="400" height="368" alt="Hinh-2" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Image">Aspire 5755G - ẩn chứa bên trong sức mạnh “khủng”</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Aspire 5755G được áp dụng công nghệ Nvidia Optimus nên khả năng tiêu thụ điện năng rất tiết kiệm, thời lượng pin có thể kéo dài đến 4,5 giờ khi hoạt động liên tục mà vẫn giữ hiệu năng tối đa. Máy cũng tích hợp 8 GB RAM và dung lượng lưu trữ lớn lên đến 1 TB, phù hợp khi lưu trữ các trò chơi và các tập tin video chất lượng cao.</p>\r\n<p class="Normal">Aspire 5755 có các tùy chọn cấu hình khác nhau khi sử dụng nhiều vi xử lý của Intel như Core i3-2310M, core i5-2410M, chip core i7-2820QM và 2620M. Sản phẩm có giá 18.990.000 VNĐ được tặng kèm Trend Micro và ba lô cao cấp. Cấu hình tham khảo:</p>\r\n<table cellspacing="0" cellpadding="0" width="443" align="center" border="1">\r\n<tbody>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Hãng sản xuất</td>\r\n<td valign="top" class="Normal" align="center">Acer</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Dòng CPU</td>\r\n<td valign="top" class="Normal" align="center">Core i7-2670QM, Core i5-2450M</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Màn hình</td>\r\n<td valign="top" class="Normal" align="center">15,6 inch</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Bộ nhớ RAM</td>\r\n<td valign="top" class="Normal" align="center">2 GB</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Dung lượng ổ cứng</td>\r\n<td valign="top" class="Normal" align="center">750 GB</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Card màn hình</td>\r\n<td valign="top" class="Normal" align="center">NVIDIA GeForce GT 630M 2 GB VRAM optimus</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Trọng lượng</td>\r\n<td valign="top" class="Normal" align="center">2,6 kg</td>\r\n</tr>\r\n<tr>\r\n<td valign="top" class="Normal" align="center">Pin</td>\r\n<td valign="top" class="Normal" align="center">4,5 giờ</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal" align="right"><em>(</em>Nguồn: <em>Acer Việt Nam)</em></p>', 1, 5, 0, 34, '2012-01-17 00:00:00', 62, '', '2012-01-17 13:33:20', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 54, 0, 5, '', '', 0, 86, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (47, 'Ultrabook pin 9 tiếng đầu tiên của Dell', 'ultrabook-pin-9-ting-u-tien-ca-dell', '', '<h1 class="Title"><img src="images/stories/sanpham/Dell_XPS_13_Open.jpg" width="150" height="NaN" alt="Dell_XPS_13_Open" style="float: left;" /><span style="font-size: 10pt;"><br /></span></h1>\r\n<h2 class="Lead"><span style="font-size: 10pt;">Laptop Dell XPS 13 sở hữu thiết kế "siêu mẫu", trọng lượng nhẹ chỉ 1,3 kg và có mức giá khởi điểm 1.000 USD.</span></h2>\r\n<p class="Normal">\r\n', '\r\n</p>\r\n<p class="Normal">Máy tính xách tay XPS dùng lớp vỏ bằng nhôm và sợi cacbon giúp nhẹ và chạy mát hơn so với đối thủ khác. Máy tích hợp màn hình 13,3 inch được bảo vệ bởi lớp kính chịu lực Gorilla Glass. Dell khẳng định, trông laptop này nhỏ gọn như loại 11 inch.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/Dell_XPS_13_Open.jpg" width="490" height="411" alt="Dell_XPS_13_Open" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/ultrabook-pin-9-tieng-dau-tien-cua-dell/page_2.asp"><strong><span style="color: #0000ff;">Hình thực tế ultrabook đầu tiên của Dell.</span></strong></a></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/ultrabook-pin-9-tieng-dau-tien-cua-dell/page_3.asp"><strong><span style="color: #0000ff;">Video sử dụng Dell XPS 13.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">XPS 13 chạy hệ điều hành Windows 7, chip Intel Core i, ổ SSD 128 GB, RAM 4 GB và công nghệ Intel Smart Connect hỗ trợ tối đa cho công việc văn phòng.</p>\r\n<p class="Normal">Ultrabook đầu tiên của Dell sẽ được phân phối vào cuối tháng 2 tới với giá cho sản phẩm cấu hình thấp nhất là 1.000 USD.</p>\r\n<br />', 1, 5, 0, 34, '2012-01-17 00:00:00', 62, '', '2012-01-17 13:01:08', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 53, 0, 4, '', '', 0, 226, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (52, 'Creative Work', 'creative-work', '', '<img src="images/stories/demo/design.png" alt="Web Design" title="Web Design" align="right" />\r\n\r\nNulla feugiat accumsan enim mollis eros dolor accumsan Aenean malesuada.', '', -2, 1, 0, 3, '2008-06-03 04:22:58', 65, '', '2008-06-06 10:41:57', 65, 0, '0000-00-00 00:00:00', '2008-06-03 04:22:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 0, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (53, 'Professional Service', 'professional-service', '', '<img src="images/stories/demo/topsl-1.png" alt="sample image" title="sample image" align="right" />\r\n\r\nLorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit.', '', -2, 1, 0, 3, '2008-06-03 04:22:58', 65, '', '2008-06-06 10:41:29', 65, 0, '0000-00-00 00:00:00', '2008-06-03 04:22:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (54, 'Special Client', 'special-client', '', '<img src="images/stories/demo/rubik.png" alt="Special Client" title="Special Client" align="right" />\r\n\r\nConsectetuer ante Nam dictumst tortor rhoncus neque sagittis semper sem Vestibulum.', '', -2, 1, 0, 3, '2008-06-05 10:13:58', 63, '', '2008-06-06 12:13:00', 63, 0, '0000-00-00 00:00:00', '2008-06-05 10:13:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (83, 'Netbook Samsung', 'netbook-samsung', '', '<h1 class="Title"><strong><img src="images/stories/sanpham/netbook_samsung.jpg" width="150" height="NaN" alt="netbook_samsung" style="float: left;" />Netbook Samsung dùng năng lượng mặt trời ở Việt Nam</strong></h1>\r\n<h2 class="Lead">Samsung NC123 là chiếc netbook 10,1 inch đầu tiên trên thế giới được tích hợp công nghệ năng lượng mặt trời. Máy bán tại Việt Nam giá khoảng 9,3 triệu đồng.</h2>\r\n<p class="Normal">So với các netbook khác, NC123 được gắn một tấm pin năng lượng mặt trời phía trên nắp máy. Theo thông số kỹ thuật của Samsung, sạc máy tính dưới ánh sáng mặt trời trong khoảng hai giờ là người dùng có đủ năng lượng để sử dụng máy trong một giờ.</p>\r\n<table cellspacing="0" cellpadding="3" width="1" align="center" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/netbook_samsung.jpg" width="490" height="350" alt="netbook_samsung" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Image" align="center">Samsung NC123 được tích hợp một tấm pin năng lượng mặt trời phía trên nắp máy. Ảnh: <em>Hà Mai.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Theo kết quả kiểm tra kết quả BatteryMark, thời lượng pin của máy lên tới 14 giờ. Samsung NC123 dùng màn hình hiển thị LED chống phản quang độ sáng 300 nit, cao hơn 50% so với các netbook thông thường. Máy trang bị bộ vi xử lý Intel Atom lõi kép, hỗ trợ các ứng dụng trò chơi hay Adobe Flash...</p>\r\n<p class="Normal">Máy dùng công nghệ Fast Start giúp khởi động chỉ trong vài giây sau khi mở màn hình hoặc nhấn nút nguồn. Cổng USB Sleep-and-Charge hỗ trợ sạc các thiết bị di động như điện thoại di động hay máy chơi nhạc MP ngay cả khi máy ở chế độ nghỉ hoặc tắt máy. Nếunetbook hết pin, người dùng vẫn có thể sạc khi sử dụng năng lượng mặt trời.</p>\r\n<a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/12/netbook-samsung-dung-nang-luong-mat-troi-o-viet-nam/page_2.asp" class="Normal"><strong>Ảnh netbook Samsung NC123</strong></a>', '', 1, 5, 0, 41, '2012-01-17 00:00:00', 62, '', '2012-01-17 12:41:52', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 10, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (84, 'Dell XPS', 'dell-xps', '', '<img align="left" title="Sample image" alt="Sample image" border="0" src="images/stories/demo/sam-4.jpg" class="caption" />\r\n<p>Lorem ipsum dolor sit amet consectetuer non Aenean enim dui Nunc. Felis porttitor magna quis ut leo felis vitae sollicitudin Aenean ornare. Eu elit magnis Vivamus orci eros pretium risus Vivamus tellus lacus. Lorem dolor adipiscing sit eu tellus laoreet tellus congue metus condimentum. Quam nibh faucibus amet pretium condimentum Cras est ut eros ac. Scelerisque Nulla pellentesque.</p>\r\n', '\r\n<p>Quisque porta magna porttitor porttitor et quis leo dis Aenean turpis. Sed nibh et Nam semper nonummy et Quisque Nulla nunc amet. A consequat accumsan et adipiscing elit Morbi orci massa quis Nullam. Enim odio faucibus quam sapien mauris enim lacinia nec id sed. Sed scelerisque montes eget vel porta quis Morbi non ac tortor. Congue Donec ut Quisque Ut sem Cum pede Quisque lacinia euismod.</p>\r\n<p>Libero Sed gravida libero Nam massa elit a turpis felis pretium. Pede urna Sed lacus euismod ornare nibh in Nulla Vivamus ac. Velit Pellentesque nunc nibh a Nam leo velit fermentum vitae hac. Malesuada dolor tristique Maecenas condimentum ornare elit Integer urna iaculis Pellentesque. Semper lacinia turpis Integer commodo et lobortis ipsum Cras.</p>\r\n<p>Nibh a ut justo risus id nibh Quisque hac ultrices metus. Ante Maecenas tristique urna faucibus commodo Aliquam Donec eget vel egestas. Et rhoncus interdum vel congue vitae Proin Fusce elit sollicitudin sapien. Id odio ut Morbi nascetur Quisque enim porta laoreet massa tortor. Et egestas metus dignissim nibh interdum senectus rhoncus Phasellus augue natoque. Tellus laoreet Vestibulum ornare vestibulum felis.</p>', -2, 5, 0, 34, '2009-01-02 08:49:25', 62, '', '2012-01-17 11:11:55', 62, 0, '0000-00-00 00:00:00', '2009-01-02 08:49:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (85, 'ThinkPad dùng 2 chip', 'thinkpad-dung-2-chip', '', '<h1 class="Title"><img src="images/stories/sanpham/X1_a.jpg" width="120" height="NaN" alt="X1_a" style="float: left;" />Laptop ''độc'' dòng ThinkPad dùng 2 chip, 2 hệ điều hành</h1>\r\n<h2 class="Lead">Công ty Lenovo cho ra mắt máy tính xách tay ThinkPad X1 Hybrid với thiết kế siêu mỏng, tích hợp hai bộ vi xử lý Intel Ivy và ARM cho khả năng khởi động nhanh cùng thời lượng pin lâu.</h2>\r\n<p class="Normal">Điểm độc đáo của X1 Hybrid là bo mạch chủ được gắn thêm chip lõi kép Qualcomm Snapdragon (giống trên các smartphone HTC hay Sony Ericsson) giúp chạy được hệ điều hành Android. Khi đó, người dùng có thể nghe nhạc, lướt web, chỉnh sửa ảnh, chạy video HD, tải ứng dụng từ market và tùy chỉnh widget ở trên 3 màn hình chủ. Khi hoạt động với nền tảng di động, laptop của Lenovo cho thời gian khởi động chỉ 2 giây, thời lượng pin 10 tiếng liên tục.</p>\r\n<p class="Normal">Nếu người dùng muốn chạy các chương trình phức tạp hơn có thể chuyển sang Microsoft Windows. Lúc đó, X1 Hybrid sẽ dùng chip sắp ra mắt của Intel mang tên Ivy cho khả năng xử lý đồ họa tích hợp nhanh hơn 4 lần so với thế hệ trước.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/X1_a.jpg" width="490" height="497" alt="X1_a" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/laptop-doc-dong-thinkpad-dung-2-chip-2-he-dieu-hanh/page_2.asp" class="Normal"><strong><span style="color: #0000ff;">Thêm hình laptop X1 Hybrid.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Laptop X1 Hybrid mỏng 15 mm, nặng 1,67 kg, màn hình 13,3 inch được bảo vệ bởi lớp kính siêu bền Gorilla Glass và khả nặng sạc đầy 80% trong 30 phút.</p>\r\n<p class="Normal"><span style="color: #000000;">Máy sẽ được bán ra vào quý II năm nay. Đại diện Lenovo Việt Nam cho biết sản phẩm sẽ có giá dự kiến tầm 50 triệu đồng khi được phân phối trong nước.</span></p>\r\n<p class="Normal"><strong><span style="color: #000000;">Ngoài laptop trên</span>, Lenovo còn giới thiệu </strong><strong>ultrabook ThinkPad T430u</strong> dày 19 mm, nặng 1,67 kg, hỗ trợ card đồ họa rời Nvidia cùng thỏi pin cho phép chạy liên tục trong 6 tiếng. Sản phẩm có giá khởi điểm 850 USD và được bán vào quý III.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/laptop-doc-dong-thinkpad-dung-2-chip-2-he-dieu-hanh/page_3.asp" class="Normal"><strong><span style="color: #0000ff;">Thêm hình ultrabook ThinkPad T430u.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 5, 0, 41, '2012-01-17 00:00:00', 62, '', '2012-01-17 12:37:49', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (86, 'Máy tính bảng 80USD', 'may-tinh-bng', '', '<h1 class="Title"><img style="float: left;" src="images/stories/sanpham/ainovonovo7paladin01 (1).jpg" width="150" height="100" alt="ainovonovo7paladin01 (1)" /></h1>\r\n<h1 class="Title">Máy tính bảng chạy Android 4 giá chỉ 80 USD</h1>\r\n<h2 class="Lead">Tại CES 2012, công ty MIPS (Mỹ) trưng bày sản phẩm Novo7 Paladin chạy hệ điều hành mới nhất của Google cùng mức giá chưa đầy 2 triệu đồng.</h2>\r\n<p class="Normal">Theo <em>EnGadget</em>, máy có thiết kế không đẹp nhưng khá chắn chắn. Màn hình 7 inch độ phân giải 800 x 480 pixel đạt mức trung bình khi chơi game hoặc xem video YouTube.</p>\r\n<p class="Normal">Sản phẩm tích hợp vi xử lý 1 GHz, RAM 512 MB, cổng microSD, kết nối Wi-Fi và giắc 3,5 mm. Máy này không hỗ trợ camera hay định vị GPS. Nếu người dùng muốn sở hữu tablet có tính năng chụp hình, quay video, họ phải bỏ thêm 20 USD để mua phiên bản Novo 7 Basic.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/ainovonovo7paladin01 (1).jpg" width="490" height="326" alt="ainovonovo7paladin01 (1)" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/may-tinh-bang-chay-android-4-gia-chi-80-usd/page_2.asp" class="Normal"><strong><span style="color: #0000ff;">Hình tablet Novo7 Paladin ở CES 2012.</span></strong></a></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/may-tinh-bang-chay-android-4-gia-chi-80-usd/page_3.asp" class="Normal"><strong><span style="color: #0000ff;">Video cảm nhận ban đầu Novo7 Paladin.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Novo7 Paladin đang được bán ở Trung Quốc và dự kiến sẽ xuất xưởng sang các nước khác trong thời gian tới.</p>\r\n<p class="Normal">Android 4.0 (Ice Cream Sandwich) là hệ điều hành mới nhất của Google dành cho thiết bị di động. Những cải tiến đáng chú ý của nền tảng này gồm hỗ trợ công nghệ<a href="http://vnexpress.net/gl/vi-tinh/2010/12/3ba23e0d/" class="Normal">NFC </a>(Android Beam) cho phép chia sẻ danh bạ, ứng dụng, video... với một máy chạy Android 4.0 khác. Ngoài ra, nó tích hợp trình duyệt lướt web 16 tab, chụp ảnh dạng time-lapse, giao diện màn hình khóa hoàn toàn mới, tìm kiếm mail cũ khi không có mạng, mở khóa điện thoại bằng nhận diện khuôn mặt hay tạo folder dễ dàng như trên iOS...</p>', '', 1, 5, 0, 41, '2012-01-17 00:00:00', 62, '', '2012-01-17 12:32:43', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (87, 'Ultrabook Acer', 'ultrabook-acer', '', '<h1 class="Title"><img src="images/stories/sanpham/Acer_Aspire_S5_h.jpg" width="150" height="NaN" alt="Acer_Aspire_S5_h" style="float: left;" />Ultrabook Acer mỏng nhất hỗ trợ cổng Thunderbolt</h1>\r\n<h2 class="Lead">Công ty Đài Loan cho ra mắt máy tính xách tay siêu mỏng Aspire S5 với độ dày tối đa chỉ 15 mm và tích hợp cổng kết nối Thunderbolt tiên tiến cho phép chia sẻ phim Full HD chỉ trong nửa phút.</h2>\r\n<p class="Normal">Sản phẩm tích hợp chip Core i (có khả năng là thế hệ 3 dòng Ivy Bridge của Intel), ổ SSD, hệ thống âm thanh Dolby và bàn phím dạng chiclet. Máy có khả năng khởi động siêu tốc 1,5 giây từ chế độ nghỉ nhờ công nghệ Green Instant On technology.</p>\r\n<p class="Normal">Pin của Aspire S5 cho thời gian hoạt động ở chế độ Sleep lên đến vài tuần, phần mềm Always Connect software cài sẵn trong laptop giúp kết nối không dây với nhiều smartphone hay thiết bị di động khác để chia sẻ file.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/Acer_Aspire_S5_h.jpg" width="490" height="356" alt="Acer_Aspire_S5_h" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/ultrabook-acer-mong-nhat-ho-tro-cong-thunderbolt/page_2.asp"><strong><span style="color: #0000ff;">Hình ultrabook Acer S5.</span></strong></a></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/ultrabook-acer-mong-nhat-ho-tro-cong-thunderbolt/page_3.asp"><strong><span style="color: #0000ff;">Video thực tế ultrabook mỏng nhất thế giới của Acer.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Chiếc ultrabook này sẽ được bán trong quý II tới. Cuối năm ngoái, Acer đã giới thiệu ultrabook <a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2011/11/ultrabook-dau-tien-ra-mat-tai-vn/" class="Normal">Aspire S3</a> (dày hơn model S5 khoảng 2 mm) ở Việt Nam với giá khởi điểm 20 triệu đồng.</p>\r\n<br />', '', 1, 5, 0, 41, '2012-01-17 00:00:00', 62, '', '2012-01-17 12:31:37', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (91, 'Tablet có thiết kế đẹp nhất của Toshiba trình làng', 'tablet-co-thit-k-p-nht-ca-toshiba-trinh-lang', '', '<img class="caption" style="float: left;" alt="Toshiba_Excite_5" height="NaN" width="150" src="images/stories/sanpham/Toshiba_Excite_5.jpg" />\r\n<h2 class="Lead"><span><span style="font-size: 10pt;">Phil Osako, Giám đốc marketing của Toshiba, khẳng định máy tính bảng Excite X10 là một trong những sản phẩm có kiểu dáng ấn tượng nhất năm 2012 của họ.</span></span></h2>\r\n', '\r\n<p>Excite X10 sở hữu độ dày phần thân 7,7 mm, trọng lượng 540 g (mỏng và nhẹ hơn cả iPad 2 lẫn Galaxy Tab Tab 10.1) và chạy hệ điều hành Ice Cream Sandwich.. Bộ vỏ mặt sau của mẫu tablet này làm bằng hợp kim magiê cho khả năng chống xước cao, màn hình phía trước được bảo vệ bằng lớp kính siêu bền Gorilla Glass.</p>\r\n<p class="Normal">So với iPad, Excite X10 được trang bị nhiều các cổng kết nối hơn bao gồm micro HDMI, micro USB và micro SD giúp dễ dàng chuyển đổi file với thiết bị khác. Mặt trước có camera độ phân giải 2 megapixel, phía sau 5 "chấm", hỗ trợ đèn flash LED và quay video.</p>\r\n<p class="Normal">Tablet mỏng và nhẹ nhất thế giới dùng chip lõi kép TI OMAP 4430 tốc độ 1,2 GHz, màn hình IPS độ phân giải 1.280 x800 pixel cùng mức có giá khởi điểm 530 USD cho model dung lượng 16 GB. Nếu người dùng muốn sở hữu model bộ nhớ 32 GB phải bỏ thêm 70 USD.</p>\r\n<table border="0" width="100%" cellpadding="3" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td><img alt="Toshiba_Excite_5" height="346" width="490" src="images/stories/sanpham/Toshiba_Excite_5.jpg" /></td>\r\n</tr>\r\n<tr>\r\n<td align="center" class="Normal"><a class="Normal" href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/tablet-co-thiet-ke-dep-nhat-cua-toshiba-trinh-lang/page_2.asp"><strong><span style="color: #0000ff;">Hình thực tế tablet mỏng nhất thế giới của Toshiba.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Excite X10 sẽ được bán ra vào quý II năm nay.</p>\r\n<p> </p>', 1, 5, 0, 34, '2012-01-17 00:00:00', 62, '', '2012-01-17 13:01:30', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 3, '', '', 0, 0, '');
INSERT INTO `jos_content` VALUES (89, 'Tuyển dụng', 'tuyn-dng', '', '<p class="MsoNormal"><strong>Công ty vi tính Quang Việt cần tuyển nhân viên :</strong></p>  <p class="MsoNormal">&nbsp;</p>  <p class="MsoNormal"><strong>-</strong>         <strong>Năng động, linh họat nhiệt huyết và có tinh thần trách nhiệm trong công việc.</strong></p>  <p class="MsoNormal"><strong>-</strong>         <strong>Khả năng làm việc độc lập, ứng xử linh họat.</strong></p>  <p class="MsoNormal"><strong>-</strong>         <strong>Môi trường làm việc năng động.</strong></p>  <p class="MsoNormal"><strong>-</strong>         <strong>Ưu tiên có kinh nghiệm.</strong></p>  <p class="MsoNormal">&nbsp;</p>  <p class="MsoNormal">1.<strong><u>Nhân viên kinh doanh</u></strong> <br /> - Có tinh thần trách nhiệm, khả năng làm việc độc lập, ứng xử linh họat.<br /> - Khả năng giao tiếp, thuyết phục và chăm sóc khách hàng tốt.</p>  <p class="MsoNormal">- Tiếng anh giao tiếp,  vi tính thành thạo.</p>  <p class="MsoNormal">2.<strong><u>Nhân viên kế tóan <br /> </u></strong>- Tốt nghiệp chuyên ngành kế tóan tài chính<br /> - Có kinh  nghiệm làm báo cáo thuế</p>  <p class="MsoNormal">- Vi tính thành thạo</p>  <p class="MsoNormal">3. <strong><u>Nhân viên Kỹ thuật – Bảo hành</u></strong></p>  <p class="MsoNormal">-  Tốt nghiệp chuyên  ngành có liên quan</p>  <p class="MsoNormal">- Ưu tiên có kinh nghiệm</p>  <p class="MsoNormal">&nbsp;</p>  <p class="MsoNormal">4. <strong><u>Nhân viên giao nhận</u></strong></p>  <p class="MsoNormal">-<strong> </strong> Nam , dưới 40 tuổi</p>  <p class="MsoNormal">- Sức khỏe tốt, biết nhiều đường trong phạm vi thành phố.</p>  <p class="MsoNormal">&nbsp;</p>  <p class="MsoNormal"><strong>Liên hệ nộp hồ sơ tại số 225 An Dương Vương P4 Q5 gặp anh Việt (Miễn tiếp qua điện thọai ) .</strong></p>  <p class="MsoNormal">&nbsp;</p>', '', 1, 0, 0, 0, '2012-01-16 10:08:35', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-16 10:08:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 17, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (90, 'Quy định bảo hành', 'quydinhbaohanh', '', '<h1 style="text-align: center"><font color="#ff0000"><br /></font></h1>  <p class="MsoNormal"><strong>I. Đối với tất cả các linh kiện thiết bị mua rời</strong></p>  <p class="MsoNormal">Quý khách phải kiểm tra hàng kỹ trước khi nhận hàng. Hàng được giao hoàn toàn mới 100% và có dán tem bảo hành của Quang Việt. Trên tem có ghi rõ ngày tháng năm và thời hạn bảo hành theo đúng quy định bảo hành của nhà sản xuất.</p>  <p class="MsoNormal"><strong>1. Điều kiện bảo hành:</strong></p>  <p class="MsoNormal">Tất cả các linh kiện, thiết bị phải có tem bảo hành của Quang Việt và tem phải còn trong thời hạn bảo hành.</p>  <p class="MsoNormal">Phiếu bảo hành (đối với các thiết bị, linh kiện có kèm phiếu bảo hành), tem bảo hành, mã vạch seri number phải còn nguyên vẹn, không có dấu hiệu cạo sửa, tẩy xoá hay bị rách mờ.</p>  <p class="MsoNormal">Hư hỏng được xác định do lỗi kỹ thuật hoặc lỗi của nhà sản xuất.</p>  <p class="MsoNormal"><strong>2. Điều kiện không bảo hành:</strong></p>  <p class="MsoNormal">Thiết bị do va chạm hoặc đã bị rơi rớt, bể mẻ, móp méo, biến dạng, trầy xước, rỉ xét, xì hoặc phù tụ …</p>  <p class="MsoNormal">Thiết bị có dấu hiệu cháy nổ, chuột bọ, côn trùng xâm nhập hoặc đặt trong môi trường ẩm ướt.</p>  <p class="MsoNormal">Hư hỏng do thiên tai hoả hoạn, sử dụng nguồn điện không ổn định hoặc do vân chuyển không đúng quy cách.</p>  <p class="MsoNormal">Không bảo hành các thiết bị phụ kiện như: tai nghe , mực in , cartridge máy in , fan các loại , vỏ thùng máy không nguồn , các loại cáp ...</p>  <p class="MsoNormal">Không đảm bảo dữ liệu khi bảo hành thiết bị.</p>  <p class="MsoNormal"><strong>3. Phương thức bảo hành:</strong></p>  <p class="MsoNormal">Tất cả các thiết bị được bảo hành miễn phí trong suốt thời hạn bảo hành.</p>  <p class="MsoNormal">Hàng mới mua trong vòng 07 ngày sẽ được đổi ngay hàng mới nếu việc kiểm tra hàng đó hư hỏng do lỗi của nhà sản xuất. Trong trường hợp không có hàng mới để đổi thì sẽ thỏa thuận đổi sang hàng mới khác có giá trị tương đương hoặc sẽ hoàn trả lại đúng số tiền mà quý khách đã mua. Chú ý: không áp dụng đối với các thiết bị như: máy in, mực in, các thiết bị có tính chất hao mòn, các thiết bị bị cắt rời, bẻ gãy, làm mất bao bì hoặc bị trầy xước, dơ bẩn…</p>  <p class="MsoNormal">Trường hợp hàng đã mua quá thời hạn 10ngày thì sẽ được nhận lại để bảo hành (sửa chữa). Nếu không thể sửa chữa được thì Công ty sẽ thay thế một sản phẩm khác tương đương và sản phẩm này không nhất thiết mới 100%.</p>  <p class="MsoNormal">Thời gian giải quyết bảo hành từ 7-&gt;10 ngày kể từ ngày nhận (trừ ngày chủ nhật và các ngày lễ) và tuỳ từng trường hợp có thể giải quyết sớm hơn hoặc chậm hơn.</p>  <p class="MsoNormal">Đối với các thiết bị không thể sửa chữa được mà thiết bị này hết hàng do không còn sản xuất nữa hoặc không còn lưu hành trên thị trường, quý khách phải đợi nhà phân phối đổi hàng khác có giá trị tương đương hoặc cao hơn và bù tiền theo thỏa thuận theo giá cả hiện hành trên thị trường. Thời hạn bảo hành đối với sản phẩm được thay thế sẽ được tính tiếp tục chứ không bảo hành lại từ đầu.</p>  <p class="MsoNormal">Đối với các thiết bị không sửa chữa được trong nước phải gởi sang nhà sản xuất ở nước ngoài thì thời hạn có thể kéo dài từ 4 đến 6 tuần. Trong trường hợp này Công ty sẽ thay thế một sản phảm có tính năng tương đương để quý khách tạm sử dụng.</p>  <p class="MsoNormal"><strong>II. Đối với các linh kiện, thiết bị được cấp phiếu bảo hành chính hãng:</strong></p>  <p class="MsoNormal">Như các loại: Máy in , máy scanner, CPU hàng box , một số monitor như LG , Samsung , Viewsonic …</p>  <p class="MsoNormal">Khi mua các thiết bị, linh kiện này quý khách sẽ nhận được phiếu bảo hành, trên phiếu có ghi rõ các điều kiện bảo hành, địa chỉ bảo hành, quyền lợi của khách hàng…Khách hàng phải xuất trình phiếu bảo hành khi bảo hành sản phẩm trực tiếp tại trung tâm bảo hành ghi trên phiếu hoặc tại Công ty Quang Việt</p>  <p class="MsoNormal"><strong>III. Đối với các thiết bị máy được mua theo bảng giá máy bộ:</strong></p>  <p class="MsoNormal">Khi mua máy quý khách sẽ được cấp phiếu bảo hành trên phiếu ghi rõ: điều kiện bảo hành, thời hạn bảo hành, địa chỉ bảo hành và quyền lợi của khách hàng.</p>  <p class="MsoNormal">Chân thành cám ơn quý khách đã tin tưởng sử dụng sản phẩm và ủng hộ Qui Định Bảo Hành của Quang Việt</p>  <p class="MsoNormal">Rất hân hạnh và sẵn sàng phục vụ quý khách.</p>  <p class="MsoNormal"><strong>ĐẠI DIỆN CÔNG TY TNHH VI TÍNH QUANG VIỆT</strong></p>', '', 1, 0, 0, 0, '2012-01-16 10:16:38', 62, '', '2012-01-16 14:22:56', 62, 0, '0000-00-00 00:00:00', '2012-01-16 10:16:38', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 15, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (92, 'Điện thoại Galaxy Nexus trắng lộ diện', 'in-thoi-galaxy-nexus-trng-l-din', '', '<h1 align="left" class="Title"></h1>\r\n<h1 class="Title"><span style="font-size: 12pt;">Smartphone chạy Android 4.0 (Ice Cream Sandwich) đầu tiên được phát triển bởi Google và Samsung chuẩn bị có phiên bản màu mới trông sang trọng hơn.\r\n', '\r\n<br /></span></h1>\r\n<p class="Normal"><span style="font-size: 12pt;">Khác với Galaxy S II hay Galaxy Note được phủ trắng toàn bộ, điện thoại Galaxy Nexus chỉ thay đổi màu ở phía sau còn phần màn hình vẫn là tông màu đen.</span></p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/sanpham/Galaxy_Nexus_5.jpg" width="490" height="367" alt="Galaxy_Nexus_5" /></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/dien-thoai-galaxy-nexus-trang-lo-dien/page_2.asp"><strong><span style="color: #0000ff; font-size: 12pt;">Hình thực tế Galaxy Nexus trắng.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal"><span style="font-size: 12pt;">Cấu hình của Galaxy Nexus trắng vẫn giữ nguyên với màn hình Super AMOLED 4,65 inch độ phân giải đạt chuẩn HD cho hình ảnh mịn, chip lõi kép tốc độ 1,5 GHz và camera 5 megapixel.</span></p>\r\n<p class="Normal"><span style="font-size: 12pt;">Ngoài model màu trắng, Samsung và Google còn xuất xưởng Galaxy Nexus bộ nhớ trong lên đến 32 GB (gấp đôi hiện tại). Giống iPhone, sản phẩm này có điểm yếu là thiếu khe cắm thẻ nên không thể mở rộng bộ nhớ. Việc bán ra model mới 32 GB sẽ giúp người dùng lưu được nhiều dữ liệu hơn.</span></p>', 1, 5, 0, 34, '2012-01-17 00:00:00', 62, '', '2012-01-17 13:32:07', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (93, 'Cận cảnh điện thoại ''hot'' nhất CES 2012', 'cn-cnh-in-thoi-hot-nht-ces-2012', '', '<h1 class="Title"><span style="font-size: 12pt;">Lumia 900 được vinh danh là điện thoại xuất sắc ở triển lãm công nghệ đầu năm nhờ vào sự kết hợp của 3 gã khổng lồ trong làng viễn thông là AT&amp;T, Nokia và Microsoft.\r\n', '\r\n<br /></span></h1>\r\n<h2 class="Lead"><span style="font-size: 12pt;">&gt;<a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/nhung-san-pham-xuat-sac-tai-trien-lam-ces-2012/" class="Lead">Những sản phẩm xuất sắc tại triển lãm CES 2012</a></span></h2>\r\n<p class="Normal">Theo đánh giá của <em>Cnet</em>, sản phẩm gây ấn tượng mạnh ở thiết kế chắc chắn, cầm khá thoải mái. Ở phía mặt trước, điện thoại Nokia trông sáng bóng với màn hình lớn 4,3 inch. Do sử dụng công nghệ ClearBlack AMOLED nên hình ảnh trên màn hình rõ nét và hiển thị tông màu đen chuẩn xác. Giống như model Lumia 800, máy hoạt động mượt trên nền Windows Phone 7.5 (Mango) và nhấp cảm ứng mượt.</p>\r\n<p class="Normal">Phía sau Nokia 900 được trang bị camera 8 megapixel, ống kính Carl Zeiss, khẩu độ f2.2 cho chất lượng ảnh tốt ngay cả ở điều kiện ánh sáng yếu. Máy hỗ trợ tự động lấy nét, 2 đèn flash LED và khả năng quay video HD 720p.</p>\r\n<table cellspacing="0" cellpadding="3" width="100%" border="0">\r\n<tbody>\r\n<tr>\r\n<td><span style="font-size: 12pt;"><img src="images/stories/sanpham/Nokia_Lumia_900_a.jpg" width="490" height="327" alt="Nokia_Lumia_900_a" /></span></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/can-canh-dien-thoai-hot-nhat-ces-2012/page_2.asp"><strong><span style="color: #0000ff; font-size: 12pt;">Hình thực tế Nokia Lumia 900.</span></strong></a></td>\r\n</tr>\r\n<tr>\r\n<td class="Normal" align="center"><a href="http://vnexpress.net/gl/vi-tinh/san-pham-moi/2012/01/can-canh-dien-thoai-hot-nhat-ces-2012/page_3.asp"><strong><span style="color: #0000ff; font-size: 12pt;">Video cảm nhận ban đầu về Nokia 900.</span></strong></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Đây cũng là điện thoại 4G đầu tiên của Nokia, hoạt động trên mạng của AT&amp;T, hãng viễn thông lớn nhất nước Mỹ.</p>', 1, 5, 0, 34, '2012-01-17 00:00:00', 62, '', '2012-01-17 13:32:33', 62, 0, '0000-00-00 00:00:00', '2012-01-17 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 6, 'robots=\nauthor=');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_frontpage`
-- 

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_frontpage`
-- 

INSERT INTO `jos_content_frontpage` VALUES (47, 2);
INSERT INTO `jos_content_frontpage` VALUES (91, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_rating`
-- 

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro`
-- 

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);
INSERT INTO `jos_core_acl_aro` VALUES (11, 'users', '63', 0, 'Trần Tam Tứ', 0);
INSERT INTO `jos_core_acl_aro` VALUES (12, 'users', '64', 0, 'Trần Nam', 0);
INSERT INTO `jos_core_acl_aro` VALUES (13, 'users', '65', 0, 'Nguyễn Tấn', 0);
INSERT INTO `jos_core_acl_aro` VALUES (14, 'users', '66', 0, 'Nguyễn Văn An', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_groups`
-- 

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_map`
-- 

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_sections`
-- 

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_groups_aro_map`
-- 

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18, '', 11);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18, '', 12);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18, '', 13);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18, '', 14);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_items`
-- 

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_searches`
-- 

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_groups`
-- 

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_groups`
-- 

INSERT INTO `jos_groups` VALUES (0, 'Public');
INSERT INTO `jos_groups` VALUES (1, 'Registered');
INSERT INTO `jos_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_jce_extensions`
-- 

CREATE TABLE `jos_jce_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_jce_extensions`
-- 

INSERT INTO `jos_jce_extensions` VALUES (1, 15, 'Joomla Links for Advanced Link', 'joomlalinks', 'links', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_jce_groups`
-- 

CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_jce_groups`
-- 

INSERT INTO `jos_jce_groups` VALUES (1, 'Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '', '28,27,32,33,19,20,21,29,45,44,43,46,26,49,36,37,30,31,39,40;56,47,38,5,9,48,42,24,25,22,18,2;7,17,13,10,3;23,15,14,59,16,4,6,8,12,54,34,41,11,60,61,62', '1,52,53,55,57,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,28,54,59,60,61,62', 1, 1, 62, '2008-08-01 18:52:15', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_jce_plugins`
-- 

CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL default 'plugin',
  `icon` varchar(255) NOT NULL default '',
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `editable` tinyint(3) NOT NULL default '0',
  `elements` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

-- 
-- Dumping data for table `jos_jce_plugins`
-- 

INSERT INTO `jos_jce_plugins` VALUES (1, 'Context Menu', 'contextmenu', 'plugin', '', '', 0, 15, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (2, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 3, 22, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (3, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 3, 20, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (4, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 3, 23, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (5, 'Paste', 'paste', 'plugin', 'pasteword,pastetext', 'paste', 2, 11, 1, 1, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (6, 'Preview', 'preview', 'plugin', 'preview', 'preview', 3, 25, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (7, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 3, 8, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (8, 'Print', 'print', 'plugin', 'print', 'print', 3, 21, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (9, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 2, 14, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (10, 'Styles', 'style', 'plugin', 'styleprops', 'style', 4, 12, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (11, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 4, 17, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (12, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 4, 16, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (13, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins,attribs', 'xhtmlxtras', 4, 13, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (14, 'Image Manager', 'imgmanager', 'plugin', 'imgmanager', 'imgmanager', 4, 26, 1, 1, '', 'imgmanager_dir=\nimgmanager_max_size=\nimgmanager_extensions=image=jpeg,jpg,png,gif\nimgmanager_margin_top=default\nimgmanager_margin_right=default\nimgmanager_margin_bottom=default\nimgmanager_margin_left=default\nimgmanager_border=0\nimgmanager_border_width=default\nimgmanager_border_style=default\nimgmanager_border_color=#000000\nimgmanager_align=default\nimgmanager_upload=1\nimgmanager_upload_conflict=\nimgmanager_folder_new=1\nimgmanager_folder_delete=1\nimgmanager_folder_rename=1\nimgmanager_file_delete=1\nimgmanager_file_rename=1\nimgmanager_file_move=1\n\n', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (15, 'Advanced Link', 'advlink', 'plugin', 'advlink', 'advlink', 4, 27, 1, 1, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (16, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 4, 18, 1, 1, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (17, 'Layers', 'layer', 'plugin', 'insertlayer,moveforward,movebackward,absolute', 'layer', 4, 7, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (18, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 2, 17, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (19, 'Bold', 'bold', 'command', 'bold', 'bold', 1, 2, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (20, 'Italic', 'italic', 'command', 'italic', 'italic', 1, 3, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (21, 'Underline', 'underline', 'command', 'underline', 'underline', 1, 4, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (22, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 2, 18, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (23, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 2, 11, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (24, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 1, 12, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (25, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 1, 13, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (26, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 1, 10, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (27, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 1, 1, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (28, 'Help', 'help', 'plugin', 'help', 'help', 1, 4, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (29, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 1, 5, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (30, 'Indent', 'indent', 'command', 'indent', 'indent', 2, 7, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (31, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 2, 6, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (32, 'Undo', 'undo', 'command', 'undo', 'undo', 2, 8, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (33, 'Redo', 'redo', 'command', 'redo', 'redo', 2, 9, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (34, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 3, 2, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (35, 'HTML', 'html', 'command', 'code', 'code', 2, 16, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (36, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 2, 5, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (37, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 2, 4, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (38, 'Clipboard Actions', 'clipboard', 'command', 'cut,copy,paste', 'clipboard', 2, 1, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (39, 'Subscript', 'sub', 'command', 'sub', 'sub', 3, 5, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (40, 'Superscript', 'sup', 'command', 'sup', 'sup', 3, 6, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (41, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 3, 4, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (42, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 3, 7, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (43, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 1, 8, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (44, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 1, 7, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (45, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 1, 6, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (46, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 1, 9, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (47, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 3, 3, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (48, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 2, 12, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (49, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 1, 11, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (50, 'Image', 'image', 'command', 'image', 'image', 2, 13, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (51, 'Link', 'link', 'command', 'link', 'link', 2, 10, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (52, 'File Browser', 'browser', 'plugin', '', '', 0, 24, 1, 1, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (53, 'Inline Popups', 'inlinepopups', 'plugin', '', '', 0, 9, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (54, 'Read More', 'readmore', 'plugin', 'readmore', 'readmore', 4, 19, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (55, 'Media Support', 'media', 'plugin', '', '', 0, 6, 1, 1, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (56, 'Code Cleanup', 'cleanup', 'command', 'cleanup', 'cleanup', 2, 14, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (57, 'Safari Browser Support', 'safari', 'plugin', '', '', 0, 10, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (59, 'Advanced Code Editor', 'advcode', 'plugin', 'advcode', 'advcode', 4, 5, 1, 0, '', '', 1, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (60, 'File Manager', 'filemanager', 'plugin', 'filemanager', 'filemanager', 4, 3, 1, 1, '', '', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (61, 'Image Manager Extended', 'imgmanager_ext', 'plugin', 'imgmanager_ext', 'imgmanager_ext', 4, 2, 1, 1, '', '', 0, 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES (62, 'Media Manager', 'mediamanager', 'plugin', 'mediamanager', 'mediamanager', 4, 1, 1, 1, '', '', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu`
-- 

CREATE TABLE `jos_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

-- 
-- Dumping data for table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, 'mainmenu', 'Trang chủ', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=0\nnum_intro_articles=2\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=1\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=home.png\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES (2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 1, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 2, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (27, 'mainmenu', 'Liên hệ', 'lienhe', 'index.php?option=com_content&view=section&id=5', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (34, 'mainmenu', 'Cover Flown', 'cover-flown', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', -2, 0, 20, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=2\nnum_intro_articles=0\nnum_columns=1\nnum_links=3\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 2, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 1, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=2\nnum_intro_articles=0\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=The News\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (53, 'mainmenu', 'Giới thiệu', 'gioithieu', 'index.php?option=com_content&view=article&id=44', 'component', 1, 0, 20, 0, 25, 62, '2012-01-16 10:15:55', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=edit.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (54, 'mainmenu', 'Khuyến mãi', 'khuyenmai', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=new.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (55, 'mainmenu', 'JA Split menu', 'ja-split-menu', '?ja_menu=split', 'url', -2, 0, 0, 1, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (56, 'mainmenu', 'JA Suckerfish menu', 'ja-suckerfish-menu', '?ja_menu=css', 'url', -2, 0, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (57, 'mainmenu', 'JA Moo menu', 'ja-moo-menu', '?ja_menu=moo', 'url', -2, 0, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (58, 'mainmenu', 'Tuyển dụng', 'tuyendung', 'index.php?option=com_content&view=article&id=89', 'component', 1, 0, 20, 0, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=cut.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (59, 'mainmenu', 'Wrapper (full width)', 'wrapper-full-width', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 0, 17, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=www.google.com\nscrolling=auto\nwidth=100%\nheight=500\nheight_auto=0\nadd_scheme=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (60, 'mainmenu', 'Content + Left col', 'content--left-col', 'index.php?option=com_content&view=article&id=26', 'component', -2, 0, 20, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (61, 'mainmenu', 'Content + Right col', 'content-right-col', 'index.php?option=com_content&view=article&id=27', 'component', -2, 0, 20, 1, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (62, 'mainmenu', 'All extra modules', 'all-extra-modules', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (65, 'mainmenu', 'Đặt hàng nhanh', 'dathangnhanh', 'index.php?option=com_content&view=article&id=8', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=attachment.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (68, 'mainmenu', 'Cyan color', 'cyan-color', '?ja_color=cyan', 'url', -2, 0, 0, 1, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (66, 'mainmenu', 'Default color', 'jacolordefault', '?ja_color=default', 'url', -2, 0, 0, 1, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (67, 'mainmenu', 'Red color', 'red-color', '?ja_color=red', 'url', -2, 0, 0, 1, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (69, 'mainmenu', 'Blue color', 'blue-color', '?ja_color=blue', 'url', -2, 0, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (70, 'mainmenu', 'Without extra modules', 'without-extra-modules', 'index.php?option=com_content&view=article&id=18', 'component', -2, 0, 20, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (71, 'mainmenu', 'Sản phẩm', 'sanpham', 'index.php?option=com_virtuemart', 'component', 1, 0, 34, 0, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=add_to_shopping_cart.png\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (72, 'mainmenu', 'Content + Right Col', 'content--right-col', 'index.php?option=com_content&view=article&id=20', 'component', -2, 0, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (73, 'mainmenu', 'Red color', 'red-color', '?ja_color=red', 'url', -2, 0, 0, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (74, 'mainmenu', 'Liên hệ', 'lien-h', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=1\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (75, 'mainmenu', 'Quy định bảo hành', 'quy-nh-bo-hanh', 'index.php?option=com_content&view=article&id=90', 'component', 1, 0, 20, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu_types`
-- 

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Menu chính', 'The main menu for the site');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages`
-- 

CREATE TABLE `jos_messages` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages_cfg`
-- 

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_migration_backlinks`
-- 

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules`
-- 

CREATE TABLE `jos_modules` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

-- 
-- Dumping data for table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (16, 'Polls', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (18, 'Đăng nhập', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (19, 'Tin mới nhất', '', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (20, 'Trạng thái', '', 7, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 0, 1, 'serverinfo=0\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (21, 'Số người online', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (22, 'Tin xem nhiều', '', 0, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=\nshow_front=1\ncount=5\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (27, 'Search', '', 0, 'user4', 62, '2012-01-08 03:19:05', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (28, 'Random Image', '', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, 'type=jpg\nfolder=\nlink=\nwidth=\nheight=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (29, 'Bottom menu', '', 0, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=-nav\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (30, 'Banners', '', 0, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (33, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (36, 'Syndication', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/viewforum.php?f=8" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/viewforum.php?f=432" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, '');
INSERT INTO `jos_modules` VALUES (47, 'Hỗ trợ', 'Đề tài thiết kế web Joomla\r\n<hr />\r\n<ul>\r\n<li><strong>Sinh viên : Nguyễn Quang Việt</strong></li>\r\n<li><strong>Di động :</strong> 0984 510 852</li>\r\n<li><strong>Email:</strong> quangvietntd@gmail.com</li>\r\n<li><strong>Lớp: </strong>Sư phạm tin 3</li>\r\n</ul>', 0, 'user5', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (95, 'Giới thiệu sản phẩm', '', 0, 'ja-slider', 62, '2012-01-17 13:03:59', 1, 'mod_ja_contentscroll', 0, 0, 1, 'mootools=0\naddstyle=1\nshowtitle=1\nshowreadmore=0\nshowintrotext=0\nshowimages=1\nautoresize=1\ncatid=41\nlink_titles=1\nlink_images=1\nnumchar=0\nxheight=190\nxwidth=160\niheight=150\niwidth=140\nnumElem=3\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (77, 'mod_jaslideshow', '', 0, 'ja-slideshow', 0, '0000-00-00 00:00:00', 1, 'mod_jaslideshow', 0, 0, 0, 'play=1\nswidth=950\nsheight=298\nfolder=images/stories/slideshow/\nfolder_thumb=images/stories/fruit/thumbs\naltimage=JA slide show\norderby=0\nsort=\nsetimagearray=\nstartwith=\nautoresize=0\ntimedisplay=10\ntimeanimation=2\nanimation=fade\nppercent=10\nzpercent=10\neffect=bounceOut\nnavigation=\ntwidth=100\ntheight=100\nswitch_action=click\nshowDescription=0\ndescription_effect=fade\ndescription=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (92, 'Tin tức', '<div class="ja-innerdiv clearfix" style="padding-top: 0 !important;"><span class="title"><a href="index.php?option=com_content&amp;view=article&amp;id=46:tablet-co-thit-k-p-nht-ca-toshiba-trinh-lang&amp;catid=34:demo-category" title="Sample link">Laptop Aspire 5755G tốc độ 2,2 GHz</a></span> <img src="images/stories/sanpham/Acer_Aspire_S5_h.jpg" width="60" height="NaN" alt="Acer_Aspire_S5_h" />Aspire 5755G sở hữu bộ vi xử lý lõi tứ Intel Sandy Bridge Core i7-2670QM và turbo boost lên đến 3,1 GHz</div>\r\n<div class="ja-innerdiv clearfix"><span class="title"><a href="index.php?option=com_content&amp;view=article&amp;id=93:cn-cnh-in-thoi-hot-nht-ces-2012&amp;catid=34:demo-category" title="Sample link">Điện thoại ''hot'' nhất CES 2012</a></span> <img alt="Nokia_Lumia_900_a" height="NaN" width="60" src="images/stories/sanpham/Nokia_Lumia_900_a.jpg" /> Lumia 900 được vinh danh là điện thoại xuất sắc ở triển lãm công nghệ đầu năm.</div>\r\n<div class="ja-innerdiv clearfix"><span class="title"><a href="index.php?option=com_content&amp;view=article&amp;id=92:in-thoi-galaxy-nexus-trng-l-din&amp;catid=34:demo-category" title="Sample link">Điện thoại Galaxy Nexus trắng lộ diện</a></span> <img alt="Galaxy_Nexus_5" height="NaN" width="60" src="images/stories/sanpham/Galaxy_Nexus_5.jpg" /> Smartphone chạy Android 4.0 (Ice Cream Sandwich) đầu tiên được phát triển bởi Google và Samsung.</div>', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (83, 'Giỏ hàng của bạn ', '', 0, 'vm-cart', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 0, 0, 1, 'moduleclass_sfx=\nvmCartDirection=0\nvmEnableGreyBox=1\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (93, 'Banner2', '<img src="images/stories/demo/sam-2.jpg" alt="Sample adv2" />', 7, 'right', 62, '2012-01-17 10:28:43', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (78, 'Danh mục sản phẩm', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_product_categories', 0, 0, 1, 'menutype=links\njscook_type=tree\njscookMenu_style=ThemeOffice\nmenu_orientation=vbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (79, 'Featured Products', '', 0, 'vm-fp', 62, '2012-01-16 16:27:44', 1, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=3\nshow_price=1\nshow_addtocart=1\ndisplay_style=table\nproducts_per_row=3\ncategory_id=\ncache=0\nmoduleclass_sfx=_hilite\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (96, 'Change Currency', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_currencies', 0, 0, 1, 'text_before=\nproduct_currency=USD,VND,\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (94, 'Banner', '<img alt="Sample banner" src="images/stories/demo/sam-1.jpg" />', 7, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=_blank\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (102, 'MaxDesign floating ad - Quang Cao 2 ben trang web ', '', 0, 'debug', 0, '0000-00-00 00:00:00', 1, 'mod_maxdesign_float_ad', 0, 0, 1, 'moduleclass_sfx=\nLcontent=<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="120" height="400">\\n  <param name="movie" value="left.swf" />\\n  <param name="quality" value="high" />\\n  <param name="allowScriptAccess" value="always" />\\n  <param name="wmode" value="transparent">\\n     <embed src="images/banners/left.swf"\\n      quality="high"\\n      type="application/x-shockwave-flash"\\n      WMODE="transparent"\\n      width="120"\\n      height="400"\\n      pluginspage="http://www.macromedia.com/go/getflashplayer"\\n      allowScriptAccess="always" />\\n</object>\nRcontent=<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="120" height="400">\\n  <param name="movie" value="right.swf" />\\n  <param name="quality" value="high" />\\n  <param name="allowScriptAccess" value="always" />\\n  <param name="wmode" value="transparent">\\n     <embed src="images/banners/right.swf"\\n      quality="high"\\n      type="application/x-shockwave-flash"\\n      WMODE="transparent"\\n      width="120"\\n      height="400"\\n      pluginspage="http://www.macromedia.com/go/getflashplayer"\\n      allowScriptAccess="always" />\\n</object>\nContentW=120\nBodyW=1004\nMtop=50\nMleft=0\nMright=0\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (103, 'JCE Latest News', '', 1, 'jce_cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\r\n	cache_time=15\r\n	moduleclass_sfx=\r\n	rssurl=http://www.joomlacontenteditor.net/index.php?option=com_rss&feed=RSS2.0&type=com_frontpage&Itemid=1\r\n	rssrtl=0\r\n	rsstitle=0\r\n	rssdesc=0\r\n	rssimage=0\r\n	rssitems=3\r\n	rssitemdesc=1\r\n	word_count=100', 0, 1, '');
INSERT INTO `jos_modules` VALUES (104, 'JCE Control Panel Icons', '', 1, 'jce_icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcequickicon', 0, 0, 0, '', 0, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules_menu`
-- 

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (16, 62);
INSERT INTO `jos_modules_menu` VALUES (17, 1);
INSERT INTO `jos_modules_menu` VALUES (17, 53);
INSERT INTO `jos_modules_menu` VALUES (17, 54);
INSERT INTO `jos_modules_menu` VALUES (17, 58);
INSERT INTO `jos_modules_menu` VALUES (17, 71);
INSERT INTO `jos_modules_menu` VALUES (17, 74);
INSERT INTO `jos_modules_menu` VALUES (17, 75);
INSERT INTO `jos_modules_menu` VALUES (18, 1);
INSERT INTO `jos_modules_menu` VALUES (18, 18);
INSERT INTO `jos_modules_menu` VALUES (18, 20);
INSERT INTO `jos_modules_menu` VALUES (18, 24);
INSERT INTO `jos_modules_menu` VALUES (18, 28);
INSERT INTO `jos_modules_menu` VALUES (18, 29);
INSERT INTO `jos_modules_menu` VALUES (18, 30);
INSERT INTO `jos_modules_menu` VALUES (18, 51);
INSERT INTO `jos_modules_menu` VALUES (18, 52);
INSERT INTO `jos_modules_menu` VALUES (18, 54);
INSERT INTO `jos_modules_menu` VALUES (18, 58);
INSERT INTO `jos_modules_menu` VALUES (18, 74);
INSERT INTO `jos_modules_menu` VALUES (18, 75);
INSERT INTO `jos_modules_menu` VALUES (19, 0);
INSERT INTO `jos_modules_menu` VALUES (20, 1);
INSERT INTO `jos_modules_menu` VALUES (21, 1);
INSERT INTO `jos_modules_menu` VALUES (22, 0);
INSERT INTO `jos_modules_menu` VALUES (27, 0);
INSERT INTO `jos_modules_menu` VALUES (29, 0);
INSERT INTO `jos_modules_menu` VALUES (30, 62);
INSERT INTO `jos_modules_menu` VALUES (33, 0);
INSERT INTO `jos_modules_menu` VALUES (35, 0);
INSERT INTO `jos_modules_menu` VALUES (36, 0);
INSERT INTO `jos_modules_menu` VALUES (39, 43);
INSERT INTO `jos_modules_menu` VALUES (39, 44);
INSERT INTO `jos_modules_menu` VALUES (39, 45);
INSERT INTO `jos_modules_menu` VALUES (39, 46);
INSERT INTO `jos_modules_menu` VALUES (39, 47);
INSERT INTO `jos_modules_menu` VALUES (47, 0);
INSERT INTO `jos_modules_menu` VALUES (77, 1);
INSERT INTO `jos_modules_menu` VALUES (77, 62);
INSERT INTO `jos_modules_menu` VALUES (78, 0);
INSERT INTO `jos_modules_menu` VALUES (79, 1);
INSERT INTO `jos_modules_menu` VALUES (83, 1);
INSERT INTO `jos_modules_menu` VALUES (83, 53);
INSERT INTO `jos_modules_menu` VALUES (83, 54);
INSERT INTO `jos_modules_menu` VALUES (83, 58);
INSERT INTO `jos_modules_menu` VALUES (83, 71);
INSERT INTO `jos_modules_menu` VALUES (83, 74);
INSERT INTO `jos_modules_menu` VALUES (83, 75);
INSERT INTO `jos_modules_menu` VALUES (92, 1);
INSERT INTO `jos_modules_menu` VALUES (92, 18);
INSERT INTO `jos_modules_menu` VALUES (92, 20);
INSERT INTO `jos_modules_menu` VALUES (92, 24);
INSERT INTO `jos_modules_menu` VALUES (92, 28);
INSERT INTO `jos_modules_menu` VALUES (92, 29);
INSERT INTO `jos_modules_menu` VALUES (92, 30);
INSERT INTO `jos_modules_menu` VALUES (92, 51);
INSERT INTO `jos_modules_menu` VALUES (92, 52);
INSERT INTO `jos_modules_menu` VALUES (92, 54);
INSERT INTO `jos_modules_menu` VALUES (92, 58);
INSERT INTO `jos_modules_menu` VALUES (93, 1);
INSERT INTO `jos_modules_menu` VALUES (93, 11);
INSERT INTO `jos_modules_menu` VALUES (93, 12);
INSERT INTO `jos_modules_menu` VALUES (93, 13);
INSERT INTO `jos_modules_menu` VALUES (93, 14);
INSERT INTO `jos_modules_menu` VALUES (93, 18);
INSERT INTO `jos_modules_menu` VALUES (93, 20);
INSERT INTO `jos_modules_menu` VALUES (93, 24);
INSERT INTO `jos_modules_menu` VALUES (93, 28);
INSERT INTO `jos_modules_menu` VALUES (93, 29);
INSERT INTO `jos_modules_menu` VALUES (93, 30);
INSERT INTO `jos_modules_menu` VALUES (93, 38);
INSERT INTO `jos_modules_menu` VALUES (93, 40);
INSERT INTO `jos_modules_menu` VALUES (93, 43);
INSERT INTO `jos_modules_menu` VALUES (93, 44);
INSERT INTO `jos_modules_menu` VALUES (93, 45);
INSERT INTO `jos_modules_menu` VALUES (93, 46);
INSERT INTO `jos_modules_menu` VALUES (93, 47);
INSERT INTO `jos_modules_menu` VALUES (93, 51);
INSERT INTO `jos_modules_menu` VALUES (93, 52);
INSERT INTO `jos_modules_menu` VALUES (93, 54);
INSERT INTO `jos_modules_menu` VALUES (93, 55);
INSERT INTO `jos_modules_menu` VALUES (93, 56);
INSERT INTO `jos_modules_menu` VALUES (93, 57);
INSERT INTO `jos_modules_menu` VALUES (93, 58);
INSERT INTO `jos_modules_menu` VALUES (93, 59);
INSERT INTO `jos_modules_menu` VALUES (93, 60);
INSERT INTO `jos_modules_menu` VALUES (93, 62);
INSERT INTO `jos_modules_menu` VALUES (93, 63);
INSERT INTO `jos_modules_menu` VALUES (93, 64);
INSERT INTO `jos_modules_menu` VALUES (93, 70);
INSERT INTO `jos_modules_menu` VALUES (94, 1);
INSERT INTO `jos_modules_menu` VALUES (94, 18);
INSERT INTO `jos_modules_menu` VALUES (94, 20);
INSERT INTO `jos_modules_menu` VALUES (94, 24);
INSERT INTO `jos_modules_menu` VALUES (94, 28);
INSERT INTO `jos_modules_menu` VALUES (94, 29);
INSERT INTO `jos_modules_menu` VALUES (94, 30);
INSERT INTO `jos_modules_menu` VALUES (94, 51);
INSERT INTO `jos_modules_menu` VALUES (94, 52);
INSERT INTO `jos_modules_menu` VALUES (94, 54);
INSERT INTO `jos_modules_menu` VALUES (94, 58);
INSERT INTO `jos_modules_menu` VALUES (95, 1);
INSERT INTO `jos_modules_menu` VALUES (96, 1);
INSERT INTO `jos_modules_menu` VALUES (96, 18);
INSERT INTO `jos_modules_menu` VALUES (96, 20);
INSERT INTO `jos_modules_menu` VALUES (96, 24);
INSERT INTO `jos_modules_menu` VALUES (96, 28);
INSERT INTO `jos_modules_menu` VALUES (96, 29);
INSERT INTO `jos_modules_menu` VALUES (96, 30);
INSERT INTO `jos_modules_menu` VALUES (96, 51);
INSERT INTO `jos_modules_menu` VALUES (96, 52);
INSERT INTO `jos_modules_menu` VALUES (96, 54);
INSERT INTO `jos_modules_menu` VALUES (96, 58);
INSERT INTO `jos_modules_menu` VALUES (102, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_newsfeeds`
-- 

CREATE TABLE `jos_newsfeeds` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_newsfeeds`
-- 

INSERT INTO `jos_newsfeeds` VALUES (4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `jos_newsfeeds` VALUES (4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `jos_newsfeeds` VALUES (5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_newsfeeds` VALUES (7, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `jos_newsfeeds` VALUES (6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_plugins`
-- 

CREATE TABLE `jos_plugins` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `jos_plugins`
-- 

INSERT INTO `jos_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n');
INSERT INTO `jos_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (37, 'Virtuemart Extended Search Plugin', 'vmxsearch.plugin', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'density_flag=1\nname_flag=1\nsku_flag=1\ndesc_flag=1\nsdesc_flag=1\nurl_flag=1\nreview_flag=1\nmanufacturer_flag=1\ncategory_flag=1\nparent_filter=both\n\n');
INSERT INTO `jos_plugins` VALUES (38, 'Editor - JCE 1.5.1', 'jce', 'editors', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'editor_width=\neditor_height=\neditor_state=mceEditor\neditor_toggle_text=[show/hide]\neditor_table_inline_editing=0\neditor_layout_rows=5\neditor_verify_html=0\neditor_relative_urls=1\neditor_fix_table_elements=1\neditor_fix_list_elements=1\neditor_pluginmode=0\neditor_invalid_elements=applet\neditor_extended_elements=\neditor_event_elements=td,img,a\neditor_forced_root_block=0\neditor_newlines=0\neditor_body_class_type=custom\neditor_body_class_custom=\neditor_content_css=1\neditor_content_css_custom=templates/$template/css/editor_content.css\neditor_custom_config=\neditor_callback_file=\neditor_upload_method=flash\neditor_folder_tree=1\neditor_help_url=http://www.joomlacontenteditor.net/index2.php?option=com_content\neditor_toggle=1\neditor_theme_advanced_toolbar_location=top\neditor_theme_advanced_toolbar_align=center\neditor_skin=default\neditor_skin_variant=default\neditor_inlinepopups_skin=clearlooks2\neditor_allow_script=0\neditor_allow_php=0\neditor_theme_advanced_blockformats=p,div,h1,h2,h3,h4,h5,h6,blockquote,dt,dd,code,samp,pre\neditor_theme_advanced_fonts_add=\neditor_theme_advanced_fonts_remove=\neditor_font_size_style_values=8pt,10pt,12pt,14pt,18pt,24pt,36pt\neditor_dir=images/stories\neditor_max_size=1024\neditor_upload_conflict=\neditor_theme_advanced_source_editor_height=550\neditor_theme_advanced_source_editor_width=750\neditor_preview_height=550\neditor_preview_width=750\neditor_custom_colors=\n\n');
INSERT INTO `jos_plugins` VALUES (39, 'JCE Utilities', 'jceutilities', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'theme=standard\nthemepath=plugins/system/jceutilities/themes\nimgpath=plugins/system/jceutilities/img\nfadespeed=500\nscalespeed=500\noverlay=1\noverlayopacity=0.8\noverlaycolor=#000000\nwidth=640\nheight=480\nresize=1\nicons=1\ntipclass=tooltip\ntipopacity=1\ntipspeed=150\ntipposition=br\ntipoffsets_x=16\ntipoffsets_y=16\nflash=7,0,0,0\nwindowsmedia=5,1,52,701\nquicktime=6,0,2,0\nrealmedia=7,0,0,0\nshockwave=8,5,1,0\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_polls`
-- 

CREATE TABLE `jos_polls` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `jos_polls`
-- 

INSERT INTO `jos_polls` VALUES (14, 'Joomla! is used for?', 'joomla-is-used-for', 12, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_data`
-- 

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `jos_poll_data`
-- 

INSERT INTO `jos_poll_data` VALUES (1, 14, 'Community Sites', 3);
INSERT INTO `jos_poll_data` VALUES (2, 14, 'Public Brand Sites', 3);
INSERT INTO `jos_poll_data` VALUES (3, 14, 'eCommerce', 1);
INSERT INTO `jos_poll_data` VALUES (4, 14, 'Blogs', 0);
INSERT INTO `jos_poll_data` VALUES (5, 14, 'Intranets', 0);
INSERT INTO `jos_poll_data` VALUES (6, 14, 'Photo and Media Sites', 2);
INSERT INTO `jos_poll_data` VALUES (7, 14, 'All of the Above!', 3);
INSERT INTO `jos_poll_data` VALUES (8, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (9, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (10, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (11, 14, '', 0);
INSERT INTO `jos_poll_data` VALUES (12, 14, '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_date`
-- 

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `jos_poll_date`
-- 

INSERT INTO `jos_poll_date` VALUES (1, '2006-10-09 13:01:58', 1, 14);
INSERT INTO `jos_poll_date` VALUES (2, '2006-10-10 15:19:43', 7, 14);
INSERT INTO `jos_poll_date` VALUES (3, '2006-10-11 11:08:16', 7, 14);
INSERT INTO `jos_poll_date` VALUES (4, '2006-10-11 15:02:26', 2, 14);
INSERT INTO `jos_poll_date` VALUES (5, '2006-10-11 15:43:03', 7, 14);
INSERT INTO `jos_poll_date` VALUES (6, '2006-10-11 15:43:38', 7, 14);
INSERT INTO `jos_poll_date` VALUES (7, '2006-10-12 00:51:13', 2, 14);
INSERT INTO `jos_poll_date` VALUES (8, '2007-05-10 19:12:29', 3, 14);
INSERT INTO `jos_poll_date` VALUES (9, '2007-05-14 14:18:00', 6, 14);
INSERT INTO `jos_poll_date` VALUES (10, '2007-06-10 15:20:29', 6, 14);
INSERT INTO `jos_poll_date` VALUES (11, '2007-07-03 12:37:53', 2, 14);
INSERT INTO `jos_poll_date` VALUES (12, '2009-01-06 03:22:59', 1, 14);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_menu`
-- 

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_sections`
-- 

CREATE TABLE `jos_sections` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `jos_sections`
-- 

INSERT INTO `jos_sections` VALUES (1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, '');
INSERT INTO `jos_sections` VALUES (3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, '');
INSERT INTO `jos_sections` VALUES (4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 15, '');
INSERT INTO `jos_sections` VALUES (5, 'Demo section', '', 'demo-section', '', 'content', 'left', 'Demo Section', 1, 0, '0000-00-00 00:00:00', 6, 0, 9, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_session`
-- 

CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('user', '1326904332', 'c9d4470648ddc2c83fbfca394c143f01', 0, 66, 'Registered', 18, 0, '__default|a:7:{s:15:"session.counter";i:12;s:19:"session.timer.start";i:1326904035;s:18:"session.timer.last";i:1326904303;s:17:"session.timer.now";i:1326904332;s:22:"session.client.browser";s:98:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"66";s:4:"name";s:16:"Nguyễn Văn An";s:8:"username";s:4:"user";s:5:"email";s:14:"user@gmail.com";s:8:"password";s:65:"a6bbae2065843d2fe5e08483c66bd955:W7lbw1bokpgpRCmbLhjQ1kK3RaV48nlJ";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"Registered";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:3:"gid";s:2:"18";s:12:"registerDate";s:19:"2012-01-18 16:21:34";s:13:"lastvisitDate";s:19:"2012-01-18 16:27:16";s:10:"activation";s:0:"";s:6:"params";s:1:"\n";s:3:"aid";i:1;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:62:"C:\\AppServ\\www\\zeolite\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}userstate|a:1:{s:10:"product_id";i:0;}auth|a:13:{s:11:"show_prices";i:1;s:7:"user_id";s:2:"66";s:8:"username";s:4:"user";s:5:"perms";s:7:"shopper";s:10:"first_name";N;s:9:"last_name";N;s:7:"country";s:2:"US";s:3:"zip";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";s:1:"1";s:22:"is_registered_customer";b:1;}cart|a:1:{s:3:"idx";i:0;}recent|a:2:{s:3:"idx";i:1;i:0;a:2:{s:10:"product_id";i:27;s:11:"category_id";s:2:"12";}}ps_vendor_id|s:1:"1";minimum_pov|s:4:"0.00";vendor_currency|s:3:"VND";product_sess|a:17:{i:28;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904336;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904336;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904125;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:27;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904046;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:26;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904046;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";s:7:"flypage";s:11:"flypage.tpl";}i:25;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904046;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:36;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904336;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:39;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904074;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:40;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904074;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:54;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904083;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:55;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904083;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904096;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904110;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:35;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904110;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:32;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904110;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:34;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904110;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326904125;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}}taxrate|a:1:{i:1;i:0;}vmUseGreyBox|s:1:"1";vmCartDirection|s:1:"0";VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:2:"14";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}');
INSERT INTO `jos_session` VALUES ('user', '1326903984', '7ca92ae2114af228ac01f2f7812332f2', 0, 66, 'Registered', 18, 0, '__default|a:8:{s:15:"session.counter";i:14;s:19:"session.timer.start";i:1326903644;s:18:"session.timer.last";i:1326903883;s:17:"session.timer.now";i:1326903984;s:22:"session.client.browser";s:98:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"66";s:4:"name";s:16:"Nguyễn Văn An";s:8:"username";s:4:"user";s:5:"email";s:14:"user@gmail.com";s:8:"password";s:65:"a6bbae2065843d2fe5e08483c66bd955:W7lbw1bokpgpRCmbLhjQ1kK3RaV48nlJ";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"Registered";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:3:"gid";s:2:"18";s:12:"registerDate";s:19:"2012-01-18 16:21:34";s:13:"lastvisitDate";s:19:"2012-01-18 16:21:50";s:10:"activation";s:0:"";s:6:"params";s:1:"\n";s:3:"aid";i:1;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:62:"C:\\AppServ\\www\\zeolite\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"842366db1abb2c24367e66d727180923";}userstate|a:1:{s:10:"product_id";i:0;}auth|a:13:{s:11:"show_prices";i:1;s:7:"user_id";s:2:"66";s:8:"username";s:4:"user";s:5:"perms";s:7:"shopper";s:10:"first_name";N;s:9:"last_name";N;s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";s:1:"1";s:22:"is_registered_customer";b:1;s:7:"country";s:2:"US";s:3:"zip";s:0:"";}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|s:1:"1";minimum_pov|s:4:"0.00";vendor_currency|s:3:"VND";product_sess|a:15:{i:23;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903699;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:36;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903885;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:37;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903649;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:31;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903990;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903844;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:24;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903990;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:4:{s:7:"flypage";s:11:"flypage.tpl";s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903990;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:47;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903872;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:49;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903872;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:48;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903872;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:42;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903878;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:41;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903878;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:27;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903884;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:26;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903885;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}i:25;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1326903885;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";s:6:"0.0000";}}taxrate|a:1:{i:1;i:0;}vmUseGreyBox|s:1:"1";vmCartDirection|s:1:"0";VMCHECK|s:2:"OK";last_page|s:11:"shop.browse";last_browse_parameters|a:7:{s:11:"category_id";s:2:"12";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_stats_agents`
-- 

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_templates_menu`
-- 

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` VALUES ('ja_zeolite', 0, 0);
INSERT INTO `jos_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_users`
-- 

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- 
-- Dumping data for table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (62, 'Administrator', 'admin', 'quangvietntd@gmail.com', '52f8b30628b8449dfdb9019f09e00079:tDCakPWFZoWXzIPR9oCYTxf0GKrpJX7o', 'Super Administrator', 0, 1, 25, '2012-01-07 16:06:16', '2012-01-18 15:26:21', '', '');
INSERT INTO `jos_users` VALUES (63, 'Trần Tam Tứ', 'quangvietntd', 'quangvietntd2@gmail.com', '4caacfe8c0932671b81f64606c69ac0c:lfHNAdGBqQf1CHxuV08neYe22ufctRQB', 'Registered', 0, 0, 18, '2012-01-18 12:04:47', '2012-01-18 15:35:49', '5fc039e51175499ae14afeb91fbae5bb', 'page_title=Edit Your Details\nshow_page_title=1\nlanguage=\ntimezone=7\n\n');
INSERT INTO `jos_users` VALUES (64, 'Trần Nam', 'nam', 'nam@gmail.com', 'c27b5004f8d8d06e1e7ba1b08af93ee2:vjWt7gFSipXJmx656rimgDq43BRV9ouv', '', 0, 0, 18, '2012-01-17 10:23:21', '2012-01-17 15:04:43', '', '\n');
INSERT INTO `jos_users` VALUES (65, 'Nguyễn Tấn', 'tan', 'tan@gmail.com', 'a06893dcabef01d19e10bed512669cd5:0pT2N1TA88yK8NmO74Hex9k7pA5SNwKX', '', 0, 0, 18, '2012-01-17 15:05:39', '0000-00-00 00:00:00', '', '\n');
INSERT INTO `jos_users` VALUES (66, 'Nguyễn Văn An', 'user', 'user@gmail.com', 'a6bbae2065843d2fe5e08483c66bd955:W7lbw1bokpgpRCmbLhjQ1kK3RaV48nlJ', '', 0, 0, 18, '2012-01-18 16:21:34', '2012-01-18 16:27:16', '', '\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_affiliate`
-- 

CREATE TABLE `jos_vm_affiliate` (
  `affiliate_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `active` char(1) NOT NULL default 'N',
  `rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store affiliate user entries' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_affiliate`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_affiliate_sale`
-- 

CREATE TABLE `jos_vm_affiliate_sale` (
  `order_id` int(11) NOT NULL default '0',
  `visit_id` varchar(32) NOT NULL default '',
  `affiliate_id` int(11) NOT NULL default '0',
  `rate` int(2) NOT NULL default '0',
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores orders that affiliates have placed';

-- 
-- Dumping data for table `jos_vm_affiliate_sale`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_group`
-- 

CREATE TABLE `jos_vm_auth_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(128) default NULL,
  `group_level` int(11) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_auth_group`
-- 

INSERT INTO `jos_vm_auth_group` VALUES (1, 'admin', 0);
INSERT INTO `jos_vm_auth_group` VALUES (2, 'storeadmin', 250);
INSERT INTO `jos_vm_auth_group` VALUES (3, 'shopper', 500);
INSERT INTO `jos_vm_auth_group` VALUES (4, 'demo', 750);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_user_group`
-- 

CREATE TABLE `jos_vm_auth_user_group` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps the user to user groups';

-- 
-- Dumping data for table `jos_vm_auth_user_group`
-- 

INSERT INTO `jos_vm_auth_user_group` VALUES (62, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (63, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (64, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (65, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (66, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (67, 2);
INSERT INTO `jos_vm_auth_user_group` VALUES (68, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_auth_user_vendor`
-- 

CREATE TABLE `jos_vm_auth_user_vendor` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a vendor';

-- 
-- Dumping data for table `jos_vm_auth_user_vendor`
-- 

INSERT INTO `jos_vm_auth_user_vendor` VALUES (62, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (63, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (64, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (65, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (66, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (67, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (68, 1);
INSERT INTO `jos_vm_auth_user_vendor` VALUES (71, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_cart`
-- 

CREATE TABLE `jos_vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the cart contents of a user';

-- 
-- Dumping data for table `jos_vm_cart`
-- 

INSERT INTO `jos_vm_cart` VALUES (64, 'a:5:{i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"31";s:9:"parent_id";s:2:"31";s:11:"category_id";N;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"23";s:9:"parent_id";s:2:"23";s:11:"category_id";s:2:"11";s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"21";s:9:"parent_id";s:2:"21";s:11:"category_id";s:2:"11";s:11:"description";s:0:"";}s:3:"idx";i:4;i:3;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"54";s:9:"parent_id";s:2:"54";s:11:"category_id";s:2:"24";s:11:"description";s:0:"";}}', '2012-01-17 21:51:05');
INSERT INTO `jos_vm_cart` VALUES (63, 'a:3:{s:3:"idx";i:2;i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"27";s:9:"parent_id";s:2:"27";s:11:"category_id";s:2:"12";s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"29";s:9:"parent_id";s:2:"29";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}}', '2012-01-18 22:26:03');
INSERT INTO `jos_vm_cart` VALUES (65, 'a:6:{s:3:"idx";i:5;i:0;a:5:{s:8:"quantity";i:4;s:10:"product_id";s:2:"30";s:9:"parent_id";s:2:"30";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:3;s:10:"product_id";s:2:"28";s:9:"parent_id";s:2:"28";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:5;s:10:"product_id";s:2:"31";s:9:"parent_id";s:2:"31";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:3;a:5:{s:8:"quantity";i:15;s:10:"product_id";s:2:"29";s:9:"parent_id";s:2:"29";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:4;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"35";s:9:"parent_id";s:2:"35";s:11:"category_id";s:2:"14";s:11:"description";s:0:"";}}', '2008-07-28 11:41:32');
INSERT INTO `jos_vm_cart` VALUES (69, 'a:1:{s:3:"idx";i:0;}', '2008-07-25 08:36:25');
INSERT INTO `jos_vm_cart` VALUES (62, 'a:4:{s:3:"idx";i:3;i:0;a:5:{s:8:"quantity";i:2;s:10:"product_id";s:2:"30";s:9:"parent_id";s:2:"30";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"28";s:9:"parent_id";s:2:"28";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"31";s:9:"parent_id";s:2:"31";s:11:"category_id";s:2:"13";s:11:"description";s:0:"";}}', '2012-01-18 18:53:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_category`
-- 

CREATE TABLE `jos_vm_category` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here' AUTO_INCREMENT=32 ;

-- 
-- Dumping data for table `jos_vm_category`
-- 

INSERT INTO `jos_vm_category` VALUES (12, 1, 'Mouse and Keyboard', '<p>Chuột và bàn phím</p>', 'resized/Mouse_and_Keyboa_48873e99b9dec_120x120.jpg', 'Mouse_and_Keyboa_48873e99c7b1a.jpg', 'Y', 1216720550, 1326813043, 'managed', 1, 'flypage.tpl', 7);
INSERT INTO `jos_vm_category` VALUES (11, 1, 'Monitors', '<p>Màn hình máy tính</p>', 'resized/Monitors___Proje_48873f34e9ffa_120x120.jpg', 'Monitors___Proje_48873f35034e2.jpg', 'Y', 1216716886, 1326727818, 'managed', 1, 'flypage.tpl', 6);
INSERT INTO `jos_vm_category` VALUES (13, 1, 'Laptops', '<p>Máy tính xách tay</p>', 'resized/Laptops_48873d786ac78_120x120.jpg', 'Laptops_48873d7878bab.jpg', 'Y', 1216805543, 1326813058, 'managed', 1, 'flypage.tpl', 5);
INSERT INTO `jos_vm_category` VALUES (14, 1, 'Macs and iPod', '<p>Macbook and iPod</p>', 'resized/Macs_and_iPod_48873c79856db_120x120.jpg', 'Macs_and_iPod_48873c7993779.jpg', 'Y', 1216805619, 1326813195, 'managed', 1, 'flypage.tpl', 4);
INSERT INTO `jos_vm_category` VALUES (15, 1, 'Máy tính bảng', '<p>Máy tính bảng</p>\r\n<p> </p>', 'resized/M__y_t__nh_b___n_4f1445cfb6127_90x90.jpg', 'M__y_t__nh_b___n_4f1445cfc8be2.jpg', 'Y', 1326427209, 1326813276, 'managed', 1, 'flypage.tpl', 8);
INSERT INTO `jos_vm_category` VALUES (17, 1, 'Máy để bàn', '', 'resized/M__y_______b__n_4f1446bf6f919_90x90.jpg', 'M__y_______b__n_4f1446bf7fc28.jpg', 'Y', 1326427458, 1326728895, 'managed', 1, 'flypage.tpl', 10);
INSERT INTO `jos_vm_category` VALUES (18, 1, 'Máy chủ', '', 'resized/M__y_ch____4f144738db1af_90x90.jpg', 'M__y_ch____4f144738e80b3.jpg', 'Y', 1326427476, 1326729016, 'managed', 1, 'flypage.tpl', 11);
INSERT INTO `jos_vm_category` VALUES (19, 1, 'Ổ đĩa cứng Laptop', '', 'resized/________a_c___ng_4f14480d3b4ea_90x90.jpg', '________a_c___ng_4f14480d488a2.jpg', 'Y', 1326427508, 1326729229, 'managed', 1, 'flypage.tpl', 12);
INSERT INTO `jos_vm_category` VALUES (20, 1, 'RAM - DVD Laptop', '', 'resized/RAM___DVD_Laptop_4f1448402094f_90x90.jpg', 'RAM___DVD_Laptop_4f1448402e263.jpg', 'Y', 1326427535, 1326729280, 'managed', 1, 'flypage.tpl', 13);
INSERT INTO `jos_vm_category` VALUES (22, 1, 'Mainboard - Bo mạch chủ', '', 'resized/Mainboard___Bo_m_4f1448a2d8889_90x90.jpg', 'Mainboard___Bo_m_4f1448a2e4607.jpg', 'Y', 1326427640, 1326729378, 'managed', 1, 'flypage.tpl', 15);
INSERT INTO `jos_vm_category` VALUES (23, 1, 'Bộ vi xử lý CPU', '', 'resized/B____vi_x____l___4f144916c7e83_90x90.jpg', 'B____vi_x____l___4f144916d5130.jpg', 'Y', 1326427668, 1326729494, 'managed', 1, 'flypage.tpl', 16);
INSERT INTO `jos_vm_category` VALUES (24, 1, 'Bộ nhớ RAM', '', 'resized/B____nh____RAM_4f144951ce985_90x90.jpg', 'B____nh____RAM_4f144951f1706.jpg', 'Y', 1326427696, 1326729553, 'managed', 1, 'flypage.tpl', 17);
INSERT INTO `jos_vm_category` VALUES (25, 1, 'HDD - Ổ đĩa cứng', '', 'resized/HDD___________a__4f144b465e589_90x90.jpg', 'HDD___________a__4f144b46724d9.jpg', 'Y', 1326427757, 1326730054, 'managed', 1, 'flypage.tpl', 18);
INSERT INTO `jos_vm_category` VALUES (26, 1, 'VGA  Card', '', 'resized/VGA__Card_4f144bb21e339_90x90.jpg', 'VGA__Card_4f144bb22d097.jpg', 'Y', 1326427806, 1326730162, 'managed', 1, 'flypage.tpl', 19);
INSERT INTO `jos_vm_category` VALUES (27, 1, 'Sound Card', '', 'resized/Sound_Card_4f144c028ca91_90x90.jpg', 'Sound_Card_4f144c02a0816.jpg', 'Y', 1326427838, 1326730242, 'managed', 1, 'flypage.tpl', 20);
INSERT INTO `jos_vm_category` VALUES (28, 1, 'Ổ đĩa quang', '', 'resized/________a_quang_4f144c829e72c_90x90.jpg', '________a_quang_4f144c82ade3f.jpg', 'Y', 1326427897, 1326730370, 'managed', 1, 'flypage.tpl', 21);
INSERT INTO `jos_vm_category` VALUES (29, 1, 'Power - Bộ nguồn', '', 'resized/Power___B____ngu_4f144d78081bf_90x90.jpg', 'Power___B____ngu_4f144d7814990.jpg', 'Y', 1326427946, 1326730615, 'managed', 1, 'flypage.tpl', 22);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_category_xref`
-- 

CREATE TABLE `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  `category_list` int(11) default NULL,
  PRIMARY KEY  (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

-- 
-- Dumping data for table `jos_vm_category_xref`
-- 

INSERT INTO `jos_vm_category_xref` VALUES (0, 14, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 13, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 12, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 11, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 15, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 17, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 18, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 19, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 20, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 22, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 23, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 24, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 25, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 26, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 27, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 28, NULL);
INSERT INTO `jos_vm_category_xref` VALUES (0, 29, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_country`
-- 

CREATE TABLE `jos_vm_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL default '1',
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Country records' AUTO_INCREMENT=245 ;

-- 
-- Dumping data for table `jos_vm_country`
-- 

INSERT INTO `jos_vm_country` VALUES (1, 1, 'Afghanistan', 'AFG', 'AF');
INSERT INTO `jos_vm_country` VALUES (2, 1, 'Albania', 'ALB', 'AL');
INSERT INTO `jos_vm_country` VALUES (3, 1, 'Algeria', 'DZA', 'DZ');
INSERT INTO `jos_vm_country` VALUES (4, 1, 'American Samoa', 'ASM', 'AS');
INSERT INTO `jos_vm_country` VALUES (5, 1, 'Andorra', 'AND', 'AD');
INSERT INTO `jos_vm_country` VALUES (6, 1, 'Angola', 'AGO', 'AO');
INSERT INTO `jos_vm_country` VALUES (7, 1, 'Anguilla', 'AIA', 'AI');
INSERT INTO `jos_vm_country` VALUES (8, 1, 'Antarctica', 'ATA', 'AQ');
INSERT INTO `jos_vm_country` VALUES (9, 1, 'Antigua and Barbuda', 'ATG', 'AG');
INSERT INTO `jos_vm_country` VALUES (10, 1, 'Argentina', 'ARG', 'AR');
INSERT INTO `jos_vm_country` VALUES (11, 1, 'Armenia', 'ARM', 'AM');
INSERT INTO `jos_vm_country` VALUES (12, 1, 'Aruba', 'ABW', 'AW');
INSERT INTO `jos_vm_country` VALUES (13, 1, 'Australia', 'AUS', 'AU');
INSERT INTO `jos_vm_country` VALUES (14, 1, 'Austria', 'AUT', 'AT');
INSERT INTO `jos_vm_country` VALUES (15, 1, 'Azerbaijan', 'AZE', 'AZ');
INSERT INTO `jos_vm_country` VALUES (16, 1, 'Bahamas', 'BHS', 'BS');
INSERT INTO `jos_vm_country` VALUES (17, 1, 'Bahrain', 'BHR', 'BH');
INSERT INTO `jos_vm_country` VALUES (18, 1, 'Bangladesh', 'BGD', 'BD');
INSERT INTO `jos_vm_country` VALUES (19, 1, 'Barbados', 'BRB', 'BB');
INSERT INTO `jos_vm_country` VALUES (20, 1, 'Belarus', 'BLR', 'BY');
INSERT INTO `jos_vm_country` VALUES (21, 1, 'Belgium', 'BEL', 'BE');
INSERT INTO `jos_vm_country` VALUES (22, 1, 'Belize', 'BLZ', 'BZ');
INSERT INTO `jos_vm_country` VALUES (23, 1, 'Benin', 'BEN', 'BJ');
INSERT INTO `jos_vm_country` VALUES (24, 1, 'Bermuda', 'BMU', 'BM');
INSERT INTO `jos_vm_country` VALUES (25, 1, 'Bhutan', 'BTN', 'BT');
INSERT INTO `jos_vm_country` VALUES (26, 1, 'Bolivia', 'BOL', 'BO');
INSERT INTO `jos_vm_country` VALUES (27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA');
INSERT INTO `jos_vm_country` VALUES (28, 1, 'Botswana', 'BWA', 'BW');
INSERT INTO `jos_vm_country` VALUES (29, 1, 'Bouvet Island', 'BVT', 'BV');
INSERT INTO `jos_vm_country` VALUES (30, 1, 'Brazil', 'BRA', 'BR');
INSERT INTO `jos_vm_country` VALUES (31, 1, 'British Indian Ocean Territory', 'IOT', 'IO');
INSERT INTO `jos_vm_country` VALUES (32, 1, 'Brunei Darussalam', 'BRN', 'BN');
INSERT INTO `jos_vm_country` VALUES (33, 1, 'Bulgaria', 'BGR', 'BG');
INSERT INTO `jos_vm_country` VALUES (34, 1, 'Burkina Faso', 'BFA', 'BF');
INSERT INTO `jos_vm_country` VALUES (35, 1, 'Burundi', 'BDI', 'BI');
INSERT INTO `jos_vm_country` VALUES (36, 1, 'Cambodia', 'KHM', 'KH');
INSERT INTO `jos_vm_country` VALUES (37, 1, 'Cameroon', 'CMR', 'CM');
INSERT INTO `jos_vm_country` VALUES (38, 1, 'Canada', 'CAN', 'CA');
INSERT INTO `jos_vm_country` VALUES (39, 1, 'Cape Verde', 'CPV', 'CV');
INSERT INTO `jos_vm_country` VALUES (40, 1, 'Cayman Islands', 'CYM', 'KY');
INSERT INTO `jos_vm_country` VALUES (41, 1, 'Central African Republic', 'CAF', 'CF');
INSERT INTO `jos_vm_country` VALUES (42, 1, 'Chad', 'TCD', 'TD');
INSERT INTO `jos_vm_country` VALUES (43, 1, 'Chile', 'CHL', 'CL');
INSERT INTO `jos_vm_country` VALUES (44, 1, 'China', 'CHN', 'CN');
INSERT INTO `jos_vm_country` VALUES (45, 1, 'Christmas Island', 'CXR', 'CX');
INSERT INTO `jos_vm_country` VALUES (46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC');
INSERT INTO `jos_vm_country` VALUES (47, 1, 'Colombia', 'COL', 'CO');
INSERT INTO `jos_vm_country` VALUES (48, 1, 'Comoros', 'COM', 'KM');
INSERT INTO `jos_vm_country` VALUES (49, 1, 'Congo', 'COG', 'CG');
INSERT INTO `jos_vm_country` VALUES (50, 1, 'Cook Islands', 'COK', 'CK');
INSERT INTO `jos_vm_country` VALUES (51, 1, 'Costa Rica', 'CRI', 'CR');
INSERT INTO `jos_vm_country` VALUES (52, 1, 'Cote D''Ivoire', 'CIV', 'CI');
INSERT INTO `jos_vm_country` VALUES (53, 1, 'Croatia', 'HRV', 'HR');
INSERT INTO `jos_vm_country` VALUES (54, 1, 'Cuba', 'CUB', 'CU');
INSERT INTO `jos_vm_country` VALUES (55, 1, 'Cyprus', 'CYP', 'CY');
INSERT INTO `jos_vm_country` VALUES (56, 1, 'Czech Republic', 'CZE', 'CZ');
INSERT INTO `jos_vm_country` VALUES (57, 1, 'Denmark', 'DNK', 'DK');
INSERT INTO `jos_vm_country` VALUES (58, 1, 'Djibouti', 'DJI', 'DJ');
INSERT INTO `jos_vm_country` VALUES (59, 1, 'Dominica', 'DMA', 'DM');
INSERT INTO `jos_vm_country` VALUES (60, 1, 'Dominican Republic', 'DOM', 'DO');
INSERT INTO `jos_vm_country` VALUES (61, 1, 'East Timor', 'TMP', 'TP');
INSERT INTO `jos_vm_country` VALUES (62, 1, 'Ecuador', 'ECU', 'EC');
INSERT INTO `jos_vm_country` VALUES (63, 1, 'Egypt', 'EGY', 'EG');
INSERT INTO `jos_vm_country` VALUES (64, 1, 'El Salvador', 'SLV', 'SV');
INSERT INTO `jos_vm_country` VALUES (65, 1, 'Equatorial Guinea', 'GNQ', 'GQ');
INSERT INTO `jos_vm_country` VALUES (66, 1, 'Eritrea', 'ERI', 'ER');
INSERT INTO `jos_vm_country` VALUES (67, 1, 'Estonia', 'EST', 'EE');
INSERT INTO `jos_vm_country` VALUES (68, 1, 'Ethiopia', 'ETH', 'ET');
INSERT INTO `jos_vm_country` VALUES (69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK');
INSERT INTO `jos_vm_country` VALUES (70, 1, 'Faroe Islands', 'FRO', 'FO');
INSERT INTO `jos_vm_country` VALUES (71, 1, 'Fiji', 'FJI', 'FJ');
INSERT INTO `jos_vm_country` VALUES (72, 1, 'Finland', 'FIN', 'FI');
INSERT INTO `jos_vm_country` VALUES (73, 1, 'France', 'FRA', 'FR');
INSERT INTO `jos_vm_country` VALUES (74, 1, 'France, Metropolitan', 'FXX', 'FX');
INSERT INTO `jos_vm_country` VALUES (75, 1, 'French Guiana', 'GUF', 'GF');
INSERT INTO `jos_vm_country` VALUES (76, 1, 'French Polynesia', 'PYF', 'PF');
INSERT INTO `jos_vm_country` VALUES (77, 1, 'French Southern Territories', 'ATF', 'TF');
INSERT INTO `jos_vm_country` VALUES (78, 1, 'Gabon', 'GAB', 'GA');
INSERT INTO `jos_vm_country` VALUES (79, 1, 'Gambia', 'GMB', 'GM');
INSERT INTO `jos_vm_country` VALUES (80, 1, 'Georgia', 'GEO', 'GE');
INSERT INTO `jos_vm_country` VALUES (81, 1, 'Germany', 'DEU', 'DE');
INSERT INTO `jos_vm_country` VALUES (82, 1, 'Ghana', 'GHA', 'GH');
INSERT INTO `jos_vm_country` VALUES (83, 1, 'Gibraltar', 'GIB', 'GI');
INSERT INTO `jos_vm_country` VALUES (84, 1, 'Greece', 'GRC', 'GR');
INSERT INTO `jos_vm_country` VALUES (85, 1, 'Greenland', 'GRL', 'GL');
INSERT INTO `jos_vm_country` VALUES (86, 1, 'Grenada', 'GRD', 'GD');
INSERT INTO `jos_vm_country` VALUES (87, 1, 'Guadeloupe', 'GLP', 'GP');
INSERT INTO `jos_vm_country` VALUES (88, 1, 'Guam', 'GUM', 'GU');
INSERT INTO `jos_vm_country` VALUES (89, 1, 'Guatemala', 'GTM', 'GT');
INSERT INTO `jos_vm_country` VALUES (90, 1, 'Guinea', 'GIN', 'GN');
INSERT INTO `jos_vm_country` VALUES (91, 1, 'Guinea-bissau', 'GNB', 'GW');
INSERT INTO `jos_vm_country` VALUES (92, 1, 'Guyana', 'GUY', 'GY');
INSERT INTO `jos_vm_country` VALUES (93, 1, 'Haiti', 'HTI', 'HT');
INSERT INTO `jos_vm_country` VALUES (94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM');
INSERT INTO `jos_vm_country` VALUES (95, 1, 'Honduras', 'HND', 'HN');
INSERT INTO `jos_vm_country` VALUES (96, 1, 'Hong Kong', 'HKG', 'HK');
INSERT INTO `jos_vm_country` VALUES (97, 1, 'Hungary', 'HUN', 'HU');
INSERT INTO `jos_vm_country` VALUES (98, 1, 'Iceland', 'ISL', 'IS');
INSERT INTO `jos_vm_country` VALUES (99, 1, 'India', 'IND', 'IN');
INSERT INTO `jos_vm_country` VALUES (100, 1, 'Indonesia', 'IDN', 'ID');
INSERT INTO `jos_vm_country` VALUES (101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR');
INSERT INTO `jos_vm_country` VALUES (102, 1, 'Iraq', 'IRQ', 'IQ');
INSERT INTO `jos_vm_country` VALUES (103, 1, 'Ireland', 'IRL', 'IE');
INSERT INTO `jos_vm_country` VALUES (104, 1, 'Israel', 'ISR', 'IL');
INSERT INTO `jos_vm_country` VALUES (105, 1, 'Italy', 'ITA', 'IT');
INSERT INTO `jos_vm_country` VALUES (106, 1, 'Jamaica', 'JAM', 'JM');
INSERT INTO `jos_vm_country` VALUES (107, 1, 'Japan', 'JPN', 'JP');
INSERT INTO `jos_vm_country` VALUES (108, 1, 'Jordan', 'JOR', 'JO');
INSERT INTO `jos_vm_country` VALUES (109, 1, 'Kazakhstan', 'KAZ', 'KZ');
INSERT INTO `jos_vm_country` VALUES (110, 1, 'Kenya', 'KEN', 'KE');
INSERT INTO `jos_vm_country` VALUES (111, 1, 'Kiribati', 'KIR', 'KI');
INSERT INTO `jos_vm_country` VALUES (112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP');
INSERT INTO `jos_vm_country` VALUES (113, 1, 'Korea, Republic of', 'KOR', 'KR');
INSERT INTO `jos_vm_country` VALUES (114, 1, 'Kuwait', 'KWT', 'KW');
INSERT INTO `jos_vm_country` VALUES (115, 1, 'Kyrgyzstan', 'KGZ', 'KG');
INSERT INTO `jos_vm_country` VALUES (116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA');
INSERT INTO `jos_vm_country` VALUES (117, 1, 'Latvia', 'LVA', 'LV');
INSERT INTO `jos_vm_country` VALUES (118, 1, 'Lebanon', 'LBN', 'LB');
INSERT INTO `jos_vm_country` VALUES (119, 1, 'Lesotho', 'LSO', 'LS');
INSERT INTO `jos_vm_country` VALUES (120, 1, 'Liberia', 'LBR', 'LR');
INSERT INTO `jos_vm_country` VALUES (121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY');
INSERT INTO `jos_vm_country` VALUES (122, 1, 'Liechtenstein', 'LIE', 'LI');
INSERT INTO `jos_vm_country` VALUES (123, 1, 'Lithuania', 'LTU', 'LT');
INSERT INTO `jos_vm_country` VALUES (124, 1, 'Luxembourg', 'LUX', 'LU');
INSERT INTO `jos_vm_country` VALUES (125, 1, 'Macau', 'MAC', 'MO');
INSERT INTO `jos_vm_country` VALUES (126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK');
INSERT INTO `jos_vm_country` VALUES (127, 1, 'Madagascar', 'MDG', 'MG');
INSERT INTO `jos_vm_country` VALUES (128, 1, 'Malawi', 'MWI', 'MW');
INSERT INTO `jos_vm_country` VALUES (129, 1, 'Malaysia', 'MYS', 'MY');
INSERT INTO `jos_vm_country` VALUES (130, 1, 'Maldives', 'MDV', 'MV');
INSERT INTO `jos_vm_country` VALUES (131, 1, 'Mali', 'MLI', 'ML');
INSERT INTO `jos_vm_country` VALUES (132, 1, 'Malta', 'MLT', 'MT');
INSERT INTO `jos_vm_country` VALUES (133, 1, 'Marshall Islands', 'MHL', 'MH');
INSERT INTO `jos_vm_country` VALUES (134, 1, 'Martinique', 'MTQ', 'MQ');
INSERT INTO `jos_vm_country` VALUES (135, 1, 'Mauritania', 'MRT', 'MR');
INSERT INTO `jos_vm_country` VALUES (136, 1, 'Mauritius', 'MUS', 'MU');
INSERT INTO `jos_vm_country` VALUES (137, 1, 'Mayotte', 'MYT', 'YT');
INSERT INTO `jos_vm_country` VALUES (138, 1, 'Mexico', 'MEX', 'MX');
INSERT INTO `jos_vm_country` VALUES (139, 1, 'Micronesia, Federated States of', 'FSM', 'FM');
INSERT INTO `jos_vm_country` VALUES (140, 1, 'Moldova, Republic of', 'MDA', 'MD');
INSERT INTO `jos_vm_country` VALUES (141, 1, 'Monaco', 'MCO', 'MC');
INSERT INTO `jos_vm_country` VALUES (142, 1, 'Mongolia', 'MNG', 'MN');
INSERT INTO `jos_vm_country` VALUES (143, 1, 'Montserrat', 'MSR', 'MS');
INSERT INTO `jos_vm_country` VALUES (144, 1, 'Morocco', 'MAR', 'MA');
INSERT INTO `jos_vm_country` VALUES (145, 1, 'Mozambique', 'MOZ', 'MZ');
INSERT INTO `jos_vm_country` VALUES (146, 1, 'Myanmar', 'MMR', 'MM');
INSERT INTO `jos_vm_country` VALUES (147, 1, 'Namibia', 'NAM', 'NA');
INSERT INTO `jos_vm_country` VALUES (148, 1, 'Nauru', 'NRU', 'NR');
INSERT INTO `jos_vm_country` VALUES (149, 1, 'Nepal', 'NPL', 'NP');
INSERT INTO `jos_vm_country` VALUES (150, 1, 'Netherlands', 'NLD', 'NL');
INSERT INTO `jos_vm_country` VALUES (151, 1, 'Netherlands Antilles', 'ANT', 'AN');
INSERT INTO `jos_vm_country` VALUES (152, 1, 'New Caledonia', 'NCL', 'NC');
INSERT INTO `jos_vm_country` VALUES (153, 1, 'New Zealand', 'NZL', 'NZ');
INSERT INTO `jos_vm_country` VALUES (154, 1, 'Nicaragua', 'NIC', 'NI');
INSERT INTO `jos_vm_country` VALUES (155, 1, 'Niger', 'NER', 'NE');
INSERT INTO `jos_vm_country` VALUES (156, 1, 'Nigeria', 'NGA', 'NG');
INSERT INTO `jos_vm_country` VALUES (157, 1, 'Niue', 'NIU', 'NU');
INSERT INTO `jos_vm_country` VALUES (158, 1, 'Norfolk Island', 'NFK', 'NF');
INSERT INTO `jos_vm_country` VALUES (159, 1, 'Northern Mariana Islands', 'MNP', 'MP');
INSERT INTO `jos_vm_country` VALUES (160, 1, 'Norway', 'NOR', 'NO');
INSERT INTO `jos_vm_country` VALUES (161, 1, 'Oman', 'OMN', 'OM');
INSERT INTO `jos_vm_country` VALUES (162, 1, 'Pakistan', 'PAK', 'PK');
INSERT INTO `jos_vm_country` VALUES (163, 1, 'Palau', 'PLW', 'PW');
INSERT INTO `jos_vm_country` VALUES (164, 1, 'Panama', 'PAN', 'PA');
INSERT INTO `jos_vm_country` VALUES (165, 1, 'Papua New Guinea', 'PNG', 'PG');
INSERT INTO `jos_vm_country` VALUES (166, 1, 'Paraguay', 'PRY', 'PY');
INSERT INTO `jos_vm_country` VALUES (167, 1, 'Peru', 'PER', 'PE');
INSERT INTO `jos_vm_country` VALUES (168, 1, 'Philippines', 'PHL', 'PH');
INSERT INTO `jos_vm_country` VALUES (169, 1, 'Pitcairn', 'PCN', 'PN');
INSERT INTO `jos_vm_country` VALUES (170, 1, 'Poland', 'POL', 'PL');
INSERT INTO `jos_vm_country` VALUES (171, 1, 'Portugal', 'PRT', 'PT');
INSERT INTO `jos_vm_country` VALUES (172, 1, 'Puerto Rico', 'PRI', 'PR');
INSERT INTO `jos_vm_country` VALUES (173, 1, 'Qatar', 'QAT', 'QA');
INSERT INTO `jos_vm_country` VALUES (174, 1, 'Reunion', 'REU', 'RE');
INSERT INTO `jos_vm_country` VALUES (175, 1, 'Romania', 'ROM', 'RO');
INSERT INTO `jos_vm_country` VALUES (176, 1, 'Russian Federation', 'RUS', 'RU');
INSERT INTO `jos_vm_country` VALUES (177, 1, 'Rwanda', 'RWA', 'RW');
INSERT INTO `jos_vm_country` VALUES (178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN');
INSERT INTO `jos_vm_country` VALUES (179, 1, 'Saint Lucia', 'LCA', 'LC');
INSERT INTO `jos_vm_country` VALUES (180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC');
INSERT INTO `jos_vm_country` VALUES (181, 1, 'Samoa', 'WSM', 'WS');
INSERT INTO `jos_vm_country` VALUES (182, 1, 'San Marino', 'SMR', 'SM');
INSERT INTO `jos_vm_country` VALUES (183, 1, 'Sao Tome and Principe', 'STP', 'ST');
INSERT INTO `jos_vm_country` VALUES (184, 1, 'Saudi Arabia', 'SAU', 'SA');
INSERT INTO `jos_vm_country` VALUES (185, 1, 'Senegal', 'SEN', 'SN');
INSERT INTO `jos_vm_country` VALUES (186, 1, 'Seychelles', 'SYC', 'SC');
INSERT INTO `jos_vm_country` VALUES (187, 1, 'Sierra Leone', 'SLE', 'SL');
INSERT INTO `jos_vm_country` VALUES (188, 1, 'Singapore', 'SGP', 'SG');
INSERT INTO `jos_vm_country` VALUES (189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK');
INSERT INTO `jos_vm_country` VALUES (190, 1, 'Slovenia', 'SVN', 'SI');
INSERT INTO `jos_vm_country` VALUES (191, 1, 'Solomon Islands', 'SLB', 'SB');
INSERT INTO `jos_vm_country` VALUES (192, 1, 'Somalia', 'SOM', 'SO');
INSERT INTO `jos_vm_country` VALUES (193, 1, 'South Africa', 'ZAF', 'ZA');
INSERT INTO `jos_vm_country` VALUES (194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS');
INSERT INTO `jos_vm_country` VALUES (195, 1, 'Spain', 'ESP', 'ES');
INSERT INTO `jos_vm_country` VALUES (196, 1, 'Sri Lanka', 'LKA', 'LK');
INSERT INTO `jos_vm_country` VALUES (197, 1, 'St. Helena', 'SHN', 'SH');
INSERT INTO `jos_vm_country` VALUES (198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM');
INSERT INTO `jos_vm_country` VALUES (199, 1, 'Sudan', 'SDN', 'SD');
INSERT INTO `jos_vm_country` VALUES (200, 1, 'Suriname', 'SUR', 'SR');
INSERT INTO `jos_vm_country` VALUES (201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ');
INSERT INTO `jos_vm_country` VALUES (202, 1, 'Swaziland', 'SWZ', 'SZ');
INSERT INTO `jos_vm_country` VALUES (203, 1, 'Sweden', 'SWE', 'SE');
INSERT INTO `jos_vm_country` VALUES (204, 1, 'Switzerland', 'CHE', 'CH');
INSERT INTO `jos_vm_country` VALUES (205, 1, 'Syrian Arab Republic', 'SYR', 'SY');
INSERT INTO `jos_vm_country` VALUES (206, 1, 'Taiwan', 'TWN', 'TW');
INSERT INTO `jos_vm_country` VALUES (207, 1, 'Tajikistan', 'TJK', 'TJ');
INSERT INTO `jos_vm_country` VALUES (208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ');
INSERT INTO `jos_vm_country` VALUES (209, 1, 'Thailand', 'THA', 'TH');
INSERT INTO `jos_vm_country` VALUES (210, 1, 'Togo', 'TGO', 'TG');
INSERT INTO `jos_vm_country` VALUES (211, 1, 'Tokelau', 'TKL', 'TK');
INSERT INTO `jos_vm_country` VALUES (212, 1, 'Tonga', 'TON', 'TO');
INSERT INTO `jos_vm_country` VALUES (213, 1, 'Trinidad and Tobago', 'TTO', 'TT');
INSERT INTO `jos_vm_country` VALUES (214, 1, 'Tunisia', 'TUN', 'TN');
INSERT INTO `jos_vm_country` VALUES (215, 1, 'Turkey', 'TUR', 'TR');
INSERT INTO `jos_vm_country` VALUES (216, 1, 'Turkmenistan', 'TKM', 'TM');
INSERT INTO `jos_vm_country` VALUES (217, 1, 'Turks and Caicos Islands', 'TCA', 'TC');
INSERT INTO `jos_vm_country` VALUES (218, 1, 'Tuvalu', 'TUV', 'TV');
INSERT INTO `jos_vm_country` VALUES (219, 1, 'Uganda', 'UGA', 'UG');
INSERT INTO `jos_vm_country` VALUES (220, 1, 'Ukraine', 'UKR', 'UA');
INSERT INTO `jos_vm_country` VALUES (221, 1, 'United Arab Emirates', 'ARE', 'AE');
INSERT INTO `jos_vm_country` VALUES (222, 1, 'United Kingdom', 'GBR', 'GB');
INSERT INTO `jos_vm_country` VALUES (223, 1, 'United States', 'USA', 'US');
INSERT INTO `jos_vm_country` VALUES (224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM');
INSERT INTO `jos_vm_country` VALUES (225, 1, 'Uruguay', 'URY', 'UY');
INSERT INTO `jos_vm_country` VALUES (226, 1, 'Uzbekistan', 'UZB', 'UZ');
INSERT INTO `jos_vm_country` VALUES (227, 1, 'Vanuatu', 'VUT', 'VU');
INSERT INTO `jos_vm_country` VALUES (228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA');
INSERT INTO `jos_vm_country` VALUES (229, 1, 'Venezuela', 'VEN', 'VE');
INSERT INTO `jos_vm_country` VALUES (230, 1, 'Viet Nam', 'VNM', 'VN');
INSERT INTO `jos_vm_country` VALUES (231, 1, 'Virgin Islands (British)', 'VGB', 'VG');
INSERT INTO `jos_vm_country` VALUES (232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI');
INSERT INTO `jos_vm_country` VALUES (233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF');
INSERT INTO `jos_vm_country` VALUES (234, 1, 'Western Sahara', 'ESH', 'EH');
INSERT INTO `jos_vm_country` VALUES (235, 1, 'Yemen', 'YEM', 'YE');
INSERT INTO `jos_vm_country` VALUES (236, 1, 'Yugoslavia', 'YUG', 'YU');
INSERT INTO `jos_vm_country` VALUES (237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC');
INSERT INTO `jos_vm_country` VALUES (238, 1, 'Zambia', 'ZMB', 'ZM');
INSERT INTO `jos_vm_country` VALUES (239, 1, 'Zimbabwe', 'ZWE', 'ZW');
INSERT INTO `jos_vm_country` VALUES (240, 1, 'East Timor', 'XET', 'XE');
INSERT INTO `jos_vm_country` VALUES (241, 1, 'Jersey', 'XJE', 'XJ');
INSERT INTO `jos_vm_country` VALUES (242, 1, 'St. Barthelemy', 'XSB', 'XB');
INSERT INTO `jos_vm_country` VALUES (243, 1, 'St. Eustatius', 'XSE', 'XU');
INSERT INTO `jos_vm_country` VALUES (244, 1, 'Canary Islands', 'XCA', 'XC');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_coupons`
-- 

CREATE TABLE `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` enum('percent','total') NOT NULL default 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL default 'gift',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_coupons`
-- 

INSERT INTO `jos_vm_coupons` VALUES (1, 'test1', 'total', 'gift', 6.00);
INSERT INTO `jos_vm_coupons` VALUES (2, 'test2', 'percent', 'permanent', 15.00);
INSERT INTO `jos_vm_coupons` VALUES (3, 'test3', 'total', 'permanent', 4.00);
INSERT INTO `jos_vm_coupons` VALUES (4, 'test4', 'total', 'gift', 15.00);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_creditcard`
-- 

CREATE TABLE `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `creditcard_name` varchar(70) NOT NULL default '',
  `creditcard_code` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_vm_creditcard`
-- 

INSERT INTO `jos_vm_creditcard` VALUES (1, 1, 'Visa', 'VISA');
INSERT INTO `jos_vm_creditcard` VALUES (2, 1, 'MasterCard', 'MC');
INSERT INTO `jos_vm_creditcard` VALUES (3, 1, 'American Express', 'amex');
INSERT INTO `jos_vm_creditcard` VALUES (4, 1, 'Discover Card', 'discover');
INSERT INTO `jos_vm_creditcard` VALUES (5, 1, 'Diners Club', 'diners');
INSERT INTO `jos_vm_creditcard` VALUES (6, 1, 'JCB', 'jcb');
INSERT INTO `jos_vm_creditcard` VALUES (7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_csv`
-- 

CREATE TABLE `jos_vm_csv` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_name` varchar(128) NOT NULL default '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL default '0',
  `field_required` char(1) default 'N',
  PRIMARY KEY  (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `jos_vm_csv`
-- 

INSERT INTO `jos_vm_csv` VALUES (1, 'product_sku', '', 1, 'Y');
INSERT INTO `jos_vm_csv` VALUES (2, 'product_s_desc', '', 5, 'N');
INSERT INTO `jos_vm_csv` VALUES (3, 'product_desc', '', 6, 'N');
INSERT INTO `jos_vm_csv` VALUES (4, 'product_thumb_image', '', 7, 'N');
INSERT INTO `jos_vm_csv` VALUES (5, 'product_full_image', '', 8, 'N');
INSERT INTO `jos_vm_csv` VALUES (6, 'product_weight', '', 9, 'N');
INSERT INTO `jos_vm_csv` VALUES (7, 'product_weight_uom', 'KG', 10, 'N');
INSERT INTO `jos_vm_csv` VALUES (8, 'product_length', '', 11, 'N');
INSERT INTO `jos_vm_csv` VALUES (9, 'product_width', '', 12, 'N');
INSERT INTO `jos_vm_csv` VALUES (10, 'product_height', '', 13, 'N');
INSERT INTO `jos_vm_csv` VALUES (11, 'product_lwh_uom', '', 14, 'N');
INSERT INTO `jos_vm_csv` VALUES (12, 'product_in_stock', '0', 15, 'N');
INSERT INTO `jos_vm_csv` VALUES (13, 'product_available_date', '', 16, 'N');
INSERT INTO `jos_vm_csv` VALUES (14, 'product_discount_id', '', 17, 'N');
INSERT INTO `jos_vm_csv` VALUES (15, 'product_name', '', 2, 'Y');
INSERT INTO `jos_vm_csv` VALUES (16, 'product_price', '', 4, 'N');
INSERT INTO `jos_vm_csv` VALUES (17, 'category_path', '', 3, 'Y');
INSERT INTO `jos_vm_csv` VALUES (18, 'manufacturer_id', '', 18, 'N');
INSERT INTO `jos_vm_csv` VALUES (19, 'product_tax_id', '', 19, 'N');
INSERT INTO `jos_vm_csv` VALUES (20, 'product_sales', '', 20, 'N');
INSERT INTO `jos_vm_csv` VALUES (21, 'product_parent_id', '0', 21, 'N');
INSERT INTO `jos_vm_csv` VALUES (22, 'attribute', '', 22, 'N');
INSERT INTO `jos_vm_csv` VALUES (23, 'custom_attribute', '', 23, 'N');
INSERT INTO `jos_vm_csv` VALUES (24, 'attributes', '', 24, 'N');
INSERT INTO `jos_vm_csv` VALUES (25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_currency`
-- 

CREATE TABLE `jos_vm_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

-- 
-- Dumping data for table `jos_vm_currency`
-- 

INSERT INTO `jos_vm_currency` VALUES (1, 'Andorran Peseta', 'ADP');
INSERT INTO `jos_vm_currency` VALUES (2, 'United Arab Emirates Dirham', 'AED');
INSERT INTO `jos_vm_currency` VALUES (3, 'Afghanistan Afghani', 'AFA');
INSERT INTO `jos_vm_currency` VALUES (4, 'Albanian Lek', 'ALL');
INSERT INTO `jos_vm_currency` VALUES (5, 'Netherlands Antillian Guilder', 'ANG');
INSERT INTO `jos_vm_currency` VALUES (6, 'Angolan Kwanza', 'AOK');
INSERT INTO `jos_vm_currency` VALUES (7, 'Argentine Peso', 'ARS');
INSERT INTO `jos_vm_currency` VALUES (9, 'Australian Dollar', 'AUD');
INSERT INTO `jos_vm_currency` VALUES (10, 'Aruban Florin', 'AWG');
INSERT INTO `jos_vm_currency` VALUES (11, 'Barbados Dollar', 'BBD');
INSERT INTO `jos_vm_currency` VALUES (12, 'Bangladeshi Taka', 'BDT');
INSERT INTO `jos_vm_currency` VALUES (14, 'Bulgarian Lev', 'BGL');
INSERT INTO `jos_vm_currency` VALUES (15, 'Bahraini Dinar', 'BHD');
INSERT INTO `jos_vm_currency` VALUES (16, 'Burundi Franc', 'BIF');
INSERT INTO `jos_vm_currency` VALUES (17, 'Bermudian Dollar', 'BMD');
INSERT INTO `jos_vm_currency` VALUES (18, 'Brunei Dollar', 'BND');
INSERT INTO `jos_vm_currency` VALUES (19, 'Bolivian Boliviano', 'BOB');
INSERT INTO `jos_vm_currency` VALUES (20, 'Brazilian Real', 'BRL');
INSERT INTO `jos_vm_currency` VALUES (21, 'Bahamian Dollar', 'BSD');
INSERT INTO `jos_vm_currency` VALUES (22, 'Bhutan Ngultrum', 'BTN');
INSERT INTO `jos_vm_currency` VALUES (23, 'Burma Kyat', 'BUK');
INSERT INTO `jos_vm_currency` VALUES (24, 'Botswanian Pula', 'BWP');
INSERT INTO `jos_vm_currency` VALUES (25, 'Belize Dollar', 'BZD');
INSERT INTO `jos_vm_currency` VALUES (26, 'Canadian Dollar', 'CAD');
INSERT INTO `jos_vm_currency` VALUES (27, 'Swiss Franc', 'CHF');
INSERT INTO `jos_vm_currency` VALUES (28, 'Chilean Unidades de Fomento', 'CLF');
INSERT INTO `jos_vm_currency` VALUES (29, 'Chilean Peso', 'CLP');
INSERT INTO `jos_vm_currency` VALUES (30, 'Yuan (Chinese) Renminbi', 'CNY');
INSERT INTO `jos_vm_currency` VALUES (31, 'Colombian Peso', 'COP');
INSERT INTO `jos_vm_currency` VALUES (32, 'Costa Rican Colon', 'CRC');
INSERT INTO `jos_vm_currency` VALUES (33, 'Czech Koruna', 'CZK');
INSERT INTO `jos_vm_currency` VALUES (34, 'Cuban Peso', 'CUP');
INSERT INTO `jos_vm_currency` VALUES (35, 'Cape Verde Escudo', 'CVE');
INSERT INTO `jos_vm_currency` VALUES (36, 'Cyprus Pound', 'CYP');
INSERT INTO `jos_vm_currency` VALUES (40, 'Danish Krone', 'DKK');
INSERT INTO `jos_vm_currency` VALUES (41, 'Dominican Peso', 'DOP');
INSERT INTO `jos_vm_currency` VALUES (42, 'Algerian Dinar', 'DZD');
INSERT INTO `jos_vm_currency` VALUES (43, 'Ecuador Sucre', 'ECS');
INSERT INTO `jos_vm_currency` VALUES (44, 'Egyptian Pound', 'EGP');
INSERT INTO `jos_vm_currency` VALUES (46, 'Ethiopian Birr', 'ETB');
INSERT INTO `jos_vm_currency` VALUES (47, 'Euro', 'EUR');
INSERT INTO `jos_vm_currency` VALUES (49, 'Fiji Dollar', 'FJD');
INSERT INTO `jos_vm_currency` VALUES (50, 'Falkland Islands Pound', 'FKP');
INSERT INTO `jos_vm_currency` VALUES (52, 'British Pound', 'GBP');
INSERT INTO `jos_vm_currency` VALUES (53, 'Ghanaian Cedi', 'GHC');
INSERT INTO `jos_vm_currency` VALUES (54, 'Gibraltar Pound', 'GIP');
INSERT INTO `jos_vm_currency` VALUES (55, 'Gambian Dalasi', 'GMD');
INSERT INTO `jos_vm_currency` VALUES (56, 'Guinea Franc', 'GNF');
INSERT INTO `jos_vm_currency` VALUES (58, 'Guatemalan Quetzal', 'GTQ');
INSERT INTO `jos_vm_currency` VALUES (59, 'Guinea-Bissau Peso', 'GWP');
INSERT INTO `jos_vm_currency` VALUES (60, 'Guyanan Dollar', 'GYD');
INSERT INTO `jos_vm_currency` VALUES (61, 'Hong Kong Dollar', 'HKD');
INSERT INTO `jos_vm_currency` VALUES (62, 'Honduran Lempira', 'HNL');
INSERT INTO `jos_vm_currency` VALUES (63, 'Haitian Gourde', 'HTG');
INSERT INTO `jos_vm_currency` VALUES (64, 'Hungarian Forint', 'HUF');
INSERT INTO `jos_vm_currency` VALUES (65, 'Indonesian Rupiah', 'IDR');
INSERT INTO `jos_vm_currency` VALUES (66, 'Irish Punt', 'IEP');
INSERT INTO `jos_vm_currency` VALUES (67, 'Israeli Shekel', 'ILS');
INSERT INTO `jos_vm_currency` VALUES (68, 'Indian Rupee', 'INR');
INSERT INTO `jos_vm_currency` VALUES (69, 'Iraqi Dinar', 'IQD');
INSERT INTO `jos_vm_currency` VALUES (70, 'Iranian Rial', 'IRR');
INSERT INTO `jos_vm_currency` VALUES (73, 'Jamaican Dollar', 'JMD');
INSERT INTO `jos_vm_currency` VALUES (74, 'Jordanian Dinar', 'JOD');
INSERT INTO `jos_vm_currency` VALUES (75, 'Japanese Yen', 'JPY');
INSERT INTO `jos_vm_currency` VALUES (76, 'Kenyan Schilling', 'KES');
INSERT INTO `jos_vm_currency` VALUES (77, 'Kampuchean (Cambodian) Riel', 'KHR');
INSERT INTO `jos_vm_currency` VALUES (78, 'Comoros Franc', 'KMF');
INSERT INTO `jos_vm_currency` VALUES (79, 'North Korean Won', 'KPW');
INSERT INTO `jos_vm_currency` VALUES (80, '(South) Korean Won', 'KRW');
INSERT INTO `jos_vm_currency` VALUES (81, 'Kuwaiti Dinar', 'KWD');
INSERT INTO `jos_vm_currency` VALUES (82, 'Cayman Islands Dollar', 'KYD');
INSERT INTO `jos_vm_currency` VALUES (83, 'Lao Kip', 'LAK');
INSERT INTO `jos_vm_currency` VALUES (84, 'Lebanese Pound', 'LBP');
INSERT INTO `jos_vm_currency` VALUES (85, 'Sri Lanka Rupee', 'LKR');
INSERT INTO `jos_vm_currency` VALUES (86, 'Liberian Dollar', 'LRD');
INSERT INTO `jos_vm_currency` VALUES (87, 'Lesotho Loti', 'LSL');
INSERT INTO `jos_vm_currency` VALUES (89, 'Libyan Dinar', 'LYD');
INSERT INTO `jos_vm_currency` VALUES (90, 'Moroccan Dirham', 'MAD');
INSERT INTO `jos_vm_currency` VALUES (91, 'Malagasy Franc', 'MGF');
INSERT INTO `jos_vm_currency` VALUES (92, 'Mongolian Tugrik', 'MNT');
INSERT INTO `jos_vm_currency` VALUES (93, 'Macau Pataca', 'MOP');
INSERT INTO `jos_vm_currency` VALUES (94, 'Mauritanian Ouguiya', 'MRO');
INSERT INTO `jos_vm_currency` VALUES (95, 'Maltese Lira', 'MTL');
INSERT INTO `jos_vm_currency` VALUES (96, 'Mauritius Rupee', 'MUR');
INSERT INTO `jos_vm_currency` VALUES (97, 'Maldive Rufiyaa', 'MVR');
INSERT INTO `jos_vm_currency` VALUES (98, 'Malawi Kwacha', 'MWK');
INSERT INTO `jos_vm_currency` VALUES (99, 'Mexican Peso', 'MXP');
INSERT INTO `jos_vm_currency` VALUES (100, 'Malaysian Ringgit', 'MYR');
INSERT INTO `jos_vm_currency` VALUES (101, 'Mozambique Metical', 'MZM');
INSERT INTO `jos_vm_currency` VALUES (102, 'Nigerian Naira', 'NGN');
INSERT INTO `jos_vm_currency` VALUES (103, 'Nicaraguan Cordoba', 'NIC');
INSERT INTO `jos_vm_currency` VALUES (105, 'Norwegian Kroner', 'NOK');
INSERT INTO `jos_vm_currency` VALUES (106, 'Nepalese Rupee', 'NPR');
INSERT INTO `jos_vm_currency` VALUES (107, 'New Zealand Dollar', 'NZD');
INSERT INTO `jos_vm_currency` VALUES (108, 'Omani Rial', 'OMR');
INSERT INTO `jos_vm_currency` VALUES (109, 'Panamanian Balboa', 'PAB');
INSERT INTO `jos_vm_currency` VALUES (110, 'Peruvian Nuevo Sol', 'PEN');
INSERT INTO `jos_vm_currency` VALUES (111, 'Papua New Guinea Kina', 'PGK');
INSERT INTO `jos_vm_currency` VALUES (112, 'Philippine Peso', 'PHP');
INSERT INTO `jos_vm_currency` VALUES (113, 'Pakistan Rupee', 'PKR');
INSERT INTO `jos_vm_currency` VALUES (114, 'Polish Zloty', 'PLZ');
INSERT INTO `jos_vm_currency` VALUES (116, 'Paraguay Guarani', 'PYG');
INSERT INTO `jos_vm_currency` VALUES (117, 'Qatari Rial', 'QAR');
INSERT INTO `jos_vm_currency` VALUES (118, 'Romanian Leu', 'RON');
INSERT INTO `jos_vm_currency` VALUES (119, 'Rwanda Franc', 'RWF');
INSERT INTO `jos_vm_currency` VALUES (120, 'Saudi Arabian Riyal', 'SAR');
INSERT INTO `jos_vm_currency` VALUES (121, 'Solomon Islands Dollar', 'SBD');
INSERT INTO `jos_vm_currency` VALUES (122, 'Seychelles Rupee', 'SCR');
INSERT INTO `jos_vm_currency` VALUES (123, 'Sudanese Pound', 'SDP');
INSERT INTO `jos_vm_currency` VALUES (124, 'Swedish Krona', 'SEK');
INSERT INTO `jos_vm_currency` VALUES (125, 'Singapore Dollar', 'SGD');
INSERT INTO `jos_vm_currency` VALUES (126, 'St. Helena Pound', 'SHP');
INSERT INTO `jos_vm_currency` VALUES (127, 'Sierra Leone Leone', 'SLL');
INSERT INTO `jos_vm_currency` VALUES (128, 'Somali Schilling', 'SOS');
INSERT INTO `jos_vm_currency` VALUES (129, 'Suriname Guilder', 'SRG');
INSERT INTO `jos_vm_currency` VALUES (130, 'Sao Tome and Principe Dobra', 'STD');
INSERT INTO `jos_vm_currency` VALUES (131, 'Russian Ruble', 'RUB');
INSERT INTO `jos_vm_currency` VALUES (132, 'El Salvador Colon', 'SVC');
INSERT INTO `jos_vm_currency` VALUES (133, 'Syrian Potmd', 'SYP');
INSERT INTO `jos_vm_currency` VALUES (134, 'Swaziland Lilangeni', 'SZL');
INSERT INTO `jos_vm_currency` VALUES (135, 'Thai Bath', 'THB');
INSERT INTO `jos_vm_currency` VALUES (136, 'Tunisian Dinar', 'TND');
INSERT INTO `jos_vm_currency` VALUES (137, 'Tongan Pa''anga', 'TOP');
INSERT INTO `jos_vm_currency` VALUES (138, 'East Timor Escudo', 'TPE');
INSERT INTO `jos_vm_currency` VALUES (139, 'Turkish Lira', 'TRL');
INSERT INTO `jos_vm_currency` VALUES (140, 'Trinidad and Tobago Dollar', 'TTD');
INSERT INTO `jos_vm_currency` VALUES (141, 'Taiwan Dollar', 'TWD');
INSERT INTO `jos_vm_currency` VALUES (142, 'Tanzanian Schilling', 'TZS');
INSERT INTO `jos_vm_currency` VALUES (143, 'Uganda Shilling', 'UGS');
INSERT INTO `jos_vm_currency` VALUES (144, 'US Dollar', 'USD');
INSERT INTO `jos_vm_currency` VALUES (145, 'Uruguayan Peso', 'UYP');
INSERT INTO `jos_vm_currency` VALUES (146, 'Venezualan Bolivar', 'VEB');
INSERT INTO `jos_vm_currency` VALUES (147, 'Vietnamese Dong', 'VND');
INSERT INTO `jos_vm_currency` VALUES (148, 'Vanuatu Vatu', 'VUV');
INSERT INTO `jos_vm_currency` VALUES (149, 'Samoan Tala', 'WST');
INSERT INTO `jos_vm_currency` VALUES (150, 'Democratic Yemeni Dinar', 'YDD');
INSERT INTO `jos_vm_currency` VALUES (151, 'Yemeni Rial', 'YER');
INSERT INTO `jos_vm_currency` VALUES (152, 'New Yugoslavia Dinar', 'YUD');
INSERT INTO `jos_vm_currency` VALUES (153, 'South African Rand', 'ZAR');
INSERT INTO `jos_vm_currency` VALUES (154, 'Zambian Kwacha', 'ZMK');
INSERT INTO `jos_vm_currency` VALUES (155, 'Zaire Zaire', 'ZRZ');
INSERT INTO `jos_vm_currency` VALUES (156, 'Zimbabwe Dollar', 'ZWD');
INSERT INTO `jos_vm_currency` VALUES (157, 'Slovak Koruna', 'SKK');
INSERT INTO `jos_vm_currency` VALUES (158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_export`
-- 

CREATE TABLE `jos_vm_export` (
  `export_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `export_name` varchar(255) default NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL default 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export Modules' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_export`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_function`
-- 

CREATE TABLE `jos_vm_function` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

-- 
-- Dumping data for table `jos_vm_function`
-- 

INSERT INTO `jos_vm_function` VALUES (1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (9, 1, 'userLogout', 'ps_user', 'logout', '', 'none');
INSERT INTO `jos_vm_function` VALUES (10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (16, 1, 'userLogin', 'ps_user', 'login', '', 'none');
INSERT INTO `jos_vm_function` VALUES (17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper');
INSERT INTO `jos_vm_function` VALUES (26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none');
INSERT INTO `jos_vm_function` VALUES (45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none');
INSERT INTO `jos_vm_function` VALUES (46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none');
INSERT INTO `jos_vm_function` VALUES (59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none');
INSERT INTO `jos_vm_function` VALUES (111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to phpshop.cfg.php', 'admin');
INSERT INTO `jos_vm_function` VALUES (116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin');
INSERT INTO `jos_vm_function` VALUES (121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none');
INSERT INTO `jos_vm_function` VALUES (123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none');
INSERT INTO `jos_vm_function` VALUES (124, 98, 'affiliateAdd', 'ps_affiliate', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (125, 98, 'affiliateUpdate', 'ps_affiliate', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (126, 98, 'affiliateDelete', 'ps_affiliate', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (127, 98, 'affiliateEmail', 'ps_affiliate', 'email', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo');
INSERT INTO `jos_vm_function` VALUES (153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin');
INSERT INTO `jos_vm_function` VALUES (155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin');
INSERT INTO `jos_vm_function` VALUES (157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin');
INSERT INTO `jos_vm_function` VALUES (160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin');
INSERT INTO `jos_vm_function` VALUES (161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin');
INSERT INTO `jos_vm_function` VALUES (170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none');
INSERT INTO `jos_vm_function` VALUES (174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none');
INSERT INTO `jos_vm_function` VALUES (175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin');
INSERT INTO `jos_vm_function` VALUES (176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin');
INSERT INTO `jos_vm_function` VALUES (179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin');
INSERT INTO `jos_vm_function` VALUES (180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin');
INSERT INTO `jos_vm_function` VALUES (183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin');
INSERT INTO `jos_vm_function` VALUES (186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin');
INSERT INTO `jos_vm_function` VALUES (187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none');
INSERT INTO `jos_vm_function` VALUES (189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none');
INSERT INTO `jos_vm_function` VALUES (191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none');
INSERT INTO `jos_vm_function` VALUES (192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin');
INSERT INTO `jos_vm_function` VALUES (193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin');
INSERT INTO `jos_vm_function` VALUES (194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_manufacturer`
-- 

CREATE TABLE `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `mf_name` varchar(64) default NULL,
  `mf_email` varchar(255) default NULL,
  `mf_desc` text,
  `mf_category_id` int(11) default NULL,
  `mf_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_manufacturer`
-- 

INSERT INTO `jos_vm_manufacturer` VALUES (1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_manufacturer_category`
-- 

CREATE TABLE `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL auto_increment,
  `mf_category_name` varchar(64) default NULL,
  `mf_category_desc` text,
  PRIMARY KEY  (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Manufactorers are assigned to these categories' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_manufacturer_category`
-- 

INSERT INTO `jos_vm_manufacturer_category` VALUES (1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_module`
-- 

CREATE TABLE `jos_vm_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(255) default NULL,
  `module_description` text,
  `module_perms` varchar(255) default NULL,
  `module_publish` char(1) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

-- 
-- Dumping data for table `jos_vm_module`
-- 

INSERT INTO `jos_vm_module` VALUES (1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1);
INSERT INTO `jos_vm_module` VALUES (2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4);
INSERT INTO `jos_vm_module` VALUES (3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6);
INSERT INTO `jos_vm_module` VALUES (4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4);
INSERT INTO `jos_vm_module` VALUES (5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5);
INSERT INTO `jos_vm_module` VALUES (6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99);
INSERT INTO `jos_vm_module` VALUES (8, 'store', '', 'storeadmin,admin', 'Y', 2);
INSERT INTO `jos_vm_module` VALUES (9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (10, 'checkout', '', 'none', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8);
INSERT INTO `jos_vm_module` VALUES (12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7);
INSERT INTO `jos_vm_module` VALUES (13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9);
INSERT INTO `jos_vm_module` VALUES (12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10);
INSERT INTO `jos_vm_module` VALUES (98, 'affiliate', 'administrate the affiliates on your store.', 'storeadmin,admin', 'N', 99);
INSERT INTO `jos_vm_module` VALUES (99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12);
INSERT INTO `jos_vm_module` VALUES (12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13);
INSERT INTO `jos_vm_module` VALUES (12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_orders`
-- 

CREATE TABLE `jos_vm_orders` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store all orders' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_orders`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_history`
-- 

CREATE TABLE `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_code` char(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_status_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_order_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_item`
-- 

CREATE TABLE `jos_vm_order_item` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_vm_order_item`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_payment`
-- 

CREATE TABLE `jos_vm_order_payment` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment method that was chosen for a specific order';

-- 
-- Dumping data for table `jos_vm_order_payment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_status`
-- 

CREATE TABLE `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` char(1) NOT NULL default '',
  `order_status_name` varchar(64) default NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `jos_vm_order_status`
-- 

INSERT INTO `jos_vm_order_status` VALUES (1, 'P', 'Pending', '', 1, 1);
INSERT INTO `jos_vm_order_status` VALUES (2, 'C', 'Confirmed', '', 2, 1);
INSERT INTO `jos_vm_order_status` VALUES (3, 'X', 'Cancelled', '', 3, 1);
INSERT INTO `jos_vm_order_status` VALUES (4, 'R', 'Refunded', '', 4, 1);
INSERT INTO `jos_vm_order_status` VALUES (5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_order_user_info`
-- 

CREATE TABLE `jos_vm_order_user_info` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_order_user_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_payment_method`
-- 

CREATE TABLE `jos_vm_payment_method` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store' AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `jos_vm_payment_method`
-- 

INSERT INTO `jos_vm_payment_method` VALUES (1, 1, 'Purchase Order', '', 6, 0.00, 0, 0.00, 0.00, 4, 'PO', 'N', 0, 'Y', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (2, 1, 'Cash On Delivery', '', 5, -2.00, 0, 0.00, 0.00, 5, 'COD', 'N', 0, 'Y', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (3, 1, 'Credit Card', 'ps_authorize', 5, 0.00, 0, 0.00, 0.00, 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (4, 1, 'PayPal', 'ps_paypal', 5, 0.00, 0, 0.00, 0.00, 0, 'PP', 'P', 0, 'Y', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" border="0" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', '');
INSERT INTO `jos_vm_payment_method` VALUES (5, 1, 'PayMate', 'ps_paymate', 5, 0.00, 0, 0.00, 0.00, 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com.au/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com.au/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', '');
INSERT INTO `jos_vm_payment_method` VALUES (6, 1, 'WorldPay', 'ps_worldpay', 5, 0.00, 0, 0.00, 0.00, 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (7, 1, '2Checkout', 'ps_twocheckout', 5, 0.00, 0, 0.00, 0.00, 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (8, 1, 'NoChex', 'ps_nochex', 5, 0.00, 0, 0.00, 0.00, 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, 0.00, 0, 0.00, 0.00, 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (10, 1, 'eWay', 'ps_eway', 5, 0.00, 0, 0.00, 0.00, 0, 'EWAY', 'Y', 0, 'N', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (11, 1, 'eCheck.net', 'ps_echeck', 5, 0.00, 0, 0.00, 0.00, 0, 'ECK', 'B', 0, 'N', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, 0.00, 0, 0.00, 0.00, 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (13, 1, 'iKobo', '', 5, 0.00, 0, 0.00, 0.00, 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', '');
INSERT INTO `jos_vm_payment_method` VALUES (14, 1, 'iTransact', '', 5, 0.00, 0, 0.00, 0.00, 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', '');
INSERT INTO `jos_vm_payment_method` VALUES (15, 1, 'Dankort / PBS', 'ps_pbs', 5, 0.00, 0, 0.00, 0.00, 0, 'PBS', 'P', 0, 'N', '', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (16, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, 0.00, 0, 0.00, 0.00, 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', '');
INSERT INTO `jos_vm_payment_method` VALUES (17, 1, 'ePay', 'ps_epay', 5, 0.00, 0, 0.00, 0.00, 0, 'EPAY', 'P', 0, 'Y', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db =& new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product`
-- 

CREATE TABLE `jos_vm_product` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='All products are stored here.' AUTO_INCREMENT=66 ;

-- 
-- Dumping data for table `jos_vm_product`
-- 

INSERT INTO `jos_vm_product` VALUES (22, 1, 0, 'MP003', '1920x1080 Full HD, Digital control 2ms , 80.000:1, S/p VGA / DVI-D / HDCP / HDMI Full HD 1080 Nvidia 3D vision kit (glasses ) - REAL 3D LCD', '<table align="center" border="1" cellpadding="0" cellspacing="0" width="496" style="height: 549px;">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Model</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value">SAMSUNG</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Model</td>\r\n<td class="value">SyncMaster 2253LW</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số kĩ thuật</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích thước màn hình</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/21.5inch">21.5inch</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải tối đa</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/1920+x+1080">1920 x 1080</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Góc nhìn</td>\r\n<td class="value">170°(H) / 160°(V)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích thước điểm ảnh</td>\r\n<td class="value">0.277mm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ sáng màn hình</td>\r\n<td class="value">250cd/m2</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ tương phản</td>\r\n<td class="value">2000000:1</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Thời gian đáp ứng</td>\r\n<td class="value">5ms</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Các kiểu kết nối hỗ trợ</td>\r\n<td class="value">• D-Sub<br />• DVI-D<br />• USB<br />• HDMI<br />• VGA<br />• DVI<br />• HDCP<br />• HDMI x 2<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Đặc điểm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hiệu điện thế vào</td>\r\n<td class="value">AC 120/230 V ( 50/60 Hz )</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Công suất tiêu thụ (W)</td>\r\n<td class="value">25</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Linh kiện đi kèm</td>\r\n<td class="value">• -<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Kích thước</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích thước (mm)</td>\r\n<td class="value">513.08 x 182.88 x 347.98</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Trọng lượng</td>\r\n<td class="value">5.1kg</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Samsung_SyncMast_4887fcba1d33e_120x120.jpg', 'Samsung_SyncMast_4887fcba2d0a1.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'N', 0, NULL, 1216717658, 1326793568, 'Samsung SyncMaster 2253LW', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (21, 1, 0, 'MP002', '1366x768, Digital control 5ms, 50.000:1 , Black , LED', '<table rules="rows" width="513" border="0" cellpadding="0" cellspacing="0" style="height: 680px;">\r\n<tbody>\r\n<tr>\r\n<td height="20"><strong>Model</strong></td>\r\n<td>GL950A</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Kích thước</strong></td>\r\n<td width="86">18.5”W</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Aspect Ratio</strong></td>\r\n<td width="86">16:09</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Độ phân giải</strong></td>\r\n<td width="86">1366x768</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Pixel Pitch (mm)</strong></td>\r\n<td width="86">0.3</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="23"><strong>Độ sáng</strong></td>\r\n<td width="86">250 cd/m<sup>2</sup></td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Độ tương phản</strong></td>\r\n<td width="86">50.000:1</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Hiển thị màu</strong></td>\r\n<td width="86">16.7 tỉ màu</td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="24"><strong>Audio/Video Inputs/Outputs</strong></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Tín hiệu vào</strong></td>\r\n<td width="86">D-sub</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Speaker</strong></td>\r\n<td width="86">No</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>USB Hub</strong></td>\r\n<td width="86">No</td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="24"><strong>Nguồn</strong></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Power Supply (90~264 AC)</strong></td>\r\n<td width="86">Built-in</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="40"><strong>Power Consumption (On mode)</strong></td>\r\n<td width="86">15W (max.)</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>(Power saving mode)</strong></td>\r\n<td><0.3W</td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="24"><strong>Kích thước & Trọng lượng</strong></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td height="20"><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Kích thước (HxWxD mm)</strong></td>\r\n<td width="86">518x116x365</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="40"><strong>Dimensions(HxWxD mm)</strong></td>\r\n<td width="86">362.15x459.49x163.9</td>\r\n</tr>\r\n<tr>\r\n<td width="232" height="20"><strong>Trọng lượng</strong></td>\r\n<td width="86">2.9</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HP_W2408H_24__Wi_4887fc7fd51e9_120x120.jpg', 'HP_W2408H_24__Wi_4887fc7fe40a5.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'Y', 0, NULL, 1216717461, 1326793320, 'HP W2408H 24 Widescreen', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (20, 1, 0, 'MP001', '1600x900, Digital control 5ms, 2.000.000:1, D-Sub+DVI-D, 2 USB , Xoay 180 độ , WIDE , LED', '<div class="para"><strong>Panel Size:</strong></div>\r\n<div class="para">50.8 cm</div>\r\n<div class="para"><strong>Aspect Ratio</strong></div>\r\n<div class="para">Widescreen (16:9)</div>\r\n<div class="para"><strong>Panel Type, Surface:</strong></div>\r\n<div class="para">TN (Twisted Nematic), anti glare with hard coat 3H</div>\r\n<div class="para"><strong>Optimal Resolution:</strong></div>\r\n<div class="para">1600 x 900 at 60 Hz</div>\r\n<div class="para"><strong>Contrast Ratio:</strong></div>\r\n<div class="para"><span class="para"><span class="para"><span class="para">2.000.000:1</span></span></span> (typical), Dynamic Contrast Ratio : 2 Million:1 (Max)</div>\r\n<div class="para"><strong>Brightness:</strong></div>\r\n<div class="para">250 cd/m<sup>2</sup> (typical)</div>\r\n<div class="para"><strong>Response Time:</strong></div>\r\n<div class="para">5 ms (back to white)</div>\r\n<div class="para"><strong>Viewing Angle</strong></div>\r\n<div class="para">(160° vertical / 170° horizontal)</div>\r\n<div class="para"><strong>Color Support:</strong></div>\r\n<div class="para">16.7 million colors</div>\r\n<div class="para"><strong>Pixel Pitch:</strong></div>\r\n<div class="para">0.277mm</div>\r\n<div class="para"><strong>Display Screen Coating</strong></div>\r\n<div class="para">Antiglare with hard-coating 3H</div>\r\n<div class="para"><strong>Diagonal Viewing Size:</strong></div>\r\n<div class="para">50.8 cm</div>\r\n<div class="para">20 Inches (20-inch wide viewable image size)</div>\r\n<div class="para"><strong>Display Type</strong></div>\r\n<div class="para">Widescreen Flat Panel Display</div>\r\n<div class="para"><strong>Preset Display Area ( H x V)</strong></div>\r\n<div class="para">442.8mm x 249.1mm<br />17.43" x 9.81"</div>\r\n<div class="para"><strong>Backlight Technology</strong></div>\r\n<div class="para">LED</div>', 'resized/HP_W2207_22__Wid_4887fc5aa1e24_120x120.jpg', 'HP_W2207_22__Wid_4887fc5ab07ac.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'Y', 0, NULL, 1216717195, 1326793797, 'HP W2207 22 Widescreen', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (23, 1, 0, 'MP004', 'Số lượng :    ĐẶT HÀNG\r\n1366x768, Digital control 5ms, 50.000000:1, DVI-D, WIDE - Tiết kiệm 50% điện năng tiêu thụ, chế độ e-saver tự động ngừng hoạt động, treo tường , siêu mỏng 12.9mm , phím cảm ứng', '<p><strong>Đặc tính kỹ thuật và chi tiết sản phẩm:</strong></p>\r\n<ul>\r\n<li>Kích cở màn hình: 18.5" W</li>\r\n<li>Kích cở khung hình: 47.0cm</li>\r\n<li>Cường độ ảnh điểm: 0.3(H)×0.3 (V)mm</li>\r\n<li>Khu vực hiển thị: 409.8 (H)×230.4 (V)mm</li>\r\n<li>Độ sáng: 250 cd/m²</li>\r\n<li>Độ tương phản: 50,000,000:1 (DCR)</li>\r\n<li>Thời gian đáp ứng: 5ms</li>\r\n<li>Góc nhìn (Ngang/Dọc): 170/160 (CR≥10)</li>\r\n<li>Tần số quét: H: 30K~80KHz V: 56~75Hz</li>\r\n<li>Tần số ảnh điểm: 85.5MHz</li>\r\n<li>Độ phân giải: 1366×768@60Hz</li>\r\n<li>Hỗ trợ màu: 16.7M</li>\r\n<li>Tích hợp HDCP: Có</li>\r\n<li>Tín hiệu kết nối vào: Analog RGB và DVI-D</li>\r\n<li>Cổng kết nối: 15-pin D-Sub và 24-pin DVI</li>\r\n<li>Điện năng sử dụng: 12VDC,3A</li>\r\n<li>Công suất sử dụng: Hoạt động < 18W, Chờ <0.5W</li>\r\n<li>Plug & Play: DDC 2B/CI or VESA DDC2B™</li>\r\n<li>Phím nhấn điều khiển: Auto, left, right, Menu, Power</li>\r\n<li>Ngôn ngữ hiển thị: 14 ngôn ngữ</li>\r\n<li>Loa: Không</li>\r\n<li>Quy định an tòan: BSMI,CCC, FCC, cCSAus, CE, TUV-S, TUV-Bauart, EPA 5.0,Windows 7</li>\r\n<li>Treo tường: Có</li>\r\n<li>Màu vỏ màn hình: Trắng & Đen</li>\r\n<li>Tính năng kỹ thuật: Độ nghiêng: -3 ~ 12 độ</li>\r\n<li>Kích thước màn hình (mm): 447.2×350.9×182.4</li>\r\n<li>Kích thước đóng gói (mm): 506×124×474</li>\r\n<li>Cân nặng (Net /Gross): 2.12Kg/4.49Kg</li>\r\n</ul>', 'resized/Samsung_SyncMast_4887fca7231ed_120x120.jpg', 'Samsung_SyncMast_4887fca7379e0.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'Y', 0, NULL, 1216719659, 1326793403, 'Samsung SyncMaster', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (24, 1, 0, 'MK001', 'USB - LASER MOUSE & Scroll wireless nano receiver 2.4Ghz, nhỏ gọn , thời trang cao cấp', '<table style="height: 243px;" cellspacing="0" cellpadding="0" border="1" width="532" class="pro_v2_table_technical">\r\n<tbody>\r\n<tr class="title">\r\n<td colspan="2">Chi tiết kỹ thuật</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/logitech" class="text_link_v2">Logitech</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/chu%E1%BB%99t+laser" class="text_link_v2">Chuột Laser</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kiểu giao tiếp</td>\r\n<td class="value">• Không dây - (Bluetooth)<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dành cho</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/ng%C6%B0%E1%BB%9Di+thu%E1%BA%ADn+tay+tr%C3%A1i+ho%E1%BA%B7c+tay+ph%E1%BA%A3i" class="text_link_v2">Người thuận tay trái hoặc tay phải</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Số nút</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/3+n%C3%BAt" class="text_link_v2">3 nút</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Nút cuộn</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/d%E1%BB%8Dc" class="text_link_v2">Dọc</a></td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Gói sản phẩm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Gói sản phẩm</td>\r\n<td class="value">• Chuột<br />• Bộ thu tín hiệu Radio<br />• Pin</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Logitech_VX_Nano_4887fd5b877c1_120x120.jpg', 'Logitech_VX_Nano_4887fd5b9684b.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'Y', 0, NULL, 1216720626, 1326794176, 'Logitech VX Nano Cordless', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (25, 1, 0, 'MK002', 'USB - OPTICAL MOUSE & Scroll wireless-1200dpi -Thiết kế nhỏ nhắn cho laptop, 3 màu đen , xanh dương, đỏ ruby', '<ul>\r\n<li>2.4GHz RF wireless connectivity</li>\r\n<li>Very small Pico USB receiver</li>\r\n<li>1200 dpi optical engine</li>\r\n<li>Suitable for either hand</li>\r\n<li><strong>Available now in the USA & Canada</strong></li>\r\n<li>Traveler 6000 MSRP: US$14.90</li>\r\n<li>Traveler 6000 Classic MSRP: US$16.9</li>\r\n</ul>', 'resized/Logitech_V450_Co_4887fd3f31e09_120x120.jpg', 'Logitech_V450_Co_4887fd3f4078d.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'N', 0, NULL, 1216720769, 1326794118, 'Logitech V450 Cordless', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (26, 1, 0, 'MK003', 'USB Port - OPTICAL MOUSE & Scroll wireless - Khoảng cách 15m, 5 tốc độ, tiết kiệm điện năng , Sử dụng công nghệ V-Track , chạy được trên mọi địa hình .', '<table style="height: 468px;" cellspacing="0" cellpadding="0" border="0" width="492">\r\n<tbody>\r\n<tr align="left" valign="top">\r\n<td bgcolor="#CCCCCC" class="style1" colspan="3"><span class="style9">PRODUCT SPECIFICATION</span></td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#ffffff" class="style1" colspan="3"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /></td>\r\n</tr>\r\n<tr align="left" valign="top">\r\n<td bgcolor="#d9d9d9" width="174" class="style1"><strong>General:</strong><br /></td>\r\n<td bgcolor="#ffffff" width="1" class="style1"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /><br /></td>\r\n<td bgcolor="#d9d9d9" class="style1 style10">\r\n<li>Type: Wireless Mouse</li>\r\n<li>Category: No lag 2.4G wireless mouse<br /></li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#ffffff" class="style1" colspan="3"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /></td>\r\n</tr>\r\n<tr align="left" valign="top">\r\n<td bgcolor="#e5e5e5" width="174" class="style1"><strong>Connectivity:</strong></td>\r\n<td bgcolor="#ffffff" width="1" class="style1"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /><br /></td>\r\n<td bgcolor="#e5e5e5" class="style1 style10">\r\n<li>USB<br /></li>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#ffffff" class="style1" colspan="3"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /></td>\r\n</tr>\r\n<tr align="left" valign="top">\r\n<td bgcolor="#d9d9d9" width="174" class="style1"><strong>Features:</strong></td>\r\n<td bgcolor="#ffffff" width="1" class="style1"><img height="1" border="0" width="1" src="http://www.complink.com.ph/products/imaging/shared/img/sp.gif" /><br /></td>\r\n<td bgcolor="#d9d9d9" class="style1">\r\n<li class="style10">No-lag technology: provides the smoothest cursor motion</li>\r\n<li class="style10">15 m operating range: operating range up to 15 meters (Note: the actual distance depends on the environment)</li>\r\n<li class="style10">RF signal indication: helps to find the optimal location</li>\r\n<li class="style10">Channel-lock setting: set a specific channel to avoid RF interference</li>\r\n<li class="style10">Battery status indication: low battery warning</li>\r\n<li class="style10">2 report rate levels: 125 / 250 Hz for office, drawing or gaming applications</li>\r\n<li class="style10">Adjustable resolution: 800-1000-1200-1600 DPI</li>\r\n<li class="style10">8-in-One: 8 gestures to perform selectable hotkey commands</li>\r\n<li class="style10">4-way wheel: smart vertical and horizontal scrolling</li>\r\n<li class="style10">Easy carry: Nano receiver storage: receiver can be stored inside the mouse</li>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Logitech_G5_Lase_4887fd1adfee6_120x120.jpg', 'Logitech_G5_Lase_4887fd1aef95e.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'N', 0, NULL, 1216720878, 1326794045, 'Logitech G5 Laser Mouse', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (27, 1, 0, 'MK004', 'USB - Keyboard Multimedia & Mouse Laser Wireless - Black - Đèn nền - Hàng cao cấp', '<table align="center" border="1" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/logitech+inc.">Logitech Inc.</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại bàn phím</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/k%E1%BA%BFt+n%E1%BB%91i+kh%C3%B4ng+d%C3%A2y">Kết nối không dây</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại chuột</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/chu%E1%BB%99t+kh%C3%B4ng+d%C3%A2y">Chuột không dây</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Màu sắc</td>\r\n<td class="value">• Ghi<br />• Đen<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ngôn ngữ sử dụng</td>\r\n<td class="value">• Tiếng Anh<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Sử dụng cho</td>\r\n<td class="value">• Desktop PC<br />• Laptop<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hệ diều hành tương thích</td>\r\n<td class="value">Windows XP, Windows Vista, or Windows 7</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kết nối máy tính</td>\r\n<td class="value">• USB<br />• Không dây<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Gói sản phẩm</td>\r\n<td class="value">• Bàn phím<br />• Sách hướng dẫn<br />• Chuột (Mouse)<br />• Bộ thu tín hiệu Wireless</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Logitech_diNovo__4887fcffe6f8f_120x120.jpg', 'Logitech_diNovo__4887fd0000cb3.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216656000, '', 'N', 0, NULL, 1216721103, 1326793961, 'Logitech diNovo Edge', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (28, 1, 0, 'LT001', 'Intel core i3-2350M (2.30Ghz) 3Mb,500GB,2GB DDR3,Intel HD up to 821MB,14"HDPV LED,Card 2 in 1,DVDWR, Webcam', '<table style="height: 363px;" width="521" cellspacing="1" cellpadding="0" border="1">\r\n<tbody>\r\n<tr>\r\n<td colspan="2">\r\n<h2><span>Thông số<span class="themebody"> </span> HP Pavilion G4-1214TU (A3D63PA)</span></h2>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Microprocessor</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>Intel® Core™ i3-2350M Processor  2.30 GHz</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Microprocessor Cache</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>3MB</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Memory</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>2GB DDR3</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Video Graphics</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>Intel HD Graphics</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Hard Drive</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>500GB 5400rpm</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Multimedia Drive</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>DVD±R/RW Double Layer</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Integrated</span></p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Display</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>14.0" Diagonal High-Definition LED HP Brightview</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Network Card</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>Integrated 10/100 BASE-T Ethernet LAN</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">OS<br /></td>\r\n<td valign="top">OPTION<br /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Wireless Connectivity</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>802.11 b/g/n</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Keyboard</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>Standard</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>Pointing Device</span></p>\r\n</td>\r\n<td valign="top">\r\n<p><span>Multi Point</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><span>External Ports</span></p>\r\n</td>\r\n<td valign="top"><span>USB port, card in reader</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HP_Pavilion_DV69_4887fdaf501b6_120x120.jpg', 'HP_Pavilion_DV69_4887fdaf61df9.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'Y', 0, NULL, 1216805730, 1326794578, 'HP Pavilion G4-1214TU (A3D63PA)', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (29, 1, 0, 'LT002', 'Intel core i5-2450M (2.60Ghz) 3Mb,640GB,2GB DDR3,	 Intel HD Graphic 3000 up to 805MB,14" WLED HDMI,DVDWR, Card 4.1', '<table width="528" border="0" cellpadding="0" cellspacing="0" style="height: 1061px;">\r\n<tbody>\r\n<tr>\r\n<td rowspan="10" align="center"><strong><span>THÔNG TIN <br />TỔNG QUAN</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label1">CPU</span></td>\r\n<td><span id="ctl12_ctl00_lblCPU" class="product_detail_info">Intel Core i5 2450M (2.60 Ghz 3M <br /></span><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label2">RAM</span></td>\r\n<td><span id="ctl12_ctl00_lblRAM" class="product_detail_info">2 GB DDR3 1066Mhz</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label3">Chipset</span></td>\r\n<td><span id="ctl12_ctl00_lblChipset" class="product_detail_info">Intel HM67</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label4">HDD</span></td>\r\n<td><span id="ctl12_ctl00_lblHDD" class="product_detail_info">640 GB SATA 5400 rpm</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label5">ODD</span></td>\r\n<td><span id="ctl12_ctl00_lblODD" class="product_detail_info">DVD RW/ Reader card/ Camera/ Bluetooth 3.0 / HDMI/ USB 3.0</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label6">Graphics</span></td>\r\n<td><span id="ctl12_ctl00_lblGraphics" class="product_detail_info">INTEL HD Graphics, up to 805 MB 512 MB</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label7">Display</span></td>\r\n<td><span id="ctl12_ctl00_lblDisplay" class="product_detail_info">14.00 WLED Backlight (16:9)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label27">Network</span></td>\r\n<td><span id="ctl12_ctl00_lblNetwork" class="product_detail_info">802.11bgn / 10/100 base /</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label8">OS</span></td>\r\n<td><span id="ctl12_ctl00_lblOS" class="product_detail_info">option<br /></span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label28">Weight</span></td>\r\n<td><span id="ctl12_ctl00_lblWeight" class="product_detail_info">2.0 Kg</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5" align="center"><span><strong>CPU</strong></span></td>\r\n<td><span id="ctl12_ctl00_Label10">Hãng Sản Xuất</span></td>\r\n<td><span id="ctl12_ctl00_lblCPUManuf" class="product_detail_info">Intel</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label11">Công nghệ</span></td>\r\n<td><span id="ctl12_ctl00_lblCPUTech" class="product_detail_info">Core i5</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label12">Tốc độ</span></td>\r\n<td><span id="ctl12_ctl00_lblCPUSpeed" class="product_detail_info">2.60 Ghz</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label13">Bus</span></td>\r\n<td><span id="ctl12_ctl00_lblCPUBus" class="product_detail_info"></span><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label14">Cache</span></td>\r\n<td><span id="ctl12_ctl00_lblCPUCache" class="product_detail_info">3M L2 cache, 4 threads, turbo boost 3.1Ghz</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" align="center"><strong><span>BO MẠCH<br />CHÍNH</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label15">Chipset</span></td>\r\n<td><span id="ctl12_ctl00_lblMainChipset" class="product_detail_info">Intel HM67</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label16">Bus</span></td>\r\n<td><span id="ctl12_ctl00_lblMainBus" class="product_detail_info"></span><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label17">Hỗ trợ RAM tối đa</span></td>\r\n<td><span id="ctl12_ctl00_lblRAMMax" class="product_detail_info">8Gb</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" align="center"><strong><span>RAM</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label20">Dung lượng</span></td>\r\n<td><span id="ctl12_ctl00_lblRAMCap" class="product_detail_info">2 GB</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label18">Công nghệ</span></td>\r\n<td><span id="ctl12_ctl00_lblRAMTech" class="product_detail_info">DDR3</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label19">Bus</span></td>\r\n<td><span id="ctl12_ctl00_lblRAMBus" class="product_detail_info">1066Mhz</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" align="center"><strong><span>Ổ CỨNG</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label21">Dung lượng</span></td>\r\n<td><span id="ctl12_ctl00_lblHDDCap" class="product_detail_info">640 GB</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label22">Công nghệ</span></td>\r\n<td><span id="ctl12_ctl00_lblHDDTech" class="product_detail_info">SATA</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label23">Tốc độ</span></td>\r\n<td><span id="ctl12_ctl00_lblHDDSpeed" class="product_detail_info">5400 rpm</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><strong><span>Ổ QUANG</span></strong></td>\r\n<td><br /></td>\r\n<td><span id="ctl12_ctl00_lblODDInfo" class="product_detail_info">DVD RW/ Reader card/ Camera/ Bluetooth 3.0 / HDMI/ USB 3.0</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" align="center"><strong><span>ĐỒ HỌA</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label31">Chipset</span></td>\r\n<td><span id="ctl12_ctl00_lblGraphicsChipset" class="product_detail_info">INTEL</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label32">Công nghệ</span></td>\r\n<td><span id="ctl12_ctl00_lblGraphicsTech" class="product_detail_info">HD Graphics, up to 805 MB</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label33">Bộ Nhớ</span></td>\r\n<td><span id="ctl12_ctl00_lblGraphicsMemory" class="product_detail_info">512 MB</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" align="center"><strong><span>MẠNG</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label24">Wireless</span></td>\r\n<td><span id="ctl12_ctl00_lblWireless" class="product_detail_info">802.11bgn</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label25">LAN</span></td>\r\n<td><span id="ctl12_ctl00_lblLAN" class="product_detail_info">10/100 base</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label26">Modem</span></td>\r\n<td><span id="ctl12_ctl00_lblModem" class="product_detail_info"></span><br /></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" align="center"><strong><span>MÀN HÌNH</span></strong></td>\r\n<td><span id="ctl12_ctl00_Label29">Công nghệ</span></td>\r\n<td><span id="ctl12_ctl00_lblDisplayInfo" class="product_detail_info">WLED Backlight (16:9)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span id="ctl12_ctl00_Label30">Kích thước</span></td>\r\n<td><span id="ctl12_ctl00_lblDisplaySize" class="product_detail_info">14.00"</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><strong><span>HỆ ĐIỀU HÀNH</span></strong></td>\r\n<td><br /></td>\r\n<td><span id="ctl12_ctl00_lblOSInfo" class="product_detail_info">option<br /></span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><strong><span>PIN</span></strong></td>\r\n<td><br /></td>\r\n<td><span id="ctl12_ctl00_lblPin">6 cell</span></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td align="center"><strong><span>TRỌNG LƯỢNG</span></strong></td>\r\n<td><br /></td>\r\n<td><span id="ctl12_ctl00_lblWeightInfo">2.0 Kg</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Toshiba_Satellit_4887fdf0289f9_120x120.jpg', 'Toshiba_Satellit_4887fdf0374fa.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216805863, 1326794859, 'TOSHIBA L745-1194U/1194UB', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (30, 1, 0, 'LT003', 'Intel core i7-2630QM (2.0Ghz) 6Mb,640GB,4GB DDR3,ATI HD6490M 1GB,17.3"HDPV LED,Card 5 in 1,DVDWR,Webcam,100/1000, Bluetooth\r\nKhuyến mãi: Tặng Miếng Dán trang trí Laptop + Mouse Optical hoặc Túi chống sốc,Tặng 200.000-800.000đ', '<table style="height: 911px;" cellspacing="0" cellpadding="0" border="1class=" align="center" width="474">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Màn hình</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/hp+compaq" class="text_link_v2">HP Compaq</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ lớn màn hình</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/17.3+inch" class="text_link_v2">17.3 inch</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/led+%281366+x+768%29" class="text_link_v2">LED (1366 x 768)</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Mainboard</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Motherboard Chipset</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/mobile+intel+hm65+express+chipset" class="text_link_v2">Mobile Intel HM65 Express Chipset</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">CPU</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại CPU</td>\r\n<td class="value">Intel Core i7-2630QM Sandy Bridge</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ máy</td>\r\n<td class="value">2.00GHz (6MB L3 cache, Max Turbo Frequency 2.9GHz)</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Memory</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Type</td>\r\n<td class="value">DDR3</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng Memory</td>\r\n<td class="value">4GB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">HDD</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng HDD</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/640gb" class="text_link_v2">640GB</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Số vòng quay của HDD</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/7200rpm" class="text_link_v2">7200rpm</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Graphic</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Video Chipset</td>\r\n<td class="value">ATI Mobility Radeon HD 6490M</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Graphic Memory</td>\r\n<td class="value">1GB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Drive</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại ổ đĩa quang</td>\r\n<td class="value">DVDRW</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Network</td>\r\n</tr>\r\n<tr>\r\n<td class="name">LAN</td>\r\n<td class="value">10/100/1000 Mbps</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Wifi</td>\r\n<td class="value">IEEE 802.11b/g/n</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số khác</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Chuột</td>\r\n<td class="value">• TouchPad<br />• Scroll<br />• Multi-Touch<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">OS</td>\r\n<td class="value">OPTION</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng khác</td>\r\n<td class="value">• HDMI<br />• VGA out<br />• Bảo mật bằng dấu vân tay<br />• RJ-11 Modem<br />• Camera<br />• Microphone<br />• Headphone<br />• Bluetooth<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng USB</td>\r\n<td class="value">4 x USB 2.0 port</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng đọc Card</td>\r\n<td class="value">Card Reader 5IN1<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Pin</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Kích thước</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Trọng lượng</td>\r\n<td class="value">2.92kg</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HP_2133_KR922UT__4887fd97650e3_120x120.jpg', 'HP_2133_KR922UT__4887fd9773825.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216806219, 1326794476, 'HP 2133-KR922UT 8.9', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (31, 1, 0, 'LT004', 'Intel core i5-2430M (2.40Ghz) 3Mb,500GB,2GB DDR3,Intel HD up to 821MB,14"HDPV LED,Card 5 in 1,DVDWR Webcam', '<table style="height: 812px;" align="center" width="464" cellpadding="0" cellspacing="0" border="1" class="technical_table">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Tính năng mới</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng mới</td>\r\n<td class="value">• Sandy Bridge Laptop<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Màn hình</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/hp+compaq" class="text_link_v2">HP Compaq</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ lớn màn hình</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/14+inch" class="text_link_v2">14 inch</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/wxga+%281366+x+768%29" class="text_link_v2">WXGA (1366 x 768)</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Mainboard</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Motherboard Chipset</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/mobile+intel+hm65+express+chipset" class="text_link_v2">Mobile Intel HM65 Express Chipset</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">CPU</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại CPU</td>\r\n<td class="value">core i5-2430M (2.40Ghz) 3Mb</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ máy</td>\r\n<td class="value">2.4GHz (3MB L3 cache</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Memory</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Type</td>\r\n<td class="value">DDR3 1333Mhz (PC3-10666)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng Memory</td>\r\n<td class="value">2GB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">HDD</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng HDD</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/500gb" class="text_link_v2">500GB</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Số vòng quay của HDD</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/5400rpm" class="text_link_v2">5400rpm</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Graphic</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Video Chipset</td>\r\n<td class="value">Intel HD up to 821MB</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Graphic Memory</td>\r\n<td class="value">Share</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Drive</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại ổ đĩa quang</td>\r\n<td class="value">DVDRW<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Network</td>\r\n</tr>\r\n<tr>\r\n<td class="name">LAN</td>\r\n<td class="value">10/100Base</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Wifi</td>\r\n<td class="value">IEEE 802.11b/g/n</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số khác</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Chuột</td>\r\n<td class="value">• TouchPad<br />• Scroll<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">OS</td>\r\n<td class="value">Option<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng khác</td>\r\n<td class="value">• HDMI<br />• VGA out<br />• Camera<br />• Microphone<br />• Headphone<br />• Bluetooth<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng USB</td>\r\n<td class="value">3 x USB 2.0 port</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng đọc Card</td>\r\n<td class="value">5in1 Card Reader</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Pin</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Battery</td>\r\n<td class="value">6 cells</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Kích thước</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Trọng lượng</td>\r\n<td class="value">2.1Kg</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích cỡ (mm)</td>\r\n<td class="value">341 x 231 x 35.6 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HP_Pavilion_TX25_4887fdd326dfd_120x120.jpg', 'HP_Pavilion_TX25_4887fdd336283.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'Y', 0, NULL, 1216806380, 1326794678, 'HP430(A2N26PA)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (32, 1, 0, 'MA001', 'CPU Core i5- 2.8GHz (3MB),750GB sata,4GB DDR3,Intel HD 3000 up to 384MB,13.3""LED,Webcam,DVD WR ,Bluetooth ,100/1000', '<table style="height: 965px;" cellspacing="0" cellpadding="0" border="1class=" align="center" width="489">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Màn hình</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dòng sản phẩm</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/macbook+pro" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">MacBook Pro</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ lớn màn hình (inch)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/13.3+inch" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">13.3 inch</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Bộ vi xử lý</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải tối đa (Max Resolution)</td>\r\n<td class="value">WXGA1 (1280 × 800)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại bộ vi xử lý (CPU)</td>\r\n<td class="value">Intel Core i</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Processor Model</td>\r\n<td class="value">i5</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ CPU</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/2.8ghz+%28max+turbo+frequency+3.50ghz%29" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">2.8GHz (Max Turbo Frequency 3.50GHz)</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Bộ nhớ chính</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bộ nhớ đệm</td>\r\n<td class="value">3.0MB L3 cache</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ và kiểu bộ nhớ</td>\r\n<td class="value">DDR3 1333MHz</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng bộ nhớ chính (RAM)</td>\r\n<td class="value">4.0GB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Ổ cứng</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Khả năng nâng cấp RAM</td>\r\n<td class="value">expand to 8GB</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp ổ cứng (HDD Interface)</td>\r\n<td class="value">SATA</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ổ cứng (HDD)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/750gb" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">750GB</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Đồ họa</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Số vòng quay ổ cứng (RPM)</td>\r\n<td class="value">5400RPM</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kiểu Card đồ họa</td>\r\n<td class="value">Intergrated (tích hợp)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bộ xử lý đồ họa (GPU)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/intel+hd+graphics+3000" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">Intel HD Graphics 3000</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Hệ điều hành</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng bộ nhớ đồ họa</td>\r\n<td class="value">384MB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Ổ đĩa</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hệ điều hành sử dụng (OS)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/mac+osx+10.6+leopard" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5077.htm" class="text_link_v2">lion<br /></a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số khác</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ổ quang (Optical drive)</td>\r\n<td class="value">8x SuperDrive (DVD±R DL/DVD±RW/CD-RW)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Built In</td>\r\n<td class="value">• Touchpad<br />• Webcam gắn sẵn (built in)<br />• Màn hình rộng (WIDE)<br />• Màn gương<br />• Bluetooth<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Các cổng giao tiếp</td>\r\n<td class="value">• USB<br />• Gigabit LAN<br />• WLAN (Wireless LAN)<br />• Bluetooth<br />• Audio Port<br />• Bộ đọc thẻ nhớ<br />• MagSafe Port<br />• FireWire 800<br />• VGA out<br />• Thunderbolt<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Gói sản phẩm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hướng dẫn</td>\r\n<td class="value">• Sách hướng dẫn<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cable kèm theo</td>\r\n<td class="value">• Không có<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Phụ kiện khác</td>\r\n<td class="value">• Không có<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Thời gian dùng pin</td>\r\n<td class="value">7giờ</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Trọng lượng</td>\r\n<td class="value">2000g</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích cỡ máy (Dimensions)</td>\r\n<td class="value">24.1 x 227 x 325 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Apple_MacBook_Pr_4887feaea4956_120x120.jpg', 'Apple_MacBook_Pr_4887feaebe5f7.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216807370, 1326795491, 'MACBOOK Pro MD314ZP/A', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (33, 1, 0, 'MA002', 'CPU i5 1.7GHz (3MB),128GB Flash,4GB DDR3,Intel HD 3000 upto 384MB	,13.3"LED,Webcam,No ODD ,Bluetooth', '<table style="height: 854px;" width="535" cellspacing="0" cellpadding="0" border="1" align="center">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Màn hình</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dòng sản phẩm</td>\r\n<td class="value">MacBook MB404LL/A</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ lớn màn hình (inch)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/13.3+inch" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=4796.htm" class="text_link_v2">13.3 inch</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Bộ vi xử lý</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải tối đa (Max Resolution)</td>\r\n<td class="value">WSXGA or WXGA+ (1440 × 900)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại bộ vi xử lý (CPU)</td>\r\n<td class="value">Intel Core i</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Processor Model</td>\r\n<td class="value">i5-2557M</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ CPU</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/1.70ghz" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=4796.htm" class="text_link_v2">1.70GHz</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">CPU FSB</td>\r\n<td class="value">1066MHz</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Bộ nhớ chính</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bộ nhớ đệm</td>\r\n<td class="value">3.0MB L3 cache</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ và kiểu bộ nhớ</td>\r\n<td class="value">DDR3 1333MHz</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng bộ nhớ chính (RAM)</td>\r\n<td class="value">4.0GB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Ổ cứng</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp ổ cứng (HDD Interface)</td>\r\n<td class="value">SSD</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ổ cứng (HDD)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/256gb" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=4796.htm" class="text_link_v2">128GB</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Đồ họa</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bộ xử lý đồ họa (GPU)</td>\r\n<td class="value">Intel HD 3000 upto 384MB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Hệ điều hành</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng bộ nhớ đồ họa</td>\r\n<td class="value">384MB</td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Ổ đĩa</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hệ điều hành sử dụng (OS)</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/mac+os+x+lion" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=4796.htm" class="text_link_v2">Leopard OX 10.8</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số khác</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ổ quang (Optical drive)</td>\r\n<td class="value">DVD/CD-RW</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Built In</td>\r\n<td class="value">• Touchpad<br />• Webcam gắn sẵn (built in)<br />• Bluetooth<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Các cổng giao tiếp</td>\r\n<td class="value">• USB<br />• IEEE1394a<br />• IEEE1394b<br />• Bluetooth<br />• Audio Port<br />• Bộ đọc thẻ nhớ<br />• Mini DVI<br />• MagSafe Port<br />• VGA out<br />• Thunderbolt<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Gói sản phẩm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hướng dẫn</td>\r\n<td class="value">• Sách hướng dẫn<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cable kèm theo</td>\r\n<td class="value">• Không có<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Phụ kiện khác</td>\r\n<td class="value">• Không có<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Thời gian dùng pin</td>\r\n<td class="value">7giờ</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Trọng lượng</td>\r\n<td class="value">1350g</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích cỡ máy (Dimensions)</td>\r\n<td class="value">325 x 227 x 3-17 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Apple_MacBook_MB_4887fe8a0ff48_120x120.jpg', 'Apple_MacBook_MB_4887fe8a2d064.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216807526, 1326795570, 'MacBook MB404LL/A', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (34, 1, 0, 'MA003', 'CPU Core i7- 2.4GHz (3MB),750GB sata,4GB DDR3,ATI HD6770M 1GB / Intel HD,15.4"LED,Webcam,DVD WR, Bluetooth', '<table style="height: 1927px;" cellspacing="0" border="1" width="517">\r\n<tbody>\r\n<tr>\r\n<td width="40%"><span>CPU</span></td>\r\n<td width="60%">Intel Core i7 (2.4GHz) 3M L3 Cache - Bus 1333FSB</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>RAM</span></td>\r\n<td width="60%">4GB 1333MHz DDR3</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Chipset</span></td>\r\n<td width="60%">Intel Mobile HM65 Express</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>HDD</span></td>\r\n<td width="60%">750GB SATA</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>ODD</span></td>\r\n<td width="60%">DVD±R DL/DVD±RW/CD-RW</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Graphics</span></td>\r\n<td width="60%">ATI HD6770M 1GB / Intel HD</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Display</span></td>\r\n<td width="60%">15.4 inch (diagonal) LED-backlit glossy 1280x800</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Battery</span></td>\r\n<td width="60%">Advanced lithium-polymer battery with MagSafe power adapter</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Weight</span></td>\r\n<td width="60%">2.5Kg</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>OS</span></td>\r\n<td width="60%">Lion</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Others</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Network</span></td>\r\n<td width="60%">WIFI 802.11a/b/g/n - Bluetooth 4.0</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Vi xử lý</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Hãng sản xuất</span></td>\r\n<td width="60%">Intel</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Loại CPU - Công nghệ</span></td>\r\n<td width="60%">Core i7   <br /></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Tốc độ xử lý</span></td>\r\n<td width="60%">2.4GHz</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Tốc độ FSB</span></td>\r\n<td width="60%">1333MHz</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Dung lượng, Loại cache</span></td>\r\n<td width="60%">3MB Cache</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Bộ nhớ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Công nghệ</span></td>\r\n<td width="60%">DDR3</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Bus</span></td>\r\n<td width="60%">1333MHz</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Dung lượng</span></td>\r\n<td width="60%">4GB</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Bo mạch chính</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Chipset</span></td>\r\n<td width="60%">Intel Mobile HM65 Express</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Tốc độ Bus</span></td>\r\n<td width="60%">4GB/s</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Hỗ trợ RAM tối đa</span></td>\r\n<td width="60%">up to 8GB supported</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Ổ cứng</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Dung lượng</span></td>\r\n<td width="60%">750GB</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Công nghệ</span></td>\r\n<td width="60%">SATA</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Tốc độ</span></td>\r\n<td width="60%">5400rpm</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Màn hình</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Kích thước</span></td>\r\n<td width="60%">15.4 inch</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông tin</span></td>\r\n<td width="60%">LED-backlit glossy (1280 x 800)</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Đồ họa</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông tin</span></td>\r\n<td width="60%">ATI HD6770M 1GB / Intel HD</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Bộ nhớ</span></td>\r\n<td width="60%">1GB</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Công nghệ</span></td>\r\n<td width="60%">AMD</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Mạng</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Wireless</span></td>\r\n<td width="60%">WIFI 802.11a/b/g/n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Lan</span></td>\r\n<td width="60%">100/1000Mb</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Modem</span></td>\r\n<td width="60%">56K V.92 modem</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Ổ quang</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông tin</span></td>\r\n<td width="60%">DVD/R/W</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Ghi CD</span></td>\r\n<td width="60%">Có</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Ghi DVD</span></td>\r\n<td width="60%">Có</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Ghi đĩa 2 lớp</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>In nhãn đĩa</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Thẻ nhớ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Loại</span></td>\r\n<td width="60%">5 in 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Hỗ trợ</span></td>\r\n<td width="60%">SD/MMC/MS/MS Pro/xD</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Bàn phím - Chuột</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Bàn phím</span></td>\r\n<td width="60%">Standard</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Chuột</span></td>\r\n<td width="60%">Multi-Touch trackpad</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Hệ điều hành</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Hệ điều hành</span></td>\r\n<td width="60%">Lion</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Đóng gói</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Đóng gói</span></td>\r\n<td width="60%">Thân máy, Sạc, dây nguồn, Sách HDSD.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Webcam</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông tin Webcam</span></td>\r\n<td width="60%">Có</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Pin</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Công nghệ</span></td>\r\n<td width="60%">Advanced lithium-polymer battery with MagSafe power adapter</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông số</span></td>\r\n<td width="60%">5 giờ</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Âm thanh</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Chuẩn âm thanh</span></td>\r\n<td width="60%">Stereo speakers</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Thông tin</span></td>\r\n<td width="60%">Support for Apple Earphones with Remote and Mic</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Kết nối</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Express Card</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Card Reader</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>USB</span></td>\r\n<td width="60%">x 2</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Lan RJ-45</span></td>\r\n<td width="60%">x 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Modem RJ11</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>VGA</span></td>\r\n<td width="60%">x 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Audio Out </span></td>\r\n<td width="60%">x 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Microphone</span></td>\r\n<td width="60%">x 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Audio In</span></td>\r\n<td width="60%">x 1</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>S-Video</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>DVI</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Firewire 1394</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Parallel</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Serial</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Others</span></td>\r\n<td width="60%">Thunderbolt port</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>HDMI</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>InfraRed</span></td>\r\n<td width="60%"></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<div>Trọng lượng</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="40%"><span>Trọng lượng</span></td>\r\n<td width="60%">2.5Kg</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Apple_MacBook_MB_4887fe68cfe74_120x120.jpg', 'Apple_MacBook_MB_4887fe68e4960.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216807817, 1326795326, 'MACBOOK Pro MD322ZP/A', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (35, 1, 0, 'MA004', 'CPU Core i7- 2.4GHz (3MB),750GB sata,4GB DDR3,ATI HD6770M 1GB / Intel HD,17"LED,Webcam,DVD WR, Bluetooth,100/1000', '<br />\r\n<table style="height: 916px;" cellspacing="2" cellpadding="2" border="0" width="509">\r\n<tbody>\r\n<tr>\r\n<td height="29">Microprocessor</td>\r\n<td width="624">Intel Core i7 2.4GHz <br /></td>\r\n</tr>\r\n<tr bgcolor="#e7e8ea">\r\n<td bgcolor="#e7e8ea" height="29">Microprocessor Cache</td>\r\n<td width="624">\r\n<p>3MB</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="200">Memory</td>\r\n<td width="624">4GB (two 2GB SO-DIMMs) of 1333MHz DDR3 SDRAM</td>\r\n</tr>\r\n<tr bgcolor="#e7e8ea">\r\n<td height="29">Video Graphics</td>\r\n<td width="624">ATI HD6770M 1GB / Intel HD</td>\r\n</tr>\r\n<tr>\r\n<td>Hard Drive</td>\r\n<td width="624">750GB Serial ATA 5400 rpm</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#e7e8ea" height="29">Multimedia Drive</td>\r\n<td bgcolor="#e7e8ea" height="29">8x SuperDrive (DVD±R DL/DVD±RW/CD-RW)</td>\r\n</tr>\r\n<tr>\r\n<td>Integrated</td>\r\n<td>FaceTime camera, Bluetooth 2.1 + EDR (Enhanced Data Rate) wireless technology</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#e7e8ea" height="29">Display</td>\r\n<td bgcolor="#e7e8ea" height="29">17-inch (diagonal) high-resolution LED-backlit glossy or optional antiglare widescreen display, 1920-by-1200 resolution</td>\r\n</tr>\r\n<tr>\r\n<td>Network Card</td>\r\n<td>10/100/1000BASE-T (Gigabit) Ethernet</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#e7e8ea" height="29">Wireless Connectivity</td>\r\n<td bgcolor="#e7e8ea" height="29">Wi-Fi (based on IEEE 802.11n specification)</td>\r\n</tr>\r\n<tr>\r\n<td>Keyboard</td>\r\n<td>Full-size backlit keyboard with 78 (U.S.) or 79 (ISO) keys, including 12 function keys and 4 arrow keys (inverted “T” arrangement)</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#e7e8ea" height="29">Pointing Device</td>\r\n<td bgcolor="#e7e8ea" height="29">Multi-Touch trackpad for precise cursor control; supports inertial scrolling, pinch, rotate, swipe, three-finger swipe, four-finger swipe, tap, double-tap, and drag capabilities</td>\r\n</tr>\r\n<tr>\r\n<td>PC Card Slot</td>\r\n<td>One Thunderbolt port (up to 10 Gbps), one FireWire 800 port (up to 800 Mbps), two USB 2.0 ports (up to 480 Mbps), SDXC card slot</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor="#e7e8ea">External Ports</td>\r\n<td bgcolor="#e7e8ea">\r\n<ul class="square">\r\n<li>MagSafe power port</li>\r\n<li>Gigabit Ethernet port</li>\r\n<li>FireWire 800 port (up to 800 Mbps)</li>\r\n<li>Three USB 2.0 ports (up to 480 Mbps)</li>\r\n<li>Thunderbolt port (up to 10 Gbps)</li>\r\n<li>Audio line in</li>\r\n<li>Audio line out</li>\r\n<li>ExpressCard/34 slot</li>\r\n<li>Kensington lock slot</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Software</td>\r\n<td>\r\n<ul class="square">\r\n<li><span>Lion</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Apple_MacBook_Pr_4887fecb6ad0c_120x120.jpg', 'Apple_MacBook_Pr_4887fecb80b5d.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'N', 0, NULL, 1216808435, 1326795421, 'MACBOOK Pro MD311ZP/A', 0, '', '', 2, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (36, 1, 0, 'MK005', 'USB Port - OPTICAL MOUSE & Scroll wireless - Khoảng cách 15m , hạn chế nhiễu sóng', '<table class="pro_v2_table_technical" width="521" border="1" bordercolor="#bbbbbb" cellpadding="0" cellspacing="0" style="height: 267px;">\r\n<tbody>\r\n<tr class="title">\r\n<td colspan="2" align="center"><strong>Chi tiết kỹ thuật</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value">Microsoft</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/chu%E1%BB%99t+quang">Chuột Quang</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kiểu giao tiếp</td>\r\n<td class="value">• Không dây<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dành cho</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/ng%C6%B0%E1%BB%9Di+thu%E1%BA%ADn+tay+tr%C3%A1i+ho%E1%BA%B7c+tay+ph%E1%BA%A3i">Người thuận tay trái hoặc tay phải</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Độ phân giải quang học</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/800+dpi">800 dpi</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Nút cuộn</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/d%E1%BB%8Dc">Dọc</a></td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Gói sản phẩm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Gói sản phẩm</td>\r\n<td class="value">• Chuột<br />• Sách hướng dẫn<br />• Pin sạc<br />• Bộ thu tín hiệu Wireless</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/Microsoft_SideWi_4887fd6d2c80d_120x120.jpg', 'Microsoft_SideWi_4887fd6d3a692.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'Y', 0, NULL, 1216808782, 1326855121, 'Microsoft SideWinder', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (37, 1, 0, 'MP005', '1920x1080 , Digital control 2ms , 1.000: 1, HDMI,D-Sub, LED - WIDE', '<p>Samsung LED 21.5" S22A350B - Wide</p>\r\n<p>- Độ phân giải: 1920x1080;</p>\r\n<p>- Độ sáng: 250cd/m2 ;</p>\r\n<p>- Độ tương phản: 1000:1;</p>\r\n<p>- Thời gian đáp ứng:2ms (tiêu thụ chỉ 18W),</p>\r\n<p>- Cổng kết nối: DVI, HDMI</p>', 'resized/X2Gen_22__Widesc_488740ba9a5cf_120x120.jpg', 'X2Gen_22__Widesc_488740baab04b.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1216742400, '', 'Y', 0, NULL, 1216823482, 1326793642, 'X2Gen 22 Widescreen', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (49, 1, 0, 'DVD100', 'SATA- R8X - W8X - RW 8X - Inrenal FOR NOTEBOOK', '<span>SATA- R8X - W8X - RW 8X - Inrenal FOR NOTEBOOK</span>', 'resized/DVD_LAPTOP_WRITE_4f14f62b81e4d_90x90.jpg', 'DVD_LAPTOP_WRITE_4f14f62b8fb6d.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326773803, 1326775198, 'DVD LAPTOP WRITER PIONEER', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (50, 1, 0, 'MBO001', 'Chip INTEL H61 - LGA1155 - Spp Dual channel 2 x 1.5V DDRAM 3-(1333/1066) UP TO 16GB , 1 PCI - Ex 16X 2.0 (băng thông 16X) , Graphic Port : D-sub, DVI-D, Sound 8 channel & Lan Gygabit on board, 4 SATA 2 , 1 PCI EX1 , 2 PCI, 8 USB 2.0, S/p Dual bios , tụ rắ', '<table style="height: 2631px;" cellspacing="0" cellpadding="0" border="1class=" align="center" width="517">\r\n<tbody>\r\n<tr>\r\n<td align="left" class="tblblue">CPU</td>\r\n<td><ol>\r\n<li>Support for Intel<sup>®</sup> Core™ i7 processors/Intel<sup>®</sup> Core™ i5 processors/ Intel<sup>®</sup> Core™ i3 processors/Intel<sup>®</sup> Pentium<sup>®</sup>processors/Intel<sup>®</sup> Celeron<sup>®</sup> processors in the LGA1155 package</li>\r\n<li>L3 cache varies with CPU</li>\r\n</ol>(Please refer "CPU Support List" for more information.)</td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Chipset</td>\r\n<td><ol>\r\n<li>Intel<sup>®</sup> H61 Express Chipset</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Bộ nhớ</td>\r\n<td><ol>\r\n<li>2 x 1.5V DDR3 DIMM sockets supporting up to 16 GB of system memory<br />* Due to Windows 32-bit operating system limitation, when more than 4 GB of physical memory is installed, the actual memory size displayed will be less than 4 GB.</li>\r\n<li>Dual channel memory architecture</li>\r\n<li>Support for DDR3 1333/1066/800 MHz memory modules</li>\r\n<li>Support for non-ECC memory modules</li>\r\n</ol>(Please refer "Memory Support List" for more information.)</td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Card đồ họa tích hợp</td>\r\n<td>Integrated Graphics Processor:<ol>\r\n<li>1 x D-Sub port</li>\r\n<li>1 x DVI-D port, supporting a maximum resolution of 1920x1200<br />* The DVI-D port does not support D-Sub connection by adapter.</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Âm thanh</td>\r\n<td><ol>\r\n<li>Realtek ALC887 audio codec</li>\r\n<li>High Definition Audio</li>\r\n<li>2/4/5.1/7.1-channel<br />* To configure 7.1-channel audio, you have to use an HD front panel audio module and enable the multi-channel audio feature through the audio driver.</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">LAN</td>\r\n<td><ol>\r\n<li>1 x Realtek 8111E LAN chip (10/100/1000 Mbit)</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Khe cắm mở rộng</td>\r\n<td><ol>\r\n<li>1 x PCI Express x16 slot, running at x16</li>\r\n<li>1 x PCI Express x1 slot<br />(All PCI Express slots conform to PCI Express 2.0 standard.)</li>\r\n<li>2 x PCI slots</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Giao diện lưu trữ</td>\r\n<td>Chipset:<ol>\r\n<li>4 x SATA 3Gb/s connectors supporting up to 4 SATA 3Gb/s devices</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">USB</td>\r\n<td>Chipset:<ol>\r\n<li>Up to 8 USB 2.0/1.1 ports (4 ports on the back panel, 4 ports available through the internal USB headers)</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Kết nối I/O bên trong</td>\r\n<td><ol>\r\n<li>1 x 24-pin ATX main power connector</li>\r\n<li>1 x 4-pin ATX 12V power connector</li>\r\n<li>4 x SATA 3Gb/s connectors</li>\r\n<li>1 x CPU fan header</li>\r\n<li>1 x system fan header</li>\r\n<li>1 x front panel header</li>\r\n<li>1 x front panel audio header</li>\r\n<li>2 x USB 2.0/1.1 headers</li>\r\n<li>1 x serial port header</li>\r\n<li>1 x Clear CMOS jumper</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Kết nối bảng phía sau</td>\r\n<td><ol>\r\n<li>1 x PS/2 keyboard port</li>\r\n<li>1 x PS/2 mouse port</li>\r\n<li>1 x parallel port</li>\r\n<li>1 x D-Sub port</li>\r\n<li>1 x DVI-D port</li>\r\n<li>4 x USB 2.0/1.1 ports</li>\r\n<li>1 x RJ-45 port</li>\r\n<li>3 x audio jacks (Line In/Line Out/Microphone)</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Điều khiển I/O</td>\r\n<td><ol>\r\n<li>iTE IT8728 chip</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Theo dõi phần cứng</td>\r\n<td><ol>\r\n<li>System voltage detection</li>\r\n<li>CPU/System temperature detection</li>\r\n<li>CPU/System fan speed detection</li>\r\n<li>CPU/System fan speed control<br />* Whether the CPU/System fan speed control function is supported will depend on the CPU/System cooler you install.</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">BIOS</td>\r\n<td><ol>\r\n<li>2 x 32 Mbit flash</li>\r\n<li>Use of licensed AWARD BIOS</li>\r\n<li>Support for DualBIOS™</li>\r\n<li>PnP 1.0a, DMI 2.0, SM BIOS 2.4, ACPI 1.0b</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Tính năng duy nhất</td>\r\n<td><ol>\r\n<li>Support for @BIOS</li>\r\n<li>Support for Q-Flash</li>\r\n<li>Support for Xpress BIOS Rescue</li>\r\n<li>Support for Download Center</li>\r\n<li>Support for Xpress Install</li>\r\n<li>Support for Xpress Recovery2</li>\r\n<li>Support for EasyTune<br />* Available functions in EasyTune may differ by motherboard model.</li>\r\n<li>Support for Smart 6™</li>\r\n<li>Support for Auto Green</li>\r\n<li>Support for ON/OFF Charge</li>\r\n<li>Support for Cloud OC</li>\r\n<li>Support for 3TB+ Unlock</li>\r\n<li>Support for TouchBIOS</li>\r\n<li>Support for Q-Share</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Gói phần mềm</td>\r\n<td><ol>\r\n<li>Norton Internet Security (OEM version)</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Hệ điều hành</td>\r\n<td><ol>\r\n<li>Support for Microsoft<sup>®</sup> Windows<sup>®</sup> 7/Vista/XP</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Hệ số khuôn</td>\r\n<td><ol>\r\n<li>Micro ATX Form Factor; 24.4cm x 20cm</li>\r\n</ol></td>\r\n</tr>\r\n<tr>\r\n<td align="left" class="tblblue">Ghi chú</td>\r\n<td><ol>\r\n<li>Due to different Linux support condition provided by chipset vendors, please download Linux driver from chipset vendors'' website or 3rd party website.</li>\r\n<li>Most hardware/software vendors may no longer offer drivers to support Win9X/ME/2000/XP SP1/SP2. If drivers are available from the vendors, we will update them on the GIGABYTE website.</li>\r\n</ol></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/MAINBOARD_GIGABY_4f14f6b38d168_90x90.jpg', 'MAINBOARD_GIGABY_4f14f6b39905d.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326773939, 1326773939, 'MAINBOARD GIGABYTE H61M S2PV (1155)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (39, 1, 0, 'MTB001', 'Dung lượng bộ nhớ : 16GB , 3G Wifi (802.11a/b/g/n) , LCD 9.7" LED - màn hình đa cảm ứng , độ phân giải 1024 x 768 pixels, Bluetooth 2.1 + ERD technology , Camera , Built-in Speaker , microphone, T/ gian sd liên tục 10h nghe nhạc và xem phim .', '<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b">Với "body" <strong>siêu mỏng, siêu nhẹ, siêu "sexy" & bổ sung diện mạo mới</strong> :hẳn iPad 2 sẽ khiến các fan của mình điên đảo vì sự nâng cấp thiết kế này.</span></p>\r\n<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial"> </p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b; font-size: 10pt;"><strong><em><br /></em></strong></span></p>\r\n<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><strong><span style="font-family: Tahoma, sans-serif; color: #2c2b2b">Những ưu điểm của Ipad 2:</span></strong><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"></span></p>\r\n<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b">+<strong> Thiết kế mới</strong>: iPad 2 mỏng hơn (8,8mm) và nhẹ hơn (0,613kg), có nút bấm ở bên cạnh máy để tắt màn hình hay chuyển sang chế độ Mute.</span><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"></span></p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b; font-size: 10pt;"><br /></span></p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"> </span></p>\r\n<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b">+ <strong>Có 2 camera</strong>: camera phía trước: độ phân giải 720p HD và camera phía sau là VGA</span><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"></span></p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b; font-size: 10pt;"><br /></span></p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"> </span></p>\r\n<p style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b">+<strong> Chip vi xử lý A5 </strong>core dual nhanh gấp đôi chip A4 của Ipad đời cũ. Ngoài ra, Bộ xử lý đồ họa của Ipad 2 nhanh gấp 9 lần so với đàn em Ipad.</span><span style="font-size: 10pt; font-family: Tahoma, sans-serif; color: #2c2b2b"></span></p>\r\n<p align="center" style="margin-top: 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; text-align: center; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white"><span style="font-family: Tahoma, sans-serif; color: #2c2b2b; font-size: 10pt;"><br /></span></p>\r\n<p class="MsoNormal"> </p>', 'resized/IPAD2_16GB___3G__4f14ec5789b5a_90x90.jpg', 'IPAD2_16GB___3G__4f14ec57cda9a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326766356, 1326771287, 'IPAD2 16GB - 3G Trắng / đen', 0, '', '', 0, 'Đơn vị', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (40, 1, 0, 'MTB002', 'Dung lượng bộ nhớ : 64GB , Wifi (802.11a/b/g/n) , LCD 9.7" LED - màn hình đa cảm ứng , độ phân giải 1024 x 768 pixels, Bluetooth 2.1 + ERD technology , Camera , Built-in Speaker , microphone, T/ gian sd liên tục 10h nghe nhạc và xem phim .', '<h2 class="Lead">iPad thế hệ hai trang bị phần cứng mạnh với vi xử lý lõi kép Apple 5, hai camera phục vụ Facetime và quay video HD.</h2>\r\n<p class="Normal">Một năm sau khi giới thiệu phiên bản đầu tiên, Apple đã chính thức ra mắt phiên bản nâng cấp của iPad vào đêm qua với nhiều cải tiến cả về kiểu dáng lẫn phần cứng bên trong. Máy thiết kế tương tự iPod Touch với kiểu dáng rất mỏng, chỉ 8,8 mm và cân nặng từ 0,601 kg.</p>\r\n<p class="Normal">iPad 2 vẫn trang bị màn hình đèn nền LED kích thước 9,7 inch công nghệ IPS độ phân giải 1.024 x 768 pixel. Máy có cấu hình tốt với vi xử lý lõi kép Apple A5 xử lý nhanh gấp hai lần và xử lý đồ họa nhanh gấp 9 lần phiên bản cũ nhưng vẫn tiêu thụ điện áp tương tự như Apple A4. Máy có thời lượng sử dụng pin lên tới 10 tiếng và thời gian chờ là 1 tháng.</p>\r\n<p class="Normal">iPad 2 sở hữu hai camera với một có độ phân giải VGA tốc độ 30 khung hình/giây ở phía trước cho tính năng Facetime. Camera còn lại phía sau có thể quay video chuẩn HD 720p với tốc độ 30 khung hình/mỗi giây.</p>\r\n<p class="Normal"><strong>Dưới đây là một số hình ảnh thực tế mẫu máy này.</strong></p>\r\n<p class="Normal"><img src="images/stories/sanpham/ipad2.jpg" width="500" height="360" alt="ipad2" /></p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4772.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4772.jpg" /></p>\r\n<p>iPad 2 đi kèm bao da thông minh mới mang tên Smart Covers.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4792.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4792.jpg" /></p>\r\n<p>Máy tính bảng thế hệ tiếp theo của Apple vẫn trang bị màn hình kích thước 9,7 inch độ phân giải 1.024 x 768 pixel.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands35.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands35.jpg" /></p>\r\n<p>Camera trước cho tính năng Facetime.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4773.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4773.jpg" /></p>\r\n<p>Phím cứng duy nhất trên màn hình.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4784.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4784.jpg" /></p>\r\n<p>Mặt sau máy với lớp vỏ nhôm khối đặc trưng.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4785.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4785.jpg" /></p>\r\n<p>iPad 2 vẫn có các model với dung lượng 16, 32 và 64 GB như trước.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4783.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4783.jpg" /></p>\r\n<p>Cổng kết nối 30 pin độc quyền của Apple phía dưới.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands8.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands8.jpg" /></p>\r\n<p>Thiết kế vuốt cong ở các cạnh gợi nhớ đến iPod Touch.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands13.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands13.jpg" /></p>\r\n<p>Loa cũng đồng thời là lưới tản nhiệt của phiên bản hai lớn hơn khá nhiều so với phiên bản đầu tiên</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands16.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands16.jpg" /></p>\r\n<p>Giắc cấm tai nghe phía trên</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands31.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands31.jpg" /></p>\r\n<p>Phím điều chỉnh âm lượng và cần gạt bật/tắt chế độ im lặng.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands37.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands37.jpg" /></p>\r\n<p>Camera phía sau không được Apple công bố độ phân giải nhưng có thể quay video chuẩn HD.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands22.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/ipad2hands22.jpg" /></p>\r\n<p>Tính năng Facetime trên iPad 2.</p>\r\n<p><img src="file:///D:/CAC%20FILE%20TAM/nova444/sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4794.jpg" tppabs="http://sohoa.vnexpress.net/Files/Subject/3B/9B/3B/BF/20110302-11282077-ipad-hands-img4794.jpg" /></p>\r\n<p>iPad 2 xuất hiện với hai màu đen trắng.</p>', 'resized/IPAD2_64GB___Wif_4f14ec8fdf8b5_90x90.jpg', 'IPAD2_64GB___Wif_4f14ec900a3a7.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326768836, 1326771344, 'IPAD2 64GB - Wifi', 0, '', '', 0, 'Đơn vị', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (41, 1, 0, 'DB001', 'MB Asus P8H61-MLX , CPU Intel Pentium G840(2.8Ghz), RAM 2GB-1333MHz Kmax, HDD 320GB Sata, DVD, HDMI+Sound+Lan onboard, Case DELUX P/S 400W ACBEL, KB Genius K110, Mouse Genius R120', '<table class="pro_v2_table_technical" width="528" border="1" cellpadding="0" cellspacing="0" style="height: 867px;">\r\n<tbody>\r\n<tr class="title">\r\n<td colspan="2">Thông số chung</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Model</td>\r\n<td class="value">MÁY BỘ NOVA OFFICE <br /></td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Bộ vi xử lý</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dòng CPU</td>\r\n<td class="value">Intel Pentium G840(2.8Ghz)</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ CPU</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5088.htm" tppabs="http://www.vatgia.com/s/2.66ghz">(2.8Ghz)<br /></a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Chipset Mainboard</td>\r\n<td class="value">MB Asus P8H61-MLX</td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">DVD,HDD</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Ổ quang (Optical drive)</td>\r\n<td class="value">DVD<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng Ổ cứng</td>\r\n<td class="value">320GB <br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp ổ cứng</td>\r\n<td class="value">SATA</td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Memory</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng RAM</td>\r\n<td class="value">2GB<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại RAM</td>\r\n<td class="value">2GB-1333MHz Kmax</td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Thông số khác</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Card màn hình</td>\r\n<td class="value">Onboard<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Case<br /></td>\r\n<td class="value">DELUX P/S 400W ACBEL</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Power</td>\r\n<td class="value">400W ACBEL,<br /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">Keyboard<br /></td>\r\n<td valign="top">Genius K110<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Mouse</td>\r\n<td class="value">Genius R120</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng, các cổng giao tiếp</td>\r\n<td class="value">• USB<br />• PS2<br />• COM....</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/M__Y_B____NOVA_O_4f14ef3ad7cc1_90x90.jpg', 'M__Y_B____NOVA_O_4f14ef3ae481e.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326772026, 1326772078, 'MÁY BỘ NOVA OFFICE (Văn phòng, Gia đình) (Giao và Bảo Hành Tận n', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (42, 1, 0, 'DB002', 'Intel Core i3 2120M(3.30GHz) / 3MB ,DDR 3-1GB/1333 x 2 , HDD 500GB sata ,KB + Mouse , Sound &VGA HD2000 up to 785MB & Nic Gigabit Onboard, PCI-EX 16X ,DVD RW', '<table border="1" cellpadding="2" cellspacing="0" width="524" style="height: 593px;">\r\n<tbody>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Chipset:</strong></td>\r\n<td width="70%">Intel H61 Express</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Bộ vi xử lý:</strong></td>\r\n<td width="70%">Intel Core i3-2120M (2 x 3.30GHz)</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Bộ nhớ:</strong></td>\r\n<td width="70%">2 x 1GB DDR3, 1333MHz</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Ổ cứng:</strong></td>\r\n<td width="70%">500G SATA (7200 rpm)</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Ổ quang:</strong></td>\r\n<td width="70%">DVD-RW SATA</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Đồ họa:</strong></td>\r\n<td width="70%">Intel HD Graphics 2000 - WIN7 : 785MB</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Drive Bays:</strong></td>\r\n<td width="70%">Three 3.5" bays ; Two 5.25" bays</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Âm thanh:</strong></td>\r\n<td width="70%">Conexant HD Audio (5.1 channel)</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Model:</strong></td>\r\n<td width="70%">Inspiron 620MT (Black)</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>LAN:</strong></td>\r\n<td width="70%">10/100/1000 Mbps</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Nguồn ATX:</strong></td>\r\n<td width="70%">PSU 300W, 24pin</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Form Factor:</strong></td>\r\n<td width="70%">Mini Tower</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Trọng lượng:</strong></td>\r\n<td width="70%">7.9 kg</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Kích thước:</strong></td>\r\n<td width="70%">37.53cm x 17.59cm x 44.22cm (H x W x D)</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Hệ điều hành:</strong></td>\r\n<td width="70%">OPTION<br /></td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Tính năng mở rộng:</strong></td>\r\n<td width="70%">8 x USB 2.0 ports (2 front, 6 back) ; Front: 1 x headphone, 1 x microphone ; Back: 3 x ( line-in, line-out, microphone-in) ; 1 x VGA ; 1 x HDMI ; 3 x PCI-Ex 1X ; 1 x PCI-Ex 16X ; 2 x 5.25" ; 3 x 3.5" ; 4 x SATA</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Keyboard + Mouse Wireless:</strong></td>\r\n<td width="70%">USB</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap"><strong>Bộ nhớ Cache L3:</strong></td>\r\n<td width="70%">3MB</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/M__Y_B____DELL_I_4f14f1caf127a_90x90.jpg', 'M__Y_B____DELL_I_4f14f1cb0a59a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326772166, 1326772683, 'MÁY BỘ DELL INSPIRON INS620MT(GW54K2) BLACK', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (43, 1, 0, 'SER001', 'Quad Core Intel Xeon E5620(2.4GHz, 12MB L2, 1066Mhz) ,CL9 ECC DDR3 4GB/1333 LP RDIMM, HDD 146G SAS 2.5" SFF Slim-HS 10k 6Gbps HDD Hotswap, Serverraid M1015 (0,1,10), DVD, No FDD, Matrox G200e intergrated 16MB DDR2, Dual Lan 10/100/1000 broadcom 5709C, 1PC', '<table class="MsoNormalTable" border="0" cellpadding="0" cellspacing="0" width="483" style="height: 566px;">\r\n<tbody>\r\n<tr>\r\n<td width="105">\r\n<p class="MsoNormal" align="center"><strong><span>MODEL</span></strong></p>\r\n</td>\r\n<td rowspan="2" width="424">\r\n<p class="MsoNormal" align="center"><strong><span>SERVER IBM X3400 M3 (Tower 5U)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" valign="bottom" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>737954A</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Processor</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><span>1xIntel® Xeon® Westmere Quad Core Processor E5620, 2.40GHz, 12M QPI 5.86 GT/sec, LGA1366</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="424">\r\n<p class="MsoNormal"><span><span> </span>*<span> </span>Dual 1366-pin LGA Sockets<br /><span> </span>* Supports up to two Intel® 64-bit Xeon® processor(s) of the same<br /><span> </span>type below:<br /><span> </span>o Intel® Xeon®Processor 5600 Series (Westmere)</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="424">\r\n<p class="MsoNormal"><span><span> </span>o Intel® Xeon®Processor 5500 Series (Nehalem-EP)</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>System Bus</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal"><span><span> </span>* <strong><span>Intel QuickPath Interconnect up to 6.4 GT/s</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105">\r\n<p class="MsoNormal" align="center"><strong><span>OS<br />Software</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><span><span> </span>* Supports Microsoft® Windows Server® 2008 R2 and 2008, Red Hat Enterprise Linux®, SUSE Linux Enterprise Server and VMware ESXi 4.0 embedded hypervisor, Sun Solaris 10</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>System Memory</span></strong></p>\r\n</td>\r\n<td valign="bottom" width="424">\r\n<p class="MsoNormal" align="center"><strong><span>4GB IBM ( 1x4GB) PC3-10600 CL9 ECC DDR3 Chipkill LP RDIMM 1333MHz</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="424">\r\n<p class="MsoNormal" align="center"><span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="424">\r\n<p class="MsoNormal" align="center"><span>16 DIMM slots maximum, 128 GB with DDR-3 1333 MHz RDIMMs1<span> </span>or 48 GB with DDR-3 1333 MHz UDIMMs1</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Storage</span></strong></p>\r\n</td>\r\n<td valign="bottom" width="424">\r\n<p class="MsoNormal" align="center"><strong><span>HDD SAS/SATA 2.5''</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="424">\r\n<p class="MsoNormal"><span><span> </span>8/16 bay(2.5'') hot-swap SAS/SATA or solid state HDDs<br />Up to 8.0TB hot-swap Serial Attached SCSI (SAS) or up to 8.0TB hot-swap Serial ATA (SATA) or up to 800GB hot-swap solid state (SSD) local storage</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Raid Controller</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><span>ServeRAID-SR M1015 SAS/SATA Controller (Raid 0, 1,)<br />Optional (Raid 5, 10 6)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Network Controller</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><span>Integrated dual Gigabit Ethernet (2 ports standard, plus 2 ports optional)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><em><span>Supports 10BASE-T, 100BASE-TX, and 1000BASE-T, RJ45 output</span></em></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Expansion Slots</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal"><span>4 PCIe (4 x8) Gen 2 slots: 2x8 full length, full height; 1 x8 half length, full height; 1 x8 low profile. 4 x8 convertible to 2 x16 via optional risers. Also convertible to 2 PCI-X via optional risers</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Drives</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><span>IBM DVD-ROM</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Power</span></strong></p>\r\n</td>\r\n<td width="424">\r\n<p class="MsoNormal" align="center"><strong><span><span> </span>1x Power Supply<span> </span>920Watt HS</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Form Fact</span></strong></p>\r\n</td>\r\n<td nowrap="nowrap" width="424">\r\n<p class="MsoNormal" align="center"><strong><span>Tower 5U Server Case</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td nowrap="nowrap" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Key - Mouse</span></strong></p>\r\n</td>\r\n<td nowrap="nowrap" width="424">\r\n<p class="MsoNormal" align="center"><strong><span>Keyboard, Mouse USB IBM</span></strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/SERVER_IBM_X3400_4f14f21e1e520_90x90.jpg', 'SERVER_IBM_X3400_4f14f21e29f12.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326772291, 1326772766, 'SERVER IBM X3400M3 7379-54A (Tower 5U)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (44, 1, 0, 'SER002', 'Quad Core Intel Xeon E5620(2.4GHz, 12MB L2, 1066Mhz), ECC DDR3 4GB/1333, HDD 146G SAS 2.5" 10K Serverraid M1015 (0,1,10), DVD , No FDD,Matrox G200e intergrated 16MB DDR2, Dual Lan 10/100/1000,1PCI EX-16X, 4PCI-EX 8X, 1PCI,920W Hotswaps 1/2,KB , mouse', '<table class="MsoNormalTable" width="523" border="0" cellpadding="0" cellspacing="0" style="height: 581px;">\r\n<tbody>\r\n<tr>\r\n<td width="105">\r\n<p class="MsoNormal" align="center"><strong><span>MODEL</span></strong></p>\r\n</td>\r\n<td rowspan="2" width="411">\r\n<p class="MsoNormal" align="center"><strong><span>SERVER IBM X3500 M3 (Tower 5U)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>738042A</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Processor</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><span>1 x<span> </span>Intel Xeon 4C Processor Model E5620 80W 2.40GHz/1066MHz/12MB</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="411">\r\n<p class="MsoNormal"><span><span> </span>*<span> </span>Dual 1366-pin LGA Sockets<br /><span> </span>* Supports up to two Intel® 64-bit Xeon® processor(s) of the same<br /><span> </span>type below:<br /><span> </span>o Intel® Xeon®Processor 5600 Series (Westmere)</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="411">\r\n<p class="MsoNormal"><span><span> </span>o Intel® Xeon®Processor 5500 Series (Nehalem-EP)</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>System Bus</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal"><span><span> </span>* <strong><span>Intel QuickPath Interconnect up to 6.4 GT/s</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105">\r\n<p class="MsoNormal" align="center"><strong><span>OS<br />Software</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><span><span> </span>* Supports Microsoft® Windows Server® 2008 R2 and 2008, Red Hat Enterprise Linux®, SUSE Linux Enterprise Server and VMware ESXi 4.0 embedded hypervisor, Sun Solaris 10</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>System Memory</span></strong></p>\r\n</td>\r\n<td valign="bottom" width="411">\r\n<p class="MsoNormal" align="center"><strong><span>4GB IBM ( 1x4GB) PC3-10600 CL9 ECC DDR3 Chipkill LP RDIMM 1333MHz</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="411">\r\n<p class="MsoNormal" align="center"><span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="411">\r\n<p class="MsoNormal" align="center"><span>16 DIMM slots maximum, 192 GB with DDR-3 1333 MHz RDIMMs1<span> </span>or 48 GB with DDR-3 1333 MHz UDIMMs1</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Storage</span></strong></p>\r\n</td>\r\n<td valign="bottom" width="411">\r\n<p class="MsoNormal" align="center"><strong><span><span> </span>HDD SAS/SATA 2.5" Hot Swap</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="bottom" width="411">\r\n<p class="MsoNormal"><span><span> </span>8/24 bay(2.5'') hot-swap SAS/SATA or solid state HDDs<br />Up to 8.0TB hot-swap Serial Attached SCSI (SAS) or up to 8.0TB hot-swap Serial ATA (SATA) or up to 800GB hot-swap solid state (SSD) local storage</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Raid Controller</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><span>ServeRAID-SR M1015 SAS/SATA Controller (Raid 0, 1,), <br />Optional (Raid 5, 10, 6)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="105">\r\n<p class="MsoNormal" align="center"><strong><span>Network Controller</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><span>Integrated dual Gigabit Ethernet (2 ports standard, plus 2 ports optional)</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><em><span>Supports 10BASE-T, 100BASE-TX, and 1000BASE-T, RJ45 output</span></em></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Expansion Slots</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal"><span>Six PCIe and one PCI standard; additional two PCI-X available via configure to order and requires removal of one PCIe slot</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Drives</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><span><span> </span>DVD-ROM</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Power</span></strong></p>\r\n</td>\r\n<td width="411">\r\n<p class="MsoNormal" align="center"><strong><span><span> </span>1x Power Supply<span> </span>920watt HS</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Form Fact</span></strong></p>\r\n</td>\r\n<td width="411" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Tower 5U Server Case</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="105" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Key - Mouse</span></strong></p>\r\n</td>\r\n<td width="411" nowrap="nowrap">\r\n<p class="MsoNormal" align="center"><strong><span>Keyboard, Mouse <br /></span></strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/SERVER_IBM_X3500_4f14f244f1c12_90x90.jpg', 'SERVER_IBM_X3500_4f14f2450a2e2.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326772453, 1326772805, 'SERVER IBM X3500M3 7380-42A (Tower 5U)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (45, 1, 0, 'HDD001', '60Gb COSAIR SSD 2.5", Sata 3 - Internal - đọc 550MB/s, ghi 500MB/s , IOPS 85.000', '<table width="513" align="center" border="1class=" cellpadding="0" cellspacing="0" style="height: 534px;">\r\n<tbody>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5116.htm" tppabs="http://www.vatgia.com/s/corsair">CORSAIR</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích cỡ</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5116.htm" tppabs="http://www.vatgia.com/s/2.5+inch">2.5 inch</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng (GB)</td>\r\n<td class="value">60</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5116.htm" tppabs="http://www.vatgia.com/s/sata+iii+%286gb%2Fs%29">SATA III (6GB/s)</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng</td>\r\n<td class="value">SATA 6Gb/s (SATA 3) connectivity <br /><br />High performance SandForce SF-2200 SSD controller <br /><br />Native TRIM support (O/S support required) <br /><br />RAID Support <br /><br />BGC (Background Garbage Collection) <br /><br />Increased reliability and quieter operation over standard hard disk drives <br /><br />Significantly lower power usage than traditional hard drives for increased notebook battery life <br /><br />2.5" form factor for your portable computer needs <br /><br />Included 2.5" to 3.5" bracket for installation on your desktop computer</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ đọc (MB/s)</td>\r\n<td class="value">550</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ ghi (MB/s)</td>\r\n<td class="value">490</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HDD_LAPTOP_60GB__4f14f3a832c6a_90x90.jpg', 'HDD_LAPTOP_60GB__4f14f3a839db5.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326772962, 1326773160, 'HDD LAPTOP 60GB COSAIR SSD FORCE 3', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (46, 1, 0, 'HDD002', '90Gb COSAIR SSD 2.5", Sata 3 - Internal - đọc 550MB/s, ghi 500MB/s , IOPS 85.000', '<table style="height: 611px;" cellspacing="0" cellpadding="0" border="1class=" align="center" width="477">\r\n<tbody>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/corsair" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5092.htm" class="text_link_v2">CORSAIR</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kích cỡ</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/2.5+inch" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5092.htm" class="text_link_v2">2.5 inch</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng (GB)</td>\r\n<td class="value">90</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp</td>\r\n<td class="value"><a tppabs="http://www.vatgia.com/s/sata+iii+%286gb%2Fs%29" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5092.htm" class="text_link_v2">SATA III (6GB/s)</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tính năng</td>\r\n<td class="value">IOPS 85.000 <br />SATA 6Gb/s (SATA 3) connectivity <br /><br />High performance SandForce SF-2200 SSD controller <br /><br />Native TRIM support (O/S support required) <br /><br />RAID Support <br /><br />BGC (Background Garbage Collection) <br /><br />Increased reliability and quieter operation over standard hard disk drives <br /><br />Significantly lower power usage than traditional hard drives for increased notebook battery life <br /><br />2.5" form factor for your portable computer needs <br /><br />Included 2.5" to 3.5" bracket for installation on your desktop computer</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ đọc (MB/s)</td>\r\n<td class="value">550</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tốc độ ghi (MB/s)</td>\r\n<td class="value">500</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HDD_Laptop_90GB__4f14f35534dfb_90x90.jpg', 'HDD_Laptop_90GB__4f14f35542a5c.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326773077, 1326773077, 'HDD Laptop 90GB COSAIR SSD FORCE 3', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (47, 1, 0, 'RAM001', '1GB DDRAM 2, PC 6400 (BUS 800) COSAIR', '', 'resized/__COSAIR_1GB_DDR_4f14f413b5402_90x90.jpg', '__COSAIR_1GB_DDR_4f14f413c225a.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326773267, 1326773494, 'COSAIR 1GB DDRAM 2 Notebook PC 6400 (BUS 800)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (48, 1, 0, 'RAM002', '4GBDDRAM3, PC 10600 (BUS 1333) KING MAX', '<table class="pro_v2_table_technical" border="1" cellspacing="0" bordercolor="#bbbbbb" cellpadding="0" width="499" style="height: 129px;">\r\n<tbody>\r\n<tr class="title">\r\n<td colspan="2" align="middle">Model</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=292.htm" tppabs="http://www.vatgia.com/s/kingmax">KingMax</a></td>\r\n</tr>\r\n<tr class="title">\r\n<td colspan="2">Thông số kỹ thuật</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=292.htm" tppabs="http://www.vatgia.com/s/2gb">4GB</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại RAM</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=292.htm" tppabs="http://www.vatgia.com/s/ddr2">DDR3</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bus</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=292.htm" tppabs="http://www.vatgia.com/s/800mhz">1333Hz</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/KINGMAX_4GB_DDR__4f14f4777bce0_90x90.jpg', 'KINGMAX_4GB_DDR__4f14f4778ac42.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326773367, 1326773535, 'KINGMAX 4GB DDR 3 BUS 1333 Notebook', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (51, 1, 0, 'MBO002', 'Chip INTEL X79 - SK 2011 , Spp 4 X DDRAM 3(2133/1866/1600) up to 32GB, Sound Creative X-Fi Extreme Fidelity and EAX advanced HD 5.0 channel & Lan Gygabit (chipset killer E2100 with 1G memory), 4 SATA 2.0 Raid (0,1,5,10), 1 PCI, 2 PCI Express 16X , 1 PCI -', '<table align="center" border="1class=" cellpadding="0" cellspacing="0" width="481" style="height: 1250px;">\r\n<tbody>\r\n<tr>\r\n<td class="name">Manufacture (Hãng sản xuất)</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5175.htm" tppabs="http://www.vatgia.com/s/gigabyte">GIGABYTE</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Socket</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5175.htm" tppabs="http://www.vatgia.com/s/intel+socket+2011">Intel Socket 2011</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Form Factor</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5175.htm" tppabs="http://www.vatgia.com/s/eatx">eATX</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Chipset</td>\r\n<td class="value"><a class="text_link_v2" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5175.htm" tppabs="http://www.vatgia.com/s/intel+x79">Intel X79</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">CPU onboard</td>\r\n<td class="value">Không có</td>\r\n</tr>\r\n<tr>\r\n<td class="name">CPU Support (Loại CPU hỗ trợ) (1)</td>\r\n<td class="value">• Intel Core i7<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">CPU Support (Loại CPU hỗ trợ) (2)</td>\r\n<td class="value">• -<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Front Side Bus (FSB)</td>\r\n<td class="value">• -<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Slot (Số khe cắm ram)</td>\r\n<td class="value">4</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Max Memory Support (Gb)</td>\r\n<td class="value">32</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Type (Loại Ram sử dụng)</td>\r\n<td class="value">DDR3</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Bus</td>\r\n<td class="value">• 1066Mhz<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">OC</td>\r\n<td class="value">2133MHz OC</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Internal I/O Connectors (Các kết nối bên trong)</td>\r\n<td class="value">• USB 2.0 connectors<br />• SATA connectors<br />• Fan connectors<br />• 24-pin ATX Power connector<br />• 8-pin ATX 12V Power connector<br />• System panel connector<br />• S/P DIF input/output pin header<br />• TPM connector<br />• SATA 6Gb/s connectors<br />• USB 3.0 connectors<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Back Panel I/O Ports (Cổng kết nối phía sau)</td>\r\n<td class="value">• External SATA port<br />• LAN (RJ45) port<br />• USB 2.0/1.1 ports<br />• PS/2 port<br />• Audio I/O<br />• S/PDIF Out<br />• USB 3.0/2.0 ports<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng USB và SATA</td>\r\n<td class="value">• USB 3.0 x 4<br />• SATA II 3Gb/s x 4<br />• SATA III 6Gb/s x 4<br />• eSATA x 2<br />• USB 2.0 x 14<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Expansion Slot (Khe mở rộng)</td>\r\n<td class="value">• PCI<br />• PCI Express x16 (x2)<br />• PCI Express x8<br />• PCI Express x1 (x2)<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Other Supports (Công nghệ hỗ trợ khác)</td>\r\n<td class="value">• RAID<br />• SLI<br />• CrossFireX<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Other Features (Tính năng khác)</td>\r\n<td class="value">Support for @BIOS <br />Support for Q-Flash <br />Support for Xpress BIOS Rescue <br />Support for Download Center <br />Support for Xpress Install <br />Support for Xpress Recovery2 <br />Support for EasyTune <br />* Available functions in EasyTune may differ by motherboard model. <br />Support for Smart 6™ <br />Support for eXtreme Hard Drive (X.H.D) <br />Support for ON/OFF Charge <br />Support for Cloud OC <br />Support for 3TB+ Unlock <br />Support for TouchBIOS <br />Support for Q-Share</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/MAINBOARD_GIGABY_4f14f75335def_90x90.jpg', 'MAINBOARD_GIGABY_4f14f75343bdd.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326774016, 1326774099, 'MAINBOARD GIGABYTE - GA - G1. ASSASSIN 2 (2011)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (52, 1, 0, 'CPU001', '12MB L3 - LGA 2011 - 6 Cores , 12 threads - KHÔNG FAN', '<table style="height: 424px;" border="1class=" width="482">\r\n<tbody>\r\n<tr class="infoSection">\r\n<td colspan="2">Essentials</td>\r\n</tr>\r\n<tr id="Launched" class="even odd">\r\n<td>\r\n<div class="l"><span>Status</span></div>\r\n</td>\r\n<td>Launched</td>\r\n</tr>\r\n<tr id="BornOnDate">\r\n<td>\r\n<div class="l"><span>Launch Date</span></div>\r\n</td>\r\n<td>Q4''11</td>\r\n</tr>\r\n<tr id="ProcessorNumber" class="even odd">\r\n<td>\r\n<div class="l"><span>Processor Number</span></div>\r\n</td>\r\n<td>i7-3930K</td>\r\n</tr>\r\n<tr id="CoreCount">\r\n<td>\r\n<div class="l"><span># of Cores</span></div>\r\n</td>\r\n<td>6</td>\r\n</tr>\r\n<tr id="ThreadCount" class="even odd">\r\n<td>\r\n<div class="l"><span># of Threads</span></div>\r\n</td>\r\n<td>12</td>\r\n</tr>\r\n<tr id="ClockSpeed">\r\n<td>\r\n<div class="l"><span>Clock Speed</span></div>\r\n</td>\r\n<td>3.2 GHz</td>\r\n</tr>\r\n<tr id="ClockSpeedMax" class="even odd">\r\n<td>\r\n<div class="l"><span>Max Turbo Frequency</span></div>\r\n</td>\r\n<td>3.8 GHz</td>\r\n</tr>\r\n<tr id="Cache">\r\n<td>\r\n<div class="l"><span>Intel® Smart Cache</span></div>\r\n</td>\r\n<td>12 MB</td>\r\n</tr>\r\n<tr id="BusCoreRatio" class="even odd">\r\n<td>\r\n<div class="l"><span>Bus/Core Ratio</span></div>\r\n</td>\r\n<td>57</td>\r\n</tr>\r\n<tr id="Bus">\r\n<td>\r\n<div class="l"><span>DMI</span></div>\r\n</td>\r\n<td>5 GT/s</td>\r\n</tr>\r\n<tr id="InstructionSet" class="even odd">\r\n<td>\r\n<div class="l"><span>Instruction Set</span></div>\r\n</td>\r\n<td>64-bit</td>\r\n</tr>\r\n<tr id="InstructionSetExtensions">\r\n<td>\r\n<div class="l"><span>Instruction Set Extensions</span></div>\r\n</td>\r\n<td>SSE4.2, AVX</td>\r\n</tr>\r\n<tr id="Embedded" class="even odd">\r\n<td>\r\n<div class="l"><span>Embedded Options Available</span></div>\r\n<div class="fieldIcon"><a tppabs="http://ark.intel.com/search/advanced?Embedded=true" href="file:///D:/CAC%20FILE%20TAM/nova444/nova.com.vn/product-detail.aspx-ProductId=5223.htm" title="Find other products with Embedded Options Available" alt="Find other products with Embedded Options Available"><img tppabs="http://ark.intel.com/sites/sitewide/pix/icons/search_16w.gif" src="file:///D:/CAC%20FILE%20TAM/nova444/ark.intel.com/sites/sitewide/pix/icons/search_16w.gif" /></a></div>\r\n</td>\r\n<td><span class="no"><span>No</span></span></td>\r\n</tr>\r\n<tr id="Lithography">\r\n<td>\r\n<div class="l"><span>Lithography</span></div>\r\n</td>\r\n<td>32nm</td>\r\n</tr>\r\n<tr id="MaxTDP" class="even odd">\r\n<td>\r\n<div class="l"><span>Max TDP</span></div>\r\n</td>\r\n<td>130 W</td>\r\n</tr>\r\n<tr id="Price1KUnits" class="over">\r\n<td>\r\n<div class="l"><span>Recommended Customer Price</span></div>\r\n</td>\r\n<td>$583 - $594</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/CPU_Intel_Core_i_4f14f7a7e49bb_90x90.jpg', 'CPU_Intel_Core_i_4f14f7a7efc9e.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326774184, 1326774184, 'CPU Intel Core i7 3930K(3.2GHz)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (53, 1, 0, 'CPU002', '6MB L3 - LGA 1155 - 4 Cores , 4 threads - Sandy Bridge - Phiếu BH INTEL', '<table width="478" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr height="18">\r\n<td class="xl27" width="162"><span><br />Brand</span></td>\r\n<td class="xl27" width="292"><span>Intel</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Series</span></td>\r\n<td class="xl27" width="292"><span>Core i5</span></td>\r\n</tr>\r\n<tr height="18">\r\n<td class="xl27" width="162" height="18"><span>Model</span></td>\r\n<td class="xl27" width="292"><span>BX80623I52320</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>CPU Socket Type</span></td>\r\n<td class="xl27" width="292"><span>LGA 1155</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Core</span></td>\r\n<td class="xl27" width="292"><span>Sandy Bridge</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Multi-Core</span></td>\r\n<td class="xl27" width="292"><span>Quad-Core</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Name</span></td>\r\n<td class="xl27" width="292"><span>Core i5-2320</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Operating Frequency</span></td>\r\n<td class="xl27" width="292"><span>3.0GHz (3.3GHz Turbo Boost)</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>L2 Cache</span></td>\r\n<td class="xl27" width="292"><span>4 x 256KB</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>L3 Cache</span></td>\r\n<td class="xl27" width="292"><span>6MB</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Manufacturing Tech</span></td>\r\n<td class="xl27" width="292"><span>32 nm</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>64 bit Support</span></td>\r\n<td class="xl27" width="292"><span>Yes</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Hyper-Threading Support</span></td>\r\n<td class="xl27" width="292"><span>No</span></td>\r\n</tr>\r\n<tr height="34">\r\n<td class="xl27" width="162" height="34"><span>Virtualization Technology Support</span></td>\r\n<td class="xl27" width="292"><span>Yes</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Integrated Graphics</span></td>\r\n<td class="xl27" width="292"><span>Intel HD Graphics 2000</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Graphics Base Frequency</span></td>\r\n<td class="xl27" width="292"><span>850MHz</span></td>\r\n</tr>\r\n<tr height="34">\r\n<td class="xl27" width="162" height="34"><span>Graphics Max Dynamic Frequency</span></td>\r\n<td class="xl27" width="292"><span>1.1GHz</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Multimedia Instruction</span></td>\r\n<td class="xl27" width="292"><span>SSE4.1/4.2, AVX</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Thermal Design Power</span></td>\r\n<td class="xl27" width="292"><span>95W</span></td>\r\n</tr>\r\n<tr height="17">\r\n<td class="xl27" width="162" height="17"><span>Cooling Device</span></td>\r\n<td class="xl27" width="292"><span><span>Heatsink and Fan included</span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/CPU_Intel_Core_i_4f14fab0ed5b0_90x90.jpg', 'CPU_Intel_Core_i_4f14fab1050ce.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326774924, 1326774961, 'CPU Intel Core i5 2320(3.0GHz)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (54, 1, 0, 'RAM003', 'BUS 1600 TEAM ELITE - BGA – BOX', '<table width="483" style="height: 168px;">\r\n<tbody>\r\n<tr class="row" id="first">\r\n<td class="td_style" id="first"><span><span>Suitable for</span></span></td>\r\n<td class="td_style" id="last"><span><span>Desktop PC</span></span></td>\r\n</tr>\r\n<tr class="row" id="r1">\r\n<td class="td_style" id="first"><span><span>Module Type</span></span></td>\r\n<td class="td_style" id="last"><span><span>240Pin L-DIMM 1600</span></span></td>\r\n</tr>\r\n<tr class="row" id="r2">\r\n<td class="td_style" id="first"><span><span>DRAM Density</span></span></td>\r\n<td class="td_style" id="last"><span><span>256x8</span></span></td>\r\n</tr>\r\n<tr class="row" id="r3">\r\n<td class="td_style" id="first"><span><span>Data transfer bandwidth</span></span></td>\r\n<td class="td_style" id="last"><span><span>12,800MB/Sec (PC3 12,800)</span></span></td>\r\n</tr>\r\n<tr class="row" id="r4">\r\n<td class="td_style" id="first"><span><span>CL-value</span></span></td>\r\n<td class="td_style" id="last"><span><span>11-11-11-28</span></span></td>\r\n</tr>\r\n<tr class="row" id="r5">\r\n<td class="td_style" id="first"><span><span>Working voltage</span></span></td>\r\n<td class="td_style" id="last"><span><span>1.5V± 0.075V</span></span></td>\r\n</tr>\r\n<tr class="row" id="r6">\r\n<td class="td_style" id="first"><span><span>PCB</span></span></td>\r\n<td class="td_style" id="last"><span><span>6 layer PCB</span></span></td>\r\n</tr>\r\n<tr class="row" id="r7">\r\n<td class="td_style" id="first"><span><span>Extra features</span></span></td>\r\n<td class="td_style" id="last"><span><span>Aluminum heat-sink</span></span></td>\r\n</tr>\r\n<tr class="row" id="last">\r\n<td class="td_style" id="first"><span><span>Warranty</span></span></td>\r\n<td class="td_style" id="last"><span><span>Lifetime warranty</span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/4GB_DDRAM_3_1600_4f153a1e7bc85_90x90.jpg', '4GB_DDRAM_3_1600_4f153a1e88c21.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326790993, 1326791198, '4GB DDRAM 3 1600 TEAM ELITE', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (55, 1, 0, 'RAM004', 'BUS 1333 KINGSTON - BGA – BOX * Tem C/H * - 8 Chip', '<table width="461" align="center" border="1class=" cellpadding="0" cellspacing="0" style="height: 147px;">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Model</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/kingmax">Kingston</a></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số kỹ thuật</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/2gb">2GB</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Loại RAM</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/ddr3">DDR3</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bus</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/1333mhz">1333MHz</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/KINGSTON_2GB_DDR_4f153a39655f4_90x90.jpg', 'KINGSTON_2GB_DDR_4f153a3973673.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791159, 1326791225, 'KINGSTON 2GB DDRAM 3 1333 (8 CHIP)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (56, 1, 0, 'HDD003', '7.200rpm – SATA 600 Serial ATA III ( 6Gb/s ) CAVIAR BLACK- Công nghệ 2 nhân, h/s tối ưu', '<table cellspacing="3" cellpadding="3" border="0" id="table1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Dung lượng<br /></strong></td>\r\n<td>750Gb</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Chuẩn cắm<br /></strong></td>\r\n<td>Sata III</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Bộ nhớ đệm<br /></strong></td>\r\n<td>64Mb cache</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Tốc độ vòng quay<br /></strong></td>\r\n<td>7200 vòng phút</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Tốc độ truyền dữ liệu<br /></strong></td>\r\n<td>6Gb/s</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Kích thước<br /></strong></td>\r\n<td>3.5"</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dùng cho<br /></strong></td>\r\n<td>PC</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791331, 1326791331, 'HDD 750Gb WESTERN SATA III(3) CAVIAR BLACK', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (57, 1, 0, 'HDD004', '7.200rpm – SATA 600 Serial ATA III( 6Gb/s)-32MB-BLUE POWER- Tiết kiệm năng lượng 40%', '<table style="height: 113px;" cellspacing="0" cellpadding="0" border="1" width="454" class="raovat_table_technical">\r\n<tbody>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/western+digital" class="text_link_v2">WESTERN <br /></a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dung lượng ổ(GB)</td>\r\n<td class="value">1000</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp</td>\r\n<td class="value">sata</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Vòng quay</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/7200rpm" class="text_link_v2">7200rpm</a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/HDD_1Tb_WESTERN__4f153b17562a6_90x90.jpg', 'HDD_1Tb_WESTERN__4f153b176c1c1.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791447, 1326791447, 'HDD 1Tb WESTERN SATA III(3) BLUE POWER', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (58, 1, 0, 'VGA001', 'ATI Radeon HD6990 PCI Express V2.1 – DVI-I–256Bit - DDR5 -HDTV-HDCP,4 mini display port,CrossfireX', '<table style="height: 324px;" width="441" cellspacing="0" cellpadding="0" border="1" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="name">Manufacture (Hãng sản xuất)</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/gigabyte" class="text_link_v2">GIGABYTE</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Chipset</td>\r\n<td class="value">ATI<br />Radeon HD 6990</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Type (Kiểu bộ nhớ)</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/gddr5" class="text_link_v2">GDDR5</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Size (Dung lượng bộ nhớ)</td>\r\n<td class="value">4096MB</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Interface (Giao tiếp bộ nhớ)</td>\r\n<td class="value">256-bit</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Core Clock - Engine Clock (Xung nhân) (MHz)</td>\r\n<td class="value">830</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Memory Clock (Xung bộ nhớ) (MHz)</td>\r\n<td class="value">5000</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Max Resolution (Độ phân giải tối đa)</td>\r\n<td class="value">2560 x 1600</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Connectors (Cổng giao tiếp)</td>\r\n<td class="value">• DVI<br />• Display Port (Mini DP)<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Technologies Support (Công nghệ hỗ trợ)</td>\r\n<td class="value">• AMD Eyefinity<br />• RoHS compliant<br />• CrossfireX<br />• AMD EyeSpeed</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/VGA_4GB_GIGA_R69_4f153b8ca1fe1_90x90.jpg', 'VGA_4GB_GIGA_R69_4f153b8cb08bd.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791564, 1326791564, 'VGA 4GB GIGA R699D5-4GD-B', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (59, 1, 0, 'VGA002', 'ATI Radeon RHD 5450 - DDR3 1GB - 64bit - S/p D-sub/ DVI (HDCP) / HDMI Port (BOX)', '<strong>Specification:</strong><br />\r\n<table cellspacing="0" cellpadding="0" class="spectable">\r\n<tbody>\r\n<tr>\r\n<td>Graphics Engine</td>\r\n<td><strong>ATI</strong> Radeon HD 5450</td>\r\n</tr>\r\n<tr>\r\n<td>Bus Standard</td>\r\n<td>PCI Express 2.1</td>\r\n</tr>\r\n<tr>\r\n<td>Video Memory</td>\r\n<td>DDR3 1G</td>\r\n</tr>\r\n<tr>\r\n<td>Effective Memory Size</td>\r\n<td>1024 MB</td>\r\n</tr>\r\n<tr>\r\n<td>Engine Clock</td>\r\n<td>650 MHz</td>\r\n</tr>\r\n<tr>\r\n<td>Memory Clock</td>\r\n<td>800 MHz ( 400 MHz DDR3 )</td>\r\n</tr>\r\n<tr>\r\n<td>Memory Interface</td>\r\n<td>64-bit</td>\r\n</tr>\r\n<tr>\r\n<td>D-Sub Max Resolution</td>\r\n<td>2048 x 1536</td>\r\n</tr>\r\n<tr>\r\n<td>DVI Max Resolution</td>\r\n<td>2560 x 1600</td>\r\n</tr>\r\n<tr>\r\n<td>D-Sub Output</td>\r\n<td>Yes x 1</td>\r\n</tr>\r\n<tr>\r\n<td>DVI Output</td>\r\n<td>Yes x 1 (DVI-I) <br /></td>\r\n</tr>\r\n<tr>\r\n<td>HDMI Output</td>\r\n<td>Yes x 1</td>\r\n</tr>\r\n<tr>\r\n<td>HDCP Support</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>Software Bundled</td>\r\n<td>ASUS Utilities & Driver<br /></td>\r\n</tr>\r\n<tr>\r\n<td>Low Profile Bracket Bundled</td>\r\n<td>Yes ( 2 slots )</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />', '', '', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791637, 1326791637, 'VGA 1GB ASUS EAH5450 Silent /DI/1GD3 (BOX)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (60, 1, 0, 'SC001', 'PCI Express , 24 bit decoder & Recoder , 109DB SNR, X-FI CMSS - 3D& crystalllizer , S/p 7.1 , 64MB X-Fi Ram , mode switcher , Internal I/O , Win vista, Dolbydigital live, ASIO 2.0 , Cyberlink , Win XP, Win 7 …', '<strong>Mang đến âm thanh chất lượng cao và kết nối với Pro Gamers</strong><span></span>\r\n<ul>\r\n<li>Hiệu ứng âm thanh 5.0 EAX<sup>®</sup> trung thực khi chơi game</li>\r\n<li>Âm thanh 3D định vị chính xác - thậm chí với tai nghe thông thường</li>\r\n<li>Âm thanh tăng tốc dành cho chơi game</li>\r\n<li>Chat voice rõ hơn để truyền thông giọng nói tốt hơn</li>\r\n<li>Tương thích với máy tính cá nhận có trang bị PCI Express</li>\r\n</ul>\r\n<p>Được các gam thủ chuyên nghiệp lựa chọn, card âm thanh PCI Express Sound Blaster X-Fi Titanium Fatal1ty Champion Series mang đến trải nghiệm âm thanh tuyệt hảo khi chơi game. Bạn sẽ được thưởng thức âm thanh trung trực từ EAX<sup>®</sup> 5 hiệu ứng âm thanh và âm thanh định vị 3D nhờ đó bạn có thể xác định được vị trí đối thủ bằng âm thanh - thậm chí qua tai nghe thông thường. Hơn nữa, mang đến chất lượng âm thanh vượt trội với phần cứng tăng tốc âm thanh và X-RAM.</p>\r\n<table style="height: 334px;" cellspacing="0" cellpadding="5" border="0" width="495">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>EAX trung thực<sup>®</sup> hiệu ứng âm thanh 5.0 sound</strong><br />Cảm nhận được cả tiếng súng nổ và rung chuyển trái đất. EAX<sup>®</sup> 5.0 mang lại các hiệu ứng âm thanh trung thực giúp bạn có thể chơi game hàng giờ.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>EAX<sup>®</sup> và lưu trữ âm thanh 3D cho Windows Vista<sup>®</sup></strong><br />Sử dụng Windows Vista<sup>®</sup>? Creative ALchemy lưu trữ hiệu ứng âm thanh vòm để trải nghiệm game thú vị hơn.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Âm thanh 3D định vị chính xác</strong><br />Lắng nghe âm thanh định vị 3D chính xác, bạn có thể xác định được vị trí kẻ thù chỉ bằng âm thanh. Hơn nữa, X-Fi CMSS<sup>®</sup>-3D mang đến âm thanh vòm thú vị với tai nghe stereo thông thường.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Phần cứng tăng tốc</strong></p>\r\n<ul>\r\n<li>Kết quả chơi game vượt trội với âm thanh tăng tốc nhờ phần cứng.</li>\r\n<li>Tăng tốc hơn với Quake 4, Battlefield 2, Prey, Unreal Tournament 3 và các đặc điểm vượt trội khác của X-RAM.</li>\r\n</ul>\r\n<p><strong>Chat bằng giọng nói rõ hơn</strong></p>\r\n<ul>\r\n<li>Cắm tai nghe và lắng nghe sự khác biệt tức thì. Với đầu vào chất lượng cao và phần cứng xử lý âm thanh, thành viên trong đội của bạn sẽ nghe thấy âm thanh to và rõ ràng.</li>\r\n</ul>\r\n<table style="height: 440px;" cellspacing="0" cellpadding="5" border="0" width="500">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Tăng chất lượng chơi game</strong><br />Được thiết kế dành cho chơi game với EAX trung thực<sup>®</sup>các hiệu ứng âm thanh 5.0.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Dolby Digital Live</strong><br />Kết nối với hệ thống loa rạp hát bằng dây cáp số đơn (có riêng) với âm thanh vòm 5.1.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Tương thích với Windows Vista</strong><br />Tuân thủ theo UAA đã chứng nhận và tương thích với Windows Vista.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Kèm theo Gaming X-Fi I/O drive</strong><br />Sẵn sàng bật chế độ chơi game chỉ cần bấm nút! Dễ dàng sử dụng trong môi trường tối với nút chiếu sáng lưng, kích hoạt các đặc điểm chơi game X-Fi tức thì.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table style="height: 330px;" cellspacing="0" cellpadding="5" border="0" width="470">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n<td>Cắm trực tiếp tai nghe vào đầu vào mini, không cần có đầu giắc.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td>Điều chỉnh âm lượng của cả headphone và microphone bằng bộ điều khiển âm lượng mới. Được thiết kế đặc biệt để kéo ra và đẩy vào, giúp bạn có thể đóng khoang ổ đĩa trên máy tính kiểu tháp.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Ghi âm bài hát của bạn</strong><br />PCI Express Sound Blaster X-Fi Titanium có đầu vào và driver trễ thấp ASIO giúp ghi âm tốt.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Giải pháp hoàn hảo cho nghe nhạc, xem phim và ghi âm.</strong></p>\r\n<table style="height: 220px;" cellspacing="0" cellpadding="5" border="0" width="487">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Đem lại chất lượng âm thanh hay hơn cho nhạc và phim được tải về</strong><br />Mang đến âm thanh hay hơn với công nghệ âm thanh Xtreme Fidelity lưu trữ chi tiết và rõ nét cho các file nhạc nén như MP3s.</td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><strong>Âm thanh vòm từ phim DVD</strong><br />Trải nghiệm phim DVD với THX<sup>®</sup> âm thanh vòm được chứng nhận và phần mềm PowerDVD với giải mã DTS-ES<sup>®</sup> và Dolby Digital<sup>®</sup> -EX (Yêu cầu có kết nối Internet).</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Kết nối</strong></p>\r\n<p><strong>Kết nối phía sau</strong><br />Dễ dàng kết nối thiết bị âm thanh yêu thích của bạn.</p>', 'resized/Sound_Card_CREAT_4f153cdb4d84d_90x90.jpg', 'Sound_Card_CREAT_4f153cdb5cb1f.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791772, 1326792116, 'Sound Card CREATIVE XFI Titanium Fatality Champion PCIE', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (61, 1, 0, 'SC002', '3D - Treble - Bass - Digital - USB (FOR NOTEBBOK & PC)', '<table style="height: 152px;" cellspacing="0" cellpadding="0" bordercolor="#bbbbbb" border="1" width="520" class="pro_v2_table_technical">\r\n<tbody>\r\n<tr>\r\n<td class="name">Hãng sản xuất (Manufacturer)</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/creative" class="text_link_v2">CREATIVE</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Kênh ra (Channel)</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/5.1" class="text_link_v2">5.1</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tần số (Sample Rate)</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/96khz" class="text_link_v2">96Khz</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Digital Audio</td>\r\n<td class="value"><a href="http://www.vatgia.com/s/24bit" class="text_link_v2">24bit</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Giao tiếp với máy tính (Interface)</td>\r\n<td class="value">USB</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng vào (Line in)</td>\r\n<td class="value">• USB<br /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Cổng ra (Line Out)</td>\r\n<td class="value">• USB</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/SOUND_CARD_CREAT_4f153cc1d4dc2_90x90.jpg', 'SOUND_CARD_CREAT_4f153cc1e1eee.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326791873, 1326791873, 'SOUND CARD CREATIVE XFI USB (5.1)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (62, 1, 0, 'DVD001', 'USB 2.0 – R8X – W8X – RW6X - EXTERNAL', '<table border="1" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="excel2">Colour available</td>\r\n<td class="excel2">White, Black</td>\r\n</tr>\r\n<tr>\r\n<td class="excel3">Features</td>\r\n<td class="excel7">• USB powered</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">• Support 12cm and 8cm disc</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">• Emergency disc eject function</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">• High effcient power saving modes</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">• SMART-X smart monitoring and adjusting read-speed</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">technology for extraction</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">• SMART-BURN smart monitoring and adapting recording</td>\r\n</tr>\r\n<tr>\r\n<td class="excel8"></td>\r\n<td class="excel5">technology for burning</td>\r\n</tr>\r\n<tr>\r\n<td class="excel4"></td>\r\n<td class="excel6">• Buffer under run technology</td>\r\n</tr>\r\n<tr>\r\n<td class="excel2">System Requirement</td>\r\n<td class="excel9">• Windows<span class="font5">®</span><span class="font0"> 7, Windows® ME / 2000 / Vista, and Linux</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/DVD_Rewrite_FUJI_4f15407a63c64_90x90.jpg', 'DVD_Rewrite_FUJI_4f15407a717d3.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326792243, 1326792826, 'DVD Rewrite FUJITSU - EXT', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (63, 1, 0, 'DVD002', 'USB 2.0 – R8X – W8X – RW 8X - External - C/nghệ bảo mật - Siêu mỏng - BLACK', '<table class="fieldGroupTable" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="fieldLabel">Connection Type</td>\r\n<td class="fieldValue"><a href="http://www.cdrlabs.com/db/tag/connection/USB-20/?criteria=1">USB 2.0</a></td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">Buffer</td>\r\n<td class="fieldValue"><a href="http://www.cdrlabs.com/db/tag/buffer/15MB/?criteria=1">1.5MB</a></td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">Dimensions</td>\r\n<td class="fieldValue">140 x 157.2 x 21.22 mm (5.5 x 6.2 x 0.8 in)</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">Weight</td>\r\n<td class="fieldValue">280g (0.6 lbs)</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">Other Features</td>\r\n<td class="fieldValue">Supports Power Saving Mode and Sleep Mode</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="fieldGroup">\r\n<h3 class="fieldGroupTitle">Write Speeds</h3>\r\n<table class="fieldGroupTable" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="fieldLabel">DVD+R</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-R</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD+RW</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-RW</td>\r\n<td class="fieldValue">6x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD+R DL</td>\r\n<td class="fieldValue">6x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-R DL</td>\r\n<td class="fieldValue">6x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-RAM</td>\r\n<td class="fieldValue">5x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-R</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-RW</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="fieldGroup">\r\n<h3 class="fieldGroupTitle">Read Speeds</h3>\r\n<table class="fieldGroupTable" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="fieldLabel">DVD-ROM (Single)</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-Video</td>\r\n<td class="fieldValue">4x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD+R</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-R</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD+RW</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-RW</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD+R DL</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-R DL</td>\r\n<td class="fieldValue">8x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-RAM</td>\r\n<td class="fieldValue">6.3x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-ROM</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-R</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-RW</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DAE</td>\r\n<td class="fieldValue">24x</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<h3 class="fieldGroupTitle">Access Times</h3>\r\n<table class="fieldGroupTable" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="fieldLabel">DVD-ROM</td>\r\n<td class="fieldValue">220ms</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">CD-ROM</td>\r\n<td class="fieldValue">210ms</td>\r\n</tr>\r\n<tr>\r\n<td class="fieldLabel">DVD-RAM</td>\r\n<td class="fieldValue">260ms</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/LG_DVD_RW_____GP_4f154096c30e3_90x90.jpg', 'LG_DVD_RW_____GP_4f154096cf0d7.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326792320, 1326792854, 'LG DVD RW – GP10NB20 SLIM', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (64, 1, 0, 'PW001', '5 NGUỒN IDE , 12 NGUỒN SATA , ver 2.3ATX , FAN 12CM , ACTIVE PFC , Hiệu năng88%', '<table align="center" border="1" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr class="text_title">\r\n<td colspan="2">Model</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hãng sản xuất</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/acbel">AcBel</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Model</td>\r\n<td class="value">M8<br /></td>\r\n</tr>\r\n<tr class="text_title">\r\n<td colspan="2">Thông số kỹ thuật</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Type</td>\r\n<td class="value"><a class="text_link_v2" href="http://www.vatgia.com/s/atx+12v+ver+2.3">ATX 12V Ver 2.3</a></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Công suất (W)</td>\r\n<td class="value">1100</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Đường kính quạt làm mát(Cm)</td>\r\n<td class="value">12cm</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Active PFC</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/true.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Đầu cấp nguồn cho Main</td>\r\n<td class="value">20 + 4Pin</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dual + 12V</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/true.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Đầu cấp nguồn cho PCI-E</td>\r\n<td class="value">6+2Pin x 3</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hỗ trợ SLI</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/true.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hỗ trợ cáp Modular</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/false.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hiệu suất làm việc (%)</td>\r\n<td class="value">88%</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bảo vệ khi quá tải hiệu điện thế</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/true.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Bảo vệ khi quá tải công suất</td>\r\n<td class="value"><img src="http://www.vatgia.com/images/true.gif" /></td>\r\n</tr>\r\n<tr>\r\n<td class="name">Hiệu điện thế vào</td>\r\n<td class="value">100 - 240 V</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Tần số vào</td>\r\n<td class="value">50/60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Dòng điện vào (A)</td>\r\n<td class="value">16A</td>\r\n</tr>\r\n<tr>\r\n<td class="name">Các đầu cấp nguồn</td>\r\n<td class="value">• 1 x Main connector (20+4 pin)<br />• 1 x 12V(4+4-pin)<br />• 1 x 12V(8-pin)<br />• 1 x Floppy</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'resized/POWER_1100W_M8_A_4f153feed0c85_90x90.jpg', 'POWER_1100W_M8_A_4f153feee0c42.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326792433, 1326792686, 'POWER 1100W M8 ACBEL PFC', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');
INSERT INTO `jos_vm_product` VALUES (65, 1, 0, 'PW002', '3 NGUỒN IDE, 6 NGUỒN SATA, 2PCI EXPRESS 8PIN, ACTIVE PFC-hiệu xuất 85% 780W', '<span>3 NGUỒN IDE, 6 NGUỒN SATA, 2PCI EXPRESS 8PIN, ACTIVE PFC-hiệu xuất 85% 780W </span>', 'resized/POWER_450W_V2_3G_4f153f805b8e3_90x90.jpg', 'POWER_450W_V2_3G_4f153f806ae60.jpg', 'Y', 0.0000, 'pounds', 0.0000, 0.0000, 0.0000, 'inches', '', 0, 1326733200, '', 'N', 0, NULL, 1326792576, 1326792646, 'POWER 450W V2,3GX (C.MASTER)', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_attribute`
-- 

CREATE TABLE `jos_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_value` char(255) NOT NULL default '',
  PRIMARY KEY  (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `jos_vm_product_attribute`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_attribute_sku`
-- 

CREATE TABLE `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_list` int(11) NOT NULL default '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Attributes for a Parent Product used by its Child Products';

-- 
-- Dumping data for table `jos_vm_product_attribute_sku`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_category_xref`
-- 

CREATE TABLE `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_list` int(11) default NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- 
-- Dumping data for table `jos_vm_product_category_xref`
-- 

INSERT INTO `jos_vm_product_category_xref` VALUES (11, 22, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 21, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 20, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 23, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 24, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 25, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 26, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 27, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 28, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 29, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 30, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (13, 31, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 32, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 33, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 34, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (14, 35, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (12, 36, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (11, 37, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (20, 47, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 39, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (15, 40, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (17, 41, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (17, 42, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (18, 43, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (18, 44, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (19, 45, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (19, 46, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (20, 48, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (24, 54, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (22, 50, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (22, 51, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (23, 52, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (23, 53, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (20, 49, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (24, 55, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (25, 56, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (25, 57, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (26, 58, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (26, 59, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (27, 60, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (27, 61, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (28, 62, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (28, 63, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (29, 64, 1);
INSERT INTO `jos_vm_product_category_xref` VALUES (29, 65, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_discount`
-- 

CREATE TABLE `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `is_percent` tinyint(1) NOT NULL default '0',
  `start_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `jos_vm_product_discount`
-- 

INSERT INTO `jos_vm_product_discount` VALUES (1, 20.00, 1, 1097704800, 1194390000);
INSERT INTO `jos_vm_product_discount` VALUES (2, 2.00, 0, 1098655200, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_download`
-- 

CREATE TABLE `jos_vm_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Active downloads for selling downloadable goods';

-- 
-- Dumping data for table `jos_vm_product_download`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_files`
-- 

CREATE TABLE `jos_vm_product_files` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_product_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_mf_xref`
-- 

CREATE TABLE `jos_vm_product_mf_xref` (
  `product_id` int(11) default NULL,
  `manufacturer_id` int(11) default NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

-- 
-- Dumping data for table `jos_vm_product_mf_xref`
-- 

INSERT INTO `jos_vm_product_mf_xref` VALUES (22, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (21, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (20, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (23, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (24, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (25, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (26, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (27, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (28, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (29, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (30, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (31, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (32, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (33, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (34, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (35, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (36, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (37, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (49, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (39, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (40, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (41, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (42, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (43, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (44, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (45, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (46, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (47, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (48, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (50, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (51, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (52, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (53, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (54, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (55, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (56, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (57, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (58, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (59, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (60, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (61, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (62, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (63, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (64, 1);
INSERT INTO `jos_vm_product_mf_xref` VALUES (65, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_price`
-- 

CREATE TABLE `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `product_price` decimal(20,5) default NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product' AUTO_INCREMENT=67 ;

-- 
-- Dumping data for table `jos_vm_product_price`
-- 

INSERT INTO `jos_vm_product_price` VALUES (22, 22, 3900000.00000, 'VND', 0, 0, 1216717658, 1326793568, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (21, 21, 2150000.00000, 'VND', 0, 0, 1216717461, 1326793320, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (20, 20, 3180000.00000, 'VND', 0, 0, 1216717195, 1326793798, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (23, 23, 2300000.00000, 'VND', 0, 0, 1216719659, 1326793403, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (24, 24, 900000.00000, 'VND', 0, 0, 1216720626, 1326794176, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (25, 25, 213000.00000, 'VND', 0, 0, 1216720769, 1326794118, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (26, 26, 349000.00000, 'VND', 0, 0, 1216720878, 1326794045, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (27, 27, 620000.00000, 'VND', 0, 0, 1216721103, 1326793961, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (28, 28, 12100000.00000, 'VND', 0, 0, 1216805730, 1326794578, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (29, 29, 13948000.00000, 'VND', 0, 0, 1216805863, 1326794859, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (30, 30, 25000000.00000, 'VND', 0, 0, 1216806219, 1326794476, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (31, 31, 12500000.00000, 'VND', 0, 0, 1216806380, 1326794678, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (32, 32, 35860000.00000, 'VND', 0, 0, 1216807370, 1326795491, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (33, 33, 32098000.00000, 'VND', 0, 0, 1216807526, 1326795570, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (34, 34, 52800000.00000, 'VND', 0, 0, 1216807817, 1326795326, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (35, 35, 58000000.00000, 'VND', 0, 0, 1216808435, 1326795421, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (66, 36, 500000.00000, 'VND', 0, 0, 1326855121, 1326855121, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (37, 37, 3650000.00000, 'VND', 0, 0, 1216823482, 1326793642, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (49, 49, 645000.00000, 'VND', 0, 0, 1326773803, 1326775198, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (39, 39, 14685000.00000, 'VND', 0, 0, 1326766356, 1326771287, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (40, 40, 15730000.00000, 'VND', 0, 0, 1326768836, 1326771344, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (41, 41, 6985000.00000, 'VND', 0, 0, 1326772027, 1326772078, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (42, 42, 9300000.00000, 'VND', 0, 0, 1326772166, 1326772683, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (43, 43, 45375000.00000, 'VND', 0, 0, 1326772291, 1326772766, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (44, 44, 48243000.00000, 'VND', 0, 0, 1326772453, 1326772805, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (45, 45, 2650000.00000, 'VND', 0, 0, 1326772962, 1326773160, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (46, 46, 3500000.00000, 'VND', 0, 0, 1326773077, 1326773077, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (47, 47, 340000.00000, 'VND', 0, 0, 1326773267, 1326773494, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (48, 48, 499000.00000, 'VND', 0, 0, 1326773367, 1326773536, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (50, 50, 1760000.00000, 'VND', 0, 0, 1326773939, 1326773939, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (51, 51, 9230000.00000, 'VND', 0, 0, 1326774016, 1326774099, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (52, 52, 13350000.00000, 'VND', 0, 0, 1326774184, 1326774184, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (53, 53, 4365000.00000, 'VND', 0, 0, 1326774925, 1326774961, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (54, 54, 630000.00000, 'VND', 0, 0, 1326790994, 1326791198, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (55, 55, 255000.00000, 'VND', 0, 0, 1326791159, 1326791225, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (56, 56, 1960000.00000, 'VND', 0, 0, 1326791331, 1326791331, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (57, 57, 2330000.00000, 'VND', 0, 0, 1326791447, 1326791447, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (58, 58, 19500000.00000, 'VND', 0, 0, 1326791564, 1326791564, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (59, 59, 1170000.00000, 'VND', 0, 0, 1326791637, 1326791637, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (60, 60, 5500000.00000, 'VND', 0, 0, 1326791772, 1326792116, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (61, 61, 1580000.00000, 'VND', 0, 0, 1326791874, 1326791874, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (62, 62, 1095000.00000, 'VND', 0, 0, 1326792243, 1326792826, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (63, 63, 1090000.00000, 'VND', 0, 0, 1326792320, 1326792854, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (64, 64, 4200000.00000, 'VND', 0, 0, 1326792433, 1326792687, 5, 0, 0);
INSERT INTO `jos_vm_product_price` VALUES (65, 65, 1200000.00000, 'VND', 0, 0, 1326792576, 1326792646, 5, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_product_type_xref`
-- 

CREATE TABLE `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL default '0',
  `product_type_id` int(11) NOT NULL default '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps products to a product type';

-- 
-- Dumping data for table `jos_vm_product_product_type_xref`
-- 

INSERT INTO `jos_vm_product_product_type_xref` VALUES (20, 1);
INSERT INTO `jos_vm_product_product_type_xref` VALUES (22, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_relations`
-- 

CREATE TABLE `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL default '0',
  `related_products` text,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_vm_product_relations`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_reviews`
-- 

CREATE TABLE `jos_vm_product_reviews` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jos_vm_product_reviews`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_type`
-- 

CREATE TABLE `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) NOT NULL default '',
  `product_type_description` text,
  `product_type_publish` char(1) default NULL,
  `product_type_browsepage` varchar(255) default NULL,
  `product_type_flypage` varchar(255) default NULL,
  `product_type_list_order` int(11) default NULL,
  PRIMARY KEY  (`product_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_product_type`
-- 

INSERT INTO `jos_vm_product_type` VALUES (1, 'produc type name', 'adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ adádfddđ', 'Y', '', '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_type_1`
-- 

CREATE TABLE `jos_vm_product_type_1` (
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_vm_product_type_1`
-- 

INSERT INTO `jos_vm_product_type_1` VALUES (20);
INSERT INTO `jos_vm_product_type_1` VALUES (22);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_type_parameter`
-- 

CREATE TABLE `jos_vm_product_type_parameter` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameters which are part of a product type';

-- 
-- Dumping data for table `jos_vm_product_type_parameter`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_product_votes`
-- 

CREATE TABLE `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL default '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL default '0',
  `rating` tinyint(1) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all votes for a product';

-- 
-- Dumping data for table `jos_vm_product_votes`
-- 

INSERT INTO `jos_vm_product_votes` VALUES (23, '5', 1, 5, '10.0.0.101');
INSERT INTO `jos_vm_product_votes` VALUES (36, '5,4', 2, 5, '10.0.0.52');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_carrier`
-- 

CREATE TABLE `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL auto_increment,
  `shipping_carrier_name` char(80) NOT NULL default '',
  `shipping_carrier_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_carrier_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `jos_vm_shipping_carrier`
-- 

INSERT INTO `jos_vm_shipping_carrier` VALUES (1, 'DHL', 0);
INSERT INTO `jos_vm_shipping_carrier` VALUES (2, 'UPS', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_label`
-- 

CREATE TABLE `jos_vm_shipping_label` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores information used in generating shipping labels';

-- 
-- Dumping data for table `jos_vm_shipping_label`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shipping_rate`
-- 

CREATE TABLE `jos_vm_shipping_rate` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `jos_vm_shipping_rate`
-- 

INSERT INTO `jos_vm_shipping_rate` VALUES (1, 'Inland &gt; 4kg', 1, 'DEU', '00000', '99999', 0.000, 4.000, 5.62, 2.00, 47, 0, 1);
INSERT INTO `jos_vm_shipping_rate` VALUES (2, 'Inland &gt; 8kg', 1, 'DEU', '00000', '99999', 4.000, 8.000, 6.39, 2.00, 47, 0, 2);
INSERT INTO `jos_vm_shipping_rate` VALUES (3, 'Inland &gt; 12kg', 1, 'DEU', '00000', '99999', 8.000, 12.000, 7.16, 2.00, 47, 0, 3);
INSERT INTO `jos_vm_shipping_rate` VALUES (4, 'Inland &gt; 20kg', 1, 'DEU', '00000', '99999', 12.000, 20.000, 8.69, 2.00, 47, 0, 4);
INSERT INTO `jos_vm_shipping_rate` VALUES (5, 'EU+ &gt;  4kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', 0.000, 4.000, 14.57, 2.00, 47, 0, 5);
INSERT INTO `jos_vm_shipping_rate` VALUES (6, 'EU+ &gt;  8kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', 4.000, 8.000, 18.66, 2.00, 47, 0, 6);
INSERT INTO `jos_vm_shipping_rate` VALUES (7, 'EU+ &gt; 12kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', 8.000, 12.000, 22.57, 2.00, 47, 0, 7);
INSERT INTO `jos_vm_shipping_rate` VALUES (8, 'EU+ &gt; 20kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', 12.000, 20.000, 30.93, 2.00, 47, 0, 8);
INSERT INTO `jos_vm_shipping_rate` VALUES (9, 'Europe &gt; 4kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', 0.000, 4.000, 23.78, 2.00, 47, 0, 9);
INSERT INTO `jos_vm_shipping_rate` VALUES (10, 'Europe &gt;  8kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', 4.000, 8.000, 29.91, 2.00, 47, 0, 10);
INSERT INTO `jos_vm_shipping_rate` VALUES (11, 'Europe &gt; 12kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', 8.000, 12.000, 36.05, 2.00, 47, 0, 11);
INSERT INTO `jos_vm_shipping_rate` VALUES (12, 'Europe &gt; 20kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', 12.000, 20.000, 48.32, 2.00, 47, 0, 12);
INSERT INTO `jos_vm_shipping_rate` VALUES (13, 'World_1 &gt;  4kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', 0.000, 4.000, 26.84, 2.00, 47, 0, 13);
INSERT INTO `jos_vm_shipping_rate` VALUES (14, 'World_1 &gt; 8kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', 4.000, 8.000, 35.02, 2.00, 47, 0, 14);
INSERT INTO `jos_vm_shipping_rate` VALUES (15, 'World_1 &gt;12kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', 8.000, 12.000, 43.20, 2.00, 47, 0, 15);
INSERT INTO `jos_vm_shipping_rate` VALUES (16, 'World_1 &gt;20kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', 12.000, 20.000, 59.57, 2.00, 47, 0, 16);
INSERT INTO `jos_vm_shipping_rate` VALUES (17, 'World_2 &gt; 4kg', 1, '', '00000', '99999', 0.000, 4.000, 32.98, 2.00, 47, 0, 17);
INSERT INTO `jos_vm_shipping_rate` VALUES (18, 'World_2 &gt; 8kg', 1, '', '00000', '99999', 4.000, 8.000, 47.29, 2.00, 47, 0, 18);
INSERT INTO `jos_vm_shipping_rate` VALUES (19, 'World_2 &gt; 12kg', 1, '', '00000', '99999', 8.000, 12.000, 61.61, 2.00, 47, 0, 19);
INSERT INTO `jos_vm_shipping_rate` VALUES (20, 'World_2 &gt; 20kg', 1, '', '00000', '99999', 12.000, 20.000, 90.24, 2.00, 47, 0, 20);
INSERT INTO `jos_vm_shipping_rate` VALUES (21, 'UPS Express', 2, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', 0.000, 20.000, 5.24, 2.00, 47, 0, 21);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shopper_group`
-- 

CREATE TABLE `jos_vm_shopper_group` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_vm_shopper_group`
-- 

INSERT INTO `jos_vm_shopper_group` VALUES (5, 1, '-default-', 'This is the default shopper group.', 0.00, 1, 1);
INSERT INTO `jos_vm_shopper_group` VALUES (6, 1, 'Gold Level', 'Gold Level phpShoppers.', 0.00, 1, 0);
INSERT INTO `jos_vm_shopper_group` VALUES (7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', 0.00, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_shopper_vendor_xref`
-- 

CREATE TABLE `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `customer_number` varchar(32) default NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a Shopper Group of a Vendor';

-- 
-- Dumping data for table `jos_vm_shopper_vendor_xref`
-- 

INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (62, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (63, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (64, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (65, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (66, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (67, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (68, 1, 5, '');
INSERT INTO `jos_vm_shopper_vendor_xref` VALUES (71, 1, 5, '113624889897e86c98');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_state`
-- 

CREATE TABLE `jos_vm_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

-- 
-- Dumping data for table `jos_vm_state`
-- 

INSERT INTO `jos_vm_state` VALUES (1, 223, 'Alabama', 'ALA', 'AL');
INSERT INTO `jos_vm_state` VALUES (2, 223, 'Alaska', 'ALK', 'AK');
INSERT INTO `jos_vm_state` VALUES (3, 223, 'Arizona', 'ARZ', 'AZ');
INSERT INTO `jos_vm_state` VALUES (4, 223, 'Arkansas', 'ARK', 'AR');
INSERT INTO `jos_vm_state` VALUES (5, 223, 'California', 'CAL', 'CA');
INSERT INTO `jos_vm_state` VALUES (6, 223, 'Colorado', 'COL', 'CO');
INSERT INTO `jos_vm_state` VALUES (7, 223, 'Connecticut', 'CCT', 'CT');
INSERT INTO `jos_vm_state` VALUES (8, 223, 'Delaware', 'DEL', 'DE');
INSERT INTO `jos_vm_state` VALUES (9, 223, 'District Of Columbia', 'DOC', 'DC');
INSERT INTO `jos_vm_state` VALUES (10, 223, 'Florida', 'FLO', 'FL');
INSERT INTO `jos_vm_state` VALUES (11, 223, 'Georgia', 'GEA', 'GA');
INSERT INTO `jos_vm_state` VALUES (12, 223, 'Hawaii', 'HWI', 'HI');
INSERT INTO `jos_vm_state` VALUES (13, 223, 'Idaho', 'IDA', 'ID');
INSERT INTO `jos_vm_state` VALUES (14, 223, 'Illinois', 'ILL', 'IL');
INSERT INTO `jos_vm_state` VALUES (15, 223, 'Indiana', 'IND', 'IN');
INSERT INTO `jos_vm_state` VALUES (16, 223, 'Iowa', 'IOA', 'IA');
INSERT INTO `jos_vm_state` VALUES (17, 223, 'Kansas', 'KAS', 'KS');
INSERT INTO `jos_vm_state` VALUES (18, 223, 'Kentucky', 'KTY', 'KY');
INSERT INTO `jos_vm_state` VALUES (19, 223, 'Louisiana', 'LOA', 'LA');
INSERT INTO `jos_vm_state` VALUES (20, 223, 'Maine', 'MAI', 'ME');
INSERT INTO `jos_vm_state` VALUES (21, 223, 'Maryland', 'MLD', 'MD');
INSERT INTO `jos_vm_state` VALUES (22, 223, 'Massachusetts', 'MSA', 'MA');
INSERT INTO `jos_vm_state` VALUES (23, 223, 'Michigan', 'MIC', 'MI');
INSERT INTO `jos_vm_state` VALUES (24, 223, 'Minnesota', 'MIN', 'MN');
INSERT INTO `jos_vm_state` VALUES (25, 223, 'Mississippi', 'MIS', 'MS');
INSERT INTO `jos_vm_state` VALUES (26, 223, 'Missouri', 'MIO', 'MO');
INSERT INTO `jos_vm_state` VALUES (27, 223, 'Montana', 'MOT', 'MT');
INSERT INTO `jos_vm_state` VALUES (28, 223, 'Nebraska', 'NEB', 'NE');
INSERT INTO `jos_vm_state` VALUES (29, 223, 'Nevada', 'NEV', 'NV');
INSERT INTO `jos_vm_state` VALUES (30, 223, 'New Hampshire', 'NEH', 'NH');
INSERT INTO `jos_vm_state` VALUES (31, 223, 'New Jersey', 'NEJ', 'NJ');
INSERT INTO `jos_vm_state` VALUES (32, 223, 'New Mexico', 'NEM', 'NM');
INSERT INTO `jos_vm_state` VALUES (33, 223, 'New York', 'NEY', 'NY');
INSERT INTO `jos_vm_state` VALUES (34, 223, 'North Carolina', 'NOC', 'NC');
INSERT INTO `jos_vm_state` VALUES (35, 223, 'North Dakota', 'NOD', 'ND');
INSERT INTO `jos_vm_state` VALUES (36, 223, 'Ohio', 'OHI', 'OH');
INSERT INTO `jos_vm_state` VALUES (37, 223, 'Oklahoma', 'OKL', 'OK');
INSERT INTO `jos_vm_state` VALUES (38, 223, 'Oregon', 'ORN', 'OR');
INSERT INTO `jos_vm_state` VALUES (39, 223, 'Pennsylvania', 'PEA', 'PA');
INSERT INTO `jos_vm_state` VALUES (40, 223, 'Rhode Island', 'RHI', 'RI');
INSERT INTO `jos_vm_state` VALUES (41, 223, 'South Carolina', 'SOC', 'SC');
INSERT INTO `jos_vm_state` VALUES (42, 223, 'South Dakota', 'SOD', 'SD');
INSERT INTO `jos_vm_state` VALUES (43, 223, 'Tennessee', 'TEN', 'TN');
INSERT INTO `jos_vm_state` VALUES (44, 223, 'Texas', 'TXS', 'TX');
INSERT INTO `jos_vm_state` VALUES (45, 223, 'Utah', 'UTA', 'UT');
INSERT INTO `jos_vm_state` VALUES (46, 223, 'Vermont', 'VMT', 'VT');
INSERT INTO `jos_vm_state` VALUES (47, 223, 'Virginia', 'VIA', 'VA');
INSERT INTO `jos_vm_state` VALUES (48, 223, 'Washington', 'WAS', 'WA');
INSERT INTO `jos_vm_state` VALUES (49, 223, 'West Virginia', 'WEV', 'WV');
INSERT INTO `jos_vm_state` VALUES (50, 223, 'Wisconsin', 'WIS', 'WI');
INSERT INTO `jos_vm_state` VALUES (51, 223, 'Wyoming', 'WYO', 'WY');
INSERT INTO `jos_vm_state` VALUES (52, 38, 'Alberta', 'ALB', 'AB');
INSERT INTO `jos_vm_state` VALUES (53, 38, 'British Columbia', 'BRC', 'BC');
INSERT INTO `jos_vm_state` VALUES (54, 38, 'Manitoba', 'MAB', 'MB');
INSERT INTO `jos_vm_state` VALUES (55, 38, 'New Brunswick', 'NEB', 'NB');
INSERT INTO `jos_vm_state` VALUES (56, 38, 'Newfoundland and Labrador', 'NFL', 'NL');
INSERT INTO `jos_vm_state` VALUES (57, 38, 'Northwest Territories', 'NWT', 'NT');
INSERT INTO `jos_vm_state` VALUES (58, 38, 'Nova Scotia', 'NOS', 'NS');
INSERT INTO `jos_vm_state` VALUES (59, 38, 'Nunavut', 'NUT', 'NU');
INSERT INTO `jos_vm_state` VALUES (60, 38, 'Ontario', 'ONT', 'ON');
INSERT INTO `jos_vm_state` VALUES (61, 38, 'Prince Edward Island', 'PEI', 'PE');
INSERT INTO `jos_vm_state` VALUES (62, 38, 'Quebec', 'QEC', 'QC');
INSERT INTO `jos_vm_state` VALUES (63, 38, 'Saskatchewan', 'SAK', 'SK');
INSERT INTO `jos_vm_state` VALUES (64, 38, 'Yukon', 'YUT', 'YT');
INSERT INTO `jos_vm_state` VALUES (65, 222, 'England', 'ENG', 'EN');
INSERT INTO `jos_vm_state` VALUES (66, 222, 'Northern Ireland', 'NOI', 'NI');
INSERT INTO `jos_vm_state` VALUES (67, 222, 'Scotland', 'SCO', 'SD');
INSERT INTO `jos_vm_state` VALUES (68, 222, 'Wales', 'WLS', 'WS');
INSERT INTO `jos_vm_state` VALUES (69, 13, 'Australian Capital Territory', 'ACT', 'AT');
INSERT INTO `jos_vm_state` VALUES (70, 13, 'New South Wales', 'NSW', 'NW');
INSERT INTO `jos_vm_state` VALUES (71, 13, 'Northern Territory', 'NOT', 'NT');
INSERT INTO `jos_vm_state` VALUES (72, 13, 'Queensland', 'QLD', 'QL');
INSERT INTO `jos_vm_state` VALUES (73, 13, 'South Australia', 'SOA', 'SA');
INSERT INTO `jos_vm_state` VALUES (74, 13, 'Tasmania', 'TAS', 'TA');
INSERT INTO `jos_vm_state` VALUES (75, 13, 'Victoria', 'VIC', 'VI');
INSERT INTO `jos_vm_state` VALUES (76, 13, 'Western Australia', 'WEA', 'WA');
INSERT INTO `jos_vm_state` VALUES (77, 138, 'Aguascalientes', 'AGS', 'AG');
INSERT INTO `jos_vm_state` VALUES (78, 138, 'Baja California Norte', 'BCN', 'BN');
INSERT INTO `jos_vm_state` VALUES (79, 138, 'Baja California Sur', 'BCS', 'BS');
INSERT INTO `jos_vm_state` VALUES (80, 138, 'Campeche', 'CAM', 'CA');
INSERT INTO `jos_vm_state` VALUES (81, 138, 'Chiapas', 'CHI', 'CS');
INSERT INTO `jos_vm_state` VALUES (82, 138, 'Chihuahua', 'CHA', 'CH');
INSERT INTO `jos_vm_state` VALUES (83, 138, 'Coahuila', 'COA', 'CO');
INSERT INTO `jos_vm_state` VALUES (84, 138, 'Colima', 'COL', 'CM');
INSERT INTO `jos_vm_state` VALUES (85, 138, 'Distrito Federal', 'DFM', 'DF');
INSERT INTO `jos_vm_state` VALUES (86, 138, 'Durango', 'DGO', 'DO');
INSERT INTO `jos_vm_state` VALUES (87, 138, 'Guanajuato', 'GTO', 'GO');
INSERT INTO `jos_vm_state` VALUES (88, 138, 'Guerrero', 'GRO', 'GU');
INSERT INTO `jos_vm_state` VALUES (89, 138, 'Hidalgo', 'HGO', 'HI');
INSERT INTO `jos_vm_state` VALUES (90, 138, 'Jalisco', 'JAL', 'JA');
INSERT INTO `jos_vm_state` VALUES (91, 138, 'México (Estado de)', 'EDM', 'EM');
INSERT INTO `jos_vm_state` VALUES (92, 138, 'Michoacán', 'MCN', 'MI');
INSERT INTO `jos_vm_state` VALUES (93, 138, 'Morelos', 'MOR', 'MO');
INSERT INTO `jos_vm_state` VALUES (94, 138, 'Nayarit', 'NAY', 'NY');
INSERT INTO `jos_vm_state` VALUES (95, 138, 'Nuevo León', 'NUL', 'NL');
INSERT INTO `jos_vm_state` VALUES (96, 138, 'Oaxaca', 'OAX', 'OA');
INSERT INTO `jos_vm_state` VALUES (97, 138, 'Puebla', 'PUE', 'PU');
INSERT INTO `jos_vm_state` VALUES (98, 138, 'Querétaro', 'QRO', 'QU');
INSERT INTO `jos_vm_state` VALUES (99, 138, 'Quintana Roo', 'QUR', 'QR');
INSERT INTO `jos_vm_state` VALUES (100, 138, 'San Luis Potosí', 'SLP', 'SP');
INSERT INTO `jos_vm_state` VALUES (101, 138, 'Sinaloa', 'SIN', 'SI');
INSERT INTO `jos_vm_state` VALUES (102, 138, 'Sonora', 'SON', 'SO');
INSERT INTO `jos_vm_state` VALUES (103, 138, 'Tabasco', 'TAB', 'TA');
INSERT INTO `jos_vm_state` VALUES (104, 138, 'Tamaulipas', 'TAM', 'TM');
INSERT INTO `jos_vm_state` VALUES (105, 138, 'Tlaxcala', 'TLX', 'TX');
INSERT INTO `jos_vm_state` VALUES (106, 138, 'Veracruz', 'VER', 'VZ');
INSERT INTO `jos_vm_state` VALUES (107, 138, 'Yucatán', 'YUC', 'YU');
INSERT INTO `jos_vm_state` VALUES (108, 138, 'Zacatecas', 'ZAC', 'ZA');
INSERT INTO `jos_vm_state` VALUES (109, 30, 'Acre', 'ACR', 'AC');
INSERT INTO `jos_vm_state` VALUES (110, 30, 'Alagoas', 'ALG', 'AL');
INSERT INTO `jos_vm_state` VALUES (111, 30, 'Amapá', 'AMP', 'AP');
INSERT INTO `jos_vm_state` VALUES (112, 30, 'Amazonas', 'AMZ', 'AM');
INSERT INTO `jos_vm_state` VALUES (113, 30, 'Bahía', 'BAH', 'BA');
INSERT INTO `jos_vm_state` VALUES (114, 30, 'Ceará', 'CEA', 'CE');
INSERT INTO `jos_vm_state` VALUES (115, 30, 'Distrito Federal', 'DFB', 'DF');
INSERT INTO `jos_vm_state` VALUES (116, 30, 'Espirito Santo', 'ESS', 'ES');
INSERT INTO `jos_vm_state` VALUES (117, 30, 'Goiás', 'GOI', 'GO');
INSERT INTO `jos_vm_state` VALUES (118, 30, 'Maranhão', 'MAR', 'MA');
INSERT INTO `jos_vm_state` VALUES (119, 30, 'Mato Grosso', 'MAT', 'MT');
INSERT INTO `jos_vm_state` VALUES (120, 30, 'Mato Grosso do Sul', 'MGS', 'MS');
INSERT INTO `jos_vm_state` VALUES (121, 30, 'Minas Geraís', 'MIG', 'MG');
INSERT INTO `jos_vm_state` VALUES (122, 30, 'Paraná', 'PAR', 'PR');
INSERT INTO `jos_vm_state` VALUES (123, 30, 'Paraíba', 'PRB', 'PB');
INSERT INTO `jos_vm_state` VALUES (124, 30, 'Pará', 'PAB', 'PA');
INSERT INTO `jos_vm_state` VALUES (125, 30, 'Pernambuco', 'PER', 'PE');
INSERT INTO `jos_vm_state` VALUES (126, 30, 'Piauí', 'PIA', 'PI');
INSERT INTO `jos_vm_state` VALUES (127, 30, 'Rio Grande do Norte', 'RGN', 'RN');
INSERT INTO `jos_vm_state` VALUES (128, 30, 'Rio Grande do Sul', 'RGS', 'RS');
INSERT INTO `jos_vm_state` VALUES (129, 30, 'Rio de Janeiro', 'RDJ', 'RJ');
INSERT INTO `jos_vm_state` VALUES (130, 30, 'Rondônia', 'RON', 'RO');
INSERT INTO `jos_vm_state` VALUES (131, 30, 'Roraima', 'ROR', 'RR');
INSERT INTO `jos_vm_state` VALUES (132, 30, 'Santa Catarina', 'SAC', 'SC');
INSERT INTO `jos_vm_state` VALUES (133, 30, 'Sergipe', 'SER', 'SE');
INSERT INTO `jos_vm_state` VALUES (134, 30, 'São Paulo', 'SAP', 'SP');
INSERT INTO `jos_vm_state` VALUES (135, 30, 'Tocantins', 'TOC', 'TO');
INSERT INTO `jos_vm_state` VALUES (136, 44, 'Anhui', 'ANH', '34');
INSERT INTO `jos_vm_state` VALUES (137, 44, 'Beijing', 'BEI', '11');
INSERT INTO `jos_vm_state` VALUES (138, 44, 'Chongqing', 'CHO', '50');
INSERT INTO `jos_vm_state` VALUES (139, 44, 'Fujian', 'FUJ', '35');
INSERT INTO `jos_vm_state` VALUES (140, 44, 'Gansu', 'GAN', '62');
INSERT INTO `jos_vm_state` VALUES (141, 44, 'Guangdong', 'GUA', '44');
INSERT INTO `jos_vm_state` VALUES (142, 44, 'Guangxi Zhuang', 'GUZ', '45');
INSERT INTO `jos_vm_state` VALUES (143, 44, 'Guizhou', 'GUI', '52');
INSERT INTO `jos_vm_state` VALUES (144, 44, 'Hainan', 'HAI', '46');
INSERT INTO `jos_vm_state` VALUES (145, 44, 'Hebei', 'HEB', '13');
INSERT INTO `jos_vm_state` VALUES (146, 44, 'Heilongjiang', 'HEI', '23');
INSERT INTO `jos_vm_state` VALUES (147, 44, 'Henan', 'HEN', '41');
INSERT INTO `jos_vm_state` VALUES (148, 44, 'Hubei', 'HUB', '42');
INSERT INTO `jos_vm_state` VALUES (149, 44, 'Hunan', 'HUN', '43');
INSERT INTO `jos_vm_state` VALUES (150, 44, 'Jiangsu', 'JIA', '32');
INSERT INTO `jos_vm_state` VALUES (151, 44, 'Jiangxi', 'JIX', '36');
INSERT INTO `jos_vm_state` VALUES (152, 44, 'Jilin', 'JIL', '22');
INSERT INTO `jos_vm_state` VALUES (153, 44, 'Liaoning', 'LIA', '21');
INSERT INTO `jos_vm_state` VALUES (154, 44, 'Nei Mongol', 'NML', '15');
INSERT INTO `jos_vm_state` VALUES (155, 44, 'Ningxia Hui', 'NIH', '64');
INSERT INTO `jos_vm_state` VALUES (156, 44, 'Qinghai', 'QIN', '63');
INSERT INTO `jos_vm_state` VALUES (157, 44, 'Shandong', 'SNG', '37');
INSERT INTO `jos_vm_state` VALUES (158, 44, 'Shanghai', 'SHH', '31');
INSERT INTO `jos_vm_state` VALUES (159, 44, 'Shaanxi', 'SHX', '61');
INSERT INTO `jos_vm_state` VALUES (160, 44, 'Sichuan', 'SIC', '51');
INSERT INTO `jos_vm_state` VALUES (161, 44, 'Tianjin', 'TIA', '12');
INSERT INTO `jos_vm_state` VALUES (162, 44, 'Xinjiang Uygur', 'XIU', '65');
INSERT INTO `jos_vm_state` VALUES (163, 44, 'Xizang', 'XIZ', '54');
INSERT INTO `jos_vm_state` VALUES (164, 44, 'Yunnan', 'YUN', '53');
INSERT INTO `jos_vm_state` VALUES (165, 44, 'Zhejiang', 'ZHE', '33');
INSERT INTO `jos_vm_state` VALUES (166, 104, 'Gaza Strip', 'GZS', 'GZ');
INSERT INTO `jos_vm_state` VALUES (167, 104, 'West Bank', 'WBK', 'WB');
INSERT INTO `jos_vm_state` VALUES (168, 104, 'Other', 'OTH', 'OT');
INSERT INTO `jos_vm_state` VALUES (169, 151, 'St. Maarten', 'STM', 'SM');
INSERT INTO `jos_vm_state` VALUES (170, 151, 'Bonaire', 'BNR', 'BN');
INSERT INTO `jos_vm_state` VALUES (171, 151, 'Curacao', 'CUR', 'CR');
INSERT INTO `jos_vm_state` VALUES (172, 175, 'Alba', 'ABA', 'AB');
INSERT INTO `jos_vm_state` VALUES (173, 175, 'Arad', 'ARD', 'AR');
INSERT INTO `jos_vm_state` VALUES (174, 175, 'Arges', 'ARG', 'AG');
INSERT INTO `jos_vm_state` VALUES (175, 175, 'Bacau', 'BAC', 'BC');
INSERT INTO `jos_vm_state` VALUES (176, 175, 'Bihor', 'BIH', 'BH');
INSERT INTO `jos_vm_state` VALUES (177, 175, 'Bistrita-Nasaud', 'BIS', 'BN');
INSERT INTO `jos_vm_state` VALUES (178, 175, 'Botosani', 'BOT', 'BT');
INSERT INTO `jos_vm_state` VALUES (179, 175, 'Braila', 'BRL', 'BR');
INSERT INTO `jos_vm_state` VALUES (180, 175, 'Brasov', 'BRA', 'BV');
INSERT INTO `jos_vm_state` VALUES (181, 175, 'Bucuresti', 'BUC', 'B');
INSERT INTO `jos_vm_state` VALUES (182, 175, 'Buzau', 'BUZ', 'BZ');
INSERT INTO `jos_vm_state` VALUES (183, 175, 'Calarasi', 'CAL', 'CL');
INSERT INTO `jos_vm_state` VALUES (184, 175, 'Caras Severin', 'CRS', 'CS');
INSERT INTO `jos_vm_state` VALUES (185, 175, 'Cluj', 'CLJ', 'CJ');
INSERT INTO `jos_vm_state` VALUES (186, 175, 'Constanta', 'CST', 'CT');
INSERT INTO `jos_vm_state` VALUES (187, 175, 'Covasna', 'COV', 'CV');
INSERT INTO `jos_vm_state` VALUES (188, 175, 'Dambovita', 'DAM', 'DB');
INSERT INTO `jos_vm_state` VALUES (189, 175, 'Dolj', 'DLJ', 'DJ');
INSERT INTO `jos_vm_state` VALUES (190, 175, 'Galati', 'GAL', 'GL');
INSERT INTO `jos_vm_state` VALUES (191, 175, 'Giurgiu', 'GIU', 'GR');
INSERT INTO `jos_vm_state` VALUES (192, 175, 'Gorj', 'GOR', 'GJ');
INSERT INTO `jos_vm_state` VALUES (193, 175, 'Hargita', 'HRG', 'HR');
INSERT INTO `jos_vm_state` VALUES (194, 175, 'Hunedoara', 'HUN', 'HD');
INSERT INTO `jos_vm_state` VALUES (195, 175, 'Ialomita', 'IAL', 'IL');
INSERT INTO `jos_vm_state` VALUES (196, 175, 'Iasi', 'IAS', 'IS');
INSERT INTO `jos_vm_state` VALUES (197, 175, 'Ilfov', 'ILF', 'IF');
INSERT INTO `jos_vm_state` VALUES (198, 175, 'Maramures', 'MAR', 'MM');
INSERT INTO `jos_vm_state` VALUES (199, 175, 'Mehedinti', 'MEH', 'MH');
INSERT INTO `jos_vm_state` VALUES (200, 175, 'Mures', 'MUR', 'MS');
INSERT INTO `jos_vm_state` VALUES (201, 175, 'Neamt', 'NEM', 'NT');
INSERT INTO `jos_vm_state` VALUES (202, 175, 'Olt', 'OLT', 'OT');
INSERT INTO `jos_vm_state` VALUES (203, 175, 'Prahova', 'PRA', 'PH');
INSERT INTO `jos_vm_state` VALUES (204, 175, 'Salaj', 'SAL', 'SJ');
INSERT INTO `jos_vm_state` VALUES (205, 175, 'Satu Mare', 'SAT', 'SM');
INSERT INTO `jos_vm_state` VALUES (206, 175, 'Sibiu', 'SIB', 'SB');
INSERT INTO `jos_vm_state` VALUES (207, 175, 'Suceava', 'SUC', 'SV');
INSERT INTO `jos_vm_state` VALUES (208, 175, 'Teleorman', 'TEL', 'TR');
INSERT INTO `jos_vm_state` VALUES (209, 175, 'Timis', 'TIM', 'TM');
INSERT INTO `jos_vm_state` VALUES (210, 175, 'Tulcea', 'TUL', 'TL');
INSERT INTO `jos_vm_state` VALUES (211, 175, 'Valcea', 'VAL', 'VL');
INSERT INTO `jos_vm_state` VALUES (212, 175, 'Vaslui', 'VAS', 'VS');
INSERT INTO `jos_vm_state` VALUES (213, 175, 'Vreancea', 'VRA', 'VN');
INSERT INTO `jos_vm_state` VALUES (214, 105, 'Agrigento', 'AGR', 'AG');
INSERT INTO `jos_vm_state` VALUES (215, 105, 'Alessandria', 'ALE', 'AL');
INSERT INTO `jos_vm_state` VALUES (216, 105, 'Ancona', 'ANC', 'AN');
INSERT INTO `jos_vm_state` VALUES (217, 105, 'Aosta', 'AOS', 'AO');
INSERT INTO `jos_vm_state` VALUES (218, 105, 'Arezzo', 'ARE', 'AR');
INSERT INTO `jos_vm_state` VALUES (219, 105, 'Ascoli Piceno', 'API', 'AP');
INSERT INTO `jos_vm_state` VALUES (220, 105, 'Asti', 'AST', 'AT');
INSERT INTO `jos_vm_state` VALUES (221, 105, 'Avellino', 'AVE', 'AV');
INSERT INTO `jos_vm_state` VALUES (222, 105, 'Bari', 'BAR', 'BA');
INSERT INTO `jos_vm_state` VALUES (223, 105, 'Belluno', 'BEL', 'BL');
INSERT INTO `jos_vm_state` VALUES (224, 105, 'Benevento', 'BEN', 'BN');
INSERT INTO `jos_vm_state` VALUES (225, 105, 'Bergamo', 'BEG', 'BG');
INSERT INTO `jos_vm_state` VALUES (226, 105, 'Biella', 'BIE', 'BI');
INSERT INTO `jos_vm_state` VALUES (227, 105, 'Bologna', 'BOL', 'BO');
INSERT INTO `jos_vm_state` VALUES (228, 105, 'Bolzano', 'BOZ', 'BZ');
INSERT INTO `jos_vm_state` VALUES (229, 105, 'Brescia', 'BRE', 'BS');
INSERT INTO `jos_vm_state` VALUES (230, 105, 'Brindisi', 'BRI', 'BR');
INSERT INTO `jos_vm_state` VALUES (231, 105, 'Cagliari', 'CAG', 'CA');
INSERT INTO `jos_vm_state` VALUES (232, 105, 'Caltanissetta', 'CAL', 'CL');
INSERT INTO `jos_vm_state` VALUES (233, 105, 'Campobasso', 'CBO', 'CB');
INSERT INTO `jos_vm_state` VALUES (234, 105, 'Carbonia-Iglesias', 'CAR', 'CI');
INSERT INTO `jos_vm_state` VALUES (235, 105, 'Caserta', 'CAS', 'CE');
INSERT INTO `jos_vm_state` VALUES (236, 105, 'Catania', 'CAT', 'CT');
INSERT INTO `jos_vm_state` VALUES (237, 105, 'Catanzaro', 'CTZ', 'CZ');
INSERT INTO `jos_vm_state` VALUES (238, 105, 'Chieti', 'CHI', 'CH');
INSERT INTO `jos_vm_state` VALUES (239, 105, 'Como', 'COM', 'CO');
INSERT INTO `jos_vm_state` VALUES (240, 105, 'Cosenza', 'COS', 'CS');
INSERT INTO `jos_vm_state` VALUES (241, 105, 'Cremona', 'CRE', 'CR');
INSERT INTO `jos_vm_state` VALUES (242, 105, 'Crotone', 'CRO', 'KR');
INSERT INTO `jos_vm_state` VALUES (243, 105, 'Cuneo', 'CUN', 'CN');
INSERT INTO `jos_vm_state` VALUES (244, 105, 'Enna', 'ENN', 'EN');
INSERT INTO `jos_vm_state` VALUES (245, 105, 'Ferrara', 'FER', 'FE');
INSERT INTO `jos_vm_state` VALUES (246, 105, 'Firenze', 'FIR', 'FI');
INSERT INTO `jos_vm_state` VALUES (247, 105, 'Foggia', 'FOG', 'FG');
INSERT INTO `jos_vm_state` VALUES (248, 105, 'Forli-Cesena', 'FOC', 'FC');
INSERT INTO `jos_vm_state` VALUES (249, 105, 'Frosinone', 'FRO', 'FR');
INSERT INTO `jos_vm_state` VALUES (250, 105, 'Genova', 'GEN', 'GE');
INSERT INTO `jos_vm_state` VALUES (251, 105, 'Gorizia', 'GOR', 'GO');
INSERT INTO `jos_vm_state` VALUES (252, 105, 'Grosseto', 'GRO', 'GR');
INSERT INTO `jos_vm_state` VALUES (253, 105, 'Imperia', 'IMP', 'IM');
INSERT INTO `jos_vm_state` VALUES (254, 105, 'Isernia', 'ISE', 'IS');
INSERT INTO `jos_vm_state` VALUES (255, 105, 'L''Aquila', 'AQU', 'AQ');
INSERT INTO `jos_vm_state` VALUES (256, 105, 'La Spezia', 'LAS', 'SP');
INSERT INTO `jos_vm_state` VALUES (257, 105, 'Latina', 'LAT', 'LT');
INSERT INTO `jos_vm_state` VALUES (258, 105, 'Lecce', 'LEC', 'LE');
INSERT INTO `jos_vm_state` VALUES (259, 105, 'Lecco', 'LCC', 'LC');
INSERT INTO `jos_vm_state` VALUES (260, 105, 'Livorno', 'LIV', 'LI');
INSERT INTO `jos_vm_state` VALUES (261, 105, 'Lodi', 'LOD', 'LO');
INSERT INTO `jos_vm_state` VALUES (262, 105, 'Lucca', 'LUC', 'LU');
INSERT INTO `jos_vm_state` VALUES (263, 105, 'Macerata', 'MAC', 'MC');
INSERT INTO `jos_vm_state` VALUES (264, 105, 'Mantova', 'MAN', 'MN');
INSERT INTO `jos_vm_state` VALUES (265, 105, 'Massa-Carrara', 'MAS', 'MS');
INSERT INTO `jos_vm_state` VALUES (266, 105, 'Matera', 'MAA', 'MT');
INSERT INTO `jos_vm_state` VALUES (267, 105, 'Medio Campidano', 'MED', 'VS');
INSERT INTO `jos_vm_state` VALUES (268, 105, 'Messina', 'MES', 'ME');
INSERT INTO `jos_vm_state` VALUES (269, 105, 'Milano', 'MIL', 'MI');
INSERT INTO `jos_vm_state` VALUES (270, 105, 'Modena', 'MOD', 'MO');
INSERT INTO `jos_vm_state` VALUES (271, 105, 'Napoli', 'NAP', 'NA');
INSERT INTO `jos_vm_state` VALUES (272, 105, 'Novara', 'NOV', 'NO');
INSERT INTO `jos_vm_state` VALUES (273, 105, 'Nuoro', 'NUR', 'NU');
INSERT INTO `jos_vm_state` VALUES (274, 105, 'Ogliastra', 'OGL', 'OG');
INSERT INTO `jos_vm_state` VALUES (275, 105, 'Olbia-Tempio', 'OLB', 'OT');
INSERT INTO `jos_vm_state` VALUES (276, 105, 'Oristano', 'ORI', 'OR');
INSERT INTO `jos_vm_state` VALUES (277, 105, 'Padova', 'PDA', 'PD');
INSERT INTO `jos_vm_state` VALUES (278, 105, 'Palermo', 'PAL', 'PA');
INSERT INTO `jos_vm_state` VALUES (279, 105, 'Parma', 'PAA', 'PR');
INSERT INTO `jos_vm_state` VALUES (280, 105, 'Pavia', 'PAV', 'PV');
INSERT INTO `jos_vm_state` VALUES (281, 105, 'Perugia', 'PER', 'PG');
INSERT INTO `jos_vm_state` VALUES (282, 105, 'Pesaro e Urbino', 'PES', 'PU');
INSERT INTO `jos_vm_state` VALUES (283, 105, 'Pescara', 'PSC', 'PE');
INSERT INTO `jos_vm_state` VALUES (284, 105, 'Piacenza', 'PIA', 'PC');
INSERT INTO `jos_vm_state` VALUES (285, 105, 'Pisa', 'PIS', 'PI');
INSERT INTO `jos_vm_state` VALUES (286, 105, 'Pistoia', 'PIT', 'PT');
INSERT INTO `jos_vm_state` VALUES (287, 105, 'Pordenone', 'POR', 'PN');
INSERT INTO `jos_vm_state` VALUES (288, 105, 'Potenza', 'PTZ', 'PZ');
INSERT INTO `jos_vm_state` VALUES (289, 105, 'Prato', 'PRA', 'PO');
INSERT INTO `jos_vm_state` VALUES (290, 105, 'Ragusa', 'RAG', 'RG');
INSERT INTO `jos_vm_state` VALUES (291, 105, 'Ravenna', 'RAV', 'RA');
INSERT INTO `jos_vm_state` VALUES (292, 105, 'Reggio Calabria', 'REG', 'RC');
INSERT INTO `jos_vm_state` VALUES (293, 105, 'Reggio Emilia', 'REE', 'RE');
INSERT INTO `jos_vm_state` VALUES (294, 105, 'Rieti', 'RIE', 'RI');
INSERT INTO `jos_vm_state` VALUES (295, 105, 'Rimini', 'RIM', 'RN');
INSERT INTO `jos_vm_state` VALUES (296, 105, 'Roma', 'ROM', 'RM');
INSERT INTO `jos_vm_state` VALUES (297, 105, 'Rovigo', 'ROV', 'RO');
INSERT INTO `jos_vm_state` VALUES (298, 105, 'Salerno', 'SAL', 'SA');
INSERT INTO `jos_vm_state` VALUES (299, 105, 'Sassari', 'SAS', 'SS');
INSERT INTO `jos_vm_state` VALUES (300, 105, 'Savona', 'SAV', 'SV');
INSERT INTO `jos_vm_state` VALUES (301, 105, 'Siena', 'SIE', 'SI');
INSERT INTO `jos_vm_state` VALUES (302, 105, 'Siracusa', 'SIR', 'SR');
INSERT INTO `jos_vm_state` VALUES (303, 105, 'Sondrio', 'SOO', 'SO');
INSERT INTO `jos_vm_state` VALUES (304, 105, 'Taranto', 'TAR', 'TA');
INSERT INTO `jos_vm_state` VALUES (305, 105, 'Teramo', 'TER', 'TE');
INSERT INTO `jos_vm_state` VALUES (306, 105, 'Terni', 'TRN', 'TR');
INSERT INTO `jos_vm_state` VALUES (307, 105, 'Torino', 'TOR', 'TO');
INSERT INTO `jos_vm_state` VALUES (308, 105, 'Trapani', 'TRA', 'TP');
INSERT INTO `jos_vm_state` VALUES (309, 105, 'Trento', 'TRE', 'TN');
INSERT INTO `jos_vm_state` VALUES (310, 105, 'Treviso', 'TRV', 'TV');
INSERT INTO `jos_vm_state` VALUES (311, 105, 'Trieste', 'TRI', 'TS');
INSERT INTO `jos_vm_state` VALUES (312, 105, 'Udine', 'UDI', 'UD');
INSERT INTO `jos_vm_state` VALUES (313, 105, 'Varese', 'VAR', 'VA');
INSERT INTO `jos_vm_state` VALUES (314, 105, 'Venezia', 'VEN', 'VE');
INSERT INTO `jos_vm_state` VALUES (315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB');
INSERT INTO `jos_vm_state` VALUES (316, 105, 'Vercelli', 'VER', 'VC');
INSERT INTO `jos_vm_state` VALUES (317, 105, 'Verona', 'VRN', 'VR');
INSERT INTO `jos_vm_state` VALUES (318, 105, 'Vibo Valenzia', 'VIV', 'VV');
INSERT INTO `jos_vm_state` VALUES (319, 105, 'Vicenza', 'VII', 'VI');
INSERT INTO `jos_vm_state` VALUES (320, 105, 'Viterbo', 'VIT', 'VT');
INSERT INTO `jos_vm_state` VALUES (321, 195, 'A Coruña', 'ACO', '15');
INSERT INTO `jos_vm_state` VALUES (322, 195, 'Alava', 'ALA', '01');
INSERT INTO `jos_vm_state` VALUES (323, 195, 'Albacete', 'ALB', '02');
INSERT INTO `jos_vm_state` VALUES (324, 195, 'Alicante', 'ALI', '03');
INSERT INTO `jos_vm_state` VALUES (325, 195, 'Almeria', 'ALM', '04');
INSERT INTO `jos_vm_state` VALUES (326, 195, 'Asturias', 'AST', '33');
INSERT INTO `jos_vm_state` VALUES (327, 195, 'Avila', 'AVI', '05');
INSERT INTO `jos_vm_state` VALUES (328, 195, 'Badajoz', 'BAD', '06');
INSERT INTO `jos_vm_state` VALUES (329, 195, 'Baleares', 'BAL', '07');
INSERT INTO `jos_vm_state` VALUES (330, 195, 'Barcelona', 'BAR', '08');
INSERT INTO `jos_vm_state` VALUES (331, 195, 'Burgos', 'BUR', '09');
INSERT INTO `jos_vm_state` VALUES (332, 195, 'Caceres', 'CAC', '10');
INSERT INTO `jos_vm_state` VALUES (333, 195, 'Cadiz', 'CAD', '11');
INSERT INTO `jos_vm_state` VALUES (334, 195, 'Cantabria', 'CAN', '39');
INSERT INTO `jos_vm_state` VALUES (335, 195, 'Castellon', 'CAS', '12');
INSERT INTO `jos_vm_state` VALUES (336, 195, 'Ceuta', 'CEU', '51');
INSERT INTO `jos_vm_state` VALUES (337, 195, 'Ciudad Real', 'CIU', '13');
INSERT INTO `jos_vm_state` VALUES (338, 195, 'Cordoba', 'COR', '14');
INSERT INTO `jos_vm_state` VALUES (339, 195, 'Cuenca', 'CUE', '16');
INSERT INTO `jos_vm_state` VALUES (340, 195, 'Girona', 'GIR', '17');
INSERT INTO `jos_vm_state` VALUES (341, 195, 'Granada', 'GRA', '18');
INSERT INTO `jos_vm_state` VALUES (342, 195, 'Guadalajara', 'GUA', '19');
INSERT INTO `jos_vm_state` VALUES (343, 195, 'Guipuzcoa', 'GUI', '20');
INSERT INTO `jos_vm_state` VALUES (344, 195, 'Huelva', 'HUL', '21');
INSERT INTO `jos_vm_state` VALUES (345, 195, 'Huesca', 'HUS', '22');
INSERT INTO `jos_vm_state` VALUES (346, 195, 'Jaen', 'JAE', '23');
INSERT INTO `jos_vm_state` VALUES (347, 195, 'La Rioja', 'LRI', '26');
INSERT INTO `jos_vm_state` VALUES (348, 195, 'Las Palmas', 'LPA', '35');
INSERT INTO `jos_vm_state` VALUES (349, 195, 'Leon', 'LEO', '24');
INSERT INTO `jos_vm_state` VALUES (350, 195, 'Lleida', 'LLE', '25');
INSERT INTO `jos_vm_state` VALUES (351, 195, 'Lugo', 'LUG', '27');
INSERT INTO `jos_vm_state` VALUES (352, 195, 'Madrid', 'MAD', '28');
INSERT INTO `jos_vm_state` VALUES (353, 195, 'Malaga', 'MAL', '29');
INSERT INTO `jos_vm_state` VALUES (354, 195, 'Melilla', 'MEL', '52');
INSERT INTO `jos_vm_state` VALUES (355, 195, 'Murcia', 'MUR', '30');
INSERT INTO `jos_vm_state` VALUES (356, 195, 'Navarra', 'NAV', '31');
INSERT INTO `jos_vm_state` VALUES (357, 195, 'Ourense', 'OUR', '32');
INSERT INTO `jos_vm_state` VALUES (358, 195, 'Palencia', 'PAL', '34');
INSERT INTO `jos_vm_state` VALUES (359, 195, 'Pontevedra', 'PON', '36');
INSERT INTO `jos_vm_state` VALUES (360, 195, 'Salamanca', 'SAL', '37');
INSERT INTO `jos_vm_state` VALUES (361, 195, 'Santa Cruz de Tenerife', 'SCT', '38');
INSERT INTO `jos_vm_state` VALUES (362, 195, 'Segovia', 'SEG', '40');
INSERT INTO `jos_vm_state` VALUES (363, 195, 'Sevilla', 'SEV', '41');
INSERT INTO `jos_vm_state` VALUES (364, 195, 'Soria', 'SOR', '42');
INSERT INTO `jos_vm_state` VALUES (365, 195, 'Tarragona', 'TAR', '43');
INSERT INTO `jos_vm_state` VALUES (366, 195, 'Teruel', 'TER', '44');
INSERT INTO `jos_vm_state` VALUES (367, 195, 'Toledo', 'TOL', '45');
INSERT INTO `jos_vm_state` VALUES (368, 195, 'Valencia', 'VAL', '46');
INSERT INTO `jos_vm_state` VALUES (369, 195, 'Valladolid', 'VLL', '47');
INSERT INTO `jos_vm_state` VALUES (370, 195, 'Vizcaya', 'VIZ', '48');
INSERT INTO `jos_vm_state` VALUES (371, 195, 'Zamora', 'ZAM', '49');
INSERT INTO `jos_vm_state` VALUES (372, 195, 'Zaragoza', 'ZAR', '50');
INSERT INTO `jos_vm_state` VALUES (373, 11, 'Aragatsotn', 'ARG', 'AG');
INSERT INTO `jos_vm_state` VALUES (374, 11, 'Ararat', 'ARR', 'AR');
INSERT INTO `jos_vm_state` VALUES (375, 11, 'Armavir', 'ARM', 'AV');
INSERT INTO `jos_vm_state` VALUES (376, 11, 'Gegharkunik', 'GEG', 'GR');
INSERT INTO `jos_vm_state` VALUES (377, 11, 'Kotayk', 'KOT', 'KT');
INSERT INTO `jos_vm_state` VALUES (378, 11, 'Lori', 'LOR', 'LO');
INSERT INTO `jos_vm_state` VALUES (379, 11, 'Shirak', 'SHI', 'SH');
INSERT INTO `jos_vm_state` VALUES (380, 11, 'Syunik', 'SYU', 'SU');
INSERT INTO `jos_vm_state` VALUES (381, 11, 'Tavush', 'TAV', 'TV');
INSERT INTO `jos_vm_state` VALUES (382, 11, 'Vayots-Dzor', 'VAD', 'VD');
INSERT INTO `jos_vm_state` VALUES (383, 11, 'Yerevan', 'YER', 'ER');
INSERT INTO `jos_vm_state` VALUES (384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI');
INSERT INTO `jos_vm_state` VALUES (385, 99, 'Andhra Pradesh', 'AND', 'AN');
INSERT INTO `jos_vm_state` VALUES (386, 99, 'Arunachal Pradesh', 'ARU', 'AR');
INSERT INTO `jos_vm_state` VALUES (387, 99, 'Assam', 'ASS', 'AS');
INSERT INTO `jos_vm_state` VALUES (388, 99, 'Bihar', 'BIH', 'BI');
INSERT INTO `jos_vm_state` VALUES (389, 99, 'Chandigarh', 'CHA', 'CA');
INSERT INTO `jos_vm_state` VALUES (390, 99, 'Chhatisgarh', 'CHH', 'CH');
INSERT INTO `jos_vm_state` VALUES (391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD');
INSERT INTO `jos_vm_state` VALUES (392, 99, 'Daman & Diu', 'DAM', 'DA');
INSERT INTO `jos_vm_state` VALUES (393, 99, 'Delhi', 'DEL', 'DE');
INSERT INTO `jos_vm_state` VALUES (394, 99, 'Goa', 'GOA', 'GO');
INSERT INTO `jos_vm_state` VALUES (395, 99, 'Gujarat', 'GUJ', 'GU');
INSERT INTO `jos_vm_state` VALUES (396, 99, 'Haryana', 'HAR', 'HA');
INSERT INTO `jos_vm_state` VALUES (397, 99, 'Himachal Pradesh', 'HIM', 'HI');
INSERT INTO `jos_vm_state` VALUES (398, 99, 'Jammu & Kashmir', 'JAM', 'JA');
INSERT INTO `jos_vm_state` VALUES (399, 99, 'Jharkhand', 'JHA', 'JH');
INSERT INTO `jos_vm_state` VALUES (400, 99, 'Karnataka', 'KAR', 'KA');
INSERT INTO `jos_vm_state` VALUES (401, 99, 'Kerala', 'KER', 'KE');
INSERT INTO `jos_vm_state` VALUES (402, 99, 'Lakshadweep', 'LAK', 'LA');
INSERT INTO `jos_vm_state` VALUES (403, 99, 'Madhya Pradesh', 'MAD', 'MD');
INSERT INTO `jos_vm_state` VALUES (404, 99, 'Maharashtra', 'MAH', 'MH');
INSERT INTO `jos_vm_state` VALUES (405, 99, 'Manipur', 'MAN', 'MN');
INSERT INTO `jos_vm_state` VALUES (406, 99, 'Meghalaya', 'MEG', 'ME');
INSERT INTO `jos_vm_state` VALUES (407, 99, 'Mizoram', 'MIZ', 'MI');
INSERT INTO `jos_vm_state` VALUES (408, 99, 'Nagaland', 'NAG', 'NA');
INSERT INTO `jos_vm_state` VALUES (409, 99, 'Orissa', 'ORI', 'OR');
INSERT INTO `jos_vm_state` VALUES (410, 99, 'Pondicherry', 'PON', 'PO');
INSERT INTO `jos_vm_state` VALUES (411, 99, 'Punjab', 'PUN', 'PU');
INSERT INTO `jos_vm_state` VALUES (412, 99, 'Rajasthan', 'RAJ', 'RA');
INSERT INTO `jos_vm_state` VALUES (413, 99, 'Sikkim', 'SIK', 'SI');
INSERT INTO `jos_vm_state` VALUES (414, 99, 'Tamil Nadu', 'TAM', 'TA');
INSERT INTO `jos_vm_state` VALUES (415, 99, 'Tripura', 'TRI', 'TR');
INSERT INTO `jos_vm_state` VALUES (416, 99, 'Uttaranchal', 'UAR', 'UA');
INSERT INTO `jos_vm_state` VALUES (417, 99, 'Uttar Pradesh', 'UTT', 'UT');
INSERT INTO `jos_vm_state` VALUES (418, 99, 'West Bengal', 'WES', 'WE');
INSERT INTO `jos_vm_state` VALUES (419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO');
INSERT INTO `jos_vm_state` VALUES (420, 101, 'Ardabil', 'ARD', 'AR');
INSERT INTO `jos_vm_state` VALUES (421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG');
INSERT INTO `jos_vm_state` VALUES (422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS');
INSERT INTO `jos_vm_state` VALUES (423, 101, 'Bushehr', 'BUS', 'BU');
INSERT INTO `jos_vm_state` VALUES (424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM');
INSERT INTO `jos_vm_state` VALUES (425, 101, 'Esfahan', 'ESF', 'ES');
INSERT INTO `jos_vm_state` VALUES (426, 101, 'Fars', 'FAR', 'FA');
INSERT INTO `jos_vm_state` VALUES (427, 101, 'Gilan', 'GIL', 'GI');
INSERT INTO `jos_vm_state` VALUES (428, 101, 'Gorgan', 'GOR', 'GO');
INSERT INTO `jos_vm_state` VALUES (429, 101, 'Hamadan', 'HAM', 'HA');
INSERT INTO `jos_vm_state` VALUES (430, 101, 'Hormozgan', 'HOR', 'HO');
INSERT INTO `jos_vm_state` VALUES (431, 101, 'Ilam', 'ILA', 'IL');
INSERT INTO `jos_vm_state` VALUES (432, 101, 'Kerman', 'KER', 'KE');
INSERT INTO `jos_vm_state` VALUES (433, 101, 'Kermanshah', 'BAK', 'BA');
INSERT INTO `jos_vm_state` VALUES (434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ');
INSERT INTO `jos_vm_state` VALUES (435, 101, 'Khorasan-e Razavi', 'KHR', 'KR');
INSERT INTO `jos_vm_state` VALUES (436, 101, 'Khorasan-e Shomali', 'KHS', 'KS');
INSERT INTO `jos_vm_state` VALUES (437, 101, 'Khuzestan', 'KHU', 'KH');
INSERT INTO `jos_vm_state` VALUES (438, 101, 'Kordestan', 'KOR', 'KO');
INSERT INTO `jos_vm_state` VALUES (439, 101, 'Lorestan', 'LOR', 'LO');
INSERT INTO `jos_vm_state` VALUES (440, 101, 'Markazi', 'MAR', 'MR');
INSERT INTO `jos_vm_state` VALUES (441, 101, 'Mazandaran', 'MAZ', 'MZ');
INSERT INTO `jos_vm_state` VALUES (442, 101, 'Qazvin', 'QAS', 'QA');
INSERT INTO `jos_vm_state` VALUES (443, 101, 'Qom', 'QOM', 'QO');
INSERT INTO `jos_vm_state` VALUES (444, 101, 'Semnan', 'SEM', 'SE');
INSERT INTO `jos_vm_state` VALUES (445, 101, 'Sistan va Baluchestan', 'SBA', 'SB');
INSERT INTO `jos_vm_state` VALUES (446, 101, 'Tehran', 'TEH', 'TE');
INSERT INTO `jos_vm_state` VALUES (447, 101, 'Yazd', 'YAZ', 'YA');
INSERT INTO `jos_vm_state` VALUES (448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_tax_rate`
-- 

CREATE TABLE `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,4) default NULL,
  PRIMARY KEY  (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `jos_vm_tax_rate`
-- 

INSERT INTO `jos_vm_tax_rate` VALUES (2, 1, 'CA', 'USA', 1326722569, 0.0000);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_userfield`
-- 

CREATE TABLE `jos_vm_userfield` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `jos_vm_userfield`
-- 

INSERT INTO `jos_vm_userfield` VALUES (1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, '');
INSERT INTO `jos_vm_userfield` VALUES (35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, '');
INSERT INTO `jos_vm_userfield` VALUES (26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);
INSERT INTO `jos_vm_userfield` VALUES (34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_userfield_values`
-- 

CREATE TABLE `jos_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jos_vm_userfield_values`
-- 

INSERT INTO `jos_vm_userfield_values` VALUES (1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1);
INSERT INTO `jos_vm_userfield_values` VALUES (2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1);
INSERT INTO `jos_vm_userfield_values` VALUES (3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_user_info`
-- 

CREATE TABLE `jos_vm_user_info` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

-- 
-- Dumping data for table `jos_vm_user_info`
-- 

INSERT INTO `jos_vm_user_info` VALUES ('951070a696b70cfd7440e9234111b9ec', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'webmaster@joomlart.com', NULL, NULL, NULL, NULL, NULL, 1209353539, 1215547331, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('14b19cb36eed6d49df50055a3b44b360', 63, 'BT', NULL, '', 'Mr.', 'Tứ', 'Trần Tam', '', '123456789', '', '', '123 Nguyễn Bặc', '', 'TP Hồ Chí Minh', '-', 'VNM', '12', 'quangvietntd2@gmail.com', NULL, NULL, NULL, NULL, NULL, 1211246122, 1326888287, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('b184584a15c4db23a9510387973ec9cf', 64, 'BT', NULL, 'J.C', '', 'Le', 'Khanh', '', '43244324', '', '', '14, 72/73/108 Quan Nhan', '', 'Hanoi', '-', 'BHR', '321212', 'khanhlh@gmail.com', NULL, NULL, NULL, NULL, NULL, 1211505085, 1216890100, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('f37b2ffe05540e92e9d7b78e29842c8c', 65, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'nnth@nnth.info', NULL, NULL, NULL, NULL, NULL, 1211938625, 1216342634, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('a9f949b4e96057615236179fdb2741f6', 66, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'nh@nh.hong', NULL, NULL, NULL, NULL, NULL, 1215130432, 1215573978, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('4e0a5a5de523323298406c7d1ddf6ed6', 67, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'fewfew@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1215564223, 0, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('6f25fe097cc2209c79efedd1da0d3883', 68, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'aaaa@aaa.com', NULL, NULL, NULL, NULL, NULL, 1215565413, 0, 'shopper', '', '', '', '', '', 'Checking');
INSERT INTO `jos_vm_user_info` VALUES ('6c8c9bcbe4cc3e109d6defd337fff1a9', 71, 'BT', '-default-', '', '', '', 'hshs', '', '', '', '', '', '', '', 'AL', 'USA', '', 'a@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1216973179, 1216973179, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_vendor`
-- 

CREATE TABLE `jos_vm_vendor` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_vm_vendor`
-- 

INSERT INTO `jos_vm_vendor` VALUES (1, 'vi tính Quang Việt', 'Việt', 'Nguyễn', 'Quang', 'Mr.', '0984510852', '0984510852', '0984510852', 'quangvietntd@gmail.com', '0984510852', '225 An Dương Vương P4 Q5', '', 'TP Hồ Chí Minh', ' - ', 'VNM', '92630', 'vi tính Quang Việt', '<p>Quý khách có thể chọn sản phẩm cần mua từ danh mục bên dưới</p>', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'VND', 950302468, 1326764391, 'shop_image/', '<h5><br /></h5>', '', 0.00, 0.00, '1|VNĐ|0|,| .|1|8', 'VND', '{storename}\r\n{address_1}\r\n{address_2}\r\n{city}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_vendor_category`
-- 

CREATE TABLE `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL auto_increment,
  `vendor_category_name` varchar(64) default NULL,
  `vendor_category_desc` text,
  PRIMARY KEY  (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_vm_vendor_category`
-- 

INSERT INTO `jos_vm_vendor_category` VALUES (6, '-default-', 'Default');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_visit`
-- 

CREATE TABLE `jos_vm_visit` (
  `visit_id` varchar(255) NOT NULL default '',
  `affiliate_id` int(11) NOT NULL default '0',
  `pages` int(11) NOT NULL default '0',
  `entry_page` varchar(255) NOT NULL default '',
  `exit_page` varchar(255) NOT NULL default '',
  `sdate` int(11) NOT NULL default '0',
  `edate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`visit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Records the visit of an affiliate';

-- 
-- Dumping data for table `jos_vm_visit`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_waiting_list`
-- 

CREATE TABLE `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `notify_email` varchar(150) NOT NULL default '',
  `notified` enum('0','1') default '0',
  `notify_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_vm_waiting_list`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_vm_zone_shipping`
-- 

CREATE TABLE `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_cost` decimal(10,2) default NULL,
  `zone_limit` decimal(10,2) default NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_vm_zone_shipping`
-- 

INSERT INTO `jos_vm_zone_shipping` VALUES (1, 'Default', 6.00, 35.00, 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (2, 'Zone 1', 1000.00, 10000.00, 'This is a zone example', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (3, 'Zone 2', 2.00, 22.00, 'This is the second zone. You can use this for notes about this zone', 2);
INSERT INTO `jos_vm_zone_shipping` VALUES (4, 'Zone 3', 11.00, 64.00, 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_weblinks`
-- 

CREATE TABLE `jos_weblinks` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_weblinks`
-- 

INSERT INTO `jos_weblinks` VALUES (1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, '');
INSERT INTO `jos_weblinks` VALUES (3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, '');
INSERT INTO `jos_weblinks` VALUES (4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0');
INSERT INTO `jos_weblinks` VALUES (6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
