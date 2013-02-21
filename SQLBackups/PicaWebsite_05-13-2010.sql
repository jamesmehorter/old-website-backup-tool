DROP TABLE jos_assignments;

CREATE TABLE `jos_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_type` varchar(60) NOT NULL,
  `access_id` text NOT NULL,
  `role` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_type` (`access_type`,`access_id`(60),`role`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO jos_assignments VALUES("1","aUser","62","CNB");
INSERT INTO jos_assignments VALUES("2","aUser","63","CNB");
INSERT INTO jos_assignments VALUES("3","aUser","64","CNB");
INSERT INTO jos_assignments VALUES("4","aUser","66","CNB");



DROP TABLE jos_banner;

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO jos_banner VALUES("1","1","","Home Page","home","0","0","1","home-4.jpg","","2008-12-26 22:31:07","1","0","0000-00-00 00:00:00","","","7","","1","1","0000-00-00 00:00:00","0000-00-00 00:00:00","","width=0\nheight=0");
INSERT INTO jos_banner VALUES("5","1","","About","about","0","0","0","about-couch.jpg","","2008-12-29 14:56:12","1","0","0000-00-00 00:00:00","","","7","","0","2","0000-00-00 00:00:00","0000-00-00 00:00:00","","width=0\nheight=0");



DROP TABLE jos_bannerclient;

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jos_bannerclient VALUES("1","Pica Design","Cait","caitlin@picadesign.com","","0","00:00:00","");



DROP TABLE jos_bannertrack;

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_bannertrack VALUES("2008-12-26","2","1");



DROP TABLE jos_categories;

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO jos_categories VALUES("1","0","Design","","design-blog","","4","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("2","0","Fun","","fun-blog","","4","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("3","0","Photos","","photo-blog","","4","left","","1","0","0000-00-00 00:00:00","","2","0","0","");
INSERT INTO jos_categories VALUES("4","0","Culture","","culture","","2","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("5","0","Front Page Special","","front-page","","1","left","","1","64","2009-08-31 21:31:10","","1","0","0","");
INSERT INTO jos_categories VALUES("6","0","Work","","work","","3","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("7","0","Page Headings","","headings","","com_banner","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("8","0","Pica","","pica","","com_contact_details","left","","1","0","0000-00-00 00:00:00","","1","0","0","");
INSERT INTO jos_categories VALUES("9","0","Contact","","contact","","1","left","<br>","1","0","0000-00-00 00:00:00","","2","0","0","");



DROP TABLE jos_ckfields;

CREATE TABLE `jos_ckfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `name` text,
  `label` text,
  `typefield` text,
  `defaultvalue` text,
  `mandatory` tinyint(4) DEFAULT NULL,
  `test_validity` tinyint(4) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `custominfo` text,
  `customerror` text,
  `customvalidation` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO jos_ckfields VALUES("1","1","Name","Name:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","1","","1","1","","","");
INSERT INTO jos_ckfields VALUES("2","1","Email","Email:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===email[--]t_minchar===","1","","1","2","","","");
INSERT INTO jos_ckfields VALUES("3","1","Message","Message:","text","t_initvalueT===[--]t_maxchar===1000[--]t_texttype===text[--]t_minchar===","0","","1","3","","","");
INSERT INTO jos_ckfields VALUES("4","2","Name","Your Name:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","1","","1","1","","","");
INSERT INTO jos_ckfields VALUES("5","2","Company","Your Company:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","0","","1","2","","","");
INSERT INTO jos_ckfields VALUES("6","2","Email","Email Address: ","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===email[--]t_minchar===","1","","1","3","","","");
INSERT INTO jos_ckfields VALUES("7","2","Web","Website:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","0","","1","4","","","");
INSERT INTO jos_ckfields VALUES("8","2","Phone","Business Phone: ","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","0","","1","5","","","");
INSERT INTO jos_ckfields VALUES("9","2","Project","What project do you want to start with us today? ","select","t_multipleS===[--]t_heightS===[--]t_listHS===optrb0==Annual Report||Annual Report[-]optrb1==Ad Design||Ad Design[-]optrb2==Book Design||Book Design[-]optrb3==Brochure||Brochure[-]optrb4==Business Collateral||Business Collateral[-]optrb5==Catalog||Catalog[-]optrb6==Display or Exhibit||Display or Exhibit[-]optrb7==Direct Mail||Direct Mail[-]optrb8==ID/Brand Design||ID/Brand Design[-]optrb9==Packaging||Packaging[-]optrb10==Poster||Poster[-]optrb11==Signage||Signage[-]optrb12==Website||Website[-]optrb13==Other||Other","1","","1","6","Click in Field to Select a Project Type","","");
INSERT INTO jos_ckfields VALUES("10","2","ProjectDetails","Tell us more about your project (specifications such as dimensions, color palette, budget concerns, etc.): ","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","0","","1","7","","","");
INSERT INTO jos_ckfields VALUES("11","2","Due","Due Date: ","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===date[--]t_minchar===","1","","1","8","","","");
INSERT INTO jos_ckfields VALUES("12","2","Submit","Submit","button","t_typeBT===submit","0","","1","9","","","");
INSERT INTO jos_ckfields VALUES("13","1","Send","Send the Message","button","t_typeBT===submit","0","","1","4","","","");
INSERT INTO jos_ckfields VALUES("14","3","Name","Name:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===text[--]t_minchar===","1","","1","1","","","");
INSERT INTO jos_ckfields VALUES("15","3","Email","Email:","text","t_initvalueT===[--]t_maxchar===[--]t_texttype===email[--]t_minchar===","1","","1","2","","","");
INSERT INTO jos_ckfields VALUES("16","3","Instructions","Instructions","textarea","t_initvalueTA===[--]t_HTMLEditor===[--]t_columns===[--]t_rows===[--]t_wrap===default[--]t_maxchar===[--]t_minchar===","0","","1","3","","","");
INSERT INTO jos_ckfields VALUES("19","3","File","Select File:","fileupload","","0","","1","5","","","");
INSERT INTO jos_ckfields VALUES("18","3","Upload","Upload","button","t_typeBT===submit","0","","1","6","","","");



DROP TABLE jos_ckforms;

CREATE TABLE `jos_ckforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `title` text,
  `description` longtext,
  `emailfrom` text,
  `emailto` text,
  `emailcc` text,
  `emailbcc` text,
  `subject` text,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `saveresult` tinyint(4) DEFAULT NULL,
  `emailresult` tinyint(4) DEFAULT NULL,
  `textresult` longtext,
  `redirecturl` text,
  `captcha` tinyint(4) DEFAULT NULL,
  `customjs` text,
  `uploadpath` text,
  `maxfilesize` int(11) DEFAULT NULL,
  `poweredby` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO jos_ckforms VALUES("1","Contact","Contact Pica","<br />","info@picadesign.com","caitlin@picadesign.com, rob@picadesign.com, jen@picadesign.com, micah@picadesign.com, cassidy@picadesign.com","","","www.picadesign.com contact form","2009-03-17 11:47:17","62","57","1","1","1","<br /><br /><br /><br />Thank you for contacting Pica Design, LLC. We\'ll be in touch with you shortly!<br />","","1","","/","0","0");
INSERT INTO jos_ckforms VALUES("2","PRF","Project Request Form","<br />","info@picadesign.com","caitlin@picadesign.com, rob@picadesign.com, jen@picadesign.com, micah@picadesign.com, cassidy@picadesign.com","","","Project Request Form","2009-03-17 11:47:27","62","177","1","1","1","<br /><br /><br /><br />Thanks so much for contacting Pica Design, we\'ll be in touch with you shortly!<br />","","1","","/","0","0");
INSERT INTO jos_ckforms VALUES("3","FTP","FTP Upload Utility","","info@picadesign.com","caitlin@picadesign.com","","","New Upload","2009-04-01 09:12:10","62","5","1","1","1","Thank you!<br />","","0","","/home/askpersp/public_html/picadesignBlue/test/images/ftp_utility/","100","0");



DROP TABLE jos_ckforms_1;

CREATE TABLE `jos_ckforms_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `Name` text,
  `Email` text,
  `Message` text,
  `Send` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO jos_ckforms_1 VALUES("1","2009-03-16 13:59:23","Caitlin","caitlin@picadesign.com","testing out the PIca Desgn message form","");
INSERT INTO jos_ckforms_1 VALUES("2","2009-03-16 14:00:46","Caitlin","caitlin@picadesign.com","test","");
INSERT INTO jos_ckforms_1 VALUES("3","2009-03-17 10:14:30","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("4","2009-03-17 10:15:56","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("5","2009-03-17 10:16:42","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("6","2009-03-17 11:09:15","Caitlin","caitlin@picadesign.com","test","");
INSERT INTO jos_ckforms_1 VALUES("7","2009-03-17 11:12:15","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("8","2009-03-17 11:13:12","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("9","2009-03-17 11:17:52","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("10","2009-03-17 11:18:55","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("11","2009-03-17 11:19:19","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("12","2009-03-17 11:19:43","Caitlin","caitlin.holman@gmail.com","test","");
INSERT INTO jos_ckforms_1 VALUES("13","2009-03-17 17:56:10","Rob","rob@picadesign.com","test","");



DROP TABLE jos_ckforms_2;

CREATE TABLE `jos_ckforms_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `Name` text,
  `Company` text,
  `Email` text,
  `Web` text,
  `Phone` text,
  `Project` text,
  `ProjectDetails` text,
  `DueDate` text,
  `Submit` text,
  `Due` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO jos_ckforms_2 VALUES("1","2009-03-16 13:57:32","Caitlin","Pica Design LLC","caitlin@picadesign.com","www.picadesign.com","207-230-4071","Website","something green","17/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("2","2009-03-17 09:58:32","Caitlin","Pica","caitlin.holman@gmail.com","www.picadesign.com","207-230-4071","Ad Design","something orange","05/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("3","2009-03-17 11:20:09","Caitlin","","caitlin.holman@gmail.com","","","Brochure","test","04/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("4","2009-03-17 11:20:53","Caitlin","","caitlin.holman@gmail.com","","","ID/Brand Design","test","26/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("5","2009-03-17 11:21:27","Caitlin","","caitlin.holman@gmail.com","","","Poster","test","21/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("6","2009-03-17 11:22:17","Caitlin","","caitlin.holman@gmail.com","","","Poster","","17/03/2009","","");
INSERT INTO jos_ckforms_2 VALUES("7","2009-04-08 13:38:18","Caitlin","","caitlin.holman@gmail.com","","","ID/Brand Design","","April 15","","");



DROP TABLE jos_ckforms_3;

CREATE TABLE `jos_ckforms_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `Name` text,
  `Email` text,
  `Instructions` text,
  `Upload` text,
  `File` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO jos_ckforms_3 VALUES("1","2009-03-17 14:05:44","Caitlin","caitlin.holman@gmail.com","test","","");
INSERT INTO jos_ckforms_3 VALUES("2","2009-04-01 08:36:44","Caitlin","caitlin.holman@gmail.com","file for CNB","","");
INSERT INTO jos_ckforms_3 VALUES("3","2009-04-01 08:57:22","Caitlin","caitlin.holman@gmail.com","","","");
INSERT INTO jos_ckforms_3 VALUES("4","2009-04-01 09:12:28","Caitlin","caitlin.holman@gmail.com","test","","");
INSERT INTO jos_ckforms_3 VALUES("5","2009-04-01 10:36:16","Caitlin","caitlin.holman@gmail.com","test ","","/home/askpersp/public_html/picadesignBlue/test/images/ftp_utility/connected2.jpg");
INSERT INTO jos_ckforms_3 VALUES("6","2009-04-01 10:41:41","Caitlin","caitlin.holman@gmail.com","last test before I give up.","","/home/askpersp/public_html/picadesignBlue/test/images/ftp_utility/ClickHouse.jpg");



DROP TABLE jos_components;

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

INSERT INTO jos_components VALUES("136","Wafl","option=com_wafl","0","0","option=com_wafl","Wafl","com_wafl","0","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("137","Modules","option=com_wafl&view=wafl&c=wafl","0","136","option=com_wafl&view=wafl&c=wafl","Wafl Modules","com_wafl&view=wafl&c=wafl","1"," ","0","","1");
INSERT INTO jos_components VALUES("138","Settings","option=com_wafl&view=settings&c=settings","0","136","option=com_wafl&view=settings&c=settings","Wafl Settings","com_wafl&view=settings&c=settings","2"," ","0","","1");
INSERT INTO jos_components VALUES("139","SirunaAdvanced","option=com_wafl&view=advanced&c=advanced","0","136","option=com_wafl&view=advanced&c=advanced","Wafl Siruna Advanced","com_wafl&view=advanced&c=advanced","3"," ","0","","1");
INSERT INTO jos_components VALUES("7","Contacts","option=com_contact","0","0","","Edit contact details","com_contact","0","js/ThemeOffice/component.png","1","contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nallow_vcard=1\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=1\ncustom_reply=0\n\n","1");
INSERT INTO jos_components VALUES("8","Contacts","","0","7","option=com_contact","Edit contact details","com_contact","0","js/ThemeOffice/edit.png","1","","1");
INSERT INTO jos_components VALUES("9","Categories","","0","7","option=com_categories&section=com_contact_details","Manage contact categories","","2","js/ThemeOffice/categories.png","1","contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n","1");
INSERT INTO jos_components VALUES("11","News Feeds","option=com_newsfeeds","0","0","","News Feeds Management","com_newsfeeds","0","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("12","Feeds","","0","11","option=com_newsfeeds","Manage News Feeds","com_newsfeeds","1","js/ThemeOffice/edit.png","0","show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n","1");
INSERT INTO jos_components VALUES("13","Categories","","0","11","option=com_categories&section=com_newsfeeds","Manage Categories","","2","js/ThemeOffice/categories.png","0","","1");
INSERT INTO jos_components VALUES("14","User","option=com_user","0","0","","","com_user","0","","1","","1");
INSERT INTO jos_components VALUES("15","Search","option=com_search","0","0","option=com_search","Search Statistics","com_search","0","js/ThemeOffice/component.png","1","enabled=0\n\n","1");
INSERT INTO jos_components VALUES("17","Wrapper","option=com_wrapper","0","0","","Wrapper","com_wrapper","0","","1","","1");
INSERT INTO jos_components VALUES("18","Mail To","","0","0","","","com_mailto","0","","1","","1");
INSERT INTO jos_components VALUES("19","Media Manager","","0","0","option=com_media","Media Manager","com_media","0","","1","upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=0\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n","1");
INSERT INTO jos_components VALUES("20","Articles","option=com_content","0","0","","","com_content","0","","1","show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=1\nfilter_tags=\nfilter_attritbutes=\n\n","1");
INSERT INTO jos_components VALUES("21","Configuration Manager","","0","0","","Configuration","com_config","0","","1","","1");
INSERT INTO jos_components VALUES("22","Installation Manager","","0","0","","Installer","com_installer","0","","1","","1");
INSERT INTO jos_components VALUES("23","Language Manager","","0","0","","Languages","com_languages","0","","1","","1");
INSERT INTO jos_components VALUES("24","Mass mail","","0","0","","Mass Mail","com_massmail","0","","1","mailSubjectPrefix=\nmailBodySuffix=\n\n","1");
INSERT INTO jos_components VALUES("25","Menu Editor","","0","0","","Menu Editor","com_menus","0","","1","","1");
INSERT INTO jos_components VALUES("27","Messaging","","0","0","","Messages","com_messages","0","","1","","1");
INSERT INTO jos_components VALUES("28","Modules Manager","","0","0","","Modules","com_modules","0","","1","","1");
INSERT INTO jos_components VALUES("29","Plugin Manager","","0","0","","Plugins","com_plugins","0","","1","","1");
INSERT INTO jos_components VALUES("30","Template Manager","","0","0","","Templates","com_templates","0","","1","","1");
INSERT INTO jos_components VALUES("31","User Manager","","0","0","","Users","com_users","0","","1","allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n","1");
INSERT INTO jos_components VALUES("32","Cache Manager","","0","0","","Cache","com_cache","0","","1","","1");
INSERT INTO jos_components VALUES("33","Control Panel","","0","0","","Control Panel","com_cpanel","0","","1","","1");
INSERT INTO jos_components VALUES("108","CK Forms","option=com_ckforms","0","0","option=com_ckforms","CK Forms","com_ckforms","0","../administrator/components/com_ckforms/images/logo-menu.png","0","","1");
INSERT INTO jos_components VALUES("109","JCE Administration","option=com_jce","0","0","option=com_jce","JCE Administration","com_jce","0","../administrator/components/com_jce/img/logo.png","0","","1");
INSERT INTO jos_components VALUES("110","Control Panel","","0","109","option=com_jce","Control Panel","com_jce","0","templates/khepri/images/menu/icon-16-cpanel.png","0","","1");
INSERT INTO jos_components VALUES("111","Configuration","","0","109","option=com_jce&type=config","Configuration","com_jce","1","templates/khepri/images/menu/icon-16-config.png","0","","1");
INSERT INTO jos_components VALUES("112","Groups","","0","109","option=com_jce&type=group","Groups","com_jce","2","templates/khepri/images/menu/icon-16-user.png","0","","1");
INSERT INTO jos_components VALUES("113","Plugins","","0","109","option=com_jce&type=plugin","Plugins","com_jce","3","templates/khepri/images/menu/icon-16-plugin.png","0","","1");
INSERT INTO jos_components VALUES("114","Install","","0","109","option=com_jce&type=install","Install","com_jce","4","templates/khepri/images/menu/icon-16-install.png","0","","1");
INSERT INTO jos_components VALUES("68","Frontpage SlideShow","option=com_fpss","0","0","option=com_fpss","Frontpage SlideShow","com_fpss","0","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("69","Estimates","option=com_chronocontact&task=show&formid=1","0","7","option=com_chronocontact&task=show&formid=3","Estimates","com_chronocontact","1","js/ThemeOffice/mass_email.png","0","","1");
INSERT INTO jos_components VALUES("70","Mass content","option=com_masscontent","0","0","option=com_masscontent","Mass content","com_masscontent","0","js/ThemeOffice/component.png","0","nbMassContent=10\nnbMassCategories=10\nnbMassSections=10\ndisplayAlias=1\ndisplayIntroText=1\ndisplayFullText=1\n","1");
INSERT INTO jos_components VALUES("71","Create mass content","","0","70","option=com_masscontent&controller=content","Create mass content","com_masscontent","0","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("72","Create mass sections","","0","70","option=com_masscontent&controller=sections","Create mass sections","com_masscontent","1","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("73","Create mass categories","","0","70","option=com_masscontent&controller=categories","Create mass categories","com_masscontent","2","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("74","Delete mass content","","0","70","option=com_masscontent&controller=delete","Delete mass content","com_masscontent","3","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("106","Help","","0","75","option=com_joomgallery&act=help","Help","com_joomgallery","11","components/com_joomgallery/assets/images/joom_information.png","0","","1");
INSERT INTO jos_components VALUES("105","Migration Manager","","0","75","option=com_joomgallery&act=migrate","Migration Manager","com_joomgallery","10","components/com_joomgallery/assets/images/joom_migration.png","0","","1");
INSERT INTO jos_components VALUES("104","Customize CSS","","0","75","option=com_joomgallery&act=editcss","Customize CSS","com_joomgallery","9","components/com_joomgallery/assets/images/joom_css.png","0","","1");
INSERT INTO jos_components VALUES("103","Configuration Manager","","0","75","option=com_joomgallery&act=configuration","Configuration Manager","com_joomgallery","8","components/com_joomgallery/assets/images/joom_config.png","0","","1");
INSERT INTO jos_components VALUES("102","Java Upload","","0","75","option=com_joomgallery&act=jupload","Java Upload","com_joomgallery","7","components/com_joomgallery/assets/images/joom_jupload.png","0","","1");
INSERT INTO jos_components VALUES("101","FTP Upload","","0","75","option=com_joomgallery&act=ftpupload","FTP Upload","com_joomgallery","6","components/com_joomgallery/assets/images/joom_ftpupload.png","0","","1");
INSERT INTO jos_components VALUES("100","Batch Upload","","0","75","option=com_joomgallery&act=batchupload","Batch Upload","com_joomgallery","5","components/com_joomgallery/assets/images/joom_batchupload.png","0","","1");
INSERT INTO jos_components VALUES("99","Picture Upload","","0","75","option=com_joomgallery&act=upload","Picture Upload","com_joomgallery","4","components/com_joomgallery/assets/images/joom_pictureupload.png","0","","1");
INSERT INTO jos_components VALUES("98","Votes Manager","","0","75","option=com_joomgallery&act=votes","Votes Manager","com_joomgallery","3","components/com_joomgallery/assets/images/joom_votes.png","0","","1");
INSERT INTO jos_components VALUES("97","Comments Manager","","0","75","option=com_joomgallery&act=comments","Comments Manager","com_joomgallery","2","components/com_joomgallery/assets/images/joom_comments.png","0","","1");
INSERT INTO jos_components VALUES("95","Category Manager","","0","75","option=com_joomgallery&act=categories","Category Manager","com_joomgallery","0","components/com_joomgallery/assets/images/joom_categories.png","0","","1");
INSERT INTO jos_components VALUES("96","Picture Manager","","0","75","option=com_joomgallery&act=pictures","Picture Manager","com_joomgallery","1","components/com_joomgallery/assets/images/joom_pictures.png","0","","1");
INSERT INTO jos_components VALUES("75","JoomGallery","option=com_joomgallery","0","0","option=com_joomgallery","JoomGallery","com_joomgallery","0","components/com_joomgallery/assets/images/joom_main.png","0","","1");
INSERT INTO jos_components VALUES("89","JForms","option=com_jforms","0","0","option=com_jforms","JForms","com_jforms","0","js/ThemeOffice/component.png","0","","1");
INSERT INTO jos_components VALUES("94","Remository","option=com_remository","0","0","option=com_remository","Remository","com_remository","0","js/ThemeOffice/component.png","0","","1");



DROP TABLE jos_comprofiler;

CREATE TABLE `jos_comprofiler` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `avatarapproved` tinyint(4) DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) NOT NULL DEFAULT '',
  `cbactivation` varchar(50) NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext,
  `acceptedterms` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`),
  KEY `lastupdatedate` (`lastupdatedate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO jos_comprofiler VALUES("62","62","","","","0","0000-00-00 00:00:00","0","","1","1","1","0000-00-00 00:00:00","","","0","","","","","","0");



DROP TABLE jos_comprofiler_field_values;

CREATE TABLE `jos_comprofiler_field_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`),
  KEY `fieldid_ordering` (`fieldid`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_comprofiler_fields;

CREATE TABLE `jos_comprofiler_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `table` varchar(50) NOT NULL DEFAULT '#__comprofiler',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `tabid` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `profile` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `pluginid` int(11) DEFAULT NULL,
  `params` mediumtext,
  PRIMARY KEY (`fieldid`),
  KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`),
  KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`),
  KEY `registration_published_order` (`registration`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO jos_comprofiler_fields VALUES("41","name","#__users","_UE_NAME","","predefined","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("26","NA","#__comprofiler","_UE_ONLINESTATUS","","status","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("27","lastvisitDate","#__users","_UE_LASTONLINE","","date","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("28","registerDate","#__users","_UE_MEMBERSINCE","","date","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("29","avatar","#__comprofiler","_UE_IMAGE","","image","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("42","username","#__users","_UE_UNAME","","predefined","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("45","NA","#__comprofiler","_UE_FORMATNAME","","formatname","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("46","firstname","#__comprofiler","_UE_YOUR_FNAME","","predefined","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("47","middlename","#__comprofiler","_UE_YOUR_MNAME","","predefined","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("48","lastname","#__comprofiler","_UE_YOUR_LNAME","","predefined","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("49","lastupdatedate","#__comprofiler","_UE_LASTUPDATEDON","","date","","","0","","","","","","","1","0","1","0","1","1","","");
INSERT INTO jos_comprofiler_fields VALUES("50","email","#__users","_UE_EMAIL","","primaryemailaddress","","","0","","","","","","","1","0","1","0","1","1","","");



DROP TABLE jos_comprofiler_lists;

CREATE TABLE `jos_comprofiler_lists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `usergroupids` varchar(255) DEFAULT NULL,
  `useraccessgroupid` int(9) NOT NULL DEFAULT '18',
  `sortfields` varchar(255) DEFAULT NULL,
  `filterfields` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `col1title` varchar(255) DEFAULT NULL,
  `col1enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col1fields` mediumtext,
  `col2title` varchar(255) DEFAULT NULL,
  `col2enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col1captions` tinyint(1) NOT NULL DEFAULT '0',
  `col2fields` mediumtext,
  `col2captions` tinyint(1) NOT NULL DEFAULT '0',
  `col3title` varchar(255) DEFAULT NULL,
  `col3enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col3fields` mediumtext,
  `col3captions` tinyint(1) NOT NULL DEFAULT '0',
  `col4title` varchar(255) DEFAULT NULL,
  `col4enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col4fields` mediumtext,
  `col4captions` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `pub_ordering` (`published`,`ordering`),
  KEY `default_published` (`default`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_comprofiler_members;

CREATE TABLE `jos_comprofiler_members` (
  `referenceid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '1',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `membersince` date NOT NULL DEFAULT '0000-00-00',
  `reason` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `type` mediumtext,
  PRIMARY KEY (`referenceid`,`memberid`),
  KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`),
  KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`),
  KEY `membrefid` (`memberid`,`referenceid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_comprofiler_plugin;

CREATE TABLE `jos_comprofiler_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT '',
  `folder` varchar(100) DEFAULT '',
  `backend_menu` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`),
  KEY `type_pub_order` (`type`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO jos_comprofiler_plugin VALUES("1","CB Core","cb.core","user","plug_cbcore","","0","1","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("2","CB Connections","cb.connections","user","plug_cbconnections","","0","3","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("3","Content Author","cb.authortab","user","plug_cbmamboauthortab","","0","4","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("4","Simpleboard Forum","cb.simpleboardtab","user","plug_cbsimpleboardtab","","0","5","0","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("5","Mamblog Blog","cb.mamblogtab","user","plug_cbmamblogtab","","0","6","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("6","YaNC Newsletters","yanc","user","plug_yancintegration","","0","7","0","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("7","Default","default","templates","default","","0","1","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("8","WinClassic","winclassic","templates","winclassic","","0","2","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("9","WebFX","webfx","templates","webfx","","0","3","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("10","OSX","osx","templates","osx","","0","4","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("11","Luna","luna","templates","luna","","0","5","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("12","Dark","dark","templates","dark","","0","6","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("13","Default language (English)","default_language","language","default_language","","0","-1","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("14","CB Menu","cb.menu","user","plug_cbmenu","","0","2","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_comprofiler_plugin VALUES("15","PMS MyPMS and Pro","pms.mypmspro","user","plug_pms_mypmspro","","0","8","0","1","0","0","0000-00-00 00:00:00","");



DROP TABLE jos_comprofiler_tabs;

CREATE TABLE `jos_comprofiler_tabs` (
  `tabid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `ordering_register` int(11) NOT NULL DEFAULT '10',
  `width` varchar(10) NOT NULL DEFAULT '.5',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `pluginclass` varchar(255) DEFAULT NULL,
  `pluginid` int(11) DEFAULT NULL,
  `fields` tinyint(1) NOT NULL DEFAULT '1',
  `params` mediumtext,
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `displaytype` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `useraccessgroupid` int(9) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`tabid`),
  KEY `enabled_position_ordering` (`enabled`,`position`,`ordering`),
  KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO jos_comprofiler_tabs VALUES("11","_UE_CONTACT_INFO_HEADER","","-4","10","1","1","getContactTab","1","1","","2","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("12","_UE_AUTHORTAB","","-3","10","1","0","getAuthorTab","3","0","","1","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("13","_UE_FORUMTAB","","-2","10","1","0","getForumTab","4","0","","1","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("14","_UE_BLOGTAB","","-1","10","1","0","getBlogTab","5","0","","1","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("15","_UE_CONNECTION","","99","10","1","0","getConnectionTab","2","0","","1","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("16","_UE_NEWSLETTER_HEADER","_UE_NEWSLETTER_INTRODCUTION","99","10","1","0","getNewslettersTab","6","0","","1","tab","cb_tabmain","-2");
INSERT INTO jos_comprofiler_tabs VALUES("17","_UE_MENU","","-10","10","1","1","getMenuTab","14","0","","1","html","cb_head","-2");
INSERT INTO jos_comprofiler_tabs VALUES("18","_UE_CONNECTIONPATHS","","-9","10","1","1","getConnectionPathsTab","2","0","","1","html","cb_head","-2");
INSERT INTO jos_comprofiler_tabs VALUES("19","_UE_PROFILE_PAGE_TITLE","","-8","10","1","1","getPageTitleTab","1","0","","1","html","cb_head","-2");
INSERT INTO jos_comprofiler_tabs VALUES("20","_UE_PORTRAIT","","-7","10","1","1","getPortraitTab","1","0","","1","html","cb_middle","-2");
INSERT INTO jos_comprofiler_tabs VALUES("21","_UE_USER_STATUS","","-6","10",".5","1","getStatusTab","14","0","","1","html","cb_right","-2");
INSERT INTO jos_comprofiler_tabs VALUES("22","_UE_PMSTAB","","-5","10",".5","0","getmypmsproTab","15","0","","1","html","cb_right","-2");



DROP TABLE jos_comprofiler_userreports;

CREATE TABLE `jos_comprofiler_userreports` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `reporteduser` int(11) NOT NULL DEFAULT '0',
  `reportedbyuser` int(11) NOT NULL DEFAULT '0',
  `reportedondate` date NOT NULL DEFAULT '0000-00-00',
  `reportexplaination` text NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportid`),
  KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`),
  KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_comprofiler_views;

CREATE TABLE `jos_comprofiler_views` (
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  `lastview` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL DEFAULT '0',
  `vote` tinyint(3) DEFAULT NULL,
  `lastvote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`viewer_id`,`profile_id`,`lastip`),
  KEY `lastview` (`lastview`),
  KEY `profile_id_lastview` (`profile_id`,`lastview`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_contact_details;

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jos_contact_details VALUES("1","Pica Design, LLC","pica-design","","Pica Design, LLC.\nP.O. Box 225\n111 Church Street\nBelfast, ME 04915-0225","","","",""," 207.338.1740"," 207.338.0899 ","","","","info@picadesign.com","0","1","0","0000-00-00 00:00:00","1","show_name=0\nshow_position=0\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=0\nshow_fax=1\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=Address-icon.jpg\nicon_email=email-icon.jpg\nicon_telephone=phone-icon.jpg\nicon_mobile=\nicon_fax=fax-icon.jpg\nicon_misc=\nshow_email_form=0\nemail_description=Send Us a Message\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=","62","8","0","","http://www.picadesign.com");



DROP TABLE jos_content;

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO jos_content VALUES("1","Contact Us","contact-us","","<br /> {mosmap width=\'500\'|height=\'400\'|lat=\'52.052312\'|lon=\'4.447141\'|zoom=\'3\'| zoomType=\'Large\'|zoomNew=\'0\'|mapType=\'Satellite\'| showMaptype=\'1\'|overview=\'0\'|text=\'sv DWO\'|lang=\'\'}","","-2","0","0","0","2008-10-22 18:07:19","62","","0000-00-00 00:00:00","0","0","0000-00-00 00:00:00","2008-10-22 18:07:19","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","0","","","0","0","robots=\nauthor=");
INSERT INTO jos_content VALUES("2","Home","home","","<!-- &nbsp; -->","","1","1","0","5","2008-10-22 18:18:35","62","","2010-04-28 18:20:51","62","0","0000-00-00 00:00:00","2008-10-22 18:18:35","0000-00-00 00:00:00","","","show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Maine Graphic Design and Web Design Agency Specializing in Brand & Website Development, Pica Design, Belfast, Mid-Coast Maine\nreadmore=","129","0","1","","","0","19868","robots=\nauthor=");
INSERT INTO jos_content VALUES("3","Culture","culture","","<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p> Welcome to Pica Design. Weíre a<br />  graphic design company; a team <br />of imaginative thinkers dedicated <br />to creating visuals with impact. <br />And we have a really great couch. </p>","","-2","2","0","4","2008-10-22 18:19:47","62","","2009-01-22 19:42:17","62","0","0000-00-00 00:00:00","2008-10-22 18:19:47","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","35","0","0","","","0","259","robots=\nauthor=");
INSERT INTO jos_content VALUES("4","Approach","approach","","<div><img title=\"Pica Design Review\" alt=\"Pica Design Review\" src=\"images/stories/pica-review-1.jpg\" style=\"margin-left: 35px; float: right;\" />We design with simplicity in mind. We use our creative knowledge and experience to transform our clients\' objectives into compelling materials that connect to the world. Cumulative research, input and vision shape every project, while we stay alert to brand management, budget and long-term goals. Through sound strategy, we arrive at customized designs that seek to inspire, motivate, and inform their audience and expand upon each client\'s value proposition.<br /><br /><em>Our process is open and collaborative and generally follows these four steps:</em><br /><br /><strong> 1 - Define Scope</strong><br />From objectives to end-users, deadlines to budgets, in this phase of work we absorb and discuss all of the project details. At the end of this step, we have a clear definition of our assignment.<br /><br /><strong>2 - Develop Concepts</strong><br />After research and immersion, the design team develops initial sketches. The group gathers for an internal critique. Working concepts are further developed and then presented to the client for input, comment and selection. <br /><br /><strong>3 - Refine &amp; Build</strong><br />During this phase, initial concepts are translated into a working model of the final product. Revisions happen. The art director and project manager ensure that the evolving design meets the original goals and specifications for the project throughout this process.<br /><br /><strong>4 - Wrap</strong><br />Finalizing a project, we use keen attention to detail. The team finalizes the work and guides it through final production. After brainstorming, refining and polishing, there is a point at which the design does what itís supposed to do--communicate to its audience on multiple levels by speaking to the heart, mind and intuition.  <br /></div>","","1","2","0","4","2008-10-22 20:31:14","62","","2009-07-12 14:40:15","64","0","0000-00-00 00:00:00","2008-10-22 20:31:14","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Collaborative Creative Design and Marketing Company \nreadmore=","58","0","6","","","0","3116","robots=\nauthor=");
INSERT INTO jos_content VALUES("15","Portfolio","portfolio","","<p>    AC_FL_RunContent( \'codebase\',\'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0\',\'width\',\'850\',\'height\',\'600\',\'src\',\'flashcataloguetest\',\'quality\',\'high\',\'flashvars\',\'flashlet={thumbColapseHeight:5,photoBgColor:#FFFFFF,minHeight:\\\'0\\\',photoBorderAlpha:100,thumbHeight:75,numberFontColor:#202020,thumbBgEmpty:#D0D0D0,loadingStyle:\\\'Bytes\\\',controlsBackground:#909090,thumbBgActive:#FF5500,textFontFamily:\\\'Tahoma\\\',textFontColor:#505050,photoBorderColor:#707070,thumbWidth:105,descLineSpacing:2,captionFontBold:false,visible:\\\'true\\\',thumbColumns:8,textFontSize:11,spaceHeight:500,captionFontColor:#FF5500,photoBorderWidth:1,controlsActive:#C0C0C0,photoWidth:500,thumbBgColor:#505050,photoBgAlpha:100,enabled:true,photoHeight:500,thumbLineSpacing:1,photoScale:\\\'Fill\\\',controlsColor:#0099CC,xmlSource:\\\'catalogue.xml\\\'}\',\'pluginspage\',\'http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\',\'flash_component\',\'FlashCatalogue.swc\',\'movie\',\'flashcataloguetest\' ); //end AC code       &lt;div  classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0\" width=\"850\" height=\"600\"&gt;     &lt;div  name=\"flash_component\" value=\"FlashCatalogue.swc\"&gt;&lt;/div&gt;     &lt;div  name=\"movie\" value=\"flashcataloguetest.swf\"&gt;&lt;/div&gt;     &lt;div  name=\"quality\" value=\"high\"&gt;&lt;/div&gt;     &lt;div  name=\"FlashVars\" value=\"flashlet={thumbColapseHeight:5,photoBgColor:#FFFFFF,minHeight:\'0\',photoBorderAlpha:100,thumbHeight:75,numberFontColor:#202020,thumbBgEmpty:#D0D0D0,loadingStyle:\'Bytes\',controlsBackground:#909090,thumbBgActive:#FF5500,textFontFamily:\'Tahoma\',textFontColor:#505050,photoBorderColor:#707070,thumbWidth:105,descLineSpacing:2,captionFontBold:false,visible:\'true\',thumbColumns:8,textFontSize:11,spaceHeight:500,captionFontColor:#FF5500,photoBorderWidth:1,controlsActive:#C0C0C0,photoWidth:500,thumbBgColor:#505050,photoBgAlpha:100,enabled:true,photoHeight:500,thumbLineSpacing:1,photoScale:\'Fill\',controlsColor:#0099CC,xmlSource:\'catalogue.xml\'}\"&gt;&lt;/div&gt;     &lt;div  src=\"flashcataloguetest.swf\" quality=\"high\" flashvars=\"flashlet={thumbColapseHeight:5,photoBgColor:#FFFFFF,minHeight:\'0\',photoBorderAlpha:100,thumbHeight:75,numberFontColor:#202020,thumbBgEmpty:#D0D0D0,loadingStyle:\'Bytes\',controlsBackground:#909090,thumbBgActive:#FF5500,textFontFamily:\'Tahoma\',textFontColor:#505050,photoBorderColor:#707070,thumbWidth:105,descLineSpacing:2,captionFontBold:false,visible:\'true\',thumbColumns:8,textFontSize:11,spaceHeight:500,captionFontColor:#FF5500,photoBorderWidth:1,controlsActive:#C0C0C0,photoWidth:500,thumbBgColor:#505050,photoBgAlpha:100,enabled:true,photoHeight:500,thumbLineSpacing:1,photoScale:\'Fill\',controlsColor:#0099CC,xmlSource:\'catalogue.xml\'}\" pluginspage=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width=\"850\" height=\"600\"&gt; &lt;/div&gt;   &lt;/div&gt;    </p> <p>&nbsp;</p>","","-2","3","0","6","2008-12-29 16:07:04","62","","0000-00-00 00:00:00","0","0","0000-00-00 00:00:00","2008-12-29 16:07:04","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","0","","","0","1","robots=\nauthor=");
INSERT INTO jos_content VALUES("16","Portfolio","flash-catalogue-2","","<br />","","1","3","0","6","2008-12-29 16:13:53","62","","2009-05-08 14:21:36","62","0","0000-00-00 00:00:00","2008-12-29 16:13:53","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=A Range of Design Work, From Brand Development to Large-scale Graphics\nreadmore=","63","0","5","","","0","1169","robots=\nauthor=");
INSERT INTO jos_content VALUES("18","People","people","","<!-- &nbsp; -->\n<p> </p>\n<p> </p>\n<p> </p>","","1","2","0","4","2009-01-23 15:09:22","62","","2010-01-07 15:55:28","62","0","0000-00-00 00:00:00","2009-01-23 15:09:22","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Rob Dietz and the Creative Design Team at Pica Design, LLC\nreadmore=","17","0","2","","","0","2986","robots=\nauthor=");
INSERT INTO jos_content VALUES("5","People","people","","<p>P</p>","","-2","2","0","4","2008-10-22 20:32:04","62","","2009-03-26 15:34:01","62","0","0000-00-00 00:00:00","2008-10-22 20:32:04","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","36","0","0","","","0","260","robots=\nauthor=");
INSERT INTO jos_content VALUES("25","Sign up for Pica Points","pica-points","","<form action=\"http://picadesign.createsend.com/t/y/s/iuuhhi/\" method=\"post\">\n<div>\n<p><strong><img class=\"alignnone size-medium wp-image-239\" title=\"points_logo1\" src=\"blog/wp-content/uploads/2009/05/points_logo1-300x83.png\" alt=\"points_logo1\" height=\"83\" width=\"300\" /></strong></p>\n</div>\n<div><strong>Pica POINTSô</strong> is our new <em>email blast</em> to promote special offers and events and <br />share cost-saving tools and tips with our clients. Sign up below!<br /></div>\n<div><br /></div>\n<div><label for=\"name\">Name:</label><br /><input name=\"cm-name\" id=\"name\" type=\"text\" /><br /> <label for=\"iuuhhi-iuuhhi\">Email:</label><br /><input name=\"cm-iuuhhi-iuuhhi\" id=\"iuuhhi-iuuhhi\" type=\"text\" /><br /><br /> <input value=\"Subscribe\" type=\"submit\" /></div>\n</form>","","1","0","0","0","2009-05-21 21:29:03","62","","2009-05-21 21:38:12","62","0","0000-00-00 00:00:00","2009-05-21 21:29:03","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","5","0","2","","","0","135","robots=\nauthor=");
INSERT INTO jos_content VALUES("19","File Management","file-management","","&nbsp;","","1","0","0","0","2009-02-13 21:04:11","62","","0000-00-00 00:00:00","0","0","0000-00-00 00:00:00","2009-02-13 21:04:11","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","6","","","0","9","robots=\nauthor=");
INSERT INTO jos_content VALUES("21","Thank You","thank-you","","Thanks so much for contacting Pica Design, we\'ll be in touch with you shortly!<br />","","1","0","0","0","2009-03-17 16:03:37","62","","0000-00-00 00:00:00","0","62","2009-05-13 16:40:39","2009-03-17 16:03:37","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","4","","","0","8","robots=\nauthor=");
INSERT INTO jos_content VALUES("13","Welcome to a Group Mind","welcome-to-the-inner-workings-of-a-group-mind","","Welcome to the new site, with it\'s brand new feature: our very own blog!","","-2","4","0","2","2008-10-23 18:01:55","62","","2008-11-04 21:30:16","62","0","0000-00-00 00:00:00","2008-10-23 18:01:55","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=1\nshow_author=1\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","3","0","0","","","0","0","robots=\nauthor=");
INSERT INTO jos_content VALUES("14","Calling all Opinionators","calling-all-opinionators","","In addition to the new blog, and the new site, we\'re launching a new service - public opinion testing. Interested in being one of our rewarded voices? Contact Jen for more details.","","-2","4","0","1","2008-10-23 18:03:55","62","","2008-10-24 21:56:28","62","0","0000-00-00 00:00:00","2008-10-23 18:03:55","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=1\nshow_vote=1\nshow_author=1\nshow_create_date=1\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","4","0","0","","","0","0","robots=\nauthor=");
INSERT INTO jos_content VALUES("6","Studio","studio","","<div class=\"half\">Our studio is located in the town of Belfast, on the coast of Maine. This little corner of the world is a happening place, full of art galleries, shops and eateries. We are on the third floor of the historic Hayford Block (home of the Opera House) where we have three work spaces: the design studio, a photography studio, and our ëloungeí which doubles as a conference room and gathering place for design critiques.</div>\n{gallery}studio_2{/gallery}","","1","2","0","4","2008-10-22 20:32:48","62","","2009-07-12 14:40:54","64","0","0000-00-00 00:00:00","2008-10-22 20:32:48","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Belfast, Camden, Midcoast Maine Full-Service Graphic Design and Web Development Company\nreadmore=","18","0","5","","","0","2058","robots=\nauthor=");
INSERT INTO jos_content VALUES("7","Timeline","timeline","","<p>Pica Timeline</p><p>{tab=2000}<br />After graduating from college with a degree in graphic design, Rob Dietz worked for the WGBH design department and then went on to work for a graphic design firm in Boston, designing annual reports for companies like Staples and Brookstone. Fast forward to the year 2000 when Rob started Pica Design in Belfast, Maine. He rented an office downtown and worked on his own for about 8 months.<br />September, 2000: Rob Dietz establishes Pica Design (one guy, one pencil, one computer) <br />Sidenote: Our company name came from a huge list of potential names; the shortest won</p>{tab=2001}<br />He hired Cassidy Parmley, a college companion and Design Department, late in his first year of business. Among the duoís first clients were Bar Harbor Bankshares (Annual Report), Bluejacket Shipcrafters (Catalog Re-Design) and the Belfast Area Chamber of Commerce (Guidebook). In the early days, Cassidy worked a second job and kept flexible hours at Pica. Business grew slowly at first, but within the first two years, the company was taking on large projects and many of them: over 100 total.<br /><p><br />-New hire, Cassidy Parmley, is the first Pica Design employee; begins Pica career with new Bluejacket Shipcrafters Catalog re-design</p>{tab=2002}<br />Pica Design wins Belfast Area Chamber Guide design contract<br /><p>{tab=2003}<br />Office Expansion<br />Jen DeJoy<br />HPI</p><p>{tab=2004}<br />Letís fast forward again: to 2004. The growth of the company in 2004óand every year sinceóhas been substantial. Hiring a new employee js <br />Tech boom<br />Project manager<br />First Place golden arrow award</p>{tab=2005}<p>Reuben<br />Guyot<br />Jetboil<br />Holiday gathering</p>{tab=2006}<p>Caitlin<br />BoNE show to Portland<br />Rob Joins AIGA Board<br />Pica gets 2006 Vendor of the Year Award from HPI</p>{tab=2007}<p>Micah and the Keurig machine both join us at Pica. No, those two are not related. At all. Really. I mean it!<br />Di<br />Midcoast Magnet<br />Micah<br />Pica Design Wins Silver Broderson Award For Integrated Marketing Campaign</p><p>{tab=2008} </p><p> {/tabs}</p><p> NOTE: Pica is pronounced pÌ-ca</p>","","0","2","0","4","2008-10-22 20:33:11","62","","2008-12-26 21:56:39","62","0","0000-00-00 00:00:00","2008-10-22 20:33:11","0000-00-00 00:00:00","","","show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","15","0","4","","","0","99","robots=\nauthor=");
INSERT INTO jos_content VALUES("8","Connections","links-and-associations","","<p>Our professional network has grown over the years to include artists, technology experts, vendors, clients and colleagues from both U.S. coasts, Europe, and Asia. We have posted links below to some of the entrepreneurs, companies and individuals we are connected with through our work. This is not a comprehensive directory, but rather a revolving list of some of our friends within our network.</p>\n<p> </p>\n<p> </p>\n<div id=\"linksList\"><span class=\"linkGroups\">Associations</span> \n<ul>\n<li><a href=\"http://www.aiga.org/\" target=\"_blank\">AIGA</a></li>\n<li><a href=\"http://maine.aiga.org/\" target=\"_blank\">AIGA (Maine Chapter)</a></li>\n<li><a href=\"http://www.designrelated.com/\" target=\"_blank\">design:related</a></li>\n<li><a href=\"http://juiceconference.org/\" target=\"_blank\">Juice Conference</a></li>\n<li><a href=\"http://mainecreates.com/\" target=\"_blank\">Maine Creates<br /></a></li>\n<li><a href=\"http://www.northeastern.edu/neuhome/index.php\" target=\"_blank\">Northeastern University College <br />of Arts &amp; Sciences</a></li>\n</ul>\n<a href=\"http://txtresponsibly.org/\" target=\"_blank\">TxtResponsibly.org</a><br /> <span class=\"linkGroups\">Social Networks</span> <br /> \n<ul>\n<li><a href=\"http://www.facebook.com/pages/Belfast-ME/Pica-Design-LLC/126055135104\" target=\"_blank\">Facebook</a></li>\n<li><a href=\"http://www.linkedin.com/companies/239413/Pica+Design%2C+LLC?trk=pro_other_cmpy\" target=\"_blank\">Linked In</a></li>\n<li><a href=\"http://www.twitter.com/PicaDesign\" target=\"_blank\">Twitter</a></li>\n<li></li>\n<li></li>\n</ul>\n<div><span class=\"linkGroups\">Local Flavor</span></div>\n<ul>\n<li><a href=\"http://www.3tides.com/\" target=\"_blank\">3 Tides</a></li>\n<li><a href=\"http://www.amyrobbinswilson.com/\" target=\"_blank\">Amy Robbins-Wilson, Singer &amp; Author </a></li>\n<li><a href=\"http://www.belfastmaine.org/\" target=\"_blank\">Belfast Area Chamber of Commerce</a></li>\n<li><a href=\"http://www.belfast.coop/\" target=\"_blank\">Belfast Co-op</a></li>\n<li><a href=\"http://www.mainecohousing.org/\" target=\"_blank\">Belfast Cohousing &amp; Ecovillage</a></li>\n<li><a href=\"http://www.belfastcurlingclub.org/\" target=\"_blank\">Belfast Curling Club</a></li>\n<li><a href=\"http://www.belfast.lib.me.us/\" target=\"_blank\">Belfast Free Library</a></li>\n<li><a href=\"http://www.belfastmaskerstheater.com/\" target=\"_blank\">Belfast Maskers</a></li>\n<li><a href=\"http://www.camdennational.com/\" target=\"_blank\">Camden National Bank</a></li>\n<li><a href=\"http://www.colonialtheatre.com/\" target=\"_blank\">Colonial Theater</a></li>\n<li><a href=\"http://www.cmef.org/\" target=\"_blank\">Corps Member Education Foundation</a></li>\n<li><a href=\"http://www.darbysrestaurant.com/\" target=\"_blank\">Darby\'s Restaurant</a></li>\n<li><a href=\"http://lettercutter.com/\" target=\"_blank\">Doug Coffin, Lettercarver</a></li>\n<li><a href=\"http://www.jumpstartouryouth.org/\" target=\"_blank\">Jumpstart Our Youth</a></li>\n<li><a href=\"http://www.midcoastmagnet.com/\">Midcoast Magnet</a></li>\n<li><a href=\"http://www.penobscotmarinemuseum.org/\" target=\"_blank\">Penobscot Marine Museum</a></li>\n<li><a href=\"http://www.sharpdotinc.com/\" target=\"_blank\">Sharpdot, Inc.</a></li>\n<li><a href=\"http://www.peacepreserves.com/\" target=\"_blank\">Spread Peace</a><a href=\"http://www.amyrobbinswilson.com/\" target=\"_blank\"></a></li>\n<li><a href=\"http://www.timeforbelfast.org\" target=\"_blank\">Time for Belfast</a></li>\n<li><a href=\"http://www.unityfdn.org/\" target=\"_blank\">Unity Foundation</a></li>\n<li><a href=\"http://www.unity.edu/\" target=\"_blank\">Unity College in Maine</a></li>\n<li><a href=\"http://www.waldocountyymca.org/\" target=\"_blank\">Waldo County YMCA</a></li>\n<br /> <br /> \n</ul>\n</div>\n<div></div>","","1","2","0","4","2008-10-22 20:37:29","62","","2010-01-07 16:04:19","62","62","2010-01-07 16:04:19","2008-10-22 20:37:29","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=AIGA and Design Connections, Belfast Area Recommendations\nreadmore=","133","0","3","","","0","1765","robots=\nauthor=");
INSERT INTO jos_content VALUES("9","Portfolio","portfolio","","<p>To sit in solemn silence on a dull dark dock in a pestilential prison with a life long lock, awaiting the sensation of a short sharp shock from a cheap and chippy chopper on a big black block.  </p>","","-2","3","0","6","2008-10-22 20:38:50","62","","2008-11-05 15:40:46","62","0","0000-00-00 00:00:00","2008-10-22 20:38:50","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","3","0","0","","","0","26","robots=\nauthor=");
INSERT INTO jos_content VALUES("10","Client List","clients","","<p> </p>\n<p><span class=\"pageTitle\" id=\"clientHearts\"> <strong>A Partial Client List</strong> (Links are included to websites we\'ve designed.)</span></p>\n<div id=\"clientList\">\n<ul>\n<li>15Minute Festival</li>\n<li>Alpha Marketing, Inc.</li>\n<li>American Transformation</li>\n<li>Amy Robbins-Wilson</li>\n<li>Audio Bookshelf</li>\n<li>Audubon Expedition Institute</li>\n<li>Bar Harbor Bankshares</li>\n<li>Belfast Bay Brewery</li>\n<li>Belfast Bay Commons</li>\n<li>Belfast Area Chamber of Commerce</li>\n<li>Belfast Free Library</li>\n<li>Belfast Harbor Inn</li>\n<li>Belfast Maskers</li>\n<li>Blue Jacket Shipcrafters</li>\n<li><a href=\"http://www.brucelaukkainc.com\" target=\"_blank\">Bruce Laukka, Inc.</a></li>\n<li>Camden National Corporation</li>\n<li>Camden Hills Realty</li>\n<li><a href=\"http://www.cedarholm.com/\" target=\"_blank\">Cedarholm Garden Bay Inn</a></li>\n<li>Childrenís Hospital Boston</li>\n<li>Coastal Enterprises Inc.</li>\n<li>Colonial Theatre</li>\n<li>ComeBoating!</li>\n<li>Coyote Moon</li>\n<li>Crosby Manor Estates</li>\n<li>DíAbaldo Enterprises</li>\n<li><a href=\"http://lettercutter.com/\" target=\"_blank\">Doug Coffin</a></li>\n<li><a href=\"http://www.emcenter.org/\" target=\"_blank\">Environmental Mediation Center</a> </li>\n<li>Everyday Innovations Inc.</li>\n<li>Fletcher Media/Great American III</li>\n<li>Food for Thought</li>\n<li><a href=\"http://www.frenchwebb.com/\" target=\"_blank\">French &amp; Webb, Inc.</a></li>\n<li>Garden Cottage</li>\n<li>Gentle Acupuncture Clinic</li>\n<li>Glen Cove Dental Associates</li>\n<li><a href=\"http://www.gologichomes.com/\" target=\"_blank\">GïO Logic, LLC</a></li>\n<li>GRF Real Estate Company</li>\n<li><a href=\"http://www.grasshoppershopofrockland.com\" target=\"_blank\">The Grasshopper Shop</a></li>\n<li>Green Mountain Environmental Resolutions, LLC</li>\n<li>Guyot Designs, Inc.</li>\n<li>Handworks Gallery</li>\n<li><a href=\"http://www.hearingsolutionsofmaine.com/\" target=\"_blank\">Hearing Solutions</a></li>\n<li>Hospice Volunteers of Waldo County</li>\n<li><a href=\"http://www.housesandcottages.com/\" target=\"_blank\">Houses &amp; Cottages</a></li>\n<li>Hydro-Photon, Inc.</li>\n<li>International Baseball Mgmt, LLC</li>\n<li>Jaret &amp; Cohn Real Estate</li>\n<li>Jetboil, Inc.</li>\n<li><a href=\"http://www.juiceconference.org/\" target=\"_blank\">Juice Conference</a></li>\n<li>J.S. McCarthy Printers</li>\n<li>Knox Machine Company</li>\n<li>Maine Cohousing &amp; Ecovilllage</li>\n<li>Maine Crafts Guild</li>\n<li><a href=\"http://www.sailmainecoast.com\" target=\"_blank\" title=\"Maine Windjammer Association\">Maine Windjammer Association</a></li>\n<li><a href=\"http://www.mainelypottery.com\" target=\"_blank\" title=\"Mainely Pottery\">Mainely Pottery</a></li>\n<li>Marshall Wharf</li>\n<li>Midcoast Magnet</li>\n<li><a href=\"http://www.monroesaltworks.com/\" target=\"_blank\">Monroe Salt Works</a></li>\n<li>Mystic View Design</li>\n<li><a href=\"http://www.neadv.com/\" target=\"_blank\">Northeastern Advisory Group</a></li>\n<li><a href=\"http://www.oakhillmarinedesign.com/\" target=\"_blank\">Oak Hill Marine Design</a></li>\n<li>Pacific Writing Instruments</li>\n<li>Parker Ridge Retirement Community</li>\n<li><a href=\"http://www.parkerphotostudio.com\" target=\"_blank\" title=\"Parker Photo Studio\">Parker Photo Studio</a></li>\n<li>Peace Preserves</li>\n<li>Penobscot Marine Museum</li>\n<li>Penobscot Shores Retirement Community</li>\n<li>Pinchy, Inc.</li>\n<li><a href=\"http://www.redmaplesportswear.com\" target=\"_blank\">RedMaple Sportswear</a></li>\n<li>Shamrock Thistle &amp; Rose</li>\n<li>Smart Healthcare LLC</li>\n<li>SummerMaine</li>\n<li><a href=\"http://www.timeforbelfast.org\" target=\"_blank\">Time for Belfast</a></li>\n<li>United Realty</li>\n<li><a href=\"http://unitelme.com/\" target=\"_blank\">UniTel, Inc.</a></li>\n<li>Unity College</li>\n<li>Unity Foundation</li>\n<li><a href=\"http://www.vmdstudio.com\" target=\"_blank\">VM Design Studio</a></li>\n<li>VillageSoup</li>\n<li>Waldo County Arts Project</li>\n<li>Wrabacon Inc.</li>\n</ul>\n</div>","","1","3","0","6","2008-10-22 20:39:37","62","","2010-01-07 15:46:23","62","0","0000-00-00 00:00:00","2008-10-22 20:39:37","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Camden National Bank, SteriPEN, Juice Conference, Maine Windjammer Association, Belfast Area Chamber of Commerce, Jetboil, Guyot and more!)\nreadmore=","56","0","7","","","0","2016","robots=\nauthor=");
INSERT INTO jos_content VALUES("11","Archive","archive","","archive goes here","","1","3","0","6","2008-10-22 20:41:02","62","","0000-00-00 00:00:00","0","0","0000-00-00 00:00:00","2008-10-22 20:41:02","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","6","","","0","20","robots=\nauthor=");
INSERT INTO jos_content VALUES("12","Work","work","","<p>We continually seek ways to facilitate the design process. We also keep in mind a few important goals: <br /><br />1) That the end product fully serves its purpose. <br />2) The the client is pleased with both the process and the work and<br />3) that we are happy with our work </p>","","-2","3","0","6","2008-10-22 21:15:31","62","","2008-12-30 14:40:42","62","0","0000-00-00 00:00:00","2008-10-22 21:15:31","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","11","0","0","","","0","131","robots=\nauthor=");
INSERT INTO jos_content VALUES("17","Case Studies","case","","<!-- -->","","1","3","0","6","2009-01-15 19:38:50","62","","2009-12-17 13:52:54","62","0","0000-00-00 00:00:00","2009-01-15 19:38:50","0000-00-00 00:00:00","","","show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Case Studies: Marketing Analysis for Jetboil, SteriPEN and Parker Ridge\nreadmore=","38","0","4","","","0","1884","robots=\nauthor=");
INSERT INTO jos_content VALUES("20","Client Tools","client-tools","","&nbsp;","","1","0","0","0","2009-03-09 19:58:15","62","","2009-07-12 14:41:37","64","0","0000-00-00 00:00:00","2009-03-09 19:58:15","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Email Newsletter Design, Project Management, Time Tracking Tools, Social Networking\nreadmore=","13","0","5","","","0","1528","robots=\nauthor=");
INSERT INTO jos_content VALUES("22","We\'re Hiring!","were-hiring","","<img style=\"margin-right: 15px; float: left;\" src=\"images/stories/approach.gif\" />\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div><br /></div>\n<div>Pica Design is looking for a savvy web programmer and code expert with the initiative, drive, <br />and discipline to tackle the most complex logistical problems. We seek an individual who is <br />passionate, enthusiastic, dedicated and creative, and who can work within a collaborative team <br />environment. The candidate must posses excellent communication skills, display keen <br />professionalism, and have a positive attitude. <a href=\"PicaDesign-WebProgrammer.rtf\">Download a detailed job description and <br />application instructions.</a></div>","","0","2","0","4","2009-04-29 19:37:59","62","","2009-04-29 20:03:10","62","0","0000-00-00 00:00:00","2009-04-29 19:37:59","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","14","0","1","","","0","448","robots=\nauthor=");
INSERT INTO jos_content VALUES("23","Services","services","","Pica Design offers design and marketing services to help businesses with all aspects of marketing, advertising, merchandising, public relations and communications. Our services are grouped into the four categories below. The range of capabilities that we provide results in: 1) brand stewardship across disciplines; 2) time and cost savings working with one design team for all of your communication needs; and 3) a trusted partner who can transform your marketing aspirations into tangible results. <a href=\"index.php?option=com_contact&amp;view=contact&amp;id=1&amp;Itemid=47\">Contact us to learn more.</a>","","1","3","0","6","2009-05-01 20:20:35","62","","2009-12-21 16:43:46","62","0","0000-00-00 00:00:00","2009-05-01 20:20:35","0000-00-00 00:00:00","","","show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=Annual Reports, Retail and Package Design, Business Logos, Magazine Layout, Collateral, Direct Mailing, Custom Web Design, Advertisements, Brochures, Branding, Blog, Marketing\nreadmore=","45","0","2","","","0","1370","robots=\nauthor=");
INSERT INTO jos_content VALUES("24","Homepage Test","home-test","","&nbsp;","","1","0","0","0","2009-05-05 19:10:28","62","","0000-00-00 00:00:00","0","62","2009-12-16 18:19:26","2009-05-05 19:10:28","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","1","0","3","","","0","144","robots=\nauthor=");
INSERT INTO jos_content VALUES("26","Site Requirements","site-requirements","","This site uses some of the newest web coding standards and coolest trends.     We highly recommend you use a modern web browser to view the site.     <br /><br /> Upgrading your browser will increase your web-surfing speed, security, reliability, and will greatly improve the look / feel of most websites.\n<div class=\"browsers\"><a title=\"Download Internet Explorer\" href=\"http://www.microsoft.com/windows/Internet-explorer/default.aspx\"><img src=\"images/browsericons/Browsers_003.png\" width=\"50px\" /> Internet Explorer 7+</a> <br /> <a title=\"Download Firefox\" href=\"http://www.mozilla.com/en-US/firefox/personal.html\"><img src=\"images/browsericons/Browsers_002.png\" width=\"50px\" />Mozilla Firefox 3.5+</a> <br /> <a title=\"Download Safari\" href=\"http://www.apple.com/safari/download/\"><img src=\"images/browsericons/Browsers_007.png\" width=\"50px\" />Apple Safari 4+</a> <br /> <a title=\"Download Opera\" href=\"http://www.opera.com/\"><img src=\"images/browsericons/Browsers_006.png\" width=\"50px\" />Opera 10+</a> <br /> <a title=\"Download Chrome\" href=\"http://www.google.com/chrome\"><img src=\"images/browsericons/Browsers_001.png\" width=\"50px\" />Google Chrome</a></div>\n<div class=\"browsers\"><br /></div>\nInterested in learning more about web standards? <a href=\"http://www.webstandards.org/action/previous-campaigns/buc/upgrade/#content-main\">Read More Here</a>","","1","3","0","6","2009-12-17 20:43:09","62","","2010-02-03 15:28:12","62","0","0000-00-00 00:00:00","2009-12-17 20:43:09","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","7","0","3","","","0","712","robots=\nauthor=");
INSERT INTO jos_content VALUES("27","Accolades","accolades","","<p> </p>\n<p><strong>2009 Broderson Awards<br /><span style=\"font-weight: normal;\">Bronze AwardñIntegrated Marketing Campaign Category</span></strong></p>\n<p>2007 Juice Conference: Powering the Creative Economy</p>\n<p>Client: Midcoast Magnet</p>\n<p> </p>\n<p>Bronze AwardñSelf Promotion</p>\n<p>2008 Holiday Card</p>\n<p>Client: Pica Design, LLC</p>\n<p> </p>\n<p><strong>2007 Broderson Awards<br /><span style=\"font-weight: normal;\">SilverñIntegrated Marketing Campaign Campaign</span></strong></p>\n<p>Jetboil POP, Package &amp; Catalog</p>\n<p>Client: Jetboil, Inc.</p>\n<p> </p>\n<div>\n<p><strong>2006 Vendor of the Year Award<br /><span style=\"font-weight: normal;\">In recognition of professionalism, exceptional creativity, <br />ability to graphically convey ideas, and grace under pressure. <br />Presented by Hydro-Photon, Inc., makers of SteriPEN UV Water Purifiers</span></strong></p>\n<p> </p>\n<p><strong>2004 Golden Arrow Awards (Maine Public Relations Council)<br /><span style=\"font-weight: normal;\">First placeñBrochures Category</span></strong></p>\n<p>2004 Belfast Area Chamber of Commerce Guide</p>\n<p>Client: Belfast Area Chamber of Commerce</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n</div>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>","","1","3","0","6","2010-03-12 21:20:43","62","","2010-03-12 22:29:36","62","0","0000-00-00 00:00:00","2010-03-12 21:20:43","0000-00-00 00:00:00","","","show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=","5","0","1","","","0","146","robots=\nauthor=");



DROP TABLE jos_content_frontpage;

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_content_frontpage VALUES("2","1");



DROP TABLE jos_content_rating;

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_core_acl_aro;

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO jos_core_acl_aro VALUES("10","users","62","0","Administrator","0");
INSERT INTO jos_core_acl_aro VALUES("11","users","63","0","Caitlin","0");
INSERT INTO jos_core_acl_aro VALUES("12","users","64","0","Jen","0");
INSERT INTO jos_core_acl_aro VALUES("15","users","67","0","cassidy parmley","0");
INSERT INTO jos_core_acl_aro VALUES("16","users","68","0","Zak","0");
INSERT INTO jos_core_acl_aro VALUES("17","users","69","0","James","0");



DROP TABLE jos_core_acl_aro_groups;

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO jos_core_acl_aro_groups VALUES("17","0","ROOT","1","22","ROOT");
INSERT INTO jos_core_acl_aro_groups VALUES("28","17","USERS","2","21","USERS");
INSERT INTO jos_core_acl_aro_groups VALUES("29","28","Public Frontend","3","12","Public Frontend");
INSERT INTO jos_core_acl_aro_groups VALUES("18","29","Registered","4","11","Registered");
INSERT INTO jos_core_acl_aro_groups VALUES("19","18","Author","5","10","Author");
INSERT INTO jos_core_acl_aro_groups VALUES("20","19","Editor","6","9","Editor");
INSERT INTO jos_core_acl_aro_groups VALUES("21","20","Publisher","7","8","Publisher");
INSERT INTO jos_core_acl_aro_groups VALUES("30","28","Public Backend","13","20","Public Backend");
INSERT INTO jos_core_acl_aro_groups VALUES("23","30","Manager","14","19","Manager");
INSERT INTO jos_core_acl_aro_groups VALUES("24","23","Administrator","15","18","Administrator");
INSERT INTO jos_core_acl_aro_groups VALUES("25","24","Super Administrator","16","17","Super Administrator");



DROP TABLE jos_core_acl_aro_map;

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_core_acl_aro_sections;

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO jos_core_acl_aro_sections VALUES("10","users","1","Users","0");



DROP TABLE jos_core_acl_groups_aro_map;

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_core_acl_groups_aro_map VALUES("18","","11");
INSERT INTO jos_core_acl_groups_aro_map VALUES("23","","17");
INSERT INTO jos_core_acl_groups_aro_map VALUES("24","","12");
INSERT INTO jos_core_acl_groups_aro_map VALUES("24","","15");
INSERT INTO jos_core_acl_groups_aro_map VALUES("24","","16");
INSERT INTO jos_core_acl_groups_aro_map VALUES("25","","10");



DROP TABLE jos_core_log_items;

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_core_log_searches;

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_downloads_blob;

CREATE TABLE `jos_downloads_blob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `chunkid` int(11) NOT NULL DEFAULT '0',
  `bloblength` int(11) NOT NULL DEFAULT '0',
  `datachunk` mediumblob NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `filechunk` (`fileid`,`chunkid`),
  KEY `size` (`fileid`,`bloblength`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_blob VALUES("3","1","0","28492","ˇÿˇ‡\0JFIF\0\0H\0H\0\0ˇ·xExif\0\0MM\0*\0\0\0\0	\0\0\0\0\0\0\0z\0\0\0\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0á\0\0\0\0\0\0\0è(\0\0\0\0\0\0\01\0\0\0\0\0\0\0ó2\0\0\0\0\0\0\0µái\0\0\0\0\0\0\0Ã\0\0`Apple\0iPhone\0\0\n¸Ä\0\0\'\0\n¸Ä\0\0\'Adobe Photoshop CS3 Macintosh\02009:02:12 12:46:37\0\0\0\0\0Çù\0\0\0\0\0\0&ê\0\0\0\0\0\0.ê\0\0\0\0\0\0B†\0\0\0\0ˇˇ\0\0†\0\0\0\0\0\0\0ñ†\0\0\0\0\0\0\0ñ•\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\02009:01:16 09:49:43\02009:01:16 09:49:43\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Æ\0\0\0\0\0\0∂(\0\0\0\0\0\0\0\0\0\0\0\0\0æ\0\0\0\0\0\0≤\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ˇÿˇ‡\0JFIF\0\0\0H\0H\0\0ˇÌ\0Adobe_CM\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0ﬁkÿÒ‡PÏ«tÔ®√ªé«˙» 9¶B+.!9jas-s-∞ΩÜH©˙ΩÜ¡Ÿ?§´˙ﬂÁ´6:ˆVM;^GÚ˘Õ˙)û*Ωªl‹OÓ™Yyy}8¡n8>ÎA€µøÀoπ6®ı›˙A5á}<wÄË#˝Î¸◊\'}8àˆ;?!‚Ábf	°‡<j[*∆ÔÕ∞AÒÒIMVÉÌ±Ï{„≥{‡»lC™€πæõˇ\0œWÎÍÜ∂ì∏Ë>ÉΩ”ªˇ\0ù*ˆPvEOuptsO~Êˇ\0û´\\:{n˜äûˇ\0§“«y∫}¨˜~Î“SΩ^}nx-ë»‘‰ë≈çsw5¡ÕÒ¨÷)Ü≤Õ≠~Ä=[Ÿs\\[SZœ§‚t˜£jmdıßT <œ—Å¢6\\¢ÔmÒS˚ƒﬂV5ï‚Ç^(±‰√l<ë¸¥j≤¶π£á7Q¯!jzˆ›SÃ1ÌqÅÚ\'ï¬„ﬂÈ‰2 ]iñë‚∑©Îó7KX◊éÂæ“ç©‹îƒ™5u|;9&≥¸°¸[*”.Æ¡,xpÚ ¢\nYíò§Jâ)¡6∑tíÓí*ˇ–÷.B∑#ß1∂∏Vlê¬Ì n€ª˜í.Cæ∫≤*u7∞Y[ÙsO	À[\0»êdGÕ$ÂÌ∆s\\[!‘ŸÙ”ÀêÔ›z=n¢±_®˚Z>Å∞ÓpôøÈ;j>Áoÿ∏9€`Û˝ÁªÛXíÎz~%n}~`©dH‹D‘–=øIé≥‘Ø±‘‚÷˚7{ö€Y%¨\"AıÏgÚ=E≠ë“UïYmé≠ïId{˙øMüı¥R q)Ùq€È4“;O“~Á5Ì}øÒâ)Õ» ˚.œŒsk≤ë˜i€?§ªˇ\0I¨úO¨å∑	÷ÁÂ2¢«mm{}GøM€⁄ﬂÌ}-ã/Î6m˘◊V+iˇ\03G=O¸Ç«}ggßØ∑Ä{\"ß¨Ã˙√âF=vWu∑Ω‹R¬÷m”OPµûœÏ¨ºœ≠V◊≥øKA∫◊9Œt˛v∆ózmˇ\05elÜÕì¥Ëc≈3∂4Ä4-´©çn>5ı,ã›üy?—çgi»uª∑∑˛!ã†œÕË„›XpZµÿÆp\0~sÃ;g∑˝ÕÎãêcMÄvO±•˚ﬁ``ÔS÷≤Û:ÉY”Ë7RÁzô!ª‰üŒ∂øIøÿ˝%ãq◊>âî∫Ä?¬è}G˛∏œs?Î¨\\Äœ ¢6ÜWc⁄—µÏ%çŸÌvˇ\0Â1txˇ\0Y.ª2ìk}<R“€+à;ø}÷;¸Ó∑ÿëK¶¬«4=§9ááG‡§≤4¯,‹ºÓïEˆmı1éœPdUl3¸–®nÆ◊~˛˝ä#¨fu⁄·à^ H£ZLˇ\0¡º˝=ø∫ÙBù Û2k—ó;N«Qˇ\0Iùf—£ˆ‹iY£*≠·è&´ÊX˝?kø≤ç\0ÛRÈ~ÿnŸÙı˛∞Ññ_¶…˙\"Gtëµ?ˇ—≥MØ5¥ZA∞q|T‹‡ìßäv`Â=€Y[ºœÇ3Ë≤ßzP“ﬂ“8Ó‹LË∆l€ˇ\0Vä¥∆·QœßaòknüIÕT˙~~eÌ¡≈kŸ˘ô/‹⁄áõãÉm ≥˘U3”Zı–÷∑s¥íKX5~)Óæ™éi!†Û©˙-ˆ§ÖÏ±·ºÿ”˘~‚ﬂcW#ıü™\0€:~+á®Ôv]Ç3ÌèÎøÛˇ\0‡ñßYÍgôeô÷[∆ûüŒ%ﬁï¯%ãçuv<Ym∫∏{ù:í\\uJ—M¥9¨ÙÀåq\nˆ&\0»`∂€t–÷¯OÔ˛j°m\"ôÓ`‘èŒo˛Iø Qß&ÏwÔ≠ƒÒ‹)+Ïü7u∏UÄ„[¢π⁄`ı„¶Ì‹9æÊ™ﬂe¶ßºd∞zNy ∆Ê+èÁ6µ™4ı:¨⁄“À!ßë·>ﬂr%ó6À÷:E‹‚ÛÌo˝˘)Dpq@äœ®g{NçªµE¯≠´‹\\“√ÙL	è4≠ÕcKéŸy:ºÛ*±s≠ì:x°i¶Lº1ÒS}«Mﬂ˘›Lr‹$x ¢≥ß\0 ∫¬D—ZÜ˚3Y=†¯´›?≠å;Ê@ı/`«}\0-‡¥äA‡;^…RØ∏{,¨ ã€ò~‘«Íõ°‰2ÔÕk?≤´Y’ﬂsÏ⁄~ƒ+Ÿwÿ‚id˛ci˜o˜~„7[Ät¥√Ç3˜œ™◊4Á±ÛNDv{œG83WRÊë#$kt›πÙìˇ\0QjKâ˝≥‘éÿø@4\0iÌ„”?øZIÀ_ˇ“‘veÖæªüÈP·Óq~«i˘≠ˇ\0…˙àtÁ·‘õÖÄ˙nkh5πﬂ \\ô9Ω¥∫[kCÓv°ø¢≠ﬂ¢´¸œÌ¢⁄¸íÊ‘m>Ú¢Úo≤G¯FµªvYˇ\0Å$™{+2*≠°Œ{@w—Ò?’oÁ*}T‚‘ÏóªıgÊÅ ∑˘RÔ}øò™ÙÏ,◊Uc-&°cKCﬂ∏ì˚Ò˙6±≠˙*?Y≤iƒ˚M#‘•Øπæ50Ïóm€˛˚ˇ\0ÎhçP\\gf_‘2≠∫¬Zˆ¥\'⁄≈ÿÌ∑nqp⁄9¯ÆñŒçÄD\n⁄ÿ‡∑O»®ÊtjÎ©Ô≠ÓlHôk›‰∂º\\K) Ógµ√P™ŸPq0,ÓﬁÚˇ\0†∑õ“Ï}AÕcƒèÔTÚ:V\\{´ü6üÔH˜(8Ö§8«µ„ëÊ¨åª]T<˝é•J⁄◊6´⁄dËZ<?™™ﬁ◊˙ÉÜL¡>ikÉ:k≥&…◊`:ûˇ\0¢ÍkÄZ“tâ„ÓVÒq*¢ñ‘\\–@÷bgÊéX?1Ó#˘ü˘¶I”fÃ`+]‹g‚ój:G*	ƒqÓÄµãA$ô\'˘U¥˛:)p‡∆ëÁYıCåÆˆ„›ÁÌ∆sGπ§V ùYÚ<’;H€#˜fG‹˝Æˇ\0§©dÙ˙\\ÚÛOéNÏr√¶é]¥´∏6µÓÙ¨>«êŸÅ‚™Âcö]\nxÆ\0Ät=äñÏ[Qß|˝ZtÇ‹ñöâ˜:Å€⁄íÍπ?gÓi∫5$ÎGˇ”°äÃÓ±p˚FÍYá:øi#˝ÚVÓ\'N≈√dSXa?HéOıú}ŒVX∆0CZ\0NÈ&R3çSÏeˆKùDπ≠íò˜9£È%b_“p∫¶{∫ÖÔ±Ê∑´c]µ£”%ÑÀ}˛Î7˛r’À›7#)≠˝%ìc‹Ló¢¡ˇ\0n9bÙn•ÇÃË≥!ç∏Ôkå/sª•hv \næp„ˇ\0Ûˇ\0D¢6˙^=ñ5«»†uFIùMn¸âXC*ÿ–<Çk (ßDHçRSŒıíMb8œeë”¡≥,øùíÔüeß÷_Å§Ì3?⁄·RÈòÔ˚=èh˜ZÌ≠¯Ÿ~1eY6¥8Ô∞π«òS≈∑cÅ$y¶˝òEÕ6<9£ÈèJ∫{≠»¨Ä“Ôå™›ò{6›yhﬁLOQ∑&‚‚E§|Jø’±∂5¨´M¢ò˘\'P“ÌxBóLñıwfr◊oW*»~C\"∆√€°TäÍ*cÿ}ƒ{ÄÂß˛¸’o«8tqî§Ê–ÍMk¨É˜™l!ÆÉŸZÍ‰µÌw®∂œ¢O2•á ≈?ò∂Ÿß¥ù\"RQcœ£dD¯HI9kˇ‘◊BøÌU∫í˜÷DπÜÙCøîàÛ¶à4}∏eYcçlƒ≠≤∆¡/q\"=ﬂöœzJr>∂d2úJpÿN”c\0ômg˛˝bÂØÆó\\˘úykS≠e˝ß©\\ñQuT7˚!Œ≥ˇ\0sêﬂä\\˜F§˛TÜÂl∂Q°ÉV§w¸Ωñ0_fÕâ–¸UÁaU˘⁄¸êk≈kÕ¨nÄ8s(ü⁄ÄVoTÎˇ\0⁄Ç·¸∞\ngØıFü“\nﬁ>0∂¶dË;™ˆR‡`>|“°ŸW‚∂Vk≤ú,±õ\\–j;≠lò1k¨Ëvâ#ƒ˚ñ;ÎÜ2N§L≠:ÌsX“Êè»†»l}[@≤ñÃLó∫;âÖs∏¥kõºe@Ω◊0ív∞â+œπéÿ^wx¶-ãàz<¶µ«séé–™6`^«MNñˆU√va™◊Ôc∏qWhÀ}g—∑R>âÒ	j°^™Ônèh ¸ÙZ” B%ó1Õë°Au⁄jÜ® /¨¥9Õ‚VS¥\"xjfª’≥‡™∫ñ?«XÒÖ<\0ÛIF◊8RË¸‚$$†—g¢‚[·∑ÔI=çˇ’–ø\"ömπ¡ï∑ó5D≥\"ø±∂÷Zˇ\0“xÅÌg˝%ãVHmv±∂¥∏µ¬FÔÕr«˙„‘[èé k{öm~÷Ï0ÔN±ˇ\0~vƒîÚ˚ûr.-àvaôÒó-]píXßÉ6á01ÆﬁÎÉ§ô%€NÆ—f∂NÊªÂﬁÄ:îÿ~K†ÓaP«…≠çµÓò/è$\'dWh\\>!ÓäàR˘ù|\'mQM∑\\7…óp`¿…—V∂ ÊÄ”É¢∞À–_æ=ƒw*•••Œ#Pf\'òDÈ‘z´ ä„˜O‰WÎ—n„†hìÚYÔ{ò¿ukLèí1ºª\0yÄTÒ\'…-ŸÿÌl@\0_W‰XßÅ\n.¢ÅÙŸø≈Sã:VZﬂ‰∏ÑÖx≤Î·ıt™»§âkÅÑ◊ΩØhsO∏¡Rn?59Õü4ıá÷Ìév‡Å¢lÿ——ØËÍö∆í”∑¡∂§/cA.0\0M§í”¶≤l.∑Ùmòì‰™Â⁄œL”è$.qÓ+>µ∂t¨üe~_ N⁄ò^@hnÄË#R•éÏrâ∂æ”ˆm—®$çÈ∏;ggv˛)\'[’ˇ÷π“˙Öπ\"ÎæŒÍi®[ﬂ°sâÿ›¨ˇ\0¶∏ˇ\0¨yG\'¨∫°Ù1ö*¶Û˛s∂Æ€;!òÿ{ﬁtcMœ˘—µy†πˆd>◊“=≈Œêy:îî[o®cÜÈ∫ÿ#‰¨€å–«ÒWc˜;w“ıItÖqÁ Ç”W>FM(Ç’8±√ªx“PÖ/ÙŒ∫Ôâ˚ÇµÌ’Htpb\"Spköi&_ægÃˇ\0¢ó”US\\–ÊñÄyôC≤ß√åÎ®Öl∫Õ¿˙–ì»Óns‹\'“p\"t”∫<C∫©™[∞…Ó¬Jù;C]L…?<:Î“[Q,°≠§T“NŒ	ÒM\'Jf√\"Mh¸‰Ìπ≤‚ê¢ì∆ã%˜ŸY⁄~‰√9√πCÄÙ_ƒÑ:ŒkY†*ª»/‘Í®úÁû4ÛC˚Câ‘óÿ\" BØ¡–vN“C=ŒÚ‡!:…3c∑;≥G\n≥FEÇ\0ÿﬂ≈X™ñ≥Rd¯î¥„Èˆ•©Ö‰9⁄x\\˚]Sj5ªi2¿!∂¿îû˚ÿÔﬁ©ÂæQ‰åõ;gêÎ©QÃ∫GøÁ§Äj∏∫Ñîï¡©gπˇ◊÷Ãª>»ÍÍÁ!‡G¸5˛\\c1ÚXÚÌúü∑z˛W´ûX”°°ü?§Âú¸¢Å)¶5˙¥=Ì-yüÑrµéV7wè≈fáx9O‘wà*9\\{ÌXﬂÈõÌˇ\0È˜™[…Ê>‰∑›o‹á\0Sl‰c˛˚~Ùo†çÕ[˚çOûk	p)çU¥]›⁄4˘*πEÃ;€´O*Õ∂µæ—V∑mû√™mÍﬁå`\"7ˇ\0∫iŸ∂÷…’WÙY*’Ãe>∆ü2Å%<ÃRàΩF™m5DîVñ4h!ºÍº§#D£ä1Ï^®¯(Å0\'Z]Ùè»$-˚ìÑ;±À9Ë≠¥«∑IÔ›Å§4Ìßƒ™≤«òce^¢ºéK~ìΩ1Íõ3ôΩÎ≤aìcÅ&&±ÁÌIO”!íÔ#_	IèÔµ\\2Ï~«ˇ–‰Ôı˝{√Ùªé|g‹á>#Ó\\“Iãﬁñ<ﬁõ‹π¥íS“ç˛\nSoÅÖÃ$íÉ”Õû	Åºº∞—…Ò\\ Iª$n<√∫}OQ€∏Ri|ù$ˆX	(õﬂk£i≥q‹˜Aq∑√Ê™$§F¥˙Óô˚á2\"ÜΩÙ\n	)^[ı˙≥—∂„r˜¸†ˇ\0r™í€Ø—Qﬂß¯NÕ6˛é#…ZdÆq%V{ˇ\0‹6≥g©◊iIr…&.˛ˇŸˇÌ1≤Photoshop 3.0\08BIM\0\0\0\0\0\0\0\0\0\08BIM%\0\0\0\0\0ËÒ\\Û/¡°¢{g≠≈d’∫8BIMÍ\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n<dict>\n	<key>com.apple.print.PageFormat.PMHorizontalRes</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMHorizontalRes</key>\n				<real>72</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMOrientation</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMOrientation</key>\n				<integer>1</integer>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMScaling</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMScaling</key>\n				<real>1</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMVerticalRes</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMVerticalRes</key>\n				<real>72</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMVerticalScaling</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMVerticalScaling</key>\n				<real>1</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.subTicket.paper_info_ticket</key>\n	<dict>\n		<key>PMPPDPaperCodeName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>PMPPDPaperCodeName</key>\n					<string>Letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>PMTiogaPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>PMTiogaPaperName</key>\n					<string>na-letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PageFormat.PMAdjustedPageRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PageFormat.PMAdjustedPageRect</key>\n					<array>\n						<real>0.0</real>\n						<real>0.0</real>\n						<real>734</real>\n						<real>576</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PageFormat.PMAdjustedPaperRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PageFormat.PMAdjustedPaperRect</key>\n					<array>\n						<real>-18</real>\n						<real>-18</real>\n						<real>774</real>\n						<real>594</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMPaperName</key>\n					<string>na-letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMUnadjustedPageRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMUnadjustedPageRect</key>\n					<array>\n						<real>0.0</real>\n						<real>0.0</real>\n						<real>734</real>\n						<real>576</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMUnadjustedPaperRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMUnadjustedPaperRect</key>\n					<array>\n						<real>-18</real>\n						<real>-18</real>\n						<real>774</real>\n						<real>594</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.ppd.PMPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.ppd.PMPaperName</key>\n					<string>US Letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.ticket.APIVersion</key>\n		<string>00.20</string>\n		<key>com.apple.print.ticket.type</key>\n		<string>com.apple.print.PaperInfoTicket</string>\n	</dict>\n	<key>com.apple.print.ticket.APIVersion</key>\n	<string>00.20</string>\n	<key>com.apple.print.ticket.type</key>\n	<string>com.apple.print.PageFormatTicket</string>\n</dict>\n</plist>\n8BIMÌ\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\08BIM&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Ä\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIMÛ\0\0\0\0\0	\0\0\0\0\0\0\0\0\08BIM\n\0\0\0\0\0\0\08BIM\'\0\0\0\0\0\n\0\0\0\0\0\0\0\08BIMı\0\0\0\0\0H\0/ff\0\0lff\0\0\0\0\0\0\0/ff\0\0°ôö\0\0\0\0\0\0\02\0\0\0\0Z\0\0\0\0\0\0\0\0\05\0\0\0\0-\0\0\0\0\0\0\0\08BIM¯\0\0\0\0\0p\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\08BIM\0\0\0\0\0\0\0\0\0\0@\0\0@\0\0\0\08BIM\0\0\0\0\0\0\0\0\08BIM\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0ñ\0\0\0\0I\0M\0G\0_\00\05\02\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0ñ\0\0\0\0Rghtlong\0\0\0ñ\0\0\0slicesVlLs\0\0\0Objc\0\0\0\0\0\0\0\0slice\0\0\0\0\0\0sliceIDlong\0\0\0\0\0\0\0groupIDlong\0\0\0\0\0\0\0originenum\0\0\0ESliceOrigin\0\0\0autoGenerated\0\0\0\0Typeenum\0\0\0\nESliceType\0\0\0\0Img \0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0ñ\0\0\0\0Rghtlong\0\0\0ñ\0\0\0urlTEXT\0\0\0\0\0\0\0\0\0nullTEXT\0\0\0\0\0\0\0\0\0MsgeTEXT\0\0\0\0\0\0\0\0altTagTEXT\0\0\0\0\0\0\0\0cellTextIsHTMLbool\0\0\0cellTextTEXT\0\0\0\0\0\0\0\0	horzAlignenum\0\0\0ESliceHorzAlign\0\0\0default\0\0\0	vertAlignenum\0\0\0ESliceVertAlign\0\0\0default\0\0\0bgColorTypeenum\0\0\0ESliceBGColorType\0\0\0\0None\0\0\0	topOutsetlong\0\0\0\0\0\0\0\nleftOutsetlong\0\0\0\0\0\0\0bottomOutsetlong\0\0\0\0\0\0\0rightOutsetlong\0\0\0\0\08BIM(\0\0\0\0\0\0\0\0?\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0Œ\0\0\0\0\0\0ñ\0\0\0ñ\0\0ƒ\0ÿ\0\0≤\0\0ˇÿˇ‡\0JFIF\0\0\0H\0H\0\0ˇÌ\0Adobe_CM\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0ﬁkÿÒ‡PÏ«tÔ®√ªé«˙» 9¶B+.!9jas-s-∞ΩÜH©˙ΩÜ¡Ÿ?§´˙ﬂÁ´6:ˆVM;^GÚ˘Õ˙)û*Ωªl‹OÓ™Yyy}8¡n8>ÎA€µøÀoπ6®ı›˙A5á}<wÄË#˝Î¸◊\'}8àˆ;?!‚Ábf	°‡<j[*∆ÔÕ∞AÒÒIMVÉÌ±Ï{„≥{‡»lC™€πæõˇ\0œWÎÍÜ∂ì∏Ë>ÉΩ”ªˇ\0ù*ˆPvEOuptsO~Êˇ\0û´\\:{n˜äûˇ\0§“«y∫}¨˜~Î“SΩ^}nx-ë»‘‰ë≈çsw5¡ÕÒ¨÷)Ü≤Õ≠~Ä=[Ÿs\\[SZœ§‚t˜£jmdıßT <œ—Å¢6\\¢ÔmÒS˚ƒﬂV5ï‚Ç^(±‰√l<ë¸¥j≤¶π£á7Q¯!jzˆ›SÃ1ÌqÅÚ\'ï¬„ﬂÈ‰2 ]iñë‚∑©Îó7KX◊éÂæ“ç©‹îƒ™5u|;9&≥¸°¸[*”.Æ¡,xpÚ ¢\nYíò§Jâ)¡6∑tíÓí*ˇ–÷.B∑#ß1∂∏Vlê¬Ì n€ª˜í.Cæ∫≤*u7∞Y[ÙsO	À[\0»êdGÕ$ÂÌ∆s\\[!‘ŸÙ”ÀêÔ›z=n¢±_®˚Z>Å∞ÓpôøÈ;j>Áoÿ∏9€`Û˝ÁªÛXíÎz~%n}~`©dH‹D‘–=øIé≥‘Ø±‘‚÷˚7{ö€Y%¨\"AıÏgÚ=E≠ë“UïYmé≠ïId{˙øMüı¥R q)Ùq€È4“;O“~Á5Ì}øÒâ)Õ» ˚.œŒsk≤ë˜i€?§ªˇ\0I¨úO¨å∑	÷ÁÂ2¢«mm{}GøM€⁄ﬂÌ}-ã/Î6m˘◊V+iˇ\03G=O¸Ç«}ggßØ∑Ä{\"ß¨Ã˙√âF=vWu∑Ω‹R¬÷m”OPµûœÏ¨ºœ≠V◊≥øKA∫◊9Œt˛v∆ózmˇ\05elÜÕì¥Ëc≈3∂4Ä4-´©çn>5ı,ã›üy?—çgi»uª∑∑˛!ã†œÕË„›XpZµÿÆp\0~sÃ;g∑˝ÕÎãêcMÄvO±•˚ﬁ``ÔS÷≤Û:ÉY”Ë7RÁzô!ª‰üŒ∂øIøÿ˝%ãq◊>âî∫Ä?¬è}G˛∏œs?Î¨\\Äœ ¢6ÜWc⁄—µÏ%çŸÌvˇ\0Â1txˇ\0Y.ª2ìk}<R“€+à;ø}÷;¸Ó∑ÿëK¶¬«4=§9ááG‡§≤4¯,‹ºÓïEˆmı1éœPdUl3¸–®nÆ◊~˛˝ä#¨fu⁄·à^ H£ZLˇ\0¡º˝=ø∫ÙBù Û2k—ó;N«Qˇ\0Iùf—£ˆ‹iY£*≠·è&´ÊX˝?kø≤ç\0ÛRÈ~ÿnŸÙı˛∞Ññ_¶…˙\"Gtëµ?ˇ—≥MØ5¥ZA∞q|T‹‡ìßäv`Â=€Y[ºœÇ3Ë≤ßzP“ﬂ“8Ó‹LË∆l€ˇ\0Vä¥∆·QœßaòknüIÕT˙~~eÌ¡≈kŸ˘ô/‹⁄áõãÉm ≥˘U3”Zı–÷∑s¥íKX5~)Óæ™éi!†Û©˙-ˆ§ÖÏ±·ºÿ”˘~‚ﬂcW#ıü™\0€:~+á®Ôv]Ç3ÌèÎøÛˇ\0‡ñßYÍgôeô÷[∆ûüŒ%ﬁï¯%ãçuv<Ym∫∏{ù:í\\uJ—M¥9¨ÙÀåq\nˆ&\0»`∂€t–÷¯OÔ˛j°m\"ôÓ`‘èŒo˛Iø Qß&ÏwÔ≠ƒÒ‹)+Ïü7u∏UÄ„[¢π⁄`ı„¶Ì‹9æÊ™ﬂe¶ßºd∞zNy ∆Ê+èÁ6µ™4ı:¨⁄“À!ßë·>ﬂr%ó6À÷:E‹‚ÛÌo˝˘)Dpq@äœ®g{NçªµE¯≠´‹\\“√ÙL	è4≠ÕcKéŸy:ºÛ*±s≠ì:x°i¶Lº1ÒS}«Mﬂ˘›Lr‹$x ¢≥ß\0 ∫¬D—ZÜ˚3Y=†¯´›?≠å;Ê@ı/`«}\0-‡¥äA‡;^…RØ∏{,¨ ã€ò~‘«Íõ°‰2ÔÕk?≤´Y’ﬂsÏ⁄~ƒ+Ÿwÿ‚id˛ci˜o˜~„7[Ät¥√Ç3˜œ™◊4Á±ÛNDv{œG83WRÊë#$kt›πÙìˇ\0QjKâ˝≥‘éÿø@4\0iÌ„”?øZIÀ_ˇ“‘veÖæªüÈP·Óq~«i˘≠ˇ\0…˙àtÁ·‘õÖÄ˙nkh5πﬂ \\ô9Ω¥∫[kCÓv°ø¢≠ﬂ¢´¸œÌ¢⁄¸íÊ‘m>Ú¢Úo≤G¯FµªvYˇ\0Å$™{+2*≠°Œ{@w—Ò?’oÁ*}T‚‘ÏóªıgÊÅ ∑˘RÔ}øò™ÙÏ,◊Uc-&°cKCﬂ∏ì˚Ò˙6±≠˙*?Y≤iƒ˚M#‘•Øπæ50Ïóm€˛˚ˇ\0ÎhçP\\gf_‘2≠∫¬Zˆ¥\'⁄≈ÿÌ∑nqp⁄9¯ÆñŒçÄD\n⁄ÿ‡∑O»®ÊtjÎ©Ô≠ÓlHôk›‰∂º\\K) Ógµ√P™ŸPq0,ÓﬁÚˇ\0†∑õ“Ï}AÕcƒèÔTÚ:V\\{´ü6üÔH˜(8Ö§8«µ„ëÊ¨åª]T<˝é•J⁄◊6´⁄dËZ<?™™ﬁ◊˙ÉÜL¡>ikÉ:k≥&…◊`:ûˇ\0¢ÍkÄZ“tâ„ÓVÒq*¢ñ‘\\–@÷bgÊéX?1Ó#˘ü˘¶I”fÃ`+]‹g‚ój:G*	ƒqÓÄµãA$ô\'˘U¥˛:)p‡∆ëÁYıCåÆˆ„›ÁÌ∆sGπ§V ùYÚ<’;H€#˜fG‹˝Æˇ\0§©dÙ˙\\ÚÛOéNÏr√¶é]¥´∏6µÓÙ¨>«êŸÅ‚™Âcö]\nxÆ\0Ät=äñÏ[Qß|˝ZtÇ‹ñöâ˜:Å€⁄íÍπ?gÓi∫5$ÎGˇ”°äÃÓ±p˚FÍYá:øi#˝ÚVÓ\'N≈√dSXa?HéOıú}ŒVX∆0CZ\0NÈ&R3çSÏeˆKùDπ≠íò˜9£È%b_“p∫¶{∫ÖÔ±Ê∑´c]µ£”%ÑÀ}˛Î7˛r’À›7#)≠˝%ìc‹Ló¢¡ˇ\0n9bÙn•ÇÃË≥!ç∏Ôkå/sª•hv \næp„ˇ\0Ûˇ\0D¢6˙^=ñ5«»†uFIùMn¸âXC*ÿ–<Çk (ßDHçRSŒıíMb8œeë”¡≥,øùíÔüeß÷_Å§Ì3?⁄·RÈòÔ˚=èh˜ZÌ≠¯Ÿ~1eY6¥8Ô∞π«òS≈∑cÅ$y¶˝òEÕ6<9£ÈèJ∫{≠»¨Ä“Ôå™›ò{6›yhﬁLOQ∑&‚‚E§|Jø’±∂5¨´M¢ò˘\'P“ÌxBóLñıwfr◊oW*»~C\"∆√€°TäÍ*cÿ}ƒ{ÄÂß˛¸’o«8tqî§Ê–ÍMk¨É˜™l!ÆÉŸZÍ‰µÌw®∂œ¢O2•á ≈?ò∂Ÿß¥ù\"RQcœ£dD¯HI9kˇ‘◊BøÌU∫í˜÷DπÜÙCøîàÛ¶à4}∏eYcçlƒ≠≤∆¡/q\"=ﬂöœzJr>∂d2úJpÿN”c\0ômg˛˝bÂØÆó\\˘úykS≠e˝ß©\\ñQuT7˚!Œ≥ˇ\0sêﬂä\\˜F§˛TÜÂl∂Q°ÉV§w¸Ωñ0_fÕâ–¸UÁaU˘⁄¸êk≈kÕ¨nÄ8s(ü⁄ÄVoTÎˇ\0⁄Ç·¸∞\ngØıFü“\nﬁ>0∂¶dË;™ˆR‡`>|“°ŸW‚∂Vk≤ú,±õ\\–j;≠lò1k¨Ëvâ#ƒ˚ñ;ÎÜ2N§L≠:ÌsX“Êè»†»l}[@≤ñÃLó∫;âÖs∏¥kõºe@Ω◊0ív∞â+œπéÿ^wx¶-ãàz<¶µ«séé–™6`^«MNñˆU√va™◊Ôc∏qWhÀ}g—∑R>âÒ	j°^™Ônèh ¸ÙZ” B%ó1Õë°Au⁄jÜ® /¨¥9Õ‚VS¥\"xjfª’≥‡™∫ñ?«XÒÖ<\0ÛIF◊8RË¸‚$$†—g¢‚[·∑ÔI=çˇ’–ø\"ömπ¡ï∑ó5D≥\"ø±∂÷Zˇ\0“xÅÌg˝%ãVHmv±∂¥∏µ¬FÔÕr«˙„‘[èé k{öm~÷Ï0ÔN±ˇ\0~vƒîÚ˚ûr.-àvaôÒó-]píXßÉ6á01ÆﬁÎÉ§ô%€NÆ—f∂NÊªÂﬁÄ:îÿ~K†ÓaP«…≠çµÓò/è$\'dWh\\>!ÓäàR˘ù|\'mQM∑\\7…óp`¿…—V∂ ÊÄ”É¢∞À–_æ=ƒw*•••Œ#Pf\'òDÈ‘z´ ä„˜O‰WÎ—n„†hìÚYÔ{ò¿ukLèí1ºª\0yÄTÒ\'…-ŸÿÌl@\0_W‰XßÅ\n.¢ÅÙŸø≈Sã:VZﬂ‰∏ÑÖx≤Î·ıt™»§âkÅÑ◊ΩØhsO∏¡Rn?59Õü4ıá÷Ìév‡Å¢lÿ——ØËÍö∆í”∑¡∂§/cA.0\0M§í”¶≤l.∑Ùmòì‰™Â⁄œL”è$.qÓ+>µ∂t¨üe~_ N⁄ò^@hnÄË#R•éÏrâ∂æ”ˆm—®$çÈ∏;ggv˛)\'[’ˇ÷π“˙Öπ\"ÎæŒÍi®[ﬂ°sâÿ›¨ˇ\0¶∏ˇ\0¨yG\'¨∫°Ù1ö*¶Û˛s∂Æ€;!òÿ{ﬁtcMœ˘—µy†πˆd>◊“=≈Œêy:îî[o®cÜÈ∫ÿ#‰¨€å–«ÒWc˜;w“ıItÖqÁ Ç”W>FM(Ç’8±√ªx“PÖ/ÙŒ∫Ôâ˚ÇµÌ’Htpb\"Spköi&_ægÃˇ\0¢ó”US\\–ÊñÄyôC≤ß√åÎ®Öl∫Õ¿˙–ì»Óns‹\'“p\"t”∫<C∫©™[∞…Ó¬Jù;C]L…?<:Î“[Q,°≠§T“NŒ	ÒM\'Jf√\"Mh¸‰Ìπ≤‚ê¢ì∆ã%˜ŸY⁄~‰√9√πCÄÙ_ƒÑ:ŒkY†*ª»/‘Í®úÁû4ÛC˚Câ‘óÿ\" BØ¡–vN“C=ŒÚ‡!:…3c∑;≥G\n≥FEÇ\0ÿﬂ≈X™ñ≥Rd¯î¥„Èˆ•©Ö‰9⁄x\\˚]Sj5ªi2¿!∂¿îû˚ÿÔﬁ©ÂæQ‰åõ;gêÎ©QÃ∫GøÁ§Äj∏∫Ñîï¡©gπˇ◊÷Ãª>»ÍÍÁ!‡G¸5˛\\c1ÚXÚÌúü∑z˛W´ûX”°°ü?§Âú¸¢Å)¶5˙¥=Ì-yüÑrµéV7wè≈fáx9O‘wà*9\\{ÌXﬂÈõÌˇ\0È˜™[…Ê>‰∑›o‹á\0Sl‰c˛˚~Ùo†çÕ[˚çOûk	p)çU¥]›⁄4˘*πEÃ;€´O*Õ∂µæ—V∑mû√™mÍﬁå`\"7ˇ\0∫iŸ∂÷…’WÙY*’Ãe>∆ü2Å%<ÃRàΩF™m5DîVñ4h!ºÍº§#D£ä1Ï^®¯(Å0\'Z]Ùè»$-˚ìÑ;±À9Ë≠¥«∑IÔ›Å§4Ìßƒ™≤«òce^¢ºéK~ìΩ1Íõ3ôΩÎ≤aìcÅ&&±ÁÌIO”!íÔ#_	IèÔµ\\2Ï~«ˇ–‰Ôı˝{√Ùªé|g‹á>#Ó\\“Iãﬁñ<ﬁõ‹π¥íS“ç˛\nSoÅÖÃ$íÉ”Õû	Åºº∞—…Ò\\ Iª$n<√∫}OQ€∏Ri|ù$ˆX	(õﬂk£i≥q‹˜Aq∑√Ê™$§F¥˙Óô˚á2\"ÜΩÙ\n	)^[ı˙≥—∂„r˜¸†ˇ\0r™í€Ø—Qﬂß¯NÕ6˛é#…ZdÆq%V{ˇ\0‹6≥g©◊iIr…&.˛ˇŸ8BIM!\0\0\0\0\0U\0\0\0\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0 \0C\0S\03\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0ˇ·€http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 4.1-c036 46.276720, Mon Feb 19 2007 22:13:43        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\" xmlns:xap=\"http://ns.adobe.com/xap/1.0/\" xmlns:exif=\"http://ns.adobe.com/exif/1.0/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\" xmlns:xapMM=\"http://ns.adobe.com/xap/1.0/mm/\" tiff:Orientation=\"1\" tiff:XResolution=\"720000/10000\" tiff:YResolution=\"720000/10000\" tiff:ResolutionUnit=\"2\" tiff:Make=\"Apple\" tiff:Model=\"iPhone\" tiff:NativeDigest=\"256,257,258,259,262,274,277,284,530,531,282,283,296,301,318,319,529,532,306,270,271,272,305,315,33432;FD1E769033F8DDCF58CDBFF0671CC944\" xap:ModifyDate=\"2009-02-12T12:46:37-05:00\" xap:CreateDate=\"2009-02-12T12:46:37-05:00\" xap:MetadataDate=\"2009-02-12T12:46:37-05:00\" xap:CreatorTool=\"Adobe Photoshop CS3 Macintosh\" exif:ColorSpace=\"-1\" exif:PixelXDimension=\"150\" exif:PixelYDimension=\"150\" exif:DateTimeOriginal=\"2009-01-16T09:49:43-05:00\" exif:DateTimeDigitized=\"2009-01-16T09:49:43-05:00\" exif:FNumber=\"14/5\" exif:NativeDigest=\"36864,40960,40961,37121,37122,40962,40963,37510,40964,36867,36868,33434,33437,34850,34852,34855,34856,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37396,41483,41484,41486,41487,41488,41492,41493,41495,41728,41729,41730,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,42016,0,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,22,23,24,25,26,27,28,30;67FCCFFC0794F573BD3E3ECC5DC2CC14\" dc:format=\"image/jpeg\" photoshop:ColorMode=\"3\" photoshop:ICCProfile=\"Camera RGB Profile\" photoshop:History=\"\" xapMM:InstanceID=\"uuid:56E0C33495FADD11894CB9B9E333C2E7\" xapMM:DocumentID=\"uuid:55E0C33495FADD11894CB9B9E333C2E7\"> <xapMM:DerivedFrom rdf:parseType=\"Resource\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xpacket end=\"w\"?>ˇ‚XICC_PROFILE\0\0\0Happl \0\0scnrRGB XYZ ”\0\0\0\0\0\0\0\0acspAPPL\0\0\0\0appl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ÷\0\0\0\0\0”-appl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0\0\0\0bXYZ\0\00\0\0\0wtpt\0\0D\0\0\0chad\0\0X\0\0\0,rTRC\0\0Ñ\0\0\0gTRC\0\0Ñ\0\0\0bTRC\0\0Ñ\0\0\0desc\0\0ÿ\0\0\0ncprt\0\0î\0\0\0Adscm\0\0î\0\0˛XYZ \0\0\0\0\0\0tK\0\0>\0\0ÀXYZ \0\0\0\0\0\0Zs\0\0¨¶\0\0&XYZ \0\0\0\0\0\0(\0\0W\0\0∏3XYZ \0\0\0\0\0\0ÛR\0\0\0\0œsf32\0\0\0\0\0B\0\0ﬁˇˇÛ&\0\0í\0\0˝ëˇˇ˚¢ˇˇ˝£\0\0‹\0\0¿lcurv\0\0\0\0\0\0\03\0\0mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0$\0\0ûesES\0\0\0,\0\0LdaDK\0\0\04\0\0⁄deDE\0\0\0,\0\0òfiFI\0\0\0(\0\0\0ƒfrFU\0\0\0<\0\0¬itIT\0\0\0,\0\0rnlNL\0\0\0$\0\0noNO\0\0\0 \0\0xptBR\0\0\0(\0\0JsvSE\0\0\0*\0\0\0ÏjaJP\0\0\0\0\0koKR\0\0\0\0\02zhTW\0\0\0\0\02zhCN\0\0\0\0\0ƒ\0K\0a\0m\0e\0r\0a\0n\0 \0R\0G\0B\0-\0p\0r\0o\0f\0i\0i\0l\0i\0R\0G\0B\0-\0p\0r\0o\0f\0i\0l\0 \0f\0ˆ\0r\0 \0K\0a\0m\0e\0r\0a0´0·0È\0 \0R\0G\0B\0 0◊0Ì0’0°0§0ÎexOMv¯j_\0 \0R\0G\0B\0 Çr_icœè\0P\0e\0r\0f\0i\0l\0 \0R\0G\0B\0 \0p\0a\0r\0a\0 \0C\0·\0m\0a\0r\0a\0R\0G\0B\0-\0k\0a\0m\0e\0r\0a\0p\0r\0o\0f\0i\0l\0R\0G\0B\0-\0P\0r\0o\0f\0i\0l\0 \0f\0¸\0r\0 \0K\0a\0m\0e\0r\0a\0sv¯g:\0 \0R\0G\0B\0 cœèeáNˆ\0R\0G\0B\0-\0b\0e\0s\0k\0r\0i\0v\0e\0l\0s\0e\0 \0t\0i\0l\0 \0K\0a\0m\0e\0r\0a\0R\0G\0B\0-\0p\0r\0o\0f\0i\0e\0l\0 \0C\0a\0m\0e\0r\0aŒt∫T∑|\0 \0R\0G\0B\0 ’∏\\”«|\0P\0e\0r\0f\0i\0l\0 \0R\0G\0B\0 \0d\0e\0 \0C\0‚\0m\0e\0r\0a\0P\0r\0o\0f\0i\0l\0o\0 \0R\0G\0B\0 \0F\0o\0t\0o\0c\0a\0m\0e\0r\0a\0C\0a\0m\0e\0r\0a\0 \0R\0G\0B\0 \0P\0r\0o\0f\0i\0l\0e\0P\0r\0o\0f\0i\0l\0 \0R\0V\0B\0 \0d\0e\0 \0l \0a\0p\0p\0a\0r\0e\0i\0l\0-\0p\0h\0o\0t\0o\0\0text\0\0\0\0Copyright 2003 Apple Computer Inc., all rights reserved.\0\0\0\0desc\0\0\0\0\0\0\0Camera RGB Profile\0\0\0\0\0\0\0\0\0\0\0Camera RGB Profile\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0›kÿˇ\0\"áeùıwqÿˇ\0Y4»Eeƒ\'-Cå.eÆe∂0…?W∞œ¯;\'ÙïYY{Øed”µ‰p úﬂ¢ô‚´€∂¡=ƒ˛Í•óóó”¿±Ã„ÉÓ¥ª[¸∂˚ëCjè]ﬂ§£˙xÔ–G˙7≥Û\\ùÙT‚#ÿÔ¿¸áãùãò&óÄÒÀUçﬂõ`É‚íö¨€cÿÊΩ«f˜AêÿáU∑s}7ˇ\0ûØ◊’m\'y–}{¶?wˇ\0:UÏ†ÏäûÍ¿·Õ?ﬂπøŸz≠pÈÌ¥ﬁ*{˛ìH;Êg⁄œwÓΩ%;’ı\n‹Y#ë®ˇ\0…—Vçsw5¡ÕÒÆ}’äa¨≥k_†ÖVˆ\\«‘∆ñºWÙúNûÙmMºé¥ÍÑÇ˘˙04E¬Îî]Ìºäùÿû˛EcŸ^.—/Ω‰√l<«Ú–-™ ò\\FÊé›G‡ï©ÎõuO0«µƒv»ûWèßêÀ)t=¶ZGäﬁßÆ\\4µçxÒo¥•jw%1*ç]_œ§Mg˘C¯µZe’ÿ%èDAK2TJRòî‡õ[∫IwI?ˇ–’.C≥\"äú∆⁄·Y|Üh	v›ﬂºërı’}N¶Ê÷Ô§”¬r‘‡»êdr≤NXhv9kàêÍ_Ù-˛Cøu Ï4V+ıkG–6Œ˜7~v‘iv˝ÄKáÛü»º˜~kSün%,nu~!h©dH‹D‘–=øIé±‘Ø{©∆≠ˆn˜5∂2KXFá‘l1ü»ı∂GIVUe∂:∂W$1êIÔÍ˝&÷—K)ƒß—«ì@›#¥Ú˝Œkÿ˚?„Cõ~Oÿjv~kÖv“!‚¢`üÕßl˛ëﬁÔ¸Ç ≈˙ƒÀpùf~Kj,;[^ﬂQÔ”vÊ∑ÁÙ∂,ø¨y∑f›X≠§`◊¸Ãp„«©ˇ\0êYOa€≥_o\0ˆIOQó◊Òi°ñWu∑Ω‹T¬÷m”OPµûœÏ¨Ãø¨ŸV≥e˙Z÷πŒsßÛ∂4ª”o˘´3d6l‡Û	ù∞ë§†	hßK‹|jkÍ7ﬁÏ˚…?™Œﬂ¨:›€€ˇ\0≈øùô–∞YEµáì´]äÁ\0Á<√∂{—Ïﬁ∏È4–hd˚v˜<\0I.Â=c+/=≠¿§€Súø 7|ì˘÷◊È7˚˜≠ßZ˙$fTÍ@ˇ\0\n=ı˙„}Ãˇ\0Æ1rc?%˛à⁄q\\èkF◊∞LÌnœk∑)ã°«˙≈mπtõÈ‚ññŸ\\A›˚Ó∞ˇ\0É˝÷˚µ:L,sCõi·√P~Â  »”‡≥≤≥∫UŸ∑‘∆;=A}Q∂√?Õ\nÜÍÌwÔoÿ°“z∂gPmÑbó≤¢®¬÷ì?o?O˙ØH%€Ø/*Ωs¥ÏuÙëô÷m?a=¡ˆïú2™ﬁÚjy¸Àaˇ\0•Ìˇ\05Ê\np*tøl3l˙~ÔÎIe˙l˝—#∫HŸSˇ—≥MØ5¥ZA∞q‚§Á\0$ù<S≥)Ó⁄ ‹|OÇ;Ë≤ßzP“ﬂ“8Ó‹LË∆Ï€ˇ\0Vä4∆·Qœßa‡u≠∫{úÊ™ù?;2‡Öå◊≥Û2πµ75∂dŸ¸™ôÈ≠jËk[π⁄I%¨Å?ˆﬂU-«4ê–y‘ﬂjH^À¡s∏;cOÂù≈æ∆ÆOÎ7S∂`b∏Ó ∞@&}±˝w~¸”Î=H·S!¨≥6¿kkò”¿3˘ƒª“Øˇ\0±qÓeèı,≥WsßRKé©Z(5˝w5ûôqè{^¡mñh4oáıø5Q≤ùôÓh‘éÌˇ\0…7˘J5d]C∑÷‚<c∏ÛJ˚%€n`8÷ËÆvÜX=F8ÈªwÁ7‹’[Ï‘÷˜åÜIŒ >ΩX2?ú⁄‘’u*Ï€µ•ñ4CO#¬}™oπØ±çc§R›¿¯º˚ZÖ•¬∆+>†qùÌ:˚ªTå*˜4∞˝R≥1ç.;e‰ÍÛÃ™ÂŒ∂LÈ‚Ö¶ô2‡◊≈M˜7‰S£<ü9AwËŒú<ëÑtV°ºÃ∆œh>*ÓYv9Ãè“{L¡˚ñ-‡â¯§µÏï*˚áØ¡˙¿ππáÌLq.©∫wˇ\05¨˛ ØgVuÃ≥™˚` ∫«K\'ÛOªª˜π÷8KLäÌÛÍµ«M9ÏSÅQûÁ—Õ’’9§H…E¢7n}Dˇ\0‘Xí„?kıÖˆÔ–ç\0{xÙœÔ1$Vøˇ“”veÖæªùÈP·Óq~«i˘≠ˇ\0…˙àtÁaá‘õÖÄ˙nkh5πﬂ \\©9Ω¥∫[kCÓw˝n˝_Êm◊‰ó6£i˜ê}ì}í?¬5≠€≤œ¸	%SÿŸëUms⁄æèâ˛®¸ÂC/™Z›ê˜~¨C@ê[¸ØwæﬂÃUzvc´±ñÕB∆ñáæqüﬂè—µço–©S˙ÀìN\'ÿ:i•,xuÕÒ©ádªnﬂœ~Ô˙⁄(.;ÚÔœ ≤Î	h#⁄–thükX«m∑q$mïtvt| V€ß‰Tr˙;+©Ó≠Ó	\"diÒ@˘#Í„YIs}ÆÖV ÉâÄ˛Ì‡¸ÉøË-÷ÙÀPs@òÒ!S»ÈôCñOõJG¡«-áÕp‰+*◊W?D}#©Oekõ]Õ2t‡è¸≈VπØﬂË3S0OöD⁄‡Œ™ﬂê˘◊`:ˇ\0ræÍCY\0¥⁄x˚ïº\\Z®•µ45òô˘£ÅÙ^‚?íYˇ\0ëPJv|Ä≠wrå]® È®G«∏vT¥&I˛Um?éâ˛œ∏±ß„YıKåÆˆ„›¬∑∑È¨˙‹√‰x+¶8˙FŸª2>ÁÌr©ëÉSÅÅ^i—…›d±vqÌ•\\¬±Æw§Ûy€=¿ÒU≤h5:±»°ÏT∑bÿ™ç;ßÍÈê[ê”Q>ÁAê?™íÍyÄØsH ˚£PN¥Sˇ”°åÃﬁØhı˜P⁄Ã9Ã–ë˚ü…[∏ù?ëK	‰éOıú}ŒV∆0C\0;§òIHŒ5O±óY.uÊ∂Hc‹Ê§±oÈx}O9Ÿ˜ΩÓÿ„Ulk∂¥zd¥ôoø›fı©î1˙v˘MoÈ,õ‚dìÙX?Ì«,~è‘pYÖ]6^∆‹∑µ∆ó9›“¥:\0Ö_4âq?Ëﬁà€Íxˆ=Æ>E®:0rÍkw‰J—LòÕ≠»(Ÿ\0E:!ZDjíû{¨2\0ÏLˆYX Ÿî]Œ…wœ≤—ÍÓã¿“vôüöß”±ﬂË=‡{¨v—	≤4\n¸b ≤,n„ΩÂŒ>\nx÷lp!ƒ¸S~ŒãZlp }/4Jf@edìÒÄòj∑e\0ﬁÕß^@ﬁL*V‰\\\\H∞¸’Ó©ç±≠eZm±l£ ÍNΩºç.ô-⁄ÓÀµ€ï∫ÔuÏão*ã±ùEL{∏èp¥ˇ\0ﬂö≠cΩŒÇttjRêDOãG®4:»?z™¬Ë=ïû™K^ƒ™BŒu$>V9¸≈¥ÿ5=§Ë ˘JJ,yÙ¨àç¯HI9kˇ‘÷BøÌU∫í˜VÊtO—˛R#éö ”ˆ·ìeé,n%bX ó∏ë˛ÁΩ%9?ZØe8¥‚0ù¶∆Ä52⁄œ˝˙≈Ã]]Nµ˙~qÁ‚¥˙ŒW⁄zç√ñQmT∑˚;ùg˛Á!øπÓ$çI¸© ¡À4∞j√¥˘EcÚ∂X¡uõ4∏ë‚Æ:ø;_íxÕqµ≠–~˚P\nõ‘˙≥#ÙÂ√˘@?€ΩIøL1„‡GÒP≥`ùÊNÅ£∫Øe.ÁÕ*U¯´\'1Ÿ.X›Æ\0Ë8Óµ0™`∆Æ≥°⁄$è™»{!å◊XÂiWkö¿A¸—˘95ÿF•%ò,ô.tw\nﬁ#qh◊7y‡ ë{Æi$Ì`–xïíÁ\\«lﬁwx¶\0Kb‚É%≠q‹Né–™/¡πéöù-Ï\nØàÏ≤]é‹«~rπNSÎ>ç∫ë¡ÚKP≠\n™ÆˆË˘\'ÙZ” BõÓcÑç\n∑D5A\09ΩY°Œhòt\"{-«zñ|sSEé::±?å)¢h\0¡!dîaŒ∫?8ÍíãEûìâ˜§û∆ˇ\0ˇ’ø~E40€sÉ+o.>hñdWˆFÿ¬_˙@Ô=¨ˇ\0§†qk…Æ÷Ap-kÑçﬂöVO÷˛†⁄1ŸMosMØ⁄›ÜÈ÷?ÔŒÿí^csÕ˜Ï≥œåπ_u∑	%†Íx+>ó01Æ\0˚Æídóm?KDAòŸ;öÔîz\0ÍVêù˘ÉπÑG¡Båäÿ€^ÈÇ·€…◊◊`–∏|B›ê.ô◊¡vE6›nÔ|ôwÉÀEZ«≤`8qV~ö´˜F§w*•Ñ8çAòûaßPP5ËBˆA«Óü»Æ∞E≤t~JÉû¬Ê¥Z›G…‹]é\0ÔC!£>3D˘%ª6Äÿ&\0–W‘°‰<?O:ä”fÔ/Kt¨µæDÑx≤k‡Ë’}1-p0ö˜5‡9ºÉ¯*c\néjsÑ˘ß¨:∑ms§$@Ëõ64o◊ÙuJ∆í”m≥Ö!{	qÄm$ñ•UíÚÎ}ç‚J≠ïk6®í	ó8˜é8V=k,.6iY>∆y);jaqCtA‚§¨ê\"6Éi˚>Ë‘Fÿ‡Ìùù€¯§ùl/ˇ÷∑”3Ì»]ˆwSM@äﬁ˝úN∆√?È.KÎI…Î®}väá«Èø˛ìógùê‹l=Ô:1¶Á˝—[Wõã_eÔµ«Ùèqqë‹Ííãm’\0Ít›dπX∑°é-‚v?s±˜sÍí4:È\n„ç[Ès‡Td“àkh·⁄¿\'ÊÖËø”&uﬂ˜+1ë.›TáGD&∞io¢Løtœò1¯%ƒ4’TÄ–ÊñÄyÂ ù3Æ™Ÿuõß—:y–n/\"}\'ÆöwF«uSX∑aì›Ñ©TX⁄ZË˙FO‰I·÷º1†áƒ;)kj4ì≥Ç|P\'F\\0‚$÷Ä~)ö)sdî‚öO,ß›ef‹êÃpÓSx;/‚B747@PAvßULÊºÒßöÆO$ì‡Aï¯7›ë¥êœsº∏.|ô{§ˆh·¢˜à˙¸QÎ•≠ÁS‚R†ƒx}©+iyw»\"Ê⁄Í€Q≠–LÉÚCk¿ PnsÓcøzßñ¸ì†,ŸË¨“‘®Â€#›ÛçRA5Zß]BIÙ;≠ûÔˇ◊÷¨ßúW2≠C¿è‰7˝X∏ˆc‰5Â€{¯Ö∑◊r}\\‚¿`R>IÀ?wô@î”√˝Zˆ¿cÃ¸<V©…«˝≥CºßÍ;ƒ…]Mﬂ¥„~¯KÌˇ\0È˜™[œx˚í‹?uøro\0Sl‰c˛˚~Ùn†ç•ø∏Ük	p©çlh.ªª¥iÚUrKòw7Vïf€ﬂh¯\0´Ÿˆî:∑cçˇ\0Óöñm±≤u@ÙX¨‹∆UÏiÛ(2S¡bê®’f’X‰J+KKÄÓ¢ÎáRïé(«∞l˙ù‘‚`*é≤y3‰Å˝…¬ÿÂúÙ∆ÿ{iÁ›û!ßhÌÒ*ìcÃ0JπEwÚ[ÏùÈèÉ2óäQê˜LMbœ⁄íû¬£=‰k·)%c∏˚Q√.≈ˇ–Âoı˝k=a˙]«x>3ÓBü˜.e$≈ÔOzmW2íJzqΩ<Ÿ‡arÈ$†ı2ˇ\0”qxˆ√{ïÀ§êH‹yá|˙û£∑pú…“Oeœ§ò‹˚][K˜¿ çû5A$◊ü]€o‹9ì˘ûL%]$¡/Ø’?∑≈∂„rÁ¸†ˇ\0r¢í€Ø—Qﬂß’‹ßnﬂ—ƒy+,ïÕ$´K‚⁄Ü√ˆ=VªJKïI5wˇŸ");
INSERT INTO jos_downloads_blob VALUES("2","2","0","28492","ˇÿˇ‡\0JFIF\0\0H\0H\0\0ˇ·xExif\0\0MM\0*\0\0\0\0	\0\0\0\0\0\0\0z\0\0\0\0\0\0\0Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0á\0\0\0\0\0\0\0è(\0\0\0\0\0\0\01\0\0\0\0\0\0\0ó2\0\0\0\0\0\0\0µái\0\0\0\0\0\0\0Ã\0\0`Apple\0iPhone\0\0\n¸Ä\0\0\'\0\n¸Ä\0\0\'Adobe Photoshop CS3 Macintosh\02009:02:12 12:46:37\0\0\0\0\0Çù\0\0\0\0\0\0&ê\0\0\0\0\0\0.ê\0\0\0\0\0\0B†\0\0\0\0ˇˇ\0\0†\0\0\0\0\0\0\0ñ†\0\0\0\0\0\0\0ñ•\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\02009:01:16 09:49:43\02009:01:16 09:49:43\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Æ\0\0\0\0\0\0∂(\0\0\0\0\0\0\0\0\0\0\0\0\0æ\0\0\0\0\0\0≤\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ˇÿˇ‡\0JFIF\0\0\0H\0H\0\0ˇÌ\0Adobe_CM\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0ﬁkÿÒ‡PÏ«tÔ®√ªé«˙» 9¶B+.!9jas-s-∞ΩÜH©˙ΩÜ¡Ÿ?§´˙ﬂÁ´6:ˆVM;^GÚ˘Õ˙)û*Ωªl‹OÓ™Yyy}8¡n8>ÎA€µøÀoπ6®ı›˙A5á}<wÄË#˝Î¸◊\'}8àˆ;?!‚Ábf	°‡<j[*∆ÔÕ∞AÒÒIMVÉÌ±Ï{„≥{‡»lC™€πæõˇ\0œWÎÍÜ∂ì∏Ë>ÉΩ”ªˇ\0ù*ˆPvEOuptsO~Êˇ\0û´\\:{n˜äûˇ\0§“«y∫}¨˜~Î“SΩ^}nx-ë»‘‰ë≈çsw5¡ÕÒ¨÷)Ü≤Õ≠~Ä=[Ÿs\\[SZœ§‚t˜£jmdıßT <œ—Å¢6\\¢ÔmÒS˚ƒﬂV5ï‚Ç^(±‰√l<ë¸¥j≤¶π£á7Q¯!jzˆ›SÃ1ÌqÅÚ\'ï¬„ﬂÈ‰2 ]iñë‚∑©Îó7KX◊éÂæ“ç©‹îƒ™5u|;9&≥¸°¸[*”.Æ¡,xpÚ ¢\nYíò§Jâ)¡6∑tíÓí*ˇ–÷.B∑#ß1∂∏Vlê¬Ì n€ª˜í.Cæ∫≤*u7∞Y[ÙsO	À[\0»êdGÕ$ÂÌ∆s\\[!‘ŸÙ”ÀêÔ›z=n¢±_®˚Z>Å∞ÓpôøÈ;j>Áoÿ∏9€`Û˝ÁªÛXíÎz~%n}~`©dH‹D‘–=øIé≥‘Ø±‘‚÷˚7{ö€Y%¨\"AıÏgÚ=E≠ë“UïYmé≠ïId{˙øMüı¥R q)Ùq€È4“;O“~Á5Ì}øÒâ)Õ» ˚.œŒsk≤ë˜i€?§ªˇ\0I¨úO¨å∑	÷ÁÂ2¢«mm{}GøM€⁄ﬂÌ}-ã/Î6m˘◊V+iˇ\03G=O¸Ç«}ggßØ∑Ä{\"ß¨Ã˙√âF=vWu∑Ω‹R¬÷m”OPµûœÏ¨ºœ≠V◊≥øKA∫◊9Œt˛v∆ózmˇ\05elÜÕì¥Ëc≈3∂4Ä4-´©çn>5ı,ã›üy?—çgi»uª∑∑˛!ã†œÕË„›XpZµÿÆp\0~sÃ;g∑˝ÕÎãêcMÄvO±•˚ﬁ``ÔS÷≤Û:ÉY”Ë7RÁzô!ª‰üŒ∂øIøÿ˝%ãq◊>âî∫Ä?¬è}G˛∏œs?Î¨\\Äœ ¢6ÜWc⁄—µÏ%çŸÌvˇ\0Â1txˇ\0Y.ª2ìk}<R“€+à;ø}÷;¸Ó∑ÿëK¶¬«4=§9ááG‡§≤4¯,‹ºÓïEˆmı1éœPdUl3¸–®nÆ◊~˛˝ä#¨fu⁄·à^ H£ZLˇ\0¡º˝=ø∫ÙBù Û2k—ó;N«Qˇ\0Iùf—£ˆ‹iY£*≠·è&´ÊX˝?kø≤ç\0ÛRÈ~ÿnŸÙı˛∞Ññ_¶…˙\"Gtëµ?ˇ—≥MØ5¥ZA∞q|T‹‡ìßäv`Â=€Y[ºœÇ3Ë≤ßzP“ﬂ“8Ó‹LË∆l€ˇ\0Vä¥∆·QœßaòknüIÕT˙~~eÌ¡≈kŸ˘ô/‹⁄áõãÉm ≥˘U3”Zı–÷∑s¥íKX5~)Óæ™éi!†Û©˙-ˆ§ÖÏ±·ºÿ”˘~‚ﬂcW#ıü™\0€:~+á®Ôv]Ç3ÌèÎøÛˇ\0‡ñßYÍgôeô÷[∆ûüŒ%ﬁï¯%ãçuv<Ym∫∏{ù:í\\uJ—M¥9¨ÙÀåq\nˆ&\0»`∂€t–÷¯OÔ˛j°m\"ôÓ`‘èŒo˛Iø Qß&ÏwÔ≠ƒÒ‹)+Ïü7u∏UÄ„[¢π⁄`ı„¶Ì‹9æÊ™ﬂe¶ßºd∞zNy ∆Ê+èÁ6µ™4ı:¨⁄“À!ßë·>ﬂr%ó6À÷:E‹‚ÛÌo˝˘)Dpq@äœ®g{NçªµE¯≠´‹\\“√ÙL	è4≠ÕcKéŸy:ºÛ*±s≠ì:x°i¶Lº1ÒS}«Mﬂ˘›Lr‹$x ¢≥ß\0 ∫¬D—ZÜ˚3Y=†¯´›?≠å;Ê@ı/`«}\0-‡¥äA‡;^…RØ∏{,¨ ã€ò~‘«Íõ°‰2ÔÕk?≤´Y’ﬂsÏ⁄~ƒ+Ÿwÿ‚id˛ci˜o˜~„7[Ät¥√Ç3˜œ™◊4Á±ÛNDv{œG83WRÊë#$kt›πÙìˇ\0QjKâ˝≥‘éÿø@4\0iÌ„”?øZIÀ_ˇ“‘veÖæªüÈP·Óq~«i˘≠ˇ\0…˙àtÁ·‘õÖÄ˙nkh5πﬂ \\ô9Ω¥∫[kCÓv°ø¢≠ﬂ¢´¸œÌ¢⁄¸íÊ‘m>Ú¢Úo≤G¯FµªvYˇ\0Å$™{+2*≠°Œ{@w—Ò?’oÁ*}T‚‘ÏóªıgÊÅ ∑˘RÔ}øò™ÙÏ,◊Uc-&°cKCﬂ∏ì˚Ò˙6±≠˙*?Y≤iƒ˚M#‘•Øπæ50Ïóm€˛˚ˇ\0ÎhçP\\gf_‘2≠∫¬Zˆ¥\'⁄≈ÿÌ∑nqp⁄9¯ÆñŒçÄD\n⁄ÿ‡∑O»®ÊtjÎ©Ô≠ÓlHôk›‰∂º\\K) Ógµ√P™ŸPq0,ÓﬁÚˇ\0†∑õ“Ï}AÕcƒèÔTÚ:V\\{´ü6üÔH˜(8Ö§8«µ„ëÊ¨åª]T<˝é•J⁄◊6´⁄dËZ<?™™ﬁ◊˙ÉÜL¡>ikÉ:k≥&…◊`:ûˇ\0¢ÍkÄZ“tâ„ÓVÒq*¢ñ‘\\–@÷bgÊéX?1Ó#˘ü˘¶I”fÃ`+]‹g‚ój:G*	ƒqÓÄµãA$ô\'˘U¥˛:)p‡∆ëÁYıCåÆˆ„›ÁÌ∆sGπ§V ùYÚ<’;H€#˜fG‹˝Æˇ\0§©dÙ˙\\ÚÛOéNÏr√¶é]¥´∏6µÓÙ¨>«êŸÅ‚™Âcö]\nxÆ\0Ät=äñÏ[Qß|˝ZtÇ‹ñöâ˜:Å€⁄íÍπ?gÓi∫5$ÎGˇ”°äÃÓ±p˚FÍYá:øi#˝ÚVÓ\'N≈√dSXa?HéOıú}ŒVX∆0CZ\0NÈ&R3çSÏeˆKùDπ≠íò˜9£È%b_“p∫¶{∫ÖÔ±Ê∑´c]µ£”%ÑÀ}˛Î7˛r’À›7#)≠˝%ìc‹Ló¢¡ˇ\0n9bÙn•ÇÃË≥!ç∏Ôkå/sª•hv \næp„ˇ\0Ûˇ\0D¢6˙^=ñ5«»†uFIùMn¸âXC*ÿ–<Çk (ßDHçRSŒıíMb8œeë”¡≥,øùíÔüeß÷_Å§Ì3?⁄·RÈòÔ˚=èh˜ZÌ≠¯Ÿ~1eY6¥8Ô∞π«òS≈∑cÅ$y¶˝òEÕ6<9£ÈèJ∫{≠»¨Ä“Ôå™›ò{6›yhﬁLOQ∑&‚‚E§|Jø’±∂5¨´M¢ò˘\'P“ÌxBóLñıwfr◊oW*»~C\"∆√€°TäÍ*cÿ}ƒ{ÄÂß˛¸’o«8tqî§Ê–ÍMk¨É˜™l!ÆÉŸZÍ‰µÌw®∂œ¢O2•á ≈?ò∂Ÿß¥ù\"RQcœ£dD¯HI9kˇ‘◊BøÌU∫í˜÷DπÜÙCøîàÛ¶à4}∏eYcçlƒ≠≤∆¡/q\"=ﬂöœzJr>∂d2úJpÿN”c\0ômg˛˝bÂØÆó\\˘úykS≠e˝ß©\\ñQuT7˚!Œ≥ˇ\0sêﬂä\\˜F§˛TÜÂl∂Q°ÉV§w¸Ωñ0_fÕâ–¸UÁaU˘⁄¸êk≈kÕ¨nÄ8s(ü⁄ÄVoTÎˇ\0⁄Ç·¸∞\ngØıFü“\nﬁ>0∂¶dË;™ˆR‡`>|“°ŸW‚∂Vk≤ú,±õ\\–j;≠lò1k¨Ëvâ#ƒ˚ñ;ÎÜ2N§L≠:ÌsX“Êè»†»l}[@≤ñÃLó∫;âÖs∏¥kõºe@Ω◊0ív∞â+œπéÿ^wx¶-ãàz<¶µ«séé–™6`^«MNñˆU√va™◊Ôc∏qWhÀ}g—∑R>âÒ	j°^™Ônèh ¸ÙZ” B%ó1Õë°Au⁄jÜ® /¨¥9Õ‚VS¥\"xjfª’≥‡™∫ñ?«XÒÖ<\0ÛIF◊8RË¸‚$$†—g¢‚[·∑ÔI=çˇ’–ø\"ömπ¡ï∑ó5D≥\"ø±∂÷Zˇ\0“xÅÌg˝%ãVHmv±∂¥∏µ¬FÔÕr«˙„‘[èé k{öm~÷Ï0ÔN±ˇ\0~vƒîÚ˚ûr.-àvaôÒó-]píXßÉ6á01ÆﬁÎÉ§ô%€NÆ—f∂NÊªÂﬁÄ:îÿ~K†ÓaP«…≠çµÓò/è$\'dWh\\>!ÓäàR˘ù|\'mQM∑\\7…óp`¿…—V∂ ÊÄ”É¢∞À–_æ=ƒw*•••Œ#Pf\'òDÈ‘z´ ä„˜O‰WÎ—n„†hìÚYÔ{ò¿ukLèí1ºª\0yÄTÒ\'…-ŸÿÌl@\0_W‰XßÅ\n.¢ÅÙŸø≈Sã:VZﬂ‰∏ÑÖx≤Î·ıt™»§âkÅÑ◊ΩØhsO∏¡Rn?59Õü4ıá÷Ìév‡Å¢lÿ——ØËÍö∆í”∑¡∂§/cA.0\0M§í”¶≤l.∑Ùmòì‰™Â⁄œL”è$.qÓ+>µ∂t¨üe~_ N⁄ò^@hnÄË#R•éÏrâ∂æ”ˆm—®$çÈ∏;ggv˛)\'[’ˇ÷π“˙Öπ\"ÎæŒÍi®[ﬂ°sâÿ›¨ˇ\0¶∏ˇ\0¨yG\'¨∫°Ù1ö*¶Û˛s∂Æ€;!òÿ{ﬁtcMœ˘—µy†πˆd>◊“=≈Œêy:îî[o®cÜÈ∫ÿ#‰¨€å–«ÒWc˜;w“ıItÖqÁ Ç”W>FM(Ç’8±√ªx“PÖ/ÙŒ∫Ôâ˚ÇµÌ’Htpb\"Spköi&_ægÃˇ\0¢ó”US\\–ÊñÄyôC≤ß√åÎ®Öl∫Õ¿˙–ì»Óns‹\'“p\"t”∫<C∫©™[∞…Ó¬Jù;C]L…?<:Î“[Q,°≠§T“NŒ	ÒM\'Jf√\"Mh¸‰Ìπ≤‚ê¢ì∆ã%˜ŸY⁄~‰√9√πCÄÙ_ƒÑ:ŒkY†*ª»/‘Í®úÁû4ÛC˚Câ‘óÿ\" BØ¡–vN“C=ŒÚ‡!:…3c∑;≥G\n≥FEÇ\0ÿﬂ≈X™ñ≥Rd¯î¥„Èˆ•©Ö‰9⁄x\\˚]Sj5ªi2¿!∂¿îû˚ÿÔﬁ©ÂæQ‰åõ;gêÎ©QÃ∫GøÁ§Äj∏∫Ñîï¡©gπˇ◊÷Ãª>»ÍÍÁ!‡G¸5˛\\c1ÚXÚÌúü∑z˛W´ûX”°°ü?§Âú¸¢Å)¶5˙¥=Ì-yüÑrµéV7wè≈fáx9O‘wà*9\\{ÌXﬂÈõÌˇ\0È˜™[…Ê>‰∑›o‹á\0Sl‰c˛˚~Ùo†çÕ[˚çOûk	p)çU¥]›⁄4˘*πEÃ;€´O*Õ∂µæ—V∑mû√™mÍﬁå`\"7ˇ\0∫iŸ∂÷…’WÙY*’Ãe>∆ü2Å%<ÃRàΩF™m5DîVñ4h!ºÍº§#D£ä1Ï^®¯(Å0\'Z]Ùè»$-˚ìÑ;±À9Ë≠¥«∑IÔ›Å§4Ìßƒ™≤«òce^¢ºéK~ìΩ1Íõ3ôΩÎ≤aìcÅ&&±ÁÌIO”!íÔ#_	IèÔµ\\2Ï~«ˇ–‰Ôı˝{√Ùªé|g‹á>#Ó\\“Iãﬁñ<ﬁõ‹π¥íS“ç˛\nSoÅÖÃ$íÉ”Õû	Åºº∞—…Ò\\ Iª$n<√∫}OQ€∏Ri|ù$ˆX	(õﬂk£i≥q‹˜Aq∑√Ê™$§F¥˙Óô˚á2\"ÜΩÙ\n	)^[ı˙≥—∂„r˜¸†ˇ\0r™í€Ø—Qﬂß¯NÕ6˛é#…ZdÆq%V{ˇ\0‹6≥g©◊iIr…&.˛ˇŸˇÌ1≤Photoshop 3.0\08BIM\0\0\0\0\0\0\0\0\0\08BIM%\0\0\0\0\0ËÒ\\Û/¡°¢{g≠≈d’∫8BIMÍ\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n<dict>\n	<key>com.apple.print.PageFormat.PMHorizontalRes</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMHorizontalRes</key>\n				<real>72</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMOrientation</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMOrientation</key>\n				<integer>1</integer>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMScaling</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMScaling</key>\n				<real>1</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMVerticalRes</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMVerticalRes</key>\n				<real>72</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.PageFormat.PMVerticalScaling</key>\n	<dict>\n		<key>com.apple.print.ticket.creator</key>\n		<string>com.apple.jobticket</string>\n		<key>com.apple.print.ticket.itemArray</key>\n		<array>\n			<dict>\n				<key>com.apple.print.PageFormat.PMVerticalScaling</key>\n				<real>1</real>\n				<key>com.apple.print.ticket.stateFlag</key>\n				<integer>0</integer>\n			</dict>\n		</array>\n	</dict>\n	<key>com.apple.print.subTicket.paper_info_ticket</key>\n	<dict>\n		<key>PMPPDPaperCodeName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>PMPPDPaperCodeName</key>\n					<string>Letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>PMTiogaPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>PMTiogaPaperName</key>\n					<string>na-letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PageFormat.PMAdjustedPageRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PageFormat.PMAdjustedPageRect</key>\n					<array>\n						<real>0.0</real>\n						<real>0.0</real>\n						<real>734</real>\n						<real>576</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PageFormat.PMAdjustedPaperRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PageFormat.PMAdjustedPaperRect</key>\n					<array>\n						<real>-18</real>\n						<real>-18</real>\n						<real>774</real>\n						<real>594</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMPaperName</key>\n					<string>na-letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMUnadjustedPageRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMUnadjustedPageRect</key>\n					<array>\n						<real>0.0</real>\n						<real>0.0</real>\n						<real>734</real>\n						<real>576</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.PMUnadjustedPaperRect</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.PMUnadjustedPaperRect</key>\n					<array>\n						<real>-18</real>\n						<real>-18</real>\n						<real>774</real>\n						<real>594</real>\n					</array>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.PaperInfo.ppd.PMPaperName</key>\n		<dict>\n			<key>com.apple.print.ticket.creator</key>\n			<string>com.apple.jobticket</string>\n			<key>com.apple.print.ticket.itemArray</key>\n			<array>\n				<dict>\n					<key>com.apple.print.PaperInfo.ppd.PMPaperName</key>\n					<string>US Letter</string>\n					<key>com.apple.print.ticket.stateFlag</key>\n					<integer>0</integer>\n				</dict>\n			</array>\n		</dict>\n		<key>com.apple.print.ticket.APIVersion</key>\n		<string>00.20</string>\n		<key>com.apple.print.ticket.type</key>\n		<string>com.apple.print.PaperInfoTicket</string>\n	</dict>\n	<key>com.apple.print.ticket.APIVersion</key>\n	<string>00.20</string>\n	<key>com.apple.print.ticket.type</key>\n	<string>com.apple.print.PageFormatTicket</string>\n</dict>\n</plist>\n8BIMÌ\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\08BIM&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Ä\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIMÛ\0\0\0\0\0	\0\0\0\0\0\0\0\0\08BIM\n\0\0\0\0\0\0\08BIM\'\0\0\0\0\0\n\0\0\0\0\0\0\0\08BIMı\0\0\0\0\0H\0/ff\0\0lff\0\0\0\0\0\0\0/ff\0\0°ôö\0\0\0\0\0\0\02\0\0\0\0Z\0\0\0\0\0\0\0\0\05\0\0\0\0-\0\0\0\0\0\0\0\08BIM¯\0\0\0\0\0p\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\0\0\0ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇË\0\08BIM\0\0\0\0\0\0\0\0\0\0@\0\0@\0\0\0\08BIM\0\0\0\0\0\0\0\0\08BIM\0\0\0\0E\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0ñ\0\0\0\0I\0M\0G\0_\00\05\02\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ\0\0\0ñ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0ñ\0\0\0\0Rghtlong\0\0\0ñ\0\0\0slicesVlLs\0\0\0Objc\0\0\0\0\0\0\0\0slice\0\0\0\0\0\0sliceIDlong\0\0\0\0\0\0\0groupIDlong\0\0\0\0\0\0\0originenum\0\0\0ESliceOrigin\0\0\0autoGenerated\0\0\0\0Typeenum\0\0\0\nESliceType\0\0\0\0Img \0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\0\0ñ\0\0\0\0Rghtlong\0\0\0ñ\0\0\0urlTEXT\0\0\0\0\0\0\0\0\0nullTEXT\0\0\0\0\0\0\0\0\0MsgeTEXT\0\0\0\0\0\0\0\0altTagTEXT\0\0\0\0\0\0\0\0cellTextIsHTMLbool\0\0\0cellTextTEXT\0\0\0\0\0\0\0\0	horzAlignenum\0\0\0ESliceHorzAlign\0\0\0default\0\0\0	vertAlignenum\0\0\0ESliceVertAlign\0\0\0default\0\0\0bgColorTypeenum\0\0\0ESliceBGColorType\0\0\0\0None\0\0\0	topOutsetlong\0\0\0\0\0\0\0\nleftOutsetlong\0\0\0\0\0\0\0bottomOutsetlong\0\0\0\0\0\0\0rightOutsetlong\0\0\0\0\08BIM(\0\0\0\0\0\0\0\0?\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0Œ\0\0\0\0\0\0ñ\0\0\0ñ\0\0ƒ\0ÿ\0\0≤\0\0ˇÿˇ‡\0JFIF\0\0\0H\0H\0\0ˇÌ\0Adobe_CM\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0ﬁkÿÒ‡PÏ«tÔ®√ªé«˙» 9¶B+.!9jas-s-∞ΩÜH©˙ΩÜ¡Ÿ?§´˙ﬂÁ´6:ˆVM;^GÚ˘Õ˙)û*Ωªl‹OÓ™Yyy}8¡n8>ÎA€µøÀoπ6®ı›˙A5á}<wÄË#˝Î¸◊\'}8àˆ;?!‚Ábf	°‡<j[*∆ÔÕ∞AÒÒIMVÉÌ±Ï{„≥{‡»lC™€πæõˇ\0œWÎÍÜ∂ì∏Ë>ÉΩ”ªˇ\0ù*ˆPvEOuptsO~Êˇ\0û´\\:{n˜äûˇ\0§“«y∫}¨˜~Î“SΩ^}nx-ë»‘‰ë≈çsw5¡ÕÒ¨÷)Ü≤Õ≠~Ä=[Ÿs\\[SZœ§‚t˜£jmdıßT <œ—Å¢6\\¢ÔmÒS˚ƒﬂV5ï‚Ç^(±‰√l<ë¸¥j≤¶π£á7Q¯!jzˆ›SÃ1ÌqÅÚ\'ï¬„ﬂÈ‰2 ]iñë‚∑©Îó7KX◊éÂæ“ç©‹îƒ™5u|;9&≥¸°¸[*”.Æ¡,xpÚ ¢\nYíò§Jâ)¡6∑tíÓí*ˇ–÷.B∑#ß1∂∏Vlê¬Ì n€ª˜í.Cæ∫≤*u7∞Y[ÙsO	À[\0»êdGÕ$ÂÌ∆s\\[!‘ŸÙ”ÀêÔ›z=n¢±_®˚Z>Å∞ÓpôøÈ;j>Áoÿ∏9€`Û˝ÁªÛXíÎz~%n}~`©dH‹D‘–=øIé≥‘Ø±‘‚÷˚7{ö€Y%¨\"AıÏgÚ=E≠ë“UïYmé≠ïId{˙øMüı¥R q)Ùq€È4“;O“~Á5Ì}øÒâ)Õ» ˚.œŒsk≤ë˜i€?§ªˇ\0I¨úO¨å∑	÷ÁÂ2¢«mm{}GøM€⁄ﬂÌ}-ã/Î6m˘◊V+iˇ\03G=O¸Ç«}ggßØ∑Ä{\"ß¨Ã˙√âF=vWu∑Ω‹R¬÷m”OPµûœÏ¨ºœ≠V◊≥øKA∫◊9Œt˛v∆ózmˇ\05elÜÕì¥Ëc≈3∂4Ä4-´©çn>5ı,ã›üy?—çgi»uª∑∑˛!ã†œÕË„›XpZµÿÆp\0~sÃ;g∑˝ÕÎãêcMÄvO±•˚ﬁ``ÔS÷≤Û:ÉY”Ë7RÁzô!ª‰üŒ∂øIøÿ˝%ãq◊>âî∫Ä?¬è}G˛∏œs?Î¨\\Äœ ¢6ÜWc⁄—µÏ%çŸÌvˇ\0Â1txˇ\0Y.ª2ìk}<R“€+à;ø}÷;¸Ó∑ÿëK¶¬«4=§9ááG‡§≤4¯,‹ºÓïEˆmı1éœPdUl3¸–®nÆ◊~˛˝ä#¨fu⁄·à^ H£ZLˇ\0¡º˝=ø∫ÙBù Û2k—ó;N«Qˇ\0Iùf—£ˆ‹iY£*≠·è&´ÊX˝?kø≤ç\0ÛRÈ~ÿnŸÙı˛∞Ññ_¶…˙\"Gtëµ?ˇ—≥MØ5¥ZA∞q|T‹‡ìßäv`Â=€Y[ºœÇ3Ë≤ßzP“ﬂ“8Ó‹LË∆l€ˇ\0Vä¥∆·QœßaòknüIÕT˙~~eÌ¡≈kŸ˘ô/‹⁄áõãÉm ≥˘U3”Zı–÷∑s¥íKX5~)Óæ™éi!†Û©˙-ˆ§ÖÏ±·ºÿ”˘~‚ﬂcW#ıü™\0€:~+á®Ôv]Ç3ÌèÎøÛˇ\0‡ñßYÍgôeô÷[∆ûüŒ%ﬁï¯%ãçuv<Ym∫∏{ù:í\\uJ—M¥9¨ÙÀåq\nˆ&\0»`∂€t–÷¯OÔ˛j°m\"ôÓ`‘èŒo˛Iø Qß&ÏwÔ≠ƒÒ‹)+Ïü7u∏UÄ„[¢π⁄`ı„¶Ì‹9æÊ™ﬂe¶ßºd∞zNy ∆Ê+èÁ6µ™4ı:¨⁄“À!ßë·>ﬂr%ó6À÷:E‹‚ÛÌo˝˘)Dpq@äœ®g{NçªµE¯≠´‹\\“√ÙL	è4≠ÕcKéŸy:ºÛ*±s≠ì:x°i¶Lº1ÒS}«Mﬂ˘›Lr‹$x ¢≥ß\0 ∫¬D—ZÜ˚3Y=†¯´›?≠å;Ê@ı/`«}\0-‡¥äA‡;^…RØ∏{,¨ ã€ò~‘«Íõ°‰2ÔÕk?≤´Y’ﬂsÏ⁄~ƒ+Ÿwÿ‚id˛ci˜o˜~„7[Ät¥√Ç3˜œ™◊4Á±ÛNDv{œG83WRÊë#$kt›πÙìˇ\0QjKâ˝≥‘éÿø@4\0iÌ„”?øZIÀ_ˇ“‘veÖæªüÈP·Óq~«i˘≠ˇ\0…˙àtÁ·‘õÖÄ˙nkh5πﬂ \\ô9Ω¥∫[kCÓv°ø¢≠ﬂ¢´¸œÌ¢⁄¸íÊ‘m>Ú¢Úo≤G¯FµªvYˇ\0Å$™{+2*≠°Œ{@w—Ò?’oÁ*}T‚‘ÏóªıgÊÅ ∑˘RÔ}øò™ÙÏ,◊Uc-&°cKCﬂ∏ì˚Ò˙6±≠˙*?Y≤iƒ˚M#‘•Øπæ50Ïóm€˛˚ˇ\0ÎhçP\\gf_‘2≠∫¬Zˆ¥\'⁄≈ÿÌ∑nqp⁄9¯ÆñŒçÄD\n⁄ÿ‡∑O»®ÊtjÎ©Ô≠ÓlHôk›‰∂º\\K) Ógµ√P™ŸPq0,ÓﬁÚˇ\0†∑õ“Ï}AÕcƒèÔTÚ:V\\{´ü6üÔH˜(8Ö§8«µ„ëÊ¨åª]T<˝é•J⁄◊6´⁄dËZ<?™™ﬁ◊˙ÉÜL¡>ikÉ:k≥&…◊`:ûˇ\0¢ÍkÄZ“tâ„ÓVÒq*¢ñ‘\\–@÷bgÊéX?1Ó#˘ü˘¶I”fÃ`+]‹g‚ój:G*	ƒqÓÄµãA$ô\'˘U¥˛:)p‡∆ëÁYıCåÆˆ„›ÁÌ∆sGπ§V ùYÚ<’;H€#˜fG‹˝Æˇ\0§©dÙ˙\\ÚÛOéNÏr√¶é]¥´∏6µÓÙ¨>«êŸÅ‚™Âcö]\nxÆ\0Ät=äñÏ[Qß|˝ZtÇ‹ñöâ˜:Å€⁄íÍπ?gÓi∫5$ÎGˇ”°äÃÓ±p˚FÍYá:øi#˝ÚVÓ\'N≈√dSXa?HéOıú}ŒVX∆0CZ\0NÈ&R3çSÏeˆKùDπ≠íò˜9£È%b_“p∫¶{∫ÖÔ±Ê∑´c]µ£”%ÑÀ}˛Î7˛r’À›7#)≠˝%ìc‹Ló¢¡ˇ\0n9bÙn•ÇÃË≥!ç∏Ôkå/sª•hv \næp„ˇ\0Ûˇ\0D¢6˙^=ñ5«»†uFIùMn¸âXC*ÿ–<Çk (ßDHçRSŒıíMb8œeë”¡≥,øùíÔüeß÷_Å§Ì3?⁄·RÈòÔ˚=èh˜ZÌ≠¯Ÿ~1eY6¥8Ô∞π«òS≈∑cÅ$y¶˝òEÕ6<9£ÈèJ∫{≠»¨Ä“Ôå™›ò{6›yhﬁLOQ∑&‚‚E§|Jø’±∂5¨´M¢ò˘\'P“ÌxBóLñıwfr◊oW*»~C\"∆√€°TäÍ*cÿ}ƒ{ÄÂß˛¸’o«8tqî§Ê–ÍMk¨É˜™l!ÆÉŸZÍ‰µÌw®∂œ¢O2•á ≈?ò∂Ÿß¥ù\"RQcœ£dD¯HI9kˇ‘◊BøÌU∫í˜÷DπÜÙCøîàÛ¶à4}∏eYcçlƒ≠≤∆¡/q\"=ﬂöœzJr>∂d2úJpÿN”c\0ômg˛˝bÂØÆó\\˘úykS≠e˝ß©\\ñQuT7˚!Œ≥ˇ\0sêﬂä\\˜F§˛TÜÂl∂Q°ÉV§w¸Ωñ0_fÕâ–¸UÁaU˘⁄¸êk≈kÕ¨nÄ8s(ü⁄ÄVoTÎˇ\0⁄Ç·¸∞\ngØıFü“\nﬁ>0∂¶dË;™ˆR‡`>|“°ŸW‚∂Vk≤ú,±õ\\–j;≠lò1k¨Ëvâ#ƒ˚ñ;ÎÜ2N§L≠:ÌsX“Êè»†»l}[@≤ñÃLó∫;âÖs∏¥kõºe@Ω◊0ív∞â+œπéÿ^wx¶-ãàz<¶µ«séé–™6`^«MNñˆU√va™◊Ôc∏qWhÀ}g—∑R>âÒ	j°^™Ônèh ¸ÙZ” B%ó1Õë°Au⁄jÜ® /¨¥9Õ‚VS¥\"xjfª’≥‡™∫ñ?«XÒÖ<\0ÛIF◊8RË¸‚$$†—g¢‚[·∑ÔI=çˇ’–ø\"ömπ¡ï∑ó5D≥\"ø±∂÷Zˇ\0“xÅÌg˝%ãVHmv±∂¥∏µ¬FÔÕr«˙„‘[èé k{öm~÷Ï0ÔN±ˇ\0~vƒîÚ˚ûr.-àvaôÒó-]píXßÉ6á01ÆﬁÎÉ§ô%€NÆ—f∂NÊªÂﬁÄ:îÿ~K†ÓaP«…≠çµÓò/è$\'dWh\\>!ÓäàR˘ù|\'mQM∑\\7…óp`¿…—V∂ ÊÄ”É¢∞À–_æ=ƒw*•••Œ#Pf\'òDÈ‘z´ ä„˜O‰WÎ—n„†hìÚYÔ{ò¿ukLèí1ºª\0yÄTÒ\'…-ŸÿÌl@\0_W‰XßÅ\n.¢ÅÙŸø≈Sã:VZﬂ‰∏ÑÖx≤Î·ıt™»§âkÅÑ◊ΩØhsO∏¡Rn?59Õü4ıá÷Ìév‡Å¢lÿ——ØËÍö∆í”∑¡∂§/cA.0\0M§í”¶≤l.∑Ùmòì‰™Â⁄œL”è$.qÓ+>µ∂t¨üe~_ N⁄ò^@hnÄË#R•éÏrâ∂æ”ˆm—®$çÈ∏;ggv˛)\'[’ˇ÷π“˙Öπ\"ÎæŒÍi®[ﬂ°sâÿ›¨ˇ\0¶∏ˇ\0¨yG\'¨∫°Ù1ö*¶Û˛s∂Æ€;!òÿ{ﬁtcMœ˘—µy†πˆd>◊“=≈Œêy:îî[o®cÜÈ∫ÿ#‰¨€å–«ÒWc˜;w“ıItÖqÁ Ç”W>FM(Ç’8±√ªx“PÖ/ÙŒ∫Ôâ˚ÇµÌ’Htpb\"Spköi&_ægÃˇ\0¢ó”US\\–ÊñÄyôC≤ß√åÎ®Öl∫Õ¿˙–ì»Óns‹\'“p\"t”∫<C∫©™[∞…Ó¬Jù;C]L…?<:Î“[Q,°≠§T“NŒ	ÒM\'Jf√\"Mh¸‰Ìπ≤‚ê¢ì∆ã%˜ŸY⁄~‰√9√πCÄÙ_ƒÑ:ŒkY†*ª»/‘Í®úÁû4ÛC˚Câ‘óÿ\" BØ¡–vN“C=ŒÚ‡!:…3c∑;≥G\n≥FEÇ\0ÿﬂ≈X™ñ≥Rd¯î¥„Èˆ•©Ö‰9⁄x\\˚]Sj5ªi2¿!∂¿îû˚ÿÔﬁ©ÂæQ‰åõ;gêÎ©QÃ∫GøÁ§Äj∏∫Ñîï¡©gπˇ◊÷Ãª>»ÍÍÁ!‡G¸5˛\\c1ÚXÚÌúü∑z˛W´ûX”°°ü?§Âú¸¢Å)¶5˙¥=Ì-yüÑrµéV7wè≈fáx9O‘wà*9\\{ÌXﬂÈõÌˇ\0È˜™[…Ê>‰∑›o‹á\0Sl‰c˛˚~Ùo†çÕ[˚çOûk	p)çU¥]›⁄4˘*πEÃ;€´O*Õ∂µæ—V∑mû√™mÍﬁå`\"7ˇ\0∫iŸ∂÷…’WÙY*’Ãe>∆ü2Å%<ÃRàΩF™m5DîVñ4h!ºÍº§#D£ä1Ï^®¯(Å0\'Z]Ùè»$-˚ìÑ;±À9Ë≠¥«∑IÔ›Å§4Ìßƒ™≤«òce^¢ºéK~ìΩ1Íõ3ôΩÎ≤aìcÅ&&±ÁÌIO”!íÔ#_	IèÔµ\\2Ï~«ˇ–‰Ôı˝{√Ùªé|g‹á>#Ó\\“Iãﬁñ<ﬁõ‹π¥íS“ç˛\nSoÅÖÃ$íÉ”Õû	Åºº∞—…Ò\\ Iª$n<√∫}OQ€∏Ri|ù$ˆX	(õﬂk£i≥q‹˜Aq∑√Ê™$§F¥˙Óô˚á2\"ÜΩÙ\n	)^[ı˙≥—∂„r˜¸†ˇ\0r™í€Ø—Qﬂß¯NÕ6˛é#…ZdÆq%V{ˇ\0‹6≥g©◊iIr…&.˛ˇŸ8BIM!\0\0\0\0\0U\0\0\0\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0 \0C\0S\03\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0ˇ·€http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 4.1-c036 46.276720, Mon Feb 19 2007 22:13:43        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\" xmlns:xap=\"http://ns.adobe.com/xap/1.0/\" xmlns:exif=\"http://ns.adobe.com/exif/1.0/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\" xmlns:xapMM=\"http://ns.adobe.com/xap/1.0/mm/\" tiff:Orientation=\"1\" tiff:XResolution=\"720000/10000\" tiff:YResolution=\"720000/10000\" tiff:ResolutionUnit=\"2\" tiff:Make=\"Apple\" tiff:Model=\"iPhone\" tiff:NativeDigest=\"256,257,258,259,262,274,277,284,530,531,282,283,296,301,318,319,529,532,306,270,271,272,305,315,33432;FD1E769033F8DDCF58CDBFF0671CC944\" xap:ModifyDate=\"2009-02-12T12:46:37-05:00\" xap:CreateDate=\"2009-02-12T12:46:37-05:00\" xap:MetadataDate=\"2009-02-12T12:46:37-05:00\" xap:CreatorTool=\"Adobe Photoshop CS3 Macintosh\" exif:ColorSpace=\"-1\" exif:PixelXDimension=\"150\" exif:PixelYDimension=\"150\" exif:DateTimeOriginal=\"2009-01-16T09:49:43-05:00\" exif:DateTimeDigitized=\"2009-01-16T09:49:43-05:00\" exif:FNumber=\"14/5\" exif:NativeDigest=\"36864,40960,40961,37121,37122,40962,40963,37510,40964,36867,36868,33434,33437,34850,34852,34855,34856,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37396,41483,41484,41486,41487,41488,41492,41493,41495,41728,41729,41730,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,42016,0,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,22,23,24,25,26,27,28,30;67FCCFFC0794F573BD3E3ECC5DC2CC14\" dc:format=\"image/jpeg\" photoshop:ColorMode=\"3\" photoshop:ICCProfile=\"Camera RGB Profile\" photoshop:History=\"\" xapMM:InstanceID=\"uuid:56E0C33495FADD11894CB9B9E333C2E7\" xapMM:DocumentID=\"uuid:55E0C33495FADD11894CB9B9E333C2E7\"> <xapMM:DerivedFrom rdf:parseType=\"Resource\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xpacket end=\"w\"?>ˇ‚XICC_PROFILE\0\0\0Happl \0\0scnrRGB XYZ ”\0\0\0\0\0\0\0\0acspAPPL\0\0\0\0appl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ÷\0\0\0\0\0”-appl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0\0\0\0bXYZ\0\00\0\0\0wtpt\0\0D\0\0\0chad\0\0X\0\0\0,rTRC\0\0Ñ\0\0\0gTRC\0\0Ñ\0\0\0bTRC\0\0Ñ\0\0\0desc\0\0ÿ\0\0\0ncprt\0\0î\0\0\0Adscm\0\0î\0\0˛XYZ \0\0\0\0\0\0tK\0\0>\0\0ÀXYZ \0\0\0\0\0\0Zs\0\0¨¶\0\0&XYZ \0\0\0\0\0\0(\0\0W\0\0∏3XYZ \0\0\0\0\0\0ÛR\0\0\0\0œsf32\0\0\0\0\0B\0\0ﬁˇˇÛ&\0\0í\0\0˝ëˇˇ˚¢ˇˇ˝£\0\0‹\0\0¿lcurv\0\0\0\0\0\0\03\0\0mluc\0\0\0\0\0\0\0\0\0\0enUS\0\0\0$\0\0ûesES\0\0\0,\0\0LdaDK\0\0\04\0\0⁄deDE\0\0\0,\0\0òfiFI\0\0\0(\0\0\0ƒfrFU\0\0\0<\0\0¬itIT\0\0\0,\0\0rnlNL\0\0\0$\0\0noNO\0\0\0 \0\0xptBR\0\0\0(\0\0JsvSE\0\0\0*\0\0\0ÏjaJP\0\0\0\0\0koKR\0\0\0\0\02zhTW\0\0\0\0\02zhCN\0\0\0\0\0ƒ\0K\0a\0m\0e\0r\0a\0n\0 \0R\0G\0B\0-\0p\0r\0o\0f\0i\0i\0l\0i\0R\0G\0B\0-\0p\0r\0o\0f\0i\0l\0 \0f\0ˆ\0r\0 \0K\0a\0m\0e\0r\0a0´0·0È\0 \0R\0G\0B\0 0◊0Ì0’0°0§0ÎexOMv¯j_\0 \0R\0G\0B\0 Çr_icœè\0P\0e\0r\0f\0i\0l\0 \0R\0G\0B\0 \0p\0a\0r\0a\0 \0C\0·\0m\0a\0r\0a\0R\0G\0B\0-\0k\0a\0m\0e\0r\0a\0p\0r\0o\0f\0i\0l\0R\0G\0B\0-\0P\0r\0o\0f\0i\0l\0 \0f\0¸\0r\0 \0K\0a\0m\0e\0r\0a\0sv¯g:\0 \0R\0G\0B\0 cœèeáNˆ\0R\0G\0B\0-\0b\0e\0s\0k\0r\0i\0v\0e\0l\0s\0e\0 \0t\0i\0l\0 \0K\0a\0m\0e\0r\0a\0R\0G\0B\0-\0p\0r\0o\0f\0i\0e\0l\0 \0C\0a\0m\0e\0r\0aŒt∫T∑|\0 \0R\0G\0B\0 ’∏\\”«|\0P\0e\0r\0f\0i\0l\0 \0R\0G\0B\0 \0d\0e\0 \0C\0‚\0m\0e\0r\0a\0P\0r\0o\0f\0i\0l\0o\0 \0R\0G\0B\0 \0F\0o\0t\0o\0c\0a\0m\0e\0r\0a\0C\0a\0m\0e\0r\0a\0 \0R\0G\0B\0 \0P\0r\0o\0f\0i\0l\0e\0P\0r\0o\0f\0i\0l\0 \0R\0V\0B\0 \0d\0e\0 \0l \0a\0p\0p\0a\0r\0e\0i\0l\0-\0p\0h\0o\0t\0o\0\0text\0\0\0\0Copyright 2003 Apple Computer Inc., all rights reserved.\0\0\0\0desc\0\0\0\0\0\0\0Camera RGB Profile\0\0\0\0\0\0\0\0\0\0\0Camera RGB Profile\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇÓ\0Adobe\0dÄ\0\0\0ˇ€\0Ñ\0			\nˇ¿\0\0ñ\0ñ\"\0ˇ›\0\0\nˇƒ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"qÅ2ë°±B#$R¡b34rÇ—C%íS·Òcs5¢≤É&DìTdE¬£t6“U‚eÚ≥Ñ√”u„ÛF\'î§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ7GWgwáóß∑«◊Á˜\05\0!1AQaq\"2Åë°±B#¡R—3$b·rÇíCScs4Ò%¢≤É&5¬“DìT£dEU6te‚Ú≥Ñ√”u„ÛFî§Ö¥ïƒ‘‰Ù•µ≈’ÂıVfvÜñ¶∂∆÷Êˆ\'7GWgwáóß∑«ˇ⁄\0\0\0?\0›kÿˇ\0\"áeùıwqÿˇ\0Y4»Eeƒ\'-Cå.eÆe∂0…?W∞œ¯;\'ÙïYY{Øed”µ‰p úﬂ¢ô‚´€∂¡=ƒ˛Í•óóó”¿±Ã„ÉÓ¥ª[¸∂˚ëCjè]ﬂ§£˙xÔ–G˙7≥Û\\ùÙT‚#ÿÔ¿¸áãùãò&óÄÒÀUçﬂõ`É‚íö¨€cÿÊΩ«f˜AêÿáU∑s}7ˇ\0ûØ◊’m\'y–}{¶?wˇ\0:UÏ†ÏäûÍ¿·Õ?ﬂπøŸz≠pÈÌ¥ﬁ*{˛ìH;Êg⁄œwÓΩ%;’ı\n‹Y#ë®ˇ\0…—Vçsw5¡ÕÒÆ}’äa¨≥k_†ÖVˆ\\«‘∆ñºWÙúNûÙmMºé¥ÍÑÇ˘˙04E¬Îî]Ìºäùÿû˛EcŸ^.—/Ω‰√l<«Ú–-™ ò\\FÊé›G‡ï©ÎõuO0«µƒv»ûWèßêÀ)t=¶ZGäﬁßÆ\\4µçxÒo¥•jw%1*ç]_œ§Mg˘C¯µZe’ÿ%èDAK2TJRòî‡õ[∫IwI?ˇ–’.C≥\"äú∆⁄·Y|Üh	v›ﬂºërı’}N¶Ê÷Ô§”¬r‘‡»êdr≤NXhv9kàêÍ_Ù-˛Cøu Ï4V+ıkG–6Œ˜7~v‘iv˝ÄKáÛü»º˜~kSün%,nu~!h©dH‹D‘–=øIé±‘Ø{©∆≠ˆn˜5∂2KXFá‘l1ü»ı∂GIVUe∂:∂W$1êIÔÍ˝&÷—K)ƒß—«ì@›#¥Ú˝Œkÿ˚?„Cõ~Oÿjv~kÖv“!‚¢`üÕßl˛ëﬁÔ¸Ç ≈˙ƒÀpùf~Kj,;[^ﬂQÔ”vÊ∑ÁÙ∂,ø¨y∑f›X≠§`◊¸Ãp„«©ˇ\0êYOa€≥_o\0ˆIOQó◊Òi°ñWu∑Ω‹T¬÷m”OPµûœÏ¨Ãø¨ŸV≥e˙Z÷πŒsßÛ∂4ª”o˘´3d6l‡Û	ù∞ë§†	hßK‹|jkÍ7ﬁÏ˚…?™Œﬂ¨:›€€ˇ\0≈øùô–∞YEµáì´]äÁ\0Á<√∂{—Ïﬁ∏È4–hd˚v˜<\0I.Â=c+/=≠¿§€Súø 7|ì˘÷◊È7˚˜≠ßZ˙$fTÍ@ˇ\0\n=ı˙„}Ãˇ\0Æ1rc?%˛à⁄q\\èkF◊∞LÌnœk∑)ã°«˙≈mπtõÈ‚ññŸ\\A›˚Ó∞ˇ\0É˝÷˚µ:L,sCõi·√P~Â  »”‡≥≤≥∫UŸ∑‘∆;=A}Q∂√?Õ\nÜÍÌwÔoÿ°“z∂gPmÑbó≤¢®¬÷ì?o?O˙ØH%€Ø/*Ωs¥ÏuÙëô÷m?a=¡ˆïú2™ﬁÚjy¸Àaˇ\0•Ìˇ\05Ê\np*tøl3l˙~ÔÎIe˙l˝—#∫HŸSˇ—≥MØ5¥ZA∞q‚§Á\0$ù<S≥)Ó⁄ ‹|OÇ;Ë≤ßzP“ﬂ“8Ó‹LË∆Ï€ˇ\0Vä4∆·Qœßa‡u≠∫{úÊ™ù?;2‡Öå◊≥Û2πµ75∂dŸ¸™ôÈ≠jËk[π⁄I%¨Å?ˆﬂU-«4ê–y‘ﬂjH^À¡s∏;cOÂù≈æ∆ÆOÎ7S∂`b∏Ó ∞@&}±˝w~¸”Î=H·S!¨≥6¿kkò”¿3˘ƒª“Øˇ\0±qÓeèı,≥WsßRKé©Z(5˝w5ûôqè{^¡mñh4oáıø5Q≤ùôÓh‘éÌˇ\0…7˘J5d]C∑÷‚<c∏ÛJ˚%€n`8÷ËÆvÜX=F8ÈªwÁ7‹’[Ï‘÷˜åÜIŒ >ΩX2?ú⁄‘’u*Ï€µ•ñ4CO#¬}™oπØ±çc§R›¿¯º˚ZÖ•¬∆+>†qùÌ:˚ªTå*˜4∞˝R≥1ç.;e‰ÍÛÃ™ÂŒ∂LÈ‚Ö¶ô2‡◊≈M˜7‰S£<ü9AwËŒú<ëÑtV°ºÃ∆œh>*ÓYv9Ãè“{L¡˚ñ-‡â¯§µÏï*˚áØ¡˙¿ππáÌLq.©∫wˇ\05¨˛ ØgVuÃ≥™˚` ∫«K\'ÛOªª˜π÷8KLäÌÛÍµ«M9ÏSÅQûÁ—Õ’’9§H…E¢7n}Dˇ\0‘Xí„?kıÖˆÔ–ç\0{xÙœÔ1$Vøˇ“”veÖæªùÈP·Óq~«i˘≠ˇ\0…˙àtÁaá‘õÖÄ˙nkh5πﬂ \\©9Ω¥∫[kCÓw˝n˝_Êm◊‰ó6£i˜ê}ì}í?¬5≠€≤œ¸	%SÿŸëUms⁄æèâ˛®¸ÂC/™Z›ê˜~¨C@ê[¸ØwæﬂÃUzvc´±ñÕB∆ñáæqüﬂè—µço–©S˙ÀìN\'ÿ:i•,xuÕÒ©ádªnﬂœ~Ô˙⁄(.;ÚÔœ ≤Î	h#⁄–thükX«m∑q$mïtvt| V€ß‰Tr˙;+©Ó≠Ó	\"diÒ@˘#Í„YIs}ÆÖV ÉâÄ˛Ì‡¸ÉøË-÷ÙÀPs@òÒ!S»ÈôCñOõJG¡«-áÕp‰+*◊W?D}#©Oekõ]Õ2t‡è¸≈VπØﬂË3S0OöD⁄‡Œ™ﬂê˘◊`:ˇ\0ræÍCY\0¥⁄x˚ïº\\Z®•µ45òô˘£ÅÙ^‚?íYˇ\0ëPJv|Ä≠wrå]® È®G«∏vT¥&I˛Um?éâ˛œ∏±ß„YıKåÆˆ„›¬∑∑È¨˙‹√‰x+¶8˙FŸª2>ÁÌr©ëÉSÅÅ^i—…›d±vqÌ•\\¬±Æw§Ûy€=¿ÒU≤h5:±»°ÏT∑bÿ™ç;ßÍÈê[ê”Q>ÁAê?™íÍyÄØsH ˚£PN¥Sˇ”°åÃﬁØhı˜P⁄Ã9Ã–ë˚ü…[∏ù?ëK	‰éOıú}ŒV∆0C\0;§òIHŒ5O±óY.uÊ∂Hc‹Ê§±oÈx}O9Ÿ˜ΩÓÿ„Ulk∂¥zd¥ôoø›fı©î1˙v˘MoÈ,õ‚dìÙX?Ì«,~è‘pYÖ]6^∆‹∑µ∆ó9›“¥:\0Ö_4âq?Ëﬁà€Íxˆ=Æ>E®:0rÍkw‰J—LòÕ≠»(Ÿ\0E:!ZDjíû{¨2\0ÏLˆYX Ÿî]Œ…wœ≤—ÍÓã¿“vôüöß”±ﬂË=‡{¨v—	≤4\n¸b ≤,n„ΩÂŒ>\nx÷lp!ƒ¸S~ŒãZlp }/4Jf@edìÒÄòj∑e\0ﬁÕß^@ﬁL*V‰\\\\H∞¸’Ó©ç±≠eZm±l£ ÍNΩºç.ô-⁄ÓÀµ€ï∫ÔuÏão*ã±ùEL{∏èp¥ˇ\0ﬂö≠cΩŒÇttjRêDOãG®4:»?z™¬Ë=ïû™K^ƒ™BŒu$>V9¸≈¥ÿ5=§Ë ˘JJ,yÙ¨àç¯HI9kˇ‘÷BøÌU∫í˜VÊtO—˛R#éö ”ˆ·ìeé,n%bX ó∏ë˛ÁΩ%9?ZØe8¥‚0ù¶∆Ä52⁄œ˝˙≈Ã]]Nµ˙~qÁ‚¥˙ŒW⁄zç√ñQmT∑˚;ùg˛Á!øπÓ$çI¸© ¡À4∞j√¥˘EcÚ∂X¡uõ4∏ë‚Æ:ø;_íxÕqµ≠–~˚P\nõ‘˙≥#ÙÂ√˘@?€ΩIøL1„‡GÒP≥`ùÊNÅ£∫Øe.ÁÕ*U¯´\'1Ÿ.X›Æ\0Ë8Óµ0™`∆Æ≥°⁄$è™»{!å◊XÂiWkö¿A¸—˘95ÿF•%ò,ô.tw\nﬁ#qh◊7y‡ ë{Æi$Ì`–xïíÁ\\«lﬁwx¶\0Kb‚É%≠q‹Né–™/¡πéöù-Ï\nØàÏ≤]é‹«~rπNSÎ>ç∫ë¡ÚKP≠\n™ÆˆË˘\'ÙZ” BõÓcÑç\n∑D5A\09ΩY°Œhòt\"{-«zñ|sSEé::±?å)¢h\0¡!dîaŒ∫?8ÍíãEûìâ˜§û∆ˇ\0ˇ’ø~E40€sÉ+o.>hñdWˆFÿ¬_˙@Ô=¨ˇ\0§†qk…Æ÷Ap-kÑçﬂöVO÷˛†⁄1ŸMosMØ⁄›ÜÈ÷?ÔŒÿí^csÕ˜Ï≥œåπ_u∑	%†Íx+>ó01Æ\0˚Æídóm?KDAòŸ;öÔîz\0ÍVêù˘ÉπÑG¡Båäÿ€^ÈÇ·€…◊◊`–∏|B›ê.ô◊¡vE6›nÔ|ôwÉÀEZ«≤`8qV~ö´˜F§w*•Ñ8çAòûaßPP5ËBˆA«Óü»Æ∞E≤t~JÉû¬Ê¥Z›G…‹]é\0ÔC!£>3D˘%ª6Äÿ&\0–W‘°‰<?O:ä”fÔ/Kt¨µæDÑx≤k‡Ë’}1-p0ö˜5‡9ºÉ¯*c\néjsÑ˘ß¨:∑ms§$@Ëõ64o◊ÙuJ∆í”m≥Ö!{	qÄm$ñ•UíÚÎ}ç‚J≠ïk6®í	ó8˜é8V=k,.6iY>∆y);jaqCtA‚§¨ê\"6Éi˚>Ë‘Fÿ‡Ìùù€¯§ùl/ˇ÷∑”3Ì»]ˆwSM@äﬁ˝úN∆√?È.KÎI…Î®}väá«Èø˛ìógùê‹l=Ô:1¶Á˝—[Wõã_eÔµ«Ùèqqë‹Ííãm’\0Ít›dπX∑°é-‚v?s±˜sÍí4:È\n„ç[Ès‡Td“àkh·⁄¿\'ÊÖËø”&uﬂ˜+1ë.›TáGD&∞io¢Løtœò1¯%ƒ4’TÄ–ÊñÄyÂ ù3Æ™Ÿuõß—:y–n/\"}\'ÆöwF«uSX∑aì›Ñ©TX⁄ZË˙FO‰I·÷º1†áƒ;)kj4ì≥Ç|P\'F\\0‚$÷Ä~)ö)sdî‚öO,ß›ef‹êÃpÓSx;/‚B747@PAvßULÊºÒßöÆO$ì‡Aï¯7›ë¥êœsº∏.|ô{§ˆh·¢˜à˙¸QÎ•≠ÁS‚R†ƒx}©+iyw»\"Ê⁄Í€Q≠–LÉÚCk¿ PnsÓcøzßñ¸ì†,ŸË¨“‘®Â€#›ÛçRA5Zß]BIÙ;≠ûÔˇ◊÷¨ßúW2≠C¿è‰7˝X∏ˆc‰5Â€{¯Ö∑◊r}\\‚¿`R>IÀ?wô@î”√˝Zˆ¿cÃ¸<V©…«˝≥CºßÍ;ƒ…]Mﬂ¥„~¯KÌˇ\0È˜™[œx˚í‹?uøro\0Sl‰c˛˚~Ùn†ç•ø∏Ük	p©çlh.ªª¥iÚUrKòw7Vïf€ﬂh¯\0´Ÿˆî:∑cçˇ\0Óöñm±≤u@ÙX¨‹∆UÏiÛ(2S¡bê®’f’X‰J+KKÄÓ¢ÎáRïé(«∞l˙ù‘‚`*é≤y3‰Å˝…¬ÿÂúÙ∆ÿ{iÁ›û!ßhÌÒ*ìcÃ0JπEwÚ[ÏùÈèÉ2óäQê˜LMbœ⁄íû¬£=‰k·)%c∏˚Q√.≈ˇ–Âoı˝k=a˙]«x>3ÓBü˜.e$≈ÔOzmW2íJzqΩ<Ÿ‡arÈ$†ı2ˇ\0”qxˆ√{ïÀ§êH‹yá|˙û£∑pú…“Oeœ§ò‹˚][K˜¿ çû5A$◊ü]€o‹9ì˘ûL%]$¡/Ø’?∑≈∂„rÁ¸†ˇ\0r¢í€Ø—Qﬂß’‹ßnﬂ—ƒy+,ïÕ$´K‚⁄Ü√ˆ=VªJKïI5wˇŸ");



DROP TABLE jos_downloads_classify;

CREATE TABLE `jos_downloads_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `windowtitle` varchar(1) NOT NULL,
  `keywords` varchar(1) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT '0',
  `published` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_classify VALUES("1","0","","","0","1","0","","Hydro Photon, Inc.","<br>");
INSERT INTO jos_downloads_classify VALUES("2","0","","","0","1","0","","Camden National Bank","<br>");



DROP TABLE jos_downloads_containers;

CREATE TABLE `jos_downloads_containers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `windowtitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `parentid` smallint(255) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `filecount` smallint(6) NOT NULL DEFAULT '0',
  `foldercount` smallint(6) NOT NULL DEFAULT '0',
  `icon` varchar(50) NOT NULL DEFAULT '',
  `registered` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `userupload` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `plaintext` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `editgroup` smallint(6) NOT NULL DEFAULT '0',
  `adminauto` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userauto` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `autogroup` smallint(6) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `parentid` (`parentid`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_containers VALUES("1","0","HPI","","0","Hydro Photon, Inc","HPI","","1","<br>","0","2","folder_green.gif","2","3","0","0","0","0","0","0","0");
INSERT INTO jos_downloads_containers VALUES("2","0","Camden National Bank","","0","CNB","Camden National Bank","","1","<br>","1","2","folder_blue.gif","2","3","0","0","0","0","0","0","0");
INSERT INTO jos_downloads_containers VALUES("3","0","","","2","CNB-to-Pica","CNB-to-Pica","","1","<br>","0","0","","2","3","0","0","0","0","0","0","0");
INSERT INTO jos_downloads_containers VALUES("5","0","","","1","HPI-to-Pica","HPI-to-Pica","","1","<br>","0","0","","2","3","0","0","0","0","0","0","0");
INSERT INTO jos_downloads_containers VALUES("4","0","","","2","Pica-to-CNB","Pica-to-CNB","","1","<br>","1","0","","2","3","0","0","0","0","0","0","0");
INSERT INTO jos_downloads_containers VALUES("6","0","","","1","Pica-to-HPI","Pica-to-HPI","","1","<br>","0","0","","2","3","0","0","0","0","0","0","0");



DROP TABLE jos_downloads_file_classify;

CREATE TABLE `jos_downloads_file_classify` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `classify_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`,`classify_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_file_classify VALUES("1","2");



DROP TABLE jos_downloads_files;

CREATE TABLE `jos_downloads_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `windowtitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `metatype` smallint(6) NOT NULL DEFAULT '0',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `realwithid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `islocal` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `containerid` smallint(6) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filesize` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(255) NOT NULL DEFAULT '',
  `filetitle` varchar(255) NOT NULL DEFAULT '',
  `subtitle` text NOT NULL,
  `description` text NOT NULL,
  `smalldesc` text NOT NULL,
  `autoshort` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `license` text NOT NULL,
  `licenseagree` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `currency` char(3) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registered` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `userupload` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `download_text` text NOT NULL,
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recommend_text` text NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `featured_st_date` date NOT NULL DEFAULT '0000-00-00',
  `featured_end_date` date NOT NULL DEFAULT '0000-00-00',
  `featured_priority` smallint(6) NOT NULL DEFAULT '0',
  `featured_seq` smallint(6) NOT NULL DEFAULT '0',
  `featured_text` text NOT NULL,
  `opsystem` varchar(50) NOT NULL DEFAULT '',
  `legaltype` varchar(50) NOT NULL DEFAULT '',
  `requirements` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `releasedate` date NOT NULL DEFAULT '0000-00-00',
  `languages` text NOT NULL,
  `company_URL` varchar(255) NOT NULL DEFAULT '',
  `translator` varchar(255) NOT NULL DEFAULT '',
  `fileversion` varchar(50) NOT NULL DEFAULT '',
  `fileauthor` varchar(100) NOT NULL DEFAULT '',
  `author_URL` varchar(255) NOT NULL DEFAULT '',
  `publish_id` varchar(50) NOT NULL DEFAULT '',
  `publish_date` date NOT NULL DEFAULT '0000-00-00',
  `filedate` date NOT NULL DEFAULT '0000-00-00',
  `filehomepage` varchar(255) NOT NULL DEFAULT '',
  `screenurl` varchar(255) NOT NULL DEFAULT '',
  `plaintext` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isblob` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chunkcount` int(11) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `editgroup` smallint(6) NOT NULL DEFAULT '0',
  `custom_1` varchar(255) NOT NULL DEFAULT '',
  `custom_2` varchar(255) NOT NULL DEFAULT '',
  `custom_3` text NOT NULL,
  `custom_4` int(11) NOT NULL DEFAULT '0',
  `custom_5` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oldid` int(11) NOT NULL DEFAULT '0',
  `submittedby` mediumint(9) NOT NULL DEFAULT '0',
  `submitdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`id`),
  KEY `filetitle` (`filetitle`),
  KEY `url` (`url`),
  KEY `containerid` (`containerid`,`published`),
  KEY `recommended` (`containerid`,`recommended`,`published`),
  KEY `featured` (`containerid`,`featured`,`published`,`featured_st_date`,`featured_end_date`),
  KEY `opsystem` (`containerid`,`opsystem`,`published`),
  FULLTEXT KEY `words` (`filetitle`,`description`,`smalldesc`,`fileauthor`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_files VALUES("1","0","","","0","Alan150.jpg","1","1","4","0","","27.82 Kb","jpg","Alan","","<br>","","1","","0","0","","0","","pics.gif","1","2","3","","0","","0","0000-00-00","0000-00-00","0","0","","","","","","0000-00-00","","","","","","","","0000-00-00","2009-02-13","","","0","1","1","0","0","","","","0","0000-00-00 00:00:00","0","62","2009-03-16 14:43:08");
INSERT INTO jos_downloads_files VALUES("2","0","","","1","Alan150.jpg","1","1","-1","0","","27.82 Kb","","Alan","","<br>","","1","","0","0","","0","","","0","2","3","","0","","0","0000-00-00","0000-00-00","0","0","","","","","","0000-00-00","","","","","","","","0000-00-00","2009-02-13","","","0","1","1","0","0","","","","0","0000-00-00 00:00:00","0","0","2009-02-13 14:25:06");



DROP TABLE jos_downloads_log;

CREATE TABLE `jos_downloads_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `fileid` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `ipaddress` char(15) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`type`,`userid`),
  KEY `fileid` (`type`,`fileid`),
  KEY `ipaddress` (`type`,`ipaddress`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_log VALUES("1","2","2009-02-13 14:24:30","0","1","28","204.181.131.70");



DROP TABLE jos_downloads_repository;

CREATE TABLE `jos_downloads_repository` (
  `id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `windowtitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `version` char(10) NOT NULL DEFAULT '',
  `Use_Database` smallint(6) NOT NULL DEFAULT '1',
  `tabclass` varchar(255) NOT NULL DEFAULT 'sectiontableentry2,sectiontableentry1',
  `tabheader` varchar(255) NOT NULL DEFAULT 'sectiontableheader',
  `headerpic` varchar(255) NOT NULL DEFAULT '$mosConfig_live_site/components/com_remository/images/header.gif',
  `ExtsOk` varchar(255) NOT NULL DEFAULT 'txt,exe,tar,gz,rar,zip,png,gif,jpg,pdf,doc',
  `ExtsDisplay` varchar(255) NOT NULL DEFAULT '',
  `Classification_Types` varchar(255) NOT NULL DEFAULT '',
  `Scribd` varchar(30) NOT NULL DEFAULT '',
  `Down_Path` varchar(255) NOT NULL DEFAULT '$mosConfig_absolute_path/components/com_remository/downloads',
  `Up_Path` varchar(255) NOT NULL DEFAULT '$mosConfig_absolute_path/components/com_remository/uploads',
  `Large_Text_Len` int(11) NOT NULL DEFAULT '500',
  `Small_Text_Len` smallint(6) NOT NULL DEFAULT '150',
  `Small_Image_Width` smallint(6) NOT NULL DEFAULT '100',
  `Small_Image_Height` smallint(6) NOT NULL DEFAULT '100',
  `Large_Image_Width` smallint(6) NOT NULL DEFAULT '600',
  `Large_Image_Height` smallint(6) NOT NULL DEFAULT '600',
  `MaxSize` int(11) NOT NULL DEFAULT '5000',
  `Max_Up_Per_Day` smallint(6) NOT NULL DEFAULT '5',
  `Max_Down_Per_Day` smallint(6) NOT NULL DEFAULT '5',
  `Max_Down_Reg_Day` smallint(6) NOT NULL DEFAULT '10',
  `Max_Down_File_Day` smallint(6) NOT NULL DEFAULT '2',
  `Max_Up_Dir_Space` int(11) NOT NULL DEFAULT '50000',
  `Favourites_Max` smallint(6) NOT NULL DEFAULT '5',
  `Max_Thumbnails` smallint(6) NOT NULL DEFAULT '0',
  `Make_Auto_Thumbnail` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Default_Version` char(20) NOT NULL DEFAULT '',
  `Date_Format` char(20) NOT NULL DEFAULT '',
  `Anti_Leach` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Allow_Up_Overwrite` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Allow_User_Sub` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Allow_User_Edit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Allow_User_Delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Allow_User_Up` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Enable_Admin_Autoapp` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Enable_User_Autoapp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Allow_Comments` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Allow_Votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Allow_Large_Images` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Remository_Pathway` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Enable_List_Download` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `User_Remote_Files` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `See_Containers_no_download` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `See_Files_no_download` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Show_RSS_feeds` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Send_Sub_Mail` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Sub_Mail_Alt_Addr` varchar(255) NOT NULL DEFAULT '',
  `Sub_Mail_Alt_Name` varchar(100) NOT NULL DEFAULT '',
  `Time_Stamp` varchar(15) NOT NULL DEFAULT '1119386419',
  `download_text` text NOT NULL,
  `preamble` text NOT NULL,
  `Default_Licence` text NOT NULL,
  `customizer` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_repository VALUES("0","0","","","","1","sectiontableentry2,sectiontableentry1","sectiontableheader","http://picadesign.com/test/components/com_remository/images/header.gif","txt,exe,tar,gz,rar,zip,png,gif,jpg,pdf,doc,rtf,odt,odc,odp,odg","","","","/home/askpersp/public_html/picadesignBlue/test/remos_downloads","/home/askpersp/public_html/picadesignBlue/test/remos_downloads/uploads","300","150","100","100","600","600","100000","5","0","0","0","50000","0","1","1","","d M Y","0","0","1","1","1","1","1","0","1","1","1","1","1","0","0","0","0","1","","","1136491012","<script type=\"text/javascript\"><!--\ngoogle_ad_client = \"pub-9523985668336222\";\ngoogle_ad_width = 300;\ngoogle_ad_height = 250;\ngoogle_ad_format = \"300x250_as\";\ngoogle_ad_type = \"image\";\ngoogle_ad_channel =\"\";\n//--></script>\n<script type=\"text/javascript\"\nsrc=\"http://pagead2.googlesyndication.com/pagead/show_ads.js\">\n</script>","<br>","<br>","a:4:{s:1:\"A\";a:10:{i:0;i:1;i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:1:\"B\";a:10:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:1:\"C\";a:10:{i:0;i:1;i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;}s:1:\"S\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";i:7;s:1:\"7\";i:8;s:1:\"8\";i:9;s:1:\"9\";}}");



DROP TABLE jos_downloads_reviews;

CREATE TABLE `jos_downloads_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `windowtitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `userURL` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `fullreview` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`component`,`itemid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_downloads_structure;

CREATE TABLE `jos_downloads_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container` smallint(6) NOT NULL DEFAULT '0',
  `item` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `container` (`container`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO jos_downloads_structure VALUES("1","2","2");
INSERT INTO jos_downloads_structure VALUES("2","2","3");
INSERT INTO jos_downloads_structure VALUES("3","3","3");
INSERT INTO jos_downloads_structure VALUES("4","2","4");
INSERT INTO jos_downloads_structure VALUES("5","4","4");
INSERT INTO jos_downloads_structure VALUES("6","1","1");
INSERT INTO jos_downloads_structure VALUES("7","1","5");
INSERT INTO jos_downloads_structure VALUES("8","5","5");
INSERT INTO jos_downloads_structure VALUES("9","1","6");
INSERT INTO jos_downloads_structure VALUES("10","6","6");



DROP TABLE jos_downloads_text;

CREATE TABLE `jos_downloads_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `filetext` longtext NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `fileid` (`fileid`),
  FULLTEXT KEY `words` (`filetext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_fpss_categories;

CREATE TABLE `jos_fpss_categories` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `width` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `width_thumb` int(11) NOT NULL,
  `quality_thumb` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO jos_fpss_categories VALUES("1","Pica Home Page","885","100","100","100","1");
INSERT INTO jos_fpss_categories VALUES("3","Pica Staff","615","100","100","100","1");
INSERT INTO jos_fpss_categories VALUES("4","Case Studies","350","100","100","100","1");
INSERT INTO jos_fpss_categories VALUES("5","Pica Branding Concept","885","100","100","100","1");
INSERT INTO jos_fpss_categories VALUES("6","MustBeDone","885","80","100","75","1");
INSERT INTO jos_fpss_categories VALUES("7","Homepage Slideshow 400x885 04/2010","885","100","100","75","1");



DROP TABLE jos_fpss_slides;

CREATE TABLE `jos_fpss_slides` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `name` varchar(225) NOT NULL DEFAULT '',
  `path` varchar(225) NOT NULL DEFAULT '',
  `path_type` varchar(110) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `itemlink` int(11) NOT NULL DEFAULT '0',
  `menulink` int(11) NOT NULL DEFAULT '0',
  `target` tinyint(3) NOT NULL DEFAULT '0',
  `customlink` varchar(225) DEFAULT NULL,
  `nolink` tinyint(1) NOT NULL,
  `ctext` text NOT NULL,
  `plaintext` text NOT NULL,
  `registers` tinyint(3) NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) NOT NULL DEFAULT '0',
  `showseccat` tinyint(3) NOT NULL DEFAULT '0',
  `showcustomtext` tinyint(3) NOT NULL DEFAULT '0',
  `showplaintext` tinyint(3) NOT NULL DEFAULT '0',
  `showreadmore` tinyint(3) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

INSERT INTO jos_fpss_slides VALUES("7","1","Pica Develops New Camden National Corporation FREE ATMs Ad Campaign","components/com_fpss/images/CNB_ATM.jpg","1","components/com_fpss/images/thumbs/CNB.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=detail&id=146#joomimg","0","","","0","1","1","1","1","0","6");
INSERT INTO jos_fpss_slides VALUES("8","1","Pica Design Launches New Website for the Grasshopper Shop","components/com_fpss/images/grasshopper_1.jpg","1","components/com_fpss/images/thumbs/Grasshopper_1.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","1","http://www.grasshoppershopofrockland.com/","0","","","0","1","1","1","1","0","10");
INSERT INTO jos_fpss_slides VALUES("9","1","Spread Peace. How sweet it is!","components/com_fpss/images/peace2.jpg","1","components/com_fpss/images/thumbs/spreadpeace.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=detail&id=490","0","","","0","1","0","1","1","0","7");
INSERT INTO jos_fpss_slides VALUES("10","1","Stay Connected","components/com_fpss/images/connected2.jpg","1","components/com_fpss/images/thumbs/connected_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/blog/","0","<p class=\"linksSlide\"><br /><a href=\"http://www.designrelated.com/picadesign\" target=\"_blank\">Design:Related.</a> <a href=\"http://www.facebook.com/pages/Belfast-ME/Pica-Design-LLC/126055135104\" target=\"_blank\">Facebook.</a> <a href=\"http://www.linkedin.com/pub/6/20/3a9\" target=\"_blank\">LinkedIn.</a> <a href=\"http://twitter.com/PicaDesign\" target=\"_blank\">Twitter.</a></p>\n<p> </p>","","0","0","1","1","1","0","11");
INSERT INTO jos_fpss_slides VALUES("11","1","Opening Text","components/com_fpss/images/opening_slide3.jpg","1","components/com_fpss/images/thumbs/opening_slide.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","8","0","","0","","","0","0","1","1","1","0","1");
INSERT INTO jos_fpss_slides VALUES("12","3","Rob Dietz","components/com_fpss/images/rob.jpg","1","components/com_fpss/images/thumbs/Rob_PingPong.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","Founder and creative director of Pica Design, Rob brings design experience with Fortune 500 companies, national non-profit organizations and small businesses to Belfast, Maine. His passion for functional design, creativity and idea collaboration are at the core of his being. Rob\'s pragmatic approach to design challenges and his ability to discern effective communication strategies has helped inspire Pica\'s clientele and attract the right blend of creative talent for nearly ten years.<br />","Principal and Creative Director","0","1","0","1","1","0","1");
INSERT INTO jos_fpss_slides VALUES("13","3","Cassidy Parmley","components/com_fpss/images/cassidy.jpg","1","components/com_fpss/images/thumbs/Cassidy_PingPong_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","As our daily design critic, Cassidy asks the difficult, sometimes philosophical questions that get to the heart of design, such as, \"What are you trying to achieve?\" As a designer, he doesn\'t sidestep the tough questions, either; he perseveres, with patience, until he gets it right. Level-headedness and objectivity characterize our Art Director\'s MO. Even when it comes to his unofficial positions as Recycling Department Overseer and Superintendent of International Shipping, Cassidy is unflustered in the face of heaps of 8.5\" x 11\" paper.","Art Director","0","1","1","1","1","0","2");
INSERT INTO jos_fpss_slides VALUES("6","1","Pica Design Wraps up New Packaging Design for Hydro-Photon, Inc.","components/com_fpss/images/FitsAll.jpg","1","components/com_fpss/images/thumbs/fitsAll.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=detail&id=99","0","","","0","1","1","1","1","0","9");
INSERT INTO jos_fpss_slides VALUES("14","3","Jen DeJoy","components/com_fpss/images/jen_1.jpg","1","components/com_fpss/images/thumbs/jen.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","Jen is a wordsmith, bent on keeping us straight on our commas and sharp on messaging. She\'s a part-time thespian, but that doesn\'t mean she\'s dramatic; as our Project Manager she keeps her cool in the face of tight deadlines and copy emergencies. She knows who\'s working on what, and what\'s to be done, and keeps us on track with the thirty-something projects we have going <br />each week.","Project Manager and Copywriter","0","1","1","1","1","1","3");
INSERT INTO jos_fpss_slides VALUES("22","1","Pica Launches Energy-Smart Homes Website for GïO Logic","components/com_fpss/images/GO.jpg","1","components/com_fpss/images/thumbs/gologic.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","1","http://gologichomes.com/","0","","","0","1","1","1","1","0","8");
INSERT INTO jos_fpss_slides VALUES("15","3","Reuben Brown","components/com_fpss/images/Reuben.jpg","1","components/com_fpss/images/thumbs/Reuben_PingPong.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","Reuben came to Pica Design with a fine-arts background in photography, painting, print-making and sculpture. He has a keen sense of the dimensional, making him our 3-D go-to designer (he also builds yacht models, by the way). <br />By nature, Reuben has a gift for understanding mechanical and technological issues. He\'s also a Mac fan, so he\'s a great resource when we experience technical difficulties with <br />files, printers, and computers (and <br />cars, of course).","Graphic Designer","0","1","1","1","1","1","7");
INSERT INTO jos_fpss_slides VALUES("16","3","Micah Ellis","components/com_fpss/images/Micah_1.jpg","1","components/com_fpss/images/thumbs/Micah_Pingpong.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","Micah\'s talents are many: design artistry, ping pong, quick wit, illustration, story-telling, basketball, voice-overs, running narrative; they are too numerous to enumerate. Up-to-speed on design industry trends, re-built brand identities, and the like, Micah keeps us fueled on inspiration. His big-picture perspective sparks diverse ideas (coffee helps, too; and snacks), and his sporty, competitive edge keeps things sporty and edgy.","Graphic Designer","0","1","1","1","1","0","4");
INSERT INTO jos_fpss_slides VALUES("18","1","Pica Launches New Website for Andrea Parker","components/com_fpss/images/new_slide5.jpg","1","components/com_fpss/images/thumbs/cedarholm1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","1","http://parkerphotostudio.com/","0","","","0","1","1","1","1","0","5");
INSERT INTO jos_fpss_slides VALUES("17","3","Caitlin Holman","components/com_fpss/images/caitlin_1.jpg","1","components/com_fpss/images/thumbs/Cait_PingPong.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","With a degree in International Affairs and a penchant for all things Internet, what\'s a tech-savvy young person to do? Cait is a tireless Web Designer and Programmer. Devoted to code, she brought us all into the know on Content Management Systems (CMS), Open Source software, and Social Networking. As of Fall 2009, she is working on a graduate degree in Information Science at the University of Michigan. She will be staying on with Pica as a Special Agent (err...consultant) aiding in usability testing, interface design, and application development.","Web Developer","0","1","0","1","0","0","6");
INSERT INTO jos_fpss_slides VALUES("24","1","Pica creates (out of hay) the \"O\" in \"Show\" for the 2009 AIGA BoNE Show","components/com_fpss/images/BoneShow.jpg","1","components/com_fpss/images/thumbs/BlueStreak.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.flickr.com/photos/picadesign/sets/72157620858859900/","0","","","0","1","0","1","1","0","4");
INSERT INTO jos_fpss_slides VALUES("19","4","Case Study 3","components/com_fpss/images/CaseStudyParker.jpg","1","components/com_fpss/images/thumbs/three.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","index.php?option=com_joomgallery&func=detail&id=501&Itemid=40","0","<strong><em>Retirement Community Reaches 100% Occupancy</em><br /><br />Parker Ridge Residential Community</strong><br />Parker Ridge offers a broad selection of private apartments, assisted-living efficiency apartments, and cottage residences located on the coast of Maine\'s Blue Hill Peninsula.<br /><br /><strong>Opportunity</strong><br />Parker Ridge had a vacancy gap in their cottages and apartments. Having made very positive changes in the community\'s structure and policies, management wanted to spread the word, but they had two outdated brochures and outdated advertising. Our client decided to combine their two brochures to represent their community in a cohesive way. They also wanted to convey the connection to Maine that they felt was lacking in their existing materials.<br /><br /><strong>Innovation</strong><br />In a new advertising campaign and brochure, we set out to capture the beauty of the Parker Ridge grounds and buildings, the vitality of the community, and the array of cultural opportunities available to Parker Ridge residents. With new photography from two Pica photo sessions at Parker Ridge, and a collection of new images of people, places and events tirelessly gathered by our contact, Verena Stoll (see below), we developed a series of three ads to showcase the community in action,the cottages, and apartment living at Parker Ridge. Building on the ad campaign, we created the brochure out of the Client\'s premise that people attracted to Parker Ridge Residential Community would be people who already had a connection to the coast of Maine and a desire to live in a vibrant, culturally rich area with plenty to see and do.<br /><br /><strong>Results</strong><br />During the ad campaign, Verena A. Stoll, Director of Advancement, said,\"The new Down East ad is a full success and people are calling.\" Parker Ridge closed their vacancy <br />gap and began what is now a long waiting list of hopeful <br />future residents.","","0","1","1","1","1","1","3");
INSERT INTO jos_fpss_slides VALUES("23","3","Is This You?","components/com_fpss/images/newstaff_1_1.jpg","1","components/com_fpss/images/thumbs/thumb.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","Pica Design is looking for a savvy web programmer and code expert with the initiative, drive, and discipline to tackle the most complex logistical problems. We seek an individual who is passionate, enthusiastic, dedicated and creative, and who can work within a collaborative team environment. The candidate must posses excellent communication skills, display keen professionalism, and have a positive attitude. <a href=\"http://www.picadesign.com/PicaDesign-WebProgrammer.rtf\">Download a detailed job description and application instructions.</a>","Web Programmer","0","1","1","1","1","1","8");
INSERT INTO jos_fpss_slides VALUES("20","4","Case Study 2","components/com_fpss/images/CaseStudyHPI.jpg","1","components/com_fpss/images/thumbs/two_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","index.php?option=com_joomgallery&func=viewcategory&catid=4&Itemid=40","0","<strong><em>Handheld UV Water Purifier Builds U.S. and International Market Share</em><br /><br />Hydro-Photon, Inc</strong><br /><em><strong>Product Line</strong></em> SteriPENÆ Handheld UV Water Purifiers<br /><br /><strong>Opportunity</strong><br />Hydro-Photon, Inc. developed the SteriPENÆ, the first hand-held, ultraviolet (UV) water purifier, launched in 1999. Time Magazine named the product one of the best inventions of 2001. When we first met with the company in 2003, their new, improved SteriPENÆ model needed a product identity. Box packaging was outdated, requiring both a graphic and copy overhaul. Because UV water purification was new to the consumer market, there was a need for educational messaging targeted toward the outdoor market and, eventually, travel and international markets as well.<br /><br /><strong>Innovation</strong><br />Product marketing materials got afresh start, beginning with product identity, extending to U.S. packaging and eco-friendly international packaging. The companyís subsequent growth phase saw the introduction of new products and accessories to new markets.<br /><br /><strong>Results</strong><br />SteriPENÆ is now selling through REI stores, hundreds of outdoor retailers across the U.S., travel retailers, catalogs, <br />and international distributors in 20 countries. Hydro-Photon, <br />Inc. has relied on Pica Design to extend the SteriPENÆ brand to point-of-purchase materials, a 20í x 20í tradeshow booth, a media kit including video demo, a web site, sales materials, and other collateral. We continue to provide ongoing graphic design support for the full line of SteriPENÆ products and accessories. Most recently, we designed packaging for the SteriPENÆ Bottle Topper for Siggô and the SteriPENÆ <br />FitsAll Filter.","","0","1","1","1","1","1","2");
INSERT INTO jos_fpss_slides VALUES("21","4","Case Study 1","components/com_fpss/images/CaseStudyJB_1.jpg","1","components/com_fpss/images/thumbs/one.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","index.php?option=com_joomgallery&func=detail&id=409&Itemid=40","0","<strong><em>Significant Sales Growth Follows Installation of Jetboil Packaging Re-Design and Retail POP Display</em><br /><br />Jetboil, Inc</strong><br /><strong><em>Product Line </em></strong>Personal Cooking System (PCS), Group Cooking System (GCS), Java Kit, Accessories<br /><br /><strong>Opportunity</strong><br />Jetboil, Inc. came to Pica Design to develop packaging for <br />their first Java Kit, a product bundle for the 2005 Holiday Season. Broadening their product line, they then asked us to create a new point-of-purchase (POP) display, and packaging for their 1.5-liter pot, Group Cooking System, and accessory line. Jetboil wanted to increase visibility of their products, educate customers on product uses and benefits, and organize their inventory in retail stores. New packaging needed to dovetail with existing packaging. Pica Design had the opportunity to design a sizable POP display and pull elements together--messaging, identity, and packaging--to create an in-store 3-D brand presence.<br /><br /><strong>Innovation</strong><br />The POP display was designed to communicate the Jetboil brand, convey product benefits, and organizethe family of products in one location. We created a versatile designthat could be customized for various outdoor retailers and the display was designed to work in an in-line or end-cap configuration. New packaging was designed to fit into the existing brand family while conveying each productís <br />unique purpose. <br /><br /><strong>Results</strong><br />According to our client, comparing sales year over year (2005-2006) showed significant sales growth. Segregating top accounts into with vs.without POP display showed an overall 23% growth advantage to those stores with POP displays. We went on to design packaging for new companion products and accessories that would integrate with the POP.","","0","1","1","1","1","1","1");
INSERT INTO jos_fpss_slides VALUES("25","1","From the Archives: Jetboil Java Kit","components/com_fpss/images/JetboilJava_2.jpg","1","components/com_fpss/images/thumbs/JetboilJava.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=detail&id=406#joomimg","0","","","0","1","1","1","1","0","2");
INSERT INTO jos_fpss_slides VALUES("26","1","Pica updates Penobsoct Marine Museum Brochure","components/com_fpss/images/PMM.jpg","1","components/com_fpss/images/thumbs/PMM.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=detail&id=502#joomimg","0","","","0","1","1","1","1","0","3");
INSERT INTO jos_fpss_slides VALUES("27","3","James Mehorter","components/com_fpss/images/james2.jpg","1","components/com_fpss/images/thumbs/james2_thumb.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","James Mehorter is an accomplished web programmer with five years\' experience creating and developing multi-user, media-rich web applications to facilitate online classes through the Continuing Education and Distance Learning Division of the University of Maine. He holds a BA in New Media, a BFA in Studio Art and a Minor in Architectural Art History from the University of Maine, Orono.","Web Developer","0","1","0","0","1","0","5");
INSERT INTO jos_fpss_slides VALUES("28","5","Brand_1","components/com_fpss/images/Brand1_Brand_1.jpg","1","components/com_fpss/images/thumbs/Brand1_Brand.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=viewcategory&catid=3","0","","Brand is a collection of experiences and associations connected with a buisness, service, person, or other entity. It is the perception of the brand that creates interest and leads to loyalty. What is your brand made of?","0","0","1","1","1","0","1");
INSERT INTO jos_fpss_slides VALUES("29","5","Brand_2","components/com_fpss/images/Brand2_Perception.jpg","1","components/com_fpss/images/thumbs/Brand2_Perception.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=viewcategory&catid=3","0","","Perception is the convergence of brand attributes and marketing communication. If the consumer\'s perception of a brand reinforces self-image, then perception fuels buy-in and buying behavior. Do customers identify with your brand?","0","0","1","1","1","0","2");
INSERT INTO jos_fpss_slides VALUES("30","5","Brand_3","components/com_fpss/images/Brand3_Behavior.jpg","1","components/com_fpss/images/thumbs/Brand3_Behavior.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=viewcategory&catid=3","0","","Behavior is action by the consumer to purchase or interact with a brand. The consumer\'s experience can determine future behavior. Are you connecting with your target market?","0","0","1","1","1","0","3");
INSERT INTO jos_fpss_slides VALUES("31","5","Brand_4","components/com_fpss/images/Brand4_Loyalty.jpg","1","components/com_fpss/images/thumbs/Brand4_Loyalty.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=viewcategory&catid=3","0","","Loyalty is a commitment by the consumer to re-purchase the brand through repeated use of a product or service or by promoting the brand through word of mouth. Brand loyalty is the desired outcome of all marketing. Is your brand working for you?","0","0","1","1","1","0","4");
INSERT INTO jos_fpss_slides VALUES("32","6","WeCare","components/com_fpss/images/opening3_09_23_09_FNL_2.jpg","1","components/com_fpss/images/thumbs/opening3_09_23_09_FNL_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://www.picadesign.com/portfolio.html?func=viewcategory&catid=3","0","","Pica Design, LLC is a design and","0","0","0","0","0","0","1");
INSERT INTO jos_fpss_slides VALUES("33","7","400x825 01","components/com_fpss/images/SS_1_1.jpg","1","components/com_fpss/images/thumbs/SS_1.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","","","0","0","0","0","0","0","8");
INSERT INTO jos_fpss_slides VALUES("34","7","400x825 02","components/com_fpss/images/SS_2.jpg","1","components/com_fpss/images/thumbs/SS_2.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","","","0","0","0","0","0","0","9");
INSERT INTO jos_fpss_slides VALUES("35","7","400x825 03","components/com_fpss/images/SS_3.jpg","1","components/com_fpss/images/thumbs/SS_3.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","","1","","","0","0","0","0","0","0","10");
INSERT INTO jos_fpss_slides VALUES("36","7","FW-1","components/com_fpss/images/FW_1.jpg","1","components/com_fpss/images/thumbs/FW_1.jpg","0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=detail&id=624&Itemid=40","0","","","0","0","0","0","0","0","5");
INSERT INTO jos_fpss_slides VALUES("37","7","FW-2","components/com_fpss/images/FW_2_1.jpg","1","components/com_fpss/images/thumbs/FW_2.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=detail&id=624&Itemid=40","0","","","0","0","0","0","0","0","6");
INSERT INTO jos_fpss_slides VALUES("38","7","TXT-1","components/com_fpss/images/TXT_1_1.jpg","1","components/com_fpss/images/thumbs/TXT_2.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=detail&id=650&Itemid=40","0","","","0","0","0","0","0","0","1");
INSERT INTO jos_fpss_slides VALUES("39","7","TXT-2","components/com_fpss/images/TXT_2_1.jpg","1","components/com_fpss/images/thumbs/TXT_2_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=detail&id=650&Itemid=40","0","","","0","0","0","0","0","0","2");
INSERT INTO jos_fpss_slides VALUES("40","7","Steri-2","components/com_fpss/images/Steri_2.jpg","1","components/com_fpss/images/thumbs/Steri_2.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=viewcategory&catid=4&Itemid=40","0","","","0","0","0","0","0","0","4");
INSERT INTO jos_fpss_slides VALUES("41","7","Steri-1","components/com_fpss/images/Steri_1.jpg","1","components/com_fpss/images/thumbs/Steri_1.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=viewcategory&catid=4&Itemid=40","0","","","0","0","0","0","0","0","3");
INSERT INTO jos_fpss_slides VALUES("42","7","Pica-1","components/com_fpss/images/Pica_SocialResp_Slide.jpg","1","components/com_fpss/images/thumbs/Pica_SocialResp_Slide.jpg","1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","0","http://picadesign.com/index.php?option=com_joomgallery&func=detail&id=650&Itemid=40","0","","","0","0","0","0","0","0","7");



DROP TABLE jos_groups;

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_groups VALUES("0","Public");
INSERT INTO jos_groups VALUES("1","Registered");
INSERT INTO jos_groups VALUES("2","Special");



DROP TABLE jos_jce_extensions;

CREATE TABLE `jos_jce_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO jos_jce_extensions VALUES("1","54","Joomla Links for Advanced Link","joomlalinks","links","1");



DROP TABLE jos_jce_groups;

CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO jos_jce_groups VALUES("1","Default","Default group for all users with edit access","","19,20,21,23,24,25","","6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,33,36;37,38,39,40,41,42,43,44,45,46,47,48;49,50,51,52,53,54,55,57,58","1,2,3,4,5,6,20,21,37,38,39,40,41,42,49,50,51,52,53,54,55,57,58","1","1","0","0000-00-00 00:00:00","");
INSERT INTO jos_jce_groups VALUES("2","Front End","Sample Group for Authors, Editors, Publishers","","19,20,21","","6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,32,36,43,44,45,47,48,50,51;24,33,39,40,42,46,49,52,53,54,55,57,58","6,20,21,50,51,1,3,5,39,40,42,49,52,53,54,55,57,58","0","2","0","0000-00-00 00:00:00","");



DROP TABLE jos_jce_plugins;

CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO jos_jce_plugins VALUES("1","Context Menu","contextmenu","plugin","","","0","0","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("2","File Browser","browser","plugin","","","0","0","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("3","Inline Popups","inlinepopups","plugin","","","0","0","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("4","Media Support","media","plugin","","","0","0","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("5","Safari Browser Support","safari","plugin","","","0","0","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("6","Help","help","plugin","help","help","1","1","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("7","New Document","newdocument","command","newdocument","newdocument","1","2","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("8","Bold","bold","command","bold","bold","1","3","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("9","Italic","italic","command","italic","italic","1","4","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("10","Underline","underline","command","underline","underline","1","5","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("11","Font Select","fontselect","command","fontselect","fontselect","1","6","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("12","Font Size Select","fontsizeselect","command","fontsizeselect","fontsizeselect","1","7","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("13","Style Select","styleselect","command","styleselect","styleselect","1","8","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("14","StrikeThrough","strikethrough","command","strikethrough","strikethrough","1","9","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("15","Justify Full","full","command","justifyfull","justifyfull","1","10","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("16","Justify Center","center","command","justifycenter","justifycenter","1","11","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("17","Justify Left","left","command","justifyleft","justifyleft","1","12","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("18","Justify Right","right","command","justifyright","justifyright","1","13","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("19","Format Select","formatselect","command","formatselect","formatselect","1","14","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("20","Paste","paste","plugin","pasteword,pastetext","paste","2","1","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("21","Search Replace","searchreplace","plugin","search,replace","searchreplace","2","2","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("22","Font ForeColour","forecolor","command","forecolor","forecolor","2","3","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("23","Font BackColour","backcolor","command","backcolor","backcolor","2","4","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("24","Unlink","unlink","command","unlink","unlink","2","5","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("25","Indent","indent","command","indent","indent","2","6","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("26","Outdent","outdent","command","outdent","outdent","2","7","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("27","Undo","undo","command","undo","undo","2","8","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("28","Redo","redo","command","redo","redo","2","9","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("29","HTML","html","command","code","code","2","10","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("30","Numbered List","numlist","command","numlist","numlist","2","11","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("31","Bullet List","bullist","command","bullist","bullist","2","12","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("32","Clipboard Actions","clipboard","command","cut,copy,paste","clipboard","2","13","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("33","Anchor","anchor","command","anchor","anchor","2","14","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("34","Image","image","command","image","image","2","15","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("35","Link","link","command","link","link","2","16","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("36","Code Cleanup","cleanup","command","cleanup","cleanup","2","17","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("37","Directionality","directionality","plugin","ltr,rtl","directionality","3","1","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("38","Emotions","emotions","plugin","emotions","emotions","3","2","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("39","Fullscreen","fullscreen","plugin","fullscreen","fullscreen","3","3","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("40","Preview","preview","plugin","preview","preview","3","4","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("41","Tables","table","plugin","tablecontrols","buttons","3","5","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("42","Print","print","plugin","print","print","3","6","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("43","Horizontal Rule","hr","command","hr","hr","3","7","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("44","Subscript","sub","command","sub","sub","3","8","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("45","Superscript","sup","command","sup","sup","3","9","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("46","Visual Aid","visualaid","command","visualaid","visualaid","3","10","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("47","Character Map","charmap","command","charmap","charmap","3","11","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("48","Remove Format","removeformat","command","removeformat","removeformat","3","12","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("49","Styles","style","plugin","styleprops","style","4","1","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("50","Non-Breaking","nonbreaking","plugin","nonbreaking","nonbreaking","4","2","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("51","Visual Characters","visualchars","plugin","visualchars","visualchars","4","3","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("52","XHTML Xtras","xhtmlxtras","plugin","cite,abbr,acronym,del,ins,attribs","xhtmlxtras","4","4","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("53","Image Manager","imgmanager","plugin","imgmanager","imgmanager","4","5","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("54","Advanced Link","advlink","plugin","advlink","advlink","4","6","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("55","Spell Checker","spellchecker","plugin","spellchecker","spellchecker","4","7","1","1","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("56","Layers","layer","plugin","insertlayer,moveforward,movebackward,absolute","layer","4","8","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("57","Advanced Code Editor","advcode","plugin","advcode","advcode","4","9","1","0","","","1","0","0000-00-00 00:00:00");
INSERT INTO jos_jce_plugins VALUES("58","Article Breaks","article","plugin","readmore,pagebreak","article","4","10","1","0","","","1","0","0000-00-00 00:00:00");



DROP TABLE jos_jforms_b3cb6;

CREATE TABLE `jos_jforms_b3cb6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `IP` varchar(15) NOT NULL,
  `hd19a` varchar(254) NOT NULL,
  `h06ff` varchar(254) NOT NULL,
  `h788e` varchar(254) NOT NULL,
  `hbeb4` varchar(254) NOT NULL,
  `h86ba` varchar(254) NOT NULL,
  `hf35a` varchar(254) NOT NULL,
  `h5567` text NOT NULL,
  `h68d7` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_jforms_fields;

CREATE TABLE `jos_jforms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO jos_jforms_fields VALUES("11","1","textbox","0");
INSERT INTO jos_jforms_fields VALUES("12","1","textbox","1");
INSERT INTO jos_jforms_fields VALUES("13","1","textbox","2");
INSERT INTO jos_jforms_fields VALUES("14","1","textbox","3");
INSERT INTO jos_jforms_fields VALUES("15","1","textbox","4");
INSERT INTO jos_jforms_fields VALUES("16","1","list","5");
INSERT INTO jos_jforms_fields VALUES("17","1","textarea","6");
INSERT INTO jos_jforms_fields VALUES("18","1","date","7");
INSERT INTO jos_jforms_fields VALUES("19","1","recaptcha","8");
INSERT INTO jos_jforms_fields VALUES("20","1","button","9");



DROP TABLE jos_jforms_forms;

CREATE TABLE `jos_jforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `plugins` varchar(100) NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `groups` varchar(255) NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `thank` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jos_jforms_forms VALUES("1","Pica Project Request","0","Mail,Database","1","2009-02-05 22:25:37","62","2009-02-05 22:25:37","62","0","0000-00-00 00:00:00","2009-02-05 00:00:00","0000-00-00 00:00:00","0,18,19,20,21,23,24,25","0","Thanks so much for contacting Pica Design, we\'ll be in touch with you shortly!");



DROP TABLE jos_jforms_parameters;

CREATE TABLE `jos_jforms_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `plugin_name` varchar(100) NOT NULL,
  `plugin_type` tinyint(4) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `parameter_value` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

INSERT INTO jos_jforms_parameters VALUES("8","1","11","textbox","1","hash","hd19a");
INSERT INTO jos_jforms_parameters VALUES("9","1","11","textbox","1","lw","107");
INSERT INTO jos_jforms_parameters VALUES("10","1","11","textbox","1","lh","22");
INSERT INTO jos_jforms_parameters VALUES("11","1","11","textbox","1","cw","107");
INSERT INTO jos_jforms_parameters VALUES("12","1","11","textbox","1","ch","22");
INSERT INTO jos_jforms_parameters VALUES("13","1","11","textbox","1","required","1");
INSERT INTO jos_jforms_parameters VALUES("14","1","11","textbox","1","maxLength","50");
INSERT INTO jos_jforms_parameters VALUES("15","1","11","textbox","1","validation","NoValidation");
INSERT INTO jos_jforms_parameters VALUES("16","1","11","textbox","1","altValidation","");
INSERT INTO jos_jforms_parameters VALUES("17","1","11","textbox","1","isUserEmail","0");
INSERT INTO jos_jforms_parameters VALUES("18","1","13","textbox","1","hash","h06ff");
INSERT INTO jos_jforms_parameters VALUES("19","1","13","textbox","1","lw","107");
INSERT INTO jos_jforms_parameters VALUES("20","1","13","textbox","1","lh","22");
INSERT INTO jos_jforms_parameters VALUES("21","1","13","textbox","1","cw","107");
INSERT INTO jos_jforms_parameters VALUES("22","1","13","textbox","1","ch","22");
INSERT INTO jos_jforms_parameters VALUES("23","1","13","textbox","1","required","1");
INSERT INTO jos_jforms_parameters VALUES("24","1","13","textbox","1","maxLength","100");
INSERT INTO jos_jforms_parameters VALUES("25","1","13","textbox","1","validation","Email");
INSERT INTO jos_jforms_parameters VALUES("26","1","13","textbox","1","altValidation","");
INSERT INTO jos_jforms_parameters VALUES("27","1","13","textbox","1","isUserEmail","1");
INSERT INTO jos_jforms_parameters VALUES("28","1","12","textbox","1","hash","h788e");
INSERT INTO jos_jforms_parameters VALUES("29","1","12","textbox","1","lw","108");
INSERT INTO jos_jforms_parameters VALUES("30","1","12","textbox","1","lh","22");
INSERT INTO jos_jforms_parameters VALUES("31","1","12","textbox","1","cw","108");
INSERT INTO jos_jforms_parameters VALUES("32","1","12","textbox","1","ch","22");
INSERT INTO jos_jforms_parameters VALUES("33","1","12","textbox","1","required","1");
INSERT INTO jos_jforms_parameters VALUES("34","1","12","textbox","1","maxLength","100");
INSERT INTO jos_jforms_parameters VALUES("35","1","12","textbox","1","validation","NoValidation");
INSERT INTO jos_jforms_parameters VALUES("36","1","12","textbox","1","altValidation","");
INSERT INTO jos_jforms_parameters VALUES("37","1","12","textbox","1","isUserEmail","0");
INSERT INTO jos_jforms_parameters VALUES("38","1","14","textbox","1","hash","hbeb4");
INSERT INTO jos_jforms_parameters VALUES("39","1","14","textbox","1","lw","109");
INSERT INTO jos_jforms_parameters VALUES("40","1","14","textbox","1","lh","22");
INSERT INTO jos_jforms_parameters VALUES("41","1","14","textbox","1","cw","109");
INSERT INTO jos_jforms_parameters VALUES("42","1","14","textbox","1","ch","22");
INSERT INTO jos_jforms_parameters VALUES("43","1","14","textbox","1","required","0");
INSERT INTO jos_jforms_parameters VALUES("44","1","14","textbox","1","maxLength","100");
INSERT INTO jos_jforms_parameters VALUES("45","1","14","textbox","1","validation","NoValidation");
INSERT INTO jos_jforms_parameters VALUES("46","1","14","textbox","1","altValidation","");
INSERT INTO jos_jforms_parameters VALUES("47","1","14","textbox","1","isUserEmail","0");
INSERT INTO jos_jforms_parameters VALUES("48","1","15","textbox","1","hash","h86ba");
INSERT INTO jos_jforms_parameters VALUES("49","1","15","textbox","1","lw","111");
INSERT INTO jos_jforms_parameters VALUES("50","1","15","textbox","1","lh","22");
INSERT INTO jos_jforms_parameters VALUES("51","1","15","textbox","1","cw","111");
INSERT INTO jos_jforms_parameters VALUES("52","1","15","textbox","1","ch","22");
INSERT INTO jos_jforms_parameters VALUES("53","1","15","textbox","1","required","0");
INSERT INTO jos_jforms_parameters VALUES("54","1","15","textbox","1","maxLength","50");
INSERT INTO jos_jforms_parameters VALUES("55","1","15","textbox","1","validation","NoValidation");
INSERT INTO jos_jforms_parameters VALUES("56","1","15","textbox","1","altValidation","");
INSERT INTO jos_jforms_parameters VALUES("57","1","15","textbox","1","isUserEmail","0");
INSERT INTO jos_jforms_parameters VALUES("58","1","16","list","1","hash","hf35a");
INSERT INTO jos_jforms_parameters VALUES("59","1","16","list","1","lw","207");
INSERT INTO jos_jforms_parameters VALUES("60","1","16","list","1","lh","34");
INSERT INTO jos_jforms_parameters VALUES("61","1","16","list","1","cw","207");
INSERT INTO jos_jforms_parameters VALUES("62","1","16","list","1","ch","34");
INSERT INTO jos_jforms_parameters VALUES("63","1","16","list","1","required","1");
INSERT INTO jos_jforms_parameters VALUES("64","1","16","list","1","multi","0");
INSERT INTO jos_jforms_parameters VALUES("65","1","16","list","1","commonList","Manual");
INSERT INTO jos_jforms_parameters VALUES("66","1","17","textarea","1","hash","h5567");
INSERT INTO jos_jforms_parameters VALUES("67","1","17","textarea","1","lw","206");
INSERT INTO jos_jforms_parameters VALUES("68","1","17","textarea","1","lh","53");
INSERT INTO jos_jforms_parameters VALUES("69","1","17","textarea","1","cw","206");
INSERT INTO jos_jforms_parameters VALUES("70","1","17","textarea","1","ch","53");
INSERT INTO jos_jforms_parameters VALUES("71","1","17","textarea","1","required","0");
INSERT INTO jos_jforms_parameters VALUES("72","1","17","textarea","1","maxLength","500");
INSERT INTO jos_jforms_parameters VALUES("73","1","17","textarea","1","minLength","10");
INSERT INTO jos_jforms_parameters VALUES("74","1","18","date","1","hash","h68d7");
INSERT INTO jos_jforms_parameters VALUES("75","1","18","date","1","lw","70");
INSERT INTO jos_jforms_parameters VALUES("76","1","18","date","1","lh","16");
INSERT INTO jos_jforms_parameters VALUES("77","1","18","date","1","required","1");
INSERT INTO jos_jforms_parameters VALUES("78","1","18","date","1","startYear","2008");
INSERT INTO jos_jforms_parameters VALUES("79","1","18","date","1","span","10");
INSERT INTO jos_jforms_parameters VALUES("80","1","18","date","1","ospan","");
INSERT INTO jos_jforms_parameters VALUES("81","1","18","date","1","defaultValue","2008-1-1");
INSERT INTO jos_jforms_parameters VALUES("82","1","19","recaptcha","1","hash","h366f");
INSERT INTO jos_jforms_parameters VALUES("83","1","19","recaptcha","1","publickey","");
INSERT INTO jos_jforms_parameters VALUES("84","1","19","recaptcha","1","privatekey","");
INSERT INTO jos_jforms_parameters VALUES("85","1","20","button","1","cw","70");
INSERT INTO jos_jforms_parameters VALUES("86","1","20","button","1","ch","25");
INSERT INTO jos_jforms_parameters VALUES("87","1","20","button","1","hash","h49d2");
INSERT INTO jos_jforms_parameters VALUES("88","1","20","button","1","func","Submit");
INSERT INTO jos_jforms_parameters VALUES("89","1","20","button","1","clickTrigger","");
INSERT INTO jos_jforms_parameters VALUES("90","1","0","Database","0","tableName","b3cb6");
INSERT INTO jos_jforms_parameters VALUES("91","1","0","Database","0","fields","YTo4OntzOjU6ImhkMTlhIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6ImgwNmZmIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6Img3ODhlIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6ImhiZWI0IjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6Img4NmJhIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6ImhmMzVhIjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6MzoiMjU0IjtzOjk6InJlcXVpcmVmcyI7YjowO31zOjU6Img1NTY3IjtPOjg6InN0ZENsYXNzIjozOntzOjQ6InR5cGUiO3M6OToidGV4dGZpZWxkIjtzOjQ6InNpemUiO3M6NToiMTAwMDAiO3M6OToicmVxdWlyZWZzIjtiOjA7fXM6NToiaDY4ZDciO086ODoic3RkQ2xhc3MiOjM6e3M6NDoidHlwZSI7czo5OiJ0ZXh0ZmllbGQiO3M6NDoic2l6ZSI7czozOiIyNTQiO3M6OToicmVxdWlyZWZzIjtiOjA7fX0=");
INSERT INTO jos_jforms_parameters VALUES("92","1","0","Mail","0","SendAdmin","1");
INSERT INTO jos_jforms_parameters VALUES("93","1","0","Mail","0","SendUser","0");
INSERT INTO jos_jforms_parameters VALUES("94","1","0","Mail","0","AdminMail","");
INSERT INTO jos_jforms_parameters VALUES("95","1","0","Mail","0","AdminText","A new entry has been added to {FORM_NAME} and contains the following data {ENTRY_DATA}");
INSERT INTO jos_jforms_parameters VALUES("96","1","0","Mail","0","ConfrimText","Your submission has been successfully received, Thank you");



DROP TABLE jos_jforms_tparameters;

CREATE TABLE `jos_jforms_tparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `plugin_name` varchar(100) NOT NULL,
  `plugin_type` tinyint(4) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `parameter_value` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO jos_jforms_tparameters VALUES("1","1","11","textbox","1","label","Your Name");
INSERT INTO jos_jforms_tparameters VALUES("2","1","11","textbox","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("3","1","13","textbox","1","label","Email Address: ");
INSERT INTO jos_jforms_tparameters VALUES("4","1","13","textbox","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("5","1","12","textbox","1","label","Your Company");
INSERT INTO jos_jforms_tparameters VALUES("6","1","12","textbox","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("7","1","14","textbox","1","label","Website");
INSERT INTO jos_jforms_tparameters VALUES("8","1","14","textbox","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("9","1","15","textbox","1","label","Business Phone:");
INSERT INTO jos_jforms_tparameters VALUES("10","1","15","textbox","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("11","1","16","list","1","label","What project do you want to start with us today?");
INSERT INTO jos_jforms_tparameters VALUES("12","1","16","list","1","elements","Option 1\\nOption 2\\nOption 3");
INSERT INTO jos_jforms_tparameters VALUES("13","1","16","list","1","defaultValue","Option 1");
INSERT INTO jos_jforms_tparameters VALUES("14","1","17","textarea","1","label","Tell us more about your project (specifications such as dimensions, color palette, budget concerns, etc.): ");
INSERT INTO jos_jforms_tparameters VALUES("15","1","17","textarea","1","defaultValue","");
INSERT INTO jos_jforms_tparameters VALUES("16","1","18","date","1","label","Due Date:");
INSERT INTO jos_jforms_tparameters VALUES("17","1","20","button","1","label","Submit");



DROP TABLE jos_joomgallery;

CREATE TABLE `jos_joomgallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `imgtitle` text NOT NULL,
  `imgauthor` varchar(50) DEFAULT NULL,
  `imgtext` text NOT NULL,
  `imgdate` varchar(20) DEFAULT NULL,
  `imgcounter` int(11) NOT NULL DEFAULT '0',
  `imgvotes` int(11) NOT NULL DEFAULT '0',
  `imgvotesum` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `imgfilename` varchar(100) NOT NULL DEFAULT '',
  `imgthumbname` varchar(100) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `useruploaded` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_catid` (`catid`),
  KEY `idx_owner` (`owner`)
) ENGINE=MyISAM AUTO_INCREMENT=654 DEFAULT CHARSET=latin1;

INSERT INTO jos_joomgallery VALUES("1","2","Pica Sign","","","1233190525","18","0","0","1","pica_sign_20090128_1265395166.jpg","pica_sign_20090128_1265395166.jpg","0","62","1","0","13");
INSERT INTO jos_joomgallery VALUES("2","2","Belfast","","","1233192198","14","0","0","1","belfast_20090128_1688699675.jpg","belfast_20090128_1688699675.jpg","0","62","1","0","290");
INSERT INTO jos_joomgallery VALUES("3","2","Belfast","","","1233192198","15","0","0","1","belfast_20090128_1583966986.jpg","belfast_20090128_1583966986.jpg","0","62","1","0","293");
INSERT INTO jos_joomgallery VALUES("4","2","Belfast","","","1233192198","14","0","0","1","belfast_20090128_1351971742.jpg","belfast_20090128_1351971742.jpg","0","62","1","0","307");
INSERT INTO jos_joomgallery VALUES("5","2","Belfast","","","1233192198","14","0","0","1","belfast_20090128_1131294986.jpg","belfast_20090128_1131294986.jpg","0","62","1","0","310");
INSERT INTO jos_joomgallery VALUES("6","2","Belfast","","","1233192198","14","0","0","1","belfast_20090128_1824456565.jpg","belfast_20090128_1824456565.jpg","0","62","1","0","316");
INSERT INTO jos_joomgallery VALUES("7","2","Belfast","","","1233192199","14","0","0","1","belfast_20090128_1298667926.jpg","belfast_20090128_1298667926.jpg","0","62","1","0","318");
INSERT INTO jos_joomgallery VALUES("8","2","Belfast","","","1233192199","14","0","0","1","belfast_20090128_1633460620.jpg","belfast_20090128_1633460620.jpg","0","62","1","0","321");
INSERT INTO jos_joomgallery VALUES("9","2","Belfast","","","1233192199","14","0","0","1","belfast_20090128_1212403260.jpg","belfast_20090128_1212403260.jpg","0","62","1","0","334");
INSERT INTO jos_joomgallery VALUES("10","2","Belfast","","","1233192199","14","0","0","1","belfast_20090128_1959396019.jpg","belfast_20090128_1959396019.jpg","0","62","1","0","335");
INSERT INTO jos_joomgallery VALUES("11","2","Belfast","","","1233192199","15","0","0","1","belfast_20090128_1813850785.jpg","belfast_20090128_1813850785.jpg","0","62","1","0","336");
INSERT INTO jos_joomgallery VALUES("12","2","Pica Studio","","","1233259040","14","0","0","1","pica_studio_20090129_1759323631.jpg","pica_studio_20090129_1759323631.jpg","0","62","1","0","337");
INSERT INTO jos_joomgallery VALUES("13","2","Pica Studio","","","1233259040","14","0","0","1","pica_studio_20090129_1260953449.jpg","pica_studio_20090129_1260953449.jpg","0","62","1","0","340");
INSERT INTO jos_joomgallery VALUES("14","2","Pica Studio","","","1233259041","17","0","0","1","pica_studio_20090129_1973976053.jpg","pica_studio_20090129_1973976053.jpg","0","62","1","0","342");
INSERT INTO jos_joomgallery VALUES("15","2","Pica Studio","","","1233259041","14","0","0","1","pica_studio_20090129_1927794587.jpg","pica_studio_20090129_1927794587.jpg","0","62","1","0","344");
INSERT INTO jos_joomgallery VALUES("16","2","Pica Studio","","","1233259041","16","0","0","1","pica_studio_20090129_1583895906.jpg","pica_studio_20090129_1583895906.jpg","0","62","1","0","347");
INSERT INTO jos_joomgallery VALUES("17","2","Pica Studio","","","1233259041","14","0","0","1","pica_studio_20090129_1269161652.jpg","pica_studio_20090129_1269161652.jpg","0","62","1","0","349");
INSERT INTO jos_joomgallery VALUES("18","2","Pica Studio","","","1233259041","14","0","0","1","pica_studio_20090129_1411130354.jpg","pica_studio_20090129_1411130354.jpg","0","62","1","0","351");
INSERT INTO jos_joomgallery VALUES("19","2","Pica Studio","","","1233259041","15","0","0","1","pica_studio_20090129_1182672208.jpg","pica_studio_20090129_1182672208.jpg","0","62","1","0","353");
INSERT INTO jos_joomgallery VALUES("20","2","The Editor","","<br>","1233259042","16","0","0","1","pica_studio_20090129_1180411247.jpg","pica_studio_20090129_1180411247.jpg","0","62","1","0","357");
INSERT INTO jos_joomgallery VALUES("21","2","The Creative Director","","<br>","1233259042","14","0","0","1","pica_studio_20090129_1464514229.jpg","pica_studio_20090129_1464514229.jpg","0","62","1","0","359");
INSERT INTO jos_joomgallery VALUES("22","2","Pica Studio","","","1233259360","0","0","0","0","pica_studio_20090129_1942544430.jpg","pica_studio_20090129_1942544430.jpg","0","62","1","0","365");
INSERT INTO jos_joomgallery VALUES("23","2","Pica Studio","","","1233259361","0","0","0","0","pica_studio_20090129_1678226215.jpg","pica_studio_20090129_1678226215.jpg","0","62","1","0","372");
INSERT INTO jos_joomgallery VALUES("24","2","Micah","","<br>","1233259361","14","0","0","1","pica_studio_20090129_1768923767.jpg","pica_studio_20090129_1768923767.jpg","0","62","1","0","373");
INSERT INTO jos_joomgallery VALUES("25","2","Micah at Work","","<br>","1233259361","15","0","0","1","pica_studio_20090129_1551208473.jpg","pica_studio_20090129_1551208473.jpg","0","62","1","0","374");
INSERT INTO jos_joomgallery VALUES("26","2","Reuben at Work","","<br>","1233259361","17","0","0","1","pica_studio_20090129_1481413779.jpg","pica_studio_20090129_1481413779.jpg","0","62","1","0","375");
INSERT INTO jos_joomgallery VALUES("27","2","The Office ","","<br>","1233259361","14","0","0","1","pica_studio_20090129_1399596759.jpg","pica_studio_20090129_1399596759.jpg","0","62","1","0","377");
INSERT INTO jos_joomgallery VALUES("28","2","Reuben at Work","","<br>","1233259362","15","0","0","1","pica_studio_20090129_1922202932.jpg","pica_studio_20090129_1922202932.jpg","0","62","1","0","378");
INSERT INTO jos_joomgallery VALUES("29","2","The Office","","<br>","1233259362","14","0","0","1","pica_studio_20090129_1305522623.jpg","pica_studio_20090129_1305522623.jpg","0","62","1","0","379");
INSERT INTO jos_joomgallery VALUES("30","2","Micah","","<br>","1233259362","14","0","0","1","pica_studio_20090129_1892345591.jpg","pica_studio_20090129_1892345591.jpg","0","62","1","0","381");
INSERT INTO jos_joomgallery VALUES("31","2","Pica Studio","","","1233259362","0","0","0","0","pica_studio_20090129_1551681506.jpg","pica_studio_20090129_1551681506.jpg","0","62","1","0","383");
INSERT INTO jos_joomgallery VALUES("32","2","Micah and Spidey","","<br>","1233259557","15","0","0","1","pica_studio_20090129_1663554653.jpg","pica_studio_20090129_1663554653.jpg","0","62","1","0","384");
INSERT INTO jos_joomgallery VALUES("33","2","Around the Studio","","<br>","1233259557","15","0","0","1","pica_studio_20090129_1172559799.jpg","pica_studio_20090129_1172559799.jpg","0","62","1","0","385");
INSERT INTO jos_joomgallery VALUES("34","2","Playing Badminton at the Pica Barbecue","","<br>","1233259557","15","0","0","1","pica_studio_20090129_1167559823.jpg","pica_studio_20090129_1167559823.jpg","0","62","1","0","386");
INSERT INTO jos_joomgallery VALUES("35","2","The Conference Room","","<br>","1233259557","15","0","0","1","pica_studio_20090129_1099924422.jpg","pica_studio_20090129_1099924422.jpg","0","62","1","0","387");
INSERT INTO jos_joomgallery VALUES("36","2","Reuben","","<br>","1233259558","14","0","0","1","pica_studio_20090129_1652941398.jpg","pica_studio_20090129_1652941398.jpg","0","62","1","0","388");
INSERT INTO jos_joomgallery VALUES("37","2","Rob and the Pencils","","<br>","1233259558","14","0","0","1","pica_studio_20090129_1554664127.jpg","pica_studio_20090129_1554664127.jpg","0","62","1","0","389");
INSERT INTO jos_joomgallery VALUES("38","2","The Red Couch","","<br>","1233259558","14","0","0","1","pica_studio_20090129_1706080977.jpg","pica_studio_20090129_1706080977.jpg","0","62","1","0","390");
INSERT INTO jos_joomgallery VALUES("39","2","Getting Ice Cream","","<br>","1233259558","15","0","0","1","pica_studio_20090129_1696346257.jpg","pica_studio_20090129_1696346257.jpg","0","62","1","0","391");
INSERT INTO jos_joomgallery VALUES("40","0","","","","1233698039","0","0","0","1","_20090203_1399933346.jpg","_20090203_1399933346.jpg","0","62","1","0","251");
INSERT INTO jos_joomgallery VALUES("41","0","","","","1233698039","0","0","0","1","_20090203_1157392208.jpg","_20090203_1157392208.jpg","0","62","1","0","204");
INSERT INTO jos_joomgallery VALUES("42","0","","","","1233698039","1","0","0","1","_20090203_1311499567.jpg","_20090203_1311499567.jpg","0","62","1","0","259");
INSERT INTO jos_joomgallery VALUES("43","0","","","","1233698039","0","0","0","1","_20090203_1844807778.jpg","_20090203_1844807778.jpg","0","62","1","0","258");
INSERT INTO jos_joomgallery VALUES("44","0","","","","1233698040","0","0","0","1","_20090203_1932227935.jpg","_20090203_1932227935.jpg","0","62","1","0","256");
INSERT INTO jos_joomgallery VALUES("45","0","","","","1233698040","0","0","0","1","_20090203_1204968539.jpg","_20090203_1204968539.jpg","0","62","1","0","254");
INSERT INTO jos_joomgallery VALUES("46","0","","","","1233698040","0","0","0","1","_20090203_1088540792.jpg","_20090203_1088540792.jpg","0","62","1","0","249");
INSERT INTO jos_joomgallery VALUES("47","0","","","","1233698040","0","0","0","1","_20090203_1347439378.jpg","_20090203_1347439378.jpg","0","62","1","0","245");
INSERT INTO jos_joomgallery VALUES("101","5","Marketing Collateral","Jaret & Cohn","A new set of property management services prompted Jaret &amp; Cohn to initiate a new communications and marketing campaign. The company wanted to conserve budget dollars by using an existing folder; they also needed to elevate the presence and organization of their combined sales materials. We developed a tiered design for each of their information sheets, so that sales personnel could customize information packets according to their needs.","1233949928","270","0","0","1","p_20090206_1253430528.jpg","p_20090206_1253430528.jpg","0","62","1","0","301");
INSERT INTO jos_joomgallery VALUES("102","23","Juice 1.0 Conference Flyer ","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1233949928","134","0","0","1","p_20090206_1237365754.jpg","p_20090206_1237365754.jpg","0","62","1","0","114");
INSERT INTO jos_joomgallery VALUES("103","22","Corporate Collateral","Knox Machine Company","Pica Design created a corporate brochure for this custom manufacturing and precision machining company located in Warren, Maine. The company then came to us to design their corporate collateral and website.","1233949928","133","0","0","1","p_20090206_1496107396.jpg","p_20090206_1496107396.jpg","0","62","1","0","116");
INSERT INTO jos_joomgallery VALUES("104","21","Brochure","Belfast Cohousing & Ecovillage","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization. ","1233949928","34","0","0","0","p_20090206_1111176080.jpg","p_20090206_1111176080.jpg","0","62","1","0","24");
INSERT INTO jos_joomgallery VALUES("106","20","Promotional Collateral","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1233949929","147","0","0","1","p_20090206_1274665630.jpg","p_20090206_1274665630.jpg","0","62","1","0","30");
INSERT INTO jos_joomgallery VALUES("107","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1233949929","152","0","0","1","p_20090206_1361066331.jpg","p_20090206_1361066331.jpg","0","62","1","0","203");
INSERT INTO jos_joomgallery VALUES("86","14","Business Collateral","Pinchy, Inc.","When 3 Tides was Belfast\'s new waterfront cocktail &amp; tapas bar, David and Sarah came to us to design the new business identity, collateral, signage and web site. Since creating their original business logo ID, we have developed advertising and additional logo identities for two new businesses: their brewery, Marshall Wharf Brewing Company, and Ship to Shore, their waterfront store which provides goods and services to boats in the Harbor.","1233948501","184","0","0","1","p_20090206_1115707522.jpg","p_20090206_1115707522.jpg","0","62","1","0","171");
INSERT INTO jos_joomgallery VALUES("90","19","Product Catalogs","Blue Jacket Shipcrafters, Inc.","Early in Pica Design history, we did our first project with Blue Jacket Shipcrafters, creating a new layout for the catalog to improve information design and simplify product ordering. Since then, we have refreshed the design of the catalog and its cover in various ways.","1233948501","145","0","0","1","p_20090206_1870431322.jpg","p_20090206_1870431322.jpg","0","62","1","0","312");
INSERT INTO jos_joomgallery VALUES("92","16","Direct Mail Promotion","Bluestreak","Launching super-fast services in midcoast Maine, this local ISP wanted to grab the attention of Internet users in Belfast. We created a unique, customizable marketing campaign for Bluestreak and executed the campaign--from conception through design, illustration, media planning and direct mailing. Materials included direct-to-consumer promotions, poster advertising, direct mail and follow-up newspaper advertising.","1233948502","144","0","0","1","p_20090206_1929982766.jpg","p_20090206_1929982766.jpg","0","62","1","0","9");
INSERT INTO jos_joomgallery VALUES("93","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1233948502","337","0","0","1","p_20090206_1747879002.jpg","p_20090206_1747879002.jpg","0","62","1","0","325");
INSERT INTO jos_joomgallery VALUES("95","15","The Bottles Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1233948502","302","0","0","1","p_20090206_1074254028.jpg","p_20090206_1074254028.jpg","0","62","1","0","194");
INSERT INTO jos_joomgallery VALUES("169","17","Annual Guides","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1236706830","120","0","0","1","bacc_20090310_1663628017.jpg","bacc_20090310_1663628017.jpg","0","62","1","0","306");
INSERT INTO jos_joomgallery VALUES("98","24","Sales Collateral","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry Collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, and marketing and sales collateral for the 2:Blue and other jewelry collections.","1233949927","13","0","0","0","p_20090206_2088129448.jpg","p_20090206_2088129448.jpg","0","62","1","0","272");
INSERT INTO jos_joomgallery VALUES("99","47","FitsAll Filter Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1233949927","478","0","0","1","p_20090206_1735703074.jpg","p_20090206_1735703074.jpg","0","62","1","0","279");
INSERT INTO jos_joomgallery VALUES("100","6","Product Catalog","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"http://www.picadesign.com/work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1233949928","252","0","0","1","p_20090206_1101331574.jpg","p_20090206_1101331574.jpg","0","62","1","0","33");
INSERT INTO jos_joomgallery VALUES("96","18","Collateral","Belfast Free Library","In 2003, Pica Design created a new logo ID for the Belfast Free Library. With the new addition to the Library complete, we photographed the building and created the new logo from that image. We then created graphics for new library cards and other collateral, and we continue to update the Libraryís fundraising package annually.","1233949323","1","0","0","0","belfast_free_library_collateral_20090206_1462110906.jpg","belfast_free_library_collateral_20090206_1462110906.jpg","0","62","1","0","265");
INSERT INTO jos_joomgallery VALUES("108","11","Ergosleek Direct Mail","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1233957013","263","0","0","1","pen_again_promotional_card_20090206_2052950602.jpg","pen_again_promotional_card_20090206_2052950602.jpg","0","62","1","0","219");
INSERT INTO jos_joomgallery VALUES("109","2","Around Belfast","","","1234199918","14","0","0","1","around_belfast_20090209_1682496075.jpg","around_belfast_20090209_1682496075.jpg","0","62","1","0","392");
INSERT INTO jos_joomgallery VALUES("110","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1425886564.jpg","around_belfast_20090209_1425886564.jpg","0","62","1","0","393");
INSERT INTO jos_joomgallery VALUES("111","2","Around Belfast","","","1234199919","15","0","0","1","around_belfast_20090209_1567768032.jpg","around_belfast_20090209_1567768032.jpg","0","62","1","0","394");
INSERT INTO jos_joomgallery VALUES("112","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1837198227.jpg","around_belfast_20090209_1837198227.jpg","0","62","1","0","395");
INSERT INTO jos_joomgallery VALUES("113","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1203969587.jpg","around_belfast_20090209_1203969587.jpg","0","62","1","0","396");
INSERT INTO jos_joomgallery VALUES("114","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1940261570.jpg","around_belfast_20090209_1940261570.jpg","0","62","1","0","397");
INSERT INTO jos_joomgallery VALUES("115","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1655823102.jpg","around_belfast_20090209_1655823102.jpg","0","62","1","0","398");
INSERT INTO jos_joomgallery VALUES("116","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_1814390187.jpg","around_belfast_20090209_1814390187.jpg","0","62","1","0","399");
INSERT INTO jos_joomgallery VALUES("117","2","Around Belfast","","","1234199919","14","0","0","1","around_belfast_20090209_2081740779.jpg","around_belfast_20090209_2081740779.jpg","0","62","1","0","400");
INSERT INTO jos_joomgallery VALUES("118","2","Around Belfast","","","1234199920","14","0","0","1","around_belfast_20090209_1929927098.jpg","around_belfast_20090209_1929927098.jpg","0","62","1","0","401");
INSERT INTO jos_joomgallery VALUES("119","2","Around Belfast","","","1234201802","14","0","0","1","around_belfast_20090209_1358772268.jpg","around_belfast_20090209_1358772268.jpg","0","62","1","0","402");
INSERT INTO jos_joomgallery VALUES("120","2","Around Belfast","","","1234201802","14","0","0","1","around_belfast_20090209_1075246763.jpg","around_belfast_20090209_1075246763.jpg","0","62","1","0","403");
INSERT INTO jos_joomgallery VALUES("124","13","Brand & Identity","American Transformation","Timothy Rexford Wilson\'s 2004 presidential campaign was built on his vision of \"Liberty and Justice for All.\" Pica Design created a branding campaign starting with the American Transformation logo and collateral, and extending to a website and book, \"American Transformation: How One Man\'s Journey Turned into a Campaign for the U.S. Presidency.\"","1234306233","100","0","0","1","american_transformation_20090210_1099500877.jpg","american_transformation_20090210_1099500877.jpg","0","62","1","0","127");
INSERT INTO jos_joomgallery VALUES("127","13","Business Card","American Transformation","Timothy Rexford Wilson\'s 2004 presidential campaign was built on his vision of \"Liberty and Justice for All.\" Pica Design created a branding campaign starting with the American Transformation logo and collateral, and extending to a website and book, \"American Transformation: How One Man\'s Journey Turned into a Campaign for the U.S. Presidency.\"","1234306233","88","0","0","1","american_transformation_20090210_1303772215.jpg","american_transformation_20090210_1303772215.jpg","0","62","1","0","174");
INSERT INTO jos_joomgallery VALUES("130","27","Print Advertising","Bruce Laukka, Inc.","This well-respected veteran building company came to Pica Design with great ideas for a brand-new web presence, with interactive map and photo gallery. We designed and programmed the new site, brought it online, and then went on to create new advertising to dovetail with their new image.","1234306392","264","0","0","1","bruce_laukka_inc_20090210_1239344381.jpg","bruce_laukka_inc_20090210_1239344381.jpg","0","62","1","0","211");
INSERT INTO jos_joomgallery VALUES("135","27","Website","Bruce Laukka, Inc.","This well-respected veteran building company came to Pica Design with great ideas for a brand-new web presence, with interactive map and photo gallery. We designed and programmed the new site, brought it online, and then went on to create new advertising to dovetail with their new image. <a target=\"_blank\" href=\"http://www.brucelaukkainc.com/\">Visit the site here.</a>","1234306393","12","0","0","0","bruce_laukka_inc_20090210_1668413720.jpg","bruce_laukka_inc_20090210_1668413720.jpg","0","62","1","0","193");
INSERT INTO jos_joomgallery VALUES("136","16","Direct Mail Promotion","Bluestreak","Launching super-fast services in midcoast Maine, this local ISP wanted to grab the attention of Internet users in Belfast. We created a unique, customizable marketing campaign for Bluestreak and executed the campaign--from conception through design, illustration, media planning and direct mailing. Materials included direct-to-consumer promotions, poster advertising, direct mail and follow-up newspaper advertising.","1234306420","109","0","0","1","bluestreak_20090210_1327041193.jpg","bluestreak_20090210_1327041193.jpg","0","62","1","0","16");
INSERT INTO jos_joomgallery VALUES("139","8","Website","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholmís cabins and on their garden paths. The result is an effective website lush with photography and greater business potential. <a target=\"_blank\" href=\"http://www.cedarholm.com/\">Visit the site here.</a>","1234306446","315","0","0","1","website_20090210_1594713260.jpg","website_20090210_1594713260.jpg","0","62","1","0","262");
INSERT INTO jos_joomgallery VALUES("532","46","Unity Foundation Brand & Identity","Unity Foundation","The mission of Jumpstart Our Youth is to revolutionize youth philanthropy in Maine by building and strengthening communities through youth leadership in philanthropy and community service. Unity Foundation came to Pica Design to create the organization&rsquo;s logo identity. We have also created promotional materials for JOY, and re-created the Unity Foundation logo since we began working together in 2008.","1242156320","68","0","0","1","unity_foundation_brand__identity_20090512_1645460894.jpg","unity_foundation_brand__identity_20090512_1645460894.jpg","0","62","1","0","201");
INSERT INTO jos_joomgallery VALUES("145","10","Print Advertising","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1234306513","130","0","0","1","various_collateral_20090210_1147554197.jpg","various_collateral_20090210_1147554197.jpg","0","62","1","0","338");
INSERT INTO jos_joomgallery VALUES("146","10","Product Brochures","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1234306513","266","0","0","1","various_collateral_20090210_1890709040.jpg","various_collateral_20090210_1890709040.jpg","0","62","1","0","341");
INSERT INTO jos_joomgallery VALUES("481","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guild&rsquo;s annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1241037724","240","0","0","1","promotional_collateral_20090429_1833692354.jpg","promotional_collateral_20090429_1833692354.jpg","0","67","1","0","235");
INSERT INTO jos_joomgallery VALUES("154","9","EMC WebsIte","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies. <a target=\"_blank\" href=\"http://emcenter.org/\">Visit the site here.</a>","1234306823","90","0","0","1","green_mountain_environmental_resources_20090210_1824203623.jpg","green_mountain_environmental_resources_20090210_1824203623.jpg","0","62","1","0","63");
INSERT INTO jos_joomgallery VALUES("156","9","EMC Brochure","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies.","1234306823","102","0","0","1","green_mountain_environmental_resources_20090210_1003925289.jpg","green_mountain_environmental_resources_20090210_1003925289.jpg","0","62","1","0","46");
INSERT INTO jos_joomgallery VALUES("202","39","Wallet Notes Refill Package","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1236713678","290","0","0","1","pico_pad_20090310_1090660469.jpg","pico_pad_20090310_1090660469.jpg","0","62","1","0","195");
INSERT INTO jos_joomgallery VALUES("159","15","Print Advertising","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","23","0","0","0","guyot_20090210_1468068074.jpg","guyot_20090210_1468068074.jpg","0","62","1","0","205");
INSERT INTO jos_joomgallery VALUES("160","15","Product Catalog","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","185","0","0","0","guyot_20090210_1373195623.jpg","guyot_20090210_1373195623.jpg","0","62","1","0","210");
INSERT INTO jos_joomgallery VALUES("161","15","Firefly Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","136","0","0","1","guyot_20090210_1475567290.jpg","guyot_20090210_1475567290.jpg","0","62","1","0","223");
INSERT INTO jos_joomgallery VALUES("162","15","The Lid Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","105","0","0","1","guyot_20090210_1570561234.jpg","guyot_20090210_1570561234.jpg","0","62","1","0","230");
INSERT INTO jos_joomgallery VALUES("163","15","Utensils Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","97","0","0","1","guyot_20090210_1343065566.jpg","guyot_20090210_1343065566.jpg","0","62","1","0","242");
INSERT INTO jos_joomgallery VALUES("165","15","Gription Package Re-Design","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306917","8","0","0","0","guyot_20090210_1848077187.jpg","guyot_20090210_1848077187.jpg","0","62","1","0","246");
INSERT INTO jos_joomgallery VALUES("167","15","Splashguard Packaging Update","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1234306918","13","0","0","0","guyot_20090210_1257101188.jpg","guyot_20090210_1257101188.jpg","0","62","1","0","248");
INSERT INTO jos_joomgallery VALUES("171","17","Annual Guides","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1236707236","79","0","0","1","bacc_20090310_1369453146.jpg","bacc_20090310_1369453146.jpg","0","62","1","0","309");
INSERT INTO jos_joomgallery VALUES("172","17","Annual Guides","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1236707236","1","0","0","0","bacc_20090310_1039297850.jpg","bacc_20090310_1039297850.jpg","0","62","1","0","315");
INSERT INTO jos_joomgallery VALUES("173","17","2008 Annual Guide","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1236707236","0","0","0","0","bacc_20090310_1991760712.jpg","bacc_20090310_1991760712.jpg","0","62","1","0","319");
INSERT INTO jos_joomgallery VALUES("174","17","Annual Guides","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1236707236","80","0","0","1","bacc_20090310_2092759213.jpg","bacc_20090310_2092759213.jpg","0","62","1","0","323");
INSERT INTO jos_joomgallery VALUES("203","39","Wallet Notes Refill Package (Inside)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1236713678","96","0","0","1","pico_pad_20090310_1823486067.jpg","pico_pad_20090310_1823486067.jpg","0","62","1","0","217");
INSERT INTO jos_joomgallery VALUES("182","12","Annual Report","Blue Hill Memorial Hospital","For many years, Blue Hill Memorial Hospitalís Annual Report was ably produced by the Community Relations and Marketing Department. In 2008, staff responsibilities were too great to keep the work in-house, and the administration decided to seek quotations from design companies to create the new Report. Pica Design was awarded the project based on client referrals, our annual report portfolio and expertise, and our proximity.","1236708942","277","0","0","1","annual_report_20090310_1871933753.jpg","annual_report_20090310_1871933753.jpg","0","62","1","0","182");
INSERT INTO jos_joomgallery VALUES("188","19","Centennial Catalog","Blue Jacket Shipcrafters, Inc.","Early in Pica Design history, we did our first project with Blue Jacket Shipcrafters, creating a new layout for the catalog to improve information design and simplify product ordering. Since then, we have refreshed the design of the catalog and its cover in various ways.","1236710819","3","0","0","0","bluejacket_catalogs_20090310_1242669775.jpg","bluejacket_catalogs_20090310_1242669775.jpg","0","62","1","0","330");
INSERT INTO jos_joomgallery VALUES("189","28","Brand & Identity","Glen Cove Dental Associates","A strong company vision motivated Glen Cove Dental Associates to develop a fresh identity and collateral package. Their new image brands them as the friendly, family- and service-oriented dental practice that their loyal customers know them to be. Their new website will be in development in the spring of 2009.","1236711157","143","0","0","1","glen_cove_dental_association_identity_20090310_1875900271.jpg","glen_cove_dental_association_identity_20090310_1875900271.jpg","0","62","1","0","165");
INSERT INTO jos_joomgallery VALUES("201","20","2008 Season Program","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1236712002","93","0","0","1","belfast_maskers_poster_20090310_1906471427.jpg","belfast_maskers_poster_20090310_1906471427.jpg","0","62","1","0","44");
INSERT INTO jos_joomgallery VALUES("431","11","PenAgain Product Catalog","Pacific Writing Instruments, Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1239130664","79","0","0","1","penagain_product_catalog_20090407_1600142490.jpg","penagain_product_catalog_20090407_1600142490.jpg","0","62","1","0","250");
INSERT INTO jos_joomgallery VALUES("207","39","Emergency Notes Package (Front)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1236713678","91","0","0","1","pico_pad_20090310_1481825684.jpg","pico_pad_20090310_1481825684.jpg","0","62","1","0","226");
INSERT INTO jos_joomgallery VALUES("212","24","Jewelry Collection Catalog","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1236714628","129","0","0","1","hot_diamonds_20090310_1387596796.jpg","hot_diamonds_20090310_1387596796.jpg","0","62","1","0","296");
INSERT INTO jos_joomgallery VALUES("218","29","Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1236715299","42","0","0","0","houses_and_cottages_20090310_1884941355.jpg","houses_and_cottages_20090310_1884941355.jpg","0","62","1","0","34");
INSERT INTO jos_joomgallery VALUES("219","29","Business Card","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1236715299","98","0","0","1","houses_and_cottages_20090310_1132593567.jpg","houses_and_cottages_20090310_1132593567.jpg","0","62","1","0","18");
INSERT INTO jos_joomgallery VALUES("220","29","Brand & Identity","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1236715299","94","0","0","1","houses_and_cottages_20090310_1472777231.jpg","houses_and_cottages_20090310_1472777231.jpg","0","62","1","0","6");
INSERT INTO jos_joomgallery VALUES("223","29","Website","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery. <a target=\"_blank\" href=\"http://www.housesandcottages.com/\">Visit the site here.</a>","1236715299","288","0","0","1","houses_and_cottages_20090310_1461475008.jpg","houses_and_cottages_20090310_1461475008.jpg","0","62","1","0","83");
INSERT INTO jos_joomgallery VALUES("232","23","Juice 1.0 Conference Totebags","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","92","0","0","1","juice_conference_20090310_1952844178.jpg","juice_conference_20090310_1952844178.jpg","0","62","1","0","122");
INSERT INTO jos_joomgallery VALUES("233","23","Juice 1.0 Conference Signage","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","107","0","0","1","juice_conference_20090310_1652398217.jpg","juice_conference_20090310_1652398217.jpg","0","62","1","0","129");
INSERT INTO jos_joomgallery VALUES("234","23","Juice 1.0 Conference Labels","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","26","0","0","0","juice_conference_20090310_1222116299.jpg","juice_conference_20090310_1222116299.jpg","0","62","1","0","134");
INSERT INTO jos_joomgallery VALUES("235","23","Juice 1.0 Conference Signage","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","73","0","0","1","juice_conference_20090310_1388924680.jpg","juice_conference_20090310_1388924680.jpg","0","62","1","0","139");
INSERT INTO jos_joomgallery VALUES("236","23","Juice 1.0 Conference Signage","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","81","0","0","1","juice_conference_20090310_1660479385.jpg","juice_conference_20090310_1660479385.jpg","0","62","1","0","142");
INSERT INTO jos_joomgallery VALUES("237","23","Juice 1.0 Conference Program","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1236717369","79","0","0","1","juice_conference_20090310_1583173720.jpg","juice_conference_20090310_1583173720.jpg","0","62","1","0","145");
INSERT INTO jos_joomgallery VALUES("240","25","Business Development Booklet","Coastal Enterprises Inc.","CEI is a private, non-profit community development corporation founded to create social and economic opportunities for people, businesses and communities of Maine. Pica Design created a business development promotional booklet for the Lincoln County Economic Development Office, which has a contract partnership with Coastal Enterprises, Inc. Subsequently, we created for CEI the Coastal Access brochure, <span style=\"font-size: 10pt;\"><span class=\"Apple-style-span\" style=\"font-style: italic;\">Child Care Solutions for Businesses</span>.</span>","1236718193","125","0","0","1","lincoln_county_20090310_1107058387.jpg","lincoln_county_20090310_1107058387.jpg","0","62","1","0","326");
INSERT INTO jos_joomgallery VALUES("241","21","Brochure","Belfast Cohousing & Ecovillage ","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1236718587","29","0","0","0","maine_cohousing_brochure_20090310_1500505871.jpg","maine_cohousing_brochure_20090310_1500505871.jpg","0","62","1","0","113");
INSERT INTO jos_joomgallery VALUES("242","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1236719164","10","0","0","0","maine_crafts_guild_brochure_20090310_1528400420.jpg","maine_crafts_guild_brochure_20090310_1528400420.jpg","0","62","1","0","215");
INSERT INTO jos_joomgallery VALUES("247","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1236719165","7","0","0","0","maine_crafts_guild_brochure_20090310_2044898933.jpg","maine_crafts_guild_brochure_20090310_2044898933.jpg","0","62","1","0","222");
INSERT INTO jos_joomgallery VALUES("249","33","Banquet Program","Maine Medical Association","The Maine Medical Association came to Pica Design to create the event program for their annual banquet at the Samoset Resort.","1236719351","198","0","0","1","maine_medical_association_banquet_20090310_1312452821.jpg","maine_medical_association_banquet_20090310_1312452821.jpg","0","62","1","0","280");
INSERT INTO jos_joomgallery VALUES("253","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1236719586","142","0","0","1","maine_windjammer_association_20090310_1061768721.jpg","maine_windjammer_association_20090310_1061768721.jpg","0","62","1","0","53");
INSERT INTO jos_joomgallery VALUES("498","56","Brand & Identity","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis.","1241472118","272","0","0","1","brand__identity_20090504_1860488069.jpg","brand__identity_20090504_1860488069.jpg","0","67","1","0","162");
INSERT INTO jos_joomgallery VALUES("257","34","Monroe Salt Works Advertising","Monroe Salt Works","Incorporating new photography, Pica created a new ad template for Monroe Salt Works to use for various ad placements in trade and consumer publications.","1236719680","301","0","0","1","monroe_saltworks_ad_20090310_1636415083.jpg","monroe_saltworks_ad_20090310_1636415083.jpg","0","62","1","0","268");
INSERT INTO jos_joomgallery VALUES("258","37","Website","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the companyís logo ID, collateral and web site to highlight the companyís services and benefits of partnership. <a target=\"_blank\" href=\"http://www.neadv.com/\">Visit the site here.</a>","1236720000","152","0","0","1","northeastern_advisory_group_20090310_1268325154.jpg","northeastern_advisory_group_20090310_1268325154.jpg","0","62","1","0","221");
INSERT INTO jos_joomgallery VALUES("482","25","Business Development Booklet","Coastal Enterprises Inc.","CEI is a private, non-profit community development corporation founded to create social and economic opportunities for people, businesses and communities of Maine. Pica Design created a business development promotional booklet for the Lincoln County Economic Development Office, which has a contract partnership with Coastal Enterprises, Inc. Subsequently, we created for CEI the Coastal Access brochure, <em>Child Care Solutions for Businesses.</em>","1241038693","211","0","0","1","business_development_booklet_20090429_1591904584.jpg","business_development_booklet_20090429_1591904584.jpg","0","67","1","0","329");
INSERT INTO jos_joomgallery VALUES("261","37","Corporate Collateral","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the companyís logo ID, collateral and web site to highlight the companyís services and benefits of partnership.","1236720000","3","0","0","0","northeastern_advisory_group_20090310_1427791549.jpg","northeastern_advisory_group_20090310_1427791549.jpg","0","62","1","0","236");
INSERT INTO jos_joomgallery VALUES("496","28","Brand & Identity","Glen Cove Dental Associates","A strong company vision motivated Glen Cove Dental Associates to develop a fresh identity and collateral package. Their new image brands them as the friendly, family- and service-oriented dental practice that their loyal customers know them to be. Their new website will be in development in the spring of 2009.","1241205985","235","0","0","1","brand__identity_20090501_1365146721.jpg","brand__identity_20090501_1365146721.jpg","0","67","1","0","190");
INSERT INTO jos_joomgallery VALUES("266","38","Product Label","Peace Preserves","Launching a new fundraising productóPeace PreservesóCathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1236720241","195","0","0","1","peace_preserves_20090310_1028112653.jpg","peace_preserves_20090310_1028112653.jpg","0","62","1","0","159");
INSERT INTO jos_joomgallery VALUES("269","41","Company Brochure","Parker Ridge","Parker Ridgeóa residential community in Blue Hill, Maineóoffers retirement living on beautiful parkland acreage in view of Blue Hill Bay. Their advertising and marketing plans, tied to advancement goals, necessitated a new advertising campaign and new brochure. We crafted the ad campaign and brochure with new imagery from 2 Pica-led photo sessions, showing the community in action, and improving messaging to evoke a vivid sense of place, people and community. The campaignís goalóto connect potential Parker Ridge residents to the greater Blue Hill Peninsula communityówas achieved as their sales target of 100% occupancy was accomplished ahead of schedule. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1236721357","35","0","0","0","parker_ridge_20090310_1604347294.jpg","parker_ridge_20090310_1604347294.jpg","0","62","1","0","196");
INSERT INTO jos_joomgallery VALUES("270","41","Company Brochure","Parker Ridge","Parker Ridgeóa residential community in Blue Hill, Maineóoffers retirement living on beautiful parkland acreage in view of Blue Hill Bay. Their advertising and marketing plans, tied to advancement goals, necessitated a new advertising campaign and new brochure. We crafted the ad campaign and brochure with new imagery from 2 Pica-led photo sessions, showing the community in action, and improving messaging to evoke a vivid sense of place, people and community. The campaignís goalóto connect potential Parker Ridge residents to the greater Blue Hill Peninsula communityówas achieved as their sales target of 100% occupancy was accomplished ahead of schedule. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1236721357","221","0","0","1","parker_ridge_20090310_1414258504.jpg","parker_ridge_20090310_1414258504.jpg","0","62","1","0","202");
INSERT INTO jos_joomgallery VALUES("273","40","Brochure & Map 2008","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1236721847","135","0","0","1","penobscot_marine_museum_20090310_1709963876.jpg","penobscot_marine_museum_20090310_1709963876.jpg","0","62","1","0","143");
INSERT INTO jos_joomgallery VALUES("274","40","Exterior Banner","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1236721847","117","0","0","1","penobscot_marine_museum_20090310_1305514389.jpg","penobscot_marine_museum_20090310_1305514389.jpg","0","62","1","0","137");
INSERT INTO jos_joomgallery VALUES("495","29","Website","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery. <a target=\"_blank\" href=\"http://www.housesandcottages.com/\">Visit the site here.</a>","1241205475","45","0","0","0","website_20090501_1303453527.jpg","website_20090501_1303453527.jpg","0","67","1","0","88");
INSERT INTO jos_joomgallery VALUES("476","33","Banquet Program","Maine Medical Association","The Maine Medical Association came to Pica Design to create the event program for their annual banquet at the Samoset Resort.","1241032061","274","0","0","1","banquet_program_20090429_2045393575.jpg","banquet_program_20090429_2045393575.jpg","0","67","1","0","283");
INSERT INTO jos_joomgallery VALUES("435","6","GCS Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"http://www.picadesign.com/work/case-studies.html\" alt=\"Case Studies\">Case Studies</a> section.","1239132699","124","0","0","1","gcs_packaging_20090407_1675280333.jpg","gcs_packaging_20090407_1675280333.jpg","0","62","1","0","99");
INSERT INTO jos_joomgallery VALUES("289","45","College Magazine","Unity College","Since early 2006, we have doing the layout for Unity Magazine, a 32-page magazine for alumni, donors and students of Unity College in Maine. We have continued to produce the magazine, making slight design modifications over time. The College will debut a new design of the magazine, created by Pica Design, with the Spring 2009 issue.","1236802085","149","0","0","1","unity_college_magazine_20090311_1650112153.jpg","unity_college_magazine_20090311_1650112153.jpg","0","62","1","0","295");
INSERT INTO jos_joomgallery VALUES("292","44","Spider-Man 1 Promotion Collateral","Alpha Marketing, Inc.","Pica Design was referred to Alpha Marketing as a potential design vendor when the company was newly formed. Subsequently, we completed an array of design work in partnership for clients such as Bar Harbor Bankshares, Sony Ericsson and Parker Ridge.","1236802175","193","0","0","1","spiderman_collateral_20090311_1709738335.jpg","spiderman_collateral_20090311_1709738335.jpg","0","62","1","0","216");
INSERT INTO jos_joomgallery VALUES("297","42","Brand & Identity","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1236802313","150","0","0","1","summer_maine_20090311_1207212045.jpg","summer_maine_20090311_1207212045.jpg","0","62","1","0","261");
INSERT INTO jos_joomgallery VALUES("298","42","Business Card","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1236802313","21","0","0","0","summer_maine_20090311_1134121598.jpg","summer_maine_20090311_1134121598.jpg","0","62","1","0","284");
INSERT INTO jos_joomgallery VALUES("299","7","Website","UniTel, Inc.","A local telephone company serving Waldo, Penobscot and Kennebec Counties, UniTel came to Pica Design to re-design their web site, incorporating a new content management system (CMS). The site is now administered by UniTel staff who change and update content regularly. <a target=\"_blank\" href=\"http://www.unitelme.com/\">Visit the site here.</a>","1236802438","246","0","0","1","unitel_website_20090311_1762603548.jpg","unitel_website_20090311_1762603548.jpg","0","62","1","0","275");
INSERT INTO jos_joomgallery VALUES("510","37","Corporate Collateral","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the companyís logo ID, collateral and web site to highlight the companyís services and benefits of partnership.","1241637550","241","0","0","1","website_20090506_1657273917.jpg","website_20090506_1657273917.jpg","0","67","1","0","237");
INSERT INTO jos_joomgallery VALUES("536","8","Brand & Identity","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholm&rsquo;s cabins and on their garden paths. The result is an effective website lush with photography and greater business potential.","1242157093","62","0","0","1","brand__identity_20090512_2049301679.jpg","brand__identity_20090512_2049301679.jpg","0","62","1","0","270");
INSERT INTO jos_joomgallery VALUES("346","19","Product Catalogs","Blue Jacket Shipcrafters, Inc.","Early in Pica Design history, we did our first project with Blue Jacket Shipcrafters, creating a new layout for the catalog to improve information design and simplify product ordering. Since then, we have refreshed the design of the catalog and its cover in various ways.","1237242983","81","0","0","1","bluejacket_catalogs_20090316_1978525177.jpg","bluejacket_catalogs_20090316_1978525177.jpg","0","62","1","0","331");
INSERT INTO jos_joomgallery VALUES("347","19","Product Catalogs","Blue Jacket Shipcrafters, Inc.","Early in Pica Design history, we did our first project with Blue Jacket Shipcrafters, creating a new layout for the catalog to improve information design and simplify product ordering. Since then, we have refreshed the design of the catalog and its cover in various ways.","1237242983","87","0","0","1","bluejacket_catalogs_20090316_1034120840.jpg","bluejacket_catalogs_20090316_1034120840.jpg","0","62","1","0","332");
INSERT INTO jos_joomgallery VALUES("434","9","GMER Business Card","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies.","1239131881","251","0","0","1","gmer_business_card_20090407_1139966627.jpg","gmer_business_card_20090407_1139966627.jpg","0","62","1","0","21");
INSERT INTO jos_joomgallery VALUES("436","25","Business Development Booklet","Coastal Enterprises Inc.","CEI is a private, non-profit community development corporation founded to create social and economic opportunities for people, businesses and communities of Maine. Pica Design created a business development promotional booklet for the Lincoln County Economic Development Office, which has a contract partnership with Coastal Enterprises, Inc. Subsequently, we created for CEI the Coastal Access brochure, <em>Child Care Solutions for Businesses.</em>","1239133132","84","0","0","1","business_development_booklet_20090407_1344327077.jpg","business_development_booklet_20090407_1344327077.jpg","0","62","1","0","328");
INSERT INTO jos_joomgallery VALUES("338","14","Exterior Signage","Pinchy, Inc.","When 3 Tides was Belfast\'s new waterfront cocktail &amp; tapas bar, David and Sarah came to us to design the new business identity, collateral, signage and web site. Since creating their original business logo ID, we have developed advertising and additional logo identities for two new businesses: their brewery, Marshall Wharf Brewing Company, and Ship to Shore, their waterfront store which provides goods and services to boats in the Harbor.","1237239835","108","0","0","1","3_tides_20090316_1073215937.jpg","3_tides_20090316_1073215937.jpg","0","62","1","0","180");
INSERT INTO jos_joomgallery VALUES("340","44","Spider-Man 1 Promotion Collateral","Alpha Marketing, Inc.","Pica Design was referred to Alpha Marketing as a potential design vendor when the company was newly formed. Subsequently, we completed an array of design work in partnership for clients such as Bar Harbor Bankshares, Sony Ericsson and Parker Ridge.","1237241932","142","0","0","1","spider-man_1_20090316_1250945874.jpg","spider-man_1_20090316_1250945874.jpg","0","62","1","0","228");
INSERT INTO jos_joomgallery VALUES("358","45","College Magazine","Unity College","Since early 2006, we have doing the layout for Unity Magazine, a 32-page magazine for alumni, donors and students of Unity College in Maine. We have continued to produce the magazine, making slight design modifications over time. The College will debut a new design of the magazine, created by Pica Design, with the Spring 2009 issue.","1237407273","111","0","0","1","unity_magazine_20090318_1521738517.jpg","unity_magazine_20090318_1521738517.jpg","0","64","1","0","311");
INSERT INTO jos_joomgallery VALUES("360","45","College Magazine","Unity College","Since early 2006, we have doing the layout for Unity Magazine, a 32-page magazine for alumni, donors and students of Unity College in Maine. We have continued to produce the magazine, making slight design modifications over time. The College will debut a new design of the magazine, created by Pica Design, with the Spring 2009 issue.","1237407273","117","0","0","1","unity_magazine_20090318_1341608396.jpg","unity_magazine_20090318_1341608396.jpg","0","64","1","0","313");
INSERT INTO jos_joomgallery VALUES("361","7","Website","UniTel, Inc.","A local telephone company serving Waldo, Penobscot and Kennebec Counties, UniTel came to Pica Design to re-design their web site, incorporating a new content management system (CMS). The site is now administered by UniTel staff who change and update content regularly. <a href=\"http://www.unitelme.com/\" target=\"_blank\">Visit the site here.</a>","1237407565","88","0","0","1","unitel_inc_website_20090318_1005652345.jpg","unitel_inc_website_20090318_1005652345.jpg","0","64","1","0","276");
INSERT INTO jos_joomgallery VALUES("362","7","Website","UniTel, Inc.","A local telephone company serving Waldo, Penobscot and Kennebec Counties, UniTel came to Pica Design to re-design their web site, incorporating a new content management system (CMS). The site is now administered by UniTel staff who change and update content regularly. <a href=\"http://www.unitelme.com/\" target=\"_blank\">Visit the site here.</a>","1237407566","81","0","0","1","unitel_inc_website_20090318_1557543352.jpg","unitel_inc_website_20090318_1557543352.jpg","0","64","1","0","277");
INSERT INTO jos_joomgallery VALUES("363","7","Website","UniTel, Inc.","A local telephone company serving Waldo, Penobscot and Kennebec Counties, UniTel came to Pica Design to re-design their web site, incorporating a new content management system (CMS). The site is now administered by UniTel staff who change and update content regularly. <a href=\"http://www.unitelme.com/\" target=\"_blank\">Visit the site here.</a>","1237407566","81","0","0","1","unitel_inc_website_20090318_1215795914.jpg","unitel_inc_website_20090318_1215795914.jpg","0","64","1","0","278");
INSERT INTO jos_joomgallery VALUES("364","24","Jewelry Collection Catalog","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1237407795","5","0","0","0","hot_diamonds_20090318_1996627395.jpg","hot_diamonds_20090318_1996627395.jpg","0","64","1","0","297");
INSERT INTO jos_joomgallery VALUES("426","14","Brand & Identity","Pinchy, Inc.","When 3 Tides was Belfast\'s new waterfront cocktail &amp; tapas bar, David and Sarah came to us to design the new business identity, collateral, signage and web site. Since creating their original business logo ID, we have developed advertising and additional logo identities for two new businesses: their brewery, Marshall Wharf Brewing Company, and Ship to Shore, their waterfront store which provides goods and services to boats in the Harbor.","1239129230","8","0","0","0","brand__identity_20090407_2021587756.jpg","brand__identity_20090407_2021587756.jpg","0","62","1","0","148");
INSERT INTO jos_joomgallery VALUES("416","56","Website","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis. <a href=\"http://www.gologichomes.com/\" target=\"_blank\">Visit the site here.</a>","1237413154","123","0","0","1","go_logic_20090318_1085209157.jpg","go_logic_20090318_1085209157.jpg","0","64","1","0","183");
INSERT INTO jos_joomgallery VALUES("417","56","Website","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis. <a href=\"http://www.gologichomes.com/\" target=\"_blank\">Visit the site here.</a>","1237413154","126","0","0","1","go_logic_20090318_1373128882.jpg","go_logic_20090318_1373128882.jpg","0","64","1","0","176");
INSERT INTO jos_joomgallery VALUES("418","15","The Bottles Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1237413278","8","0","0","0","guyot_designs_20090318_2073576627.jpg","guyot_designs_20090318_2073576627.jpg","0","64","1","0","252");
INSERT INTO jos_joomgallery VALUES("419","15","Product Catalog","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1237413278","8","0","0","0","guyot_designs_20090318_1315843551.jpg","guyot_designs_20090318_1315843551.jpg","0","64","1","0","253");
INSERT INTO jos_joomgallery VALUES("420","15","Splashguard Packaging Update","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1237413278","92","0","0","1","guyot_designs_20090318_1902977556.jpg","guyot_designs_20090318_1902977556.jpg","0","64","1","0","255");
INSERT INTO jos_joomgallery VALUES("421","15","Utensils Packaging (Inside)","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1237413278","6","0","0","0","guyot_designs_20090318_1360142618.jpg","guyot_designs_20090318_1360142618.jpg","0","64","1","0","257");
INSERT INTO jos_joomgallery VALUES("422","15","Utensils Packaging","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designsí innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REIÆ, L.L. BeanÆ, and other outdoor retail chains across the U.S.","1237413279","4","0","0","0","guyot_designs_20090318_1942067212.jpg","guyot_designs_20090318_1942067212.jpg","0","64","1","0","260");
INSERT INTO jos_joomgallery VALUES("423","9","EMC Website","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies. <a target=\"_blank\" href=\"http://emcenter.org/\">Visit the site here.</a>","1237413369","74","0","0","1","gmer_20090318_1713048001.jpg","gmer_20090318_1713048001.jpg","0","64","1","0","52");
INSERT INTO jos_joomgallery VALUES("424","9","EMC Brochure","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies.","1237413369","70","0","0","1","gmer_20090318_1961120942.jpg","gmer_20090318_1961120942.jpg","0","64","1","0","32");
INSERT INTO jos_joomgallery VALUES("425","8","Website","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholmís cabins and on their garden paths. The result is an effective website lush with photography and greater business potential.","1237413481","3","0","0","0","cedarholm_garden_bay_inn_web_site_20090318_1920212065.jpg","cedarholm_garden_bay_inn_web_site_20090318_1920212065.jpg","0","64","1","0","269");
INSERT INTO jos_joomgallery VALUES("468","50","Bottle Topper Packaging","","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1240345393","47","0","0","1","bottle_topper_packaging_20090421_1618889738.jpg","bottle_topper_packaging_20090421_1618889738.jpg","0","67","1","0","322");
INSERT INTO jos_joomgallery VALUES("303","55","Protector Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869438","164","0","0","1","hpi_20090312_1588051568.jpg","hpi_20090312_1588051568.jpg","0","62","1","0","294");
INSERT INTO jos_joomgallery VALUES("305","48","Adventurer Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869439","135","0","0","1","hpi_20090312_2084122815.jpg","hpi_20090312_2084122815.jpg","0","62","1","0","308");
INSERT INTO jos_joomgallery VALUES("307","50","Bottle Topper Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869439","75","0","0","1","hpi_20090312_1597576742.jpg","hpi_20090312_1597576742.jpg","0","62","1","0","317");
INSERT INTO jos_joomgallery VALUES("308","50","Bottle Topper Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869440","184","0","0","1","hpi_20090312_1462594786.jpg","hpi_20090312_1462594786.jpg","0","62","1","0","320");
INSERT INTO jos_joomgallery VALUES("309","53","Product Catalog","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869440","58","0","0","1","hpi_20090312_1892408780.jpg","hpi_20090312_1892408780.jpg","0","62","1","0","29");
INSERT INTO jos_joomgallery VALUES("311","53","Product Quick Start Guide","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869440","55","0","0","1","hpi_20090312_1034752168.jpg","hpi_20090312_1034752168.jpg","0","62","1","0","47");
INSERT INTO jos_joomgallery VALUES("312","48","Product Catalog","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869441","50","0","0","1","hpi_20090312_1894948732.jpg","hpi_20090312_1894948732.jpg","0","62","1","0","339");
INSERT INTO jos_joomgallery VALUES("313","53","Test Data Report","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869610","60","0","0","1","hpi_20090312_1877865607.jpg","hpi_20090312_1877865607.jpg","0","62","1","0","51");
INSERT INTO jos_joomgallery VALUES("314","52","International Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869610","124","0","0","1","hpi_20090312_1859074772.jpg","hpi_20090312_1859074772.jpg","0","62","1","0","343");
INSERT INTO jos_joomgallery VALUES("316","53","Category Management Brochure","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869611","161","0","0","1","hpi_20090312_1035567328.jpg","hpi_20090312_1035567328.jpg","0","62","1","0","64");
INSERT INTO jos_joomgallery VALUES("317","53","Category Management Brochure","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869611","58","0","0","1","hpi_20090312_1517552526.jpg","hpi_20090312_1517552526.jpg","0","62","1","0","68");
INSERT INTO jos_joomgallery VALUES("319","48","Adventurer Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869612","34","0","0","1","hpi_20090312_1229402821.jpg","hpi_20090312_1229402821.jpg","0","62","1","0","355");
INSERT INTO jos_joomgallery VALUES("321","52","Product Identity","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869612","36","0","0","1","hpi_20090312_1135484071.jpg","hpi_20090312_1135484071.jpg","0","62","1","0","362");
INSERT INTO jos_joomgallery VALUES("322","52","Classic Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869612","35","0","0","1","hpi_20090312_2041203425.jpg","hpi_20090312_2041203425.jpg","0","62","1","0","366");
INSERT INTO jos_joomgallery VALUES("323","49","Tradeshow Booth","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the design of a new product identity and brochure. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869680","48","0","0","1","hpi_20090312_1608471553.jpg","hpi_20090312_1608471553.jpg","0","62","1","0","370");
INSERT INTO jos_joomgallery VALUES("326","52","Classic Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869680","37","0","0","1","hpi_20090312_1891912932.jpg","hpi_20090312_1891912932.jpg","0","62","1","0","376");
INSERT INTO jos_joomgallery VALUES("327","51","Traveler Catalog Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869681","143","0","0","1","hpi_20090312_1613000532.jpg","hpi_20090312_1613000532.jpg","0","62","1","0","55");
INSERT INTO jos_joomgallery VALUES("329","49","Tradeshow Booth","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1236869681","136","0","0","1","hpi_20090312_2018983789.jpg","hpi_20090312_2018983789.jpg","0","62","1","0","380");
INSERT INTO jos_joomgallery VALUES("397","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1237408576","8","0","0","0","maine_crafts_guild_20090318_1431682937.jpg","maine_crafts_guild_20090318_1431682937.jpg","0","64","1","0","234");
INSERT INTO jos_joomgallery VALUES("400","22","Corporate Collateral","Knox Machine Company","Pica Design created a corporate brochure for this custom manufacturing and precision machining company located in Warren, Maine. The company then came to us to design their corporate collateral and website.","1237409696","8","0","0","0","knox_machine_company_20090318_2085023731.jpg","knox_machine_company_20090318_2085023731.jpg","0","64","1","0","155");
INSERT INTO jos_joomgallery VALUES("401","22","Company Brochure","Knox Machine Company","Pica Design created a corporate brochure for this custom manufacturing and precision machining company located in Warren, Maine. The company then came to us to design their corporate collateral and website.","1237409697","98","0","0","1","knox_machine_company_20090318_1168912403.jpg","knox_machine_company_20090318_1168912403.jpg","0","64","1","0","167");
INSERT INTO jos_joomgallery VALUES("404","6","Java Kit Holiday Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a alt=\"Pica Design Case Studies\" href=\"work/case-studies.html\">Case Studies</a> section.","1237409813","140","0","0","1","jetboil_20090318_1602806599.jpg","jetboil_20090318_1602806599.jpg","0","64","1","0","66");
INSERT INTO jos_joomgallery VALUES("405","6","Java Kit Holiday Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a alt=\"Pica Design Case Studies\" href=\"work/case-studies.html\">Case Studies</a> section.","1237409813","144","0","0","1","jetboil_20090318_1963625833.jpg","jetboil_20090318_1963625833.jpg","0","64","1","0","71");
INSERT INTO jos_joomgallery VALUES("406","6","Java Kit Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1237409813","232","0","0","1","jetboil_20090318_1627202067.jpg","jetboil_20090318_1627202067.jpg","0","64","1","0","80");
INSERT INTO jos_joomgallery VALUES("408","6","PCS Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"http://www.picadesign.com/work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1237409814","318","0","0","1","jetboil_20090318_1038190214.jpg","jetboil_20090318_1038190214.jpg","0","64","1","0","91");
INSERT INTO jos_joomgallery VALUES("409","6","1.5 Liter Pot Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"http://www.picadesign.com/work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1237409814","377","0","0","1","jetboil_20090318_2081386647.jpg","jetboil_20090318_2081386647.jpg","0","64","1","0","95");
INSERT INTO jos_joomgallery VALUES("410","5","Marketing Collateral","Jaret & Cohn","A new set of property management services prompted Jaret &amp; Cohn to initiate a new communications and marketing campaign. The company wanted to conserve budget dollars by using an existing folder; they also needed to elevate the presence and organization of their combined sales materials. We developed a tiered design for each of their information sheets, so that sales personnel could customize information packets according to their needs.","1237409995","110","0","0","1","jaret__cohn_20090318_1060795379.jpg","jaret__cohn_20090318_1060795379.jpg","0","64","1","0","303");
INSERT INTO jos_joomgallery VALUES("411","5","Marketing Collateral","Jaret & Cohn","A new set of property management services prompted Jaret &amp; Cohn to initiate a new communications and marketing campaign. The company wanted to conserve budget dollars by using an existing folder; they also needed to elevate the presence and organization of their combined sales materials. We developed a tiered design for each of their information sheets, so that sales personnel could customize information packets according to their needs.","1237409995","100","0","0","1","jaret__cohn_20090318_1384419041.jpg","jaret__cohn_20090318_1384419041.jpg","0","64","1","0","304");
INSERT INTO jos_joomgallery VALUES("412","5","Marketing Collateral & Folder","Jaret & Cohn","A new set of property management services prompted Jaret &amp; Cohn to initiate a new communications and marketing campaign. The company wanted to conserve budget dollars by using an existing folder; they also needed to elevate the presence and organization of their combined sales materials. We developed a tiered design for each of their information sheets, so that sales personnel could customize information packets according to their needs.","1237409996","117","0","0","1","jaret__cohn_20090318_2089036420.jpg","jaret__cohn_20090318_2089036420.jpg","0","64","1","0","305");
INSERT INTO jos_joomgallery VALUES("413","29","Media Kit Folder","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1237412989","4","0","0","0","houses_20090318_1848078854.jpg","houses_20090318_1848078854.jpg","0","64","1","0","40");
INSERT INTO jos_joomgallery VALUES("414","29","Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1237412989","12","0","0","0","houses_20090318_1687668025.jpg","houses_20090318_1687668025.jpg","0","64","1","0","57");
INSERT INTO jos_joomgallery VALUES("415","29","Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1237412990","4","0","0","0","houses_20090318_1661660575.jpg","houses_20090318_1661660575.jpg","0","64","1","0","60");
INSERT INTO jos_joomgallery VALUES("352","39","Wallet Notes Refill Package (Front)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1237243980","91","0","0","1","picopad_20090316_1599178451.jpg","picopad_20090316_1599178451.jpg","0","62","1","0","197");
INSERT INTO jos_joomgallery VALUES("353","39","Emergency Notes (Inside)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1237243980","91","0","0","1","picopad_20090316_1219576334.jpg","picopad_20090316_1219576334.jpg","0","62","1","0","233");
INSERT INTO jos_joomgallery VALUES("349","8","Website","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholmís cabins and on their garden paths. The result is an effective website lush with photography and greater business potential. <a target=\"_blank\" href=\"http://www.cedarholm.com/\">Visit the site here.</a>","1237243769","82","0","0","1","cedarholm_garden_bay_inn_web_site_20090316_1791852432.jpg","cedarholm_garden_bay_inn_web_site_20090316_1791852432.jpg","0","62","1","0","263");
INSERT INTO jos_joomgallery VALUES("350","8","Website","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholmís cabins and on their garden paths. The result is an effective website lush with photography and greater business potential. <a target=\"_blank\" href=\"http://www.cedarholm.com/\">Visit the site here.</a>","1237243770","81","0","0","1","cedarholm_garden_bay_inn_web_site_20090316_1450864376.jpg","cedarholm_garden_bay_inn_web_site_20090316_1450864376.jpg","0","62","1","0","264");
INSERT INTO jos_joomgallery VALUES("351","8","Website","Cedarholm Garden Bay Inn","Cedarholm Garden Bay Inn is a gorgeous seaside property with secluded cabins and expansive gardens in Camden, Maine. Inn owners George and Kristin came to Pica for a website redesign to increase reservations. What we created together is a website experience that places prospective Inn customers inside Cedarholmís cabins and on their garden paths. The result is an effective website lush with photography and greater business potential. <a target=\"_blank\" href=\"http://www.cedarholm.com/\">Visit the site here.</a>","1237243770","84","0","0","1","cedarholm_garden_bay_inn_web_site_20090316_1050212269.jpg","cedarholm_garden_bay_inn_web_site_20090316_1050212269.jpg","0","62","1","0","266");
INSERT INTO jos_joomgallery VALUES("354","39","Emergency Notes Package (Back)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1237243980","90","0","0","1","picopad_20090316_1139224052.jpg","picopad_20090316_1139224052.jpg","0","62","1","0","240");
INSERT INTO jos_joomgallery VALUES("538","40","Logotype","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1242158672","88","0","0","1","logotype_20090512_1231854975.jpg","logotype_20090512_1231854975.jpg","0","62","1","0","77");
INSERT INTO jos_joomgallery VALUES("489","46","JOY Brand & Identity","Unity Foundation","The mission of Jumpstart Our Youth is to revolutionize youth philanthropy in Maine by building and strengthening communities through youth leadership in philanthropy and community service. Unity Foundation came to Pica Design to create the organization&rsquo;s logo identity. We have also created promotional materials for JOY, and re-created the Unity Foundation logo since we began working together in 2008.","1241124416","269","0","0","1","joy_brand__identity_20090430_1285730990.jpg","joy_brand__identity_20090430_1285730990.jpg","0","67","1","0","199");
INSERT INTO jos_joomgallery VALUES("365","24","Jewelry Sales Direct Mail","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1237407796","113","0","0","1","hot_diamonds_20090318_1424063771.jpg","hot_diamonds_20090318_1424063771.jpg","0","64","1","0","298");
INSERT INTO jos_joomgallery VALUES("366","24","Sales Collateral","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1237407796","104","0","0","1","hot_diamonds_20090318_1410674384.jpg","hot_diamonds_20090318_1410674384.jpg","0","64","1","0","299");
INSERT INTO jos_joomgallery VALUES("392","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1237408436","85","0","0","1","maine_windjammer_association_20090318_1809423188.jpg","maine_windjammer_association_20090318_1809423188.jpg","0","64","1","0","123");
INSERT INTO jos_joomgallery VALUES("432","9","EMC Brand & Identity","Green Mountain Environmental Resolutions, LLC","Conflict Happens. We designed a logo ID and brochure for Environmental Mediation Center (EMC) which designs and administers environmental dispute resolution programs utilizing mediation screening for governmental and regulatory permitting bodies.","1239131126","74","0","0","1","emc_brand__identity_20090407_1123783883.jpg","emc_brand__identity_20090407_1123783883.jpg","0","62","1","0","7");
INSERT INTO jos_joomgallery VALUES("393","33","Banquet Program","Maine Medical Association","The Maine Medical Association came to Pica Design to create the event program for their annual banquet at the Samoset Resort.","1237408489","14","0","0","0","maine_medical_association_banquet_program_20090318_1671748539.jpg","maine_medical_association_banquet_program_20090318_1671748539.jpg","0","64","1","0","281");
INSERT INTO jos_joomgallery VALUES("394","33","Banquet Program","Maine Medical Association","The Maine Medical Association came to Pica Design to create the event program for their annual banquet at the Samoset Resort.","1237408489","110","0","0","1","maine_medical_association_banquet_program_20090318_1128876073.jpg","maine_medical_association_banquet_program_20090318_1128876073.jpg","0","64","1","0","282");
INSERT INTO jos_joomgallery VALUES("396","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1237408576","98","0","0","1","maine_crafts_guild_20090318_1402206707.jpg","maine_crafts_guild_20090318_1402206707.jpg","0","64","1","0","227");
INSERT INTO jos_joomgallery VALUES("395","26","Promotional Collateral","Maine Crafts Guild","The Maine Crafts Guild, an extraordinary company of craftspeople who dedicate their lives to fine craft and art, is run by and for its members. For 3 consecutive years, we designed and produced the Guildís annual brochure. To maximize advertising dollars, we developed the piece with a dual purpose: to serve as an informational hand-out and full-color poster.","1237408576","100","0","0","1","maine_crafts_guild_20090318_1977794457.jpg","maine_crafts_guild_20090318_1977794457.jpg","0","64","1","0","192");
INSERT INTO jos_joomgallery VALUES("384","23","Juice 1.0 Conference Materials","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1237408364","95","0","0","1","midcoast_magnet_juice_conference_20090318_1198905131.jpg","midcoast_magnet_juice_conference_20090318_1198905131.jpg","0","64","1","0","146");
INSERT INTO jos_joomgallery VALUES("385","23","Juice 1.0 Conference Program","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1237408364","83","0","0","1","midcoast_magnet_juice_conference_20090318_1696514337.jpg","midcoast_magnet_juice_conference_20090318_1696514337.jpg","0","64","1","0","151");
INSERT INTO jos_joomgallery VALUES("439","18","Collateral","Belfast Free Library","In 2003, Pica Design created a new logo ID for the Belfast Free Library. With the new addition to the Library complete, we photographed the building and created the new logo from that image. We then created graphics for new library cards and other collateral, and we continue to update the Libraryís fundraising package annually.","1239134467","73","0","0","1","belfast_free_library_collateral_20090407_1403565826.jpg","belfast_free_library_collateral_20090407_1403565826.jpg","0","62","1","0","273");
INSERT INTO jos_joomgallery VALUES("388","23","Juice 1.0 Conference Website","","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway. <a target=\"_blank\" href=\"http://www.juiceconference.org/\">Visit the site here.</a>","1237408365","94","0","0","1","midcoast_magnet_juice_conference_20090318_1958375561.jpg","midcoast_magnet_juice_conference_20090318_1958375561.jpg","0","64","1","0","152");
INSERT INTO jos_joomgallery VALUES("389","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1237408435","5","0","0","0","maine_windjammer_association_20090318_1073733439.jpg","maine_windjammer_association_20090318_1073733439.jpg","0","64","1","0","82");
INSERT INTO jos_joomgallery VALUES("390","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1237408435","94","0","0","1","maine_windjammer_association_20090318_1586170351.jpg","maine_windjammer_association_20090318_1586170351.jpg","0","64","1","0","112");
INSERT INTO jos_joomgallery VALUES("391","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1237408436","18","0","0","1","maine_windjammer_association_20090318_1941746169.jpg","maine_windjammer_association_20090318_1941746169.jpg","0","64","0","0","117");
INSERT INTO jos_joomgallery VALUES("497","22","Company Brochure","Knox Machine Company","Pica Design created a corporate brochure for this custom manufacturing and precision machining company located in Warren, Maine. The company then came to us to design their corporate collateral and website.","1241471851","248","0","0","1","company_brochure_20090504_1601627361.jpg","company_brochure_20090504_1601627361.jpg","0","67","1","0","175");
INSERT INTO jos_joomgallery VALUES("490","38","Product Label","Peace Preserves","Launching a new fundraising productóPeace PreservesóCathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1241200758","587","0","0","1","product_label_20090501_2004291451.jpg","product_label_20090501_2004291451.jpg","0","67","1","0","185");
INSERT INTO jos_joomgallery VALUES("355","39","Wallet Notes Refill Package (Inside)","Everyday Innovations, Inc.","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1237243981","83","0","0","1","picopad_20090316_1813541377.jpg","picopad_20090316_1813541377.jpg","0","62","1","0","214");
INSERT INTO jos_joomgallery VALUES("501","41","Company Brochure","Parker Ridge","Parker Ridgeóa residential community in Blue Hill, Maineóoffers retirement living on beautiful parkland acreage in view of Blue Hill Bay. Their advertising and marketing plans, tied to advancement goals, necessitated a new advertising campaign and new brochure. We crafted the ad campaign and brochure with new imagery from 2 Pica-led photo sessions, showing the community in action, and improving messaging to evoke a vivid sense of place, people and community. The campaignís goalóto connect potential Parker Ridge residents to the greater Blue Hill Peninsula communityówas achieved as their sales target of 100% occupancy was accomplished ahead of schedule. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241538479","281","0","0","1","company_brochure_20090505_1936122319.jpg","company_brochure_20090505_1936122319.jpg","0","67","1","0","220");
INSERT INTO jos_joomgallery VALUES("500","46","JOY Brand & Identity","Unity Foundation","The mission of Jumpstart Our Youth is to revolutionize youth philanthropy in Maine by building and strengthening communities through youth leadership in philanthropy and community service. Unity Foundation came to Pica Design to create the organization&rsquo;s logo identity. We have also created promotional materials for JOY, and re-created the Unity Foundation logo since we began working together in 2008.","1241537894","89","0","0","1","joy_brand__identity_20090505_1883162912.jpg","joy_brand__identity_20090505_1883162912.jpg","0","67","1","0","200");
INSERT INTO jos_joomgallery VALUES("399","25","Business Development Booklet","Coastal Enterprises Inc.","CEI is a private, non-profit community development corporation founded to create social and economic opportunities for people, businesses and communities of Maine. Pica Design created a business development promotional booklet for the Lincoln County Economic Development Office, which has a contract partnership with Coastal Enterprises, Inc. Subsequently, we created for CEI the Coastal Access brochure, <span class=\"Apple-style-span\" style=\"font-style: italic; \">Child Care Solutions for Businesses</span>.<br>","1237409403","7","0","0","0","coastal_enterprises_inc_20090318_1549690353.jpg","coastal_enterprises_inc_20090318_1549690353.jpg","0","64","1","0","327");
INSERT INTO jos_joomgallery VALUES("428","12","Annual Report","Blue Hill Memorial Hospital","For many years, Blue Hill Memorial Hospital&rsquo;s Annual Report was ably produced by the Community Relations and Marketing Department. In 2008, staff responsibilities were too great to keep the work in-house, and the administration decided to seek quotations from design companies to create the new Report. Pica Design was awarded the project based on client referrals, our annual report portfolio and expertise, and our proximity.","1239129587","87","0","0","1","annual_report_20090407_1117534044.jpg","annual_report_20090407_1117534044.jpg","0","62","1","0","209");
INSERT INTO jos_joomgallery VALUES("485","43","Identity Re-Design","RedMaple Sportswear Co.","This Maine natural-fiber apparel company engaged Pica to re-design their logo. We went on to re-design the company\'s website to incorporate e-commerce for both wholesale and retail customers.","1241039711","117","0","0","1","identity_re-design_20090429_1011240932.jpg","identity_re-design_20090429_1011240932.jpg","0","67","1","0","135");
INSERT INTO jos_joomgallery VALUES("341","13","Website","American Transformation","Timothy Rexford Wilson\'s 2004 presidential campaign was built on his vision of \"Liberty and Justice for All.\" Pica Design created a branding campaign starting with the American Transformation logo and collateral, and extending to a website and book, \"American Transformation: How One Man\'s Journey Turned into a Campaign for the U.S. Presidency.\"","1237242196","78","0","0","1","american_transformation_web_site_20090316_1284157001.jpg","american_transformation_web_site_20090316_1284157001.jpg","0","62","1","0","186");
INSERT INTO jos_joomgallery VALUES("342","18","Collateral","Belfast Free Library","In 2003, Pica Design created a new logo ID for the Belfast Free Library. With the new addition to the Library complete, we photographed the building and created the new logo from that image. We then created graphics for new library cards and other collateral, and we continue to update the Libraryís fundraising package annually.","1237242525","237","0","0","1","belfast_free_library_20090316_1921955042.jpg","belfast_free_library_20090316_1921955042.jpg","0","62","1","0","267");
INSERT INTO jos_joomgallery VALUES("345","12","Annual Report","Blue Hill Memorial Hospital","For many years, Blue Hill Memorial Hospitalís Annual Report was ably produced by the Community Relations and Marketing Department. In 2008, staff responsibilities were too great to keep the work in-house, and the administration decided to seek quotations from design companies to create the new Report. Pica Design was awarded the project based on client referrals, our annual report portfolio and expertise, and our proximity.","1237242824","99","0","0","1","blue_hill_memorial_hospital_annual_report_20090316_1376679575.jpg","blue_hill_memorial_hospital_annual_report_20090316_1376679575.jpg","0","62","1","0","213");
INSERT INTO jos_joomgallery VALUES("367","24","Jewelry Collection Catalog","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6î x 6î square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1237407796","88","0","0","1","hot_diamonds_20090318_1080572404.jpg","hot_diamonds_20090318_1080572404.jpg","0","64","1","0","300");
INSERT INTO jos_joomgallery VALUES("368","40","Exterior Banner","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1237407907","79","0","0","1","penobscot_marine_museum_20090318_1890560301.jpg","penobscot_marine_museum_20090318_1890560301.jpg","0","64","1","0","133");
INSERT INTO jos_joomgallery VALUES("369","40","Brochure & Map","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1237407907","56","0","0","0","penobscot_marine_museum_20090318_1047762070.jpg","penobscot_marine_museum_20090318_1047762070.jpg","0","64","1","0","119");
INSERT INTO jos_joomgallery VALUES("371","38","Product Label","Peace Preserves","Launching a new fundraising productóPeace PreservesóCathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1237407975","145","0","0","1","peace_preserves_20090318_1003848105.jpg","peace_preserves_20090318_1003848105.jpg","0","64","1","0","173");
INSERT INTO jos_joomgallery VALUES("374","41","Company Brochure","Parker Ridge","Parker Ridgeóa residential community in Blue Hill, Maineóoffers retirement living on beautiful parkland acreage in view of Blue Hill Bay. Their advertising and marketing plans, tied to advancement goals, necessitated a new advertising campaign and new brochure. We crafted the ad campaign and brochure with new imagery from 2 Pica-led photo sessions, showing the community in action, and improving messaging to evoke a vivid sense of place, people and community. The campaignís goalóto connect potential Parker Ridge residents to the greater Blue Hill Peninsula communityówas achieved as their sales target of 100% occupancy was accomplished ahead of schedule. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1237408043","126","0","0","1","parker_ridge_20090318_1205989648.jpg","parker_ridge_20090318_1205989648.jpg","0","64","1","0","218");
INSERT INTO jos_joomgallery VALUES("375","41","Company Brochure","Parker Ridge","Parker Ridgeóa residential community in Blue Hill, Maineóoffers retirement living on beautiful parkland acreage in view of Blue Hill Bay. Their advertising and marketing plans, tied to advancement goals, necessitated a new advertising campaign and new brochure. We crafted the ad campaign and brochure with new imagery from 2 Pica-led photo sessions, showing the community in action, and improving messaging to evoke a vivid sense of place, people and community. The campaignís goalóto connect potential Parker Ridge residents to the greater Blue Hill Peninsula communityówas achieved as their sales target of 100% occupancy was accomplished ahead of schedule. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1237408044","129","0","0","1","parker_ridge_20090318_2098329473.jpg","parker_ridge_20090318_2098329473.jpg","0","64","1","0","212");
INSERT INTO jos_joomgallery VALUES("376","11","PenAgain Product Catalog","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1237408139","104","0","0","1","pacific_writing_instruments_20090318_1381944223.jpg","pacific_writing_instruments_20090318_1381944223.jpg","0","64","1","0","206");
INSERT INTO jos_joomgallery VALUES("377","11","Direct Mail Promotion","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1237408139","7","0","0","0","pacific_writing_instruments_20090318_1974902629.jpg","pacific_writing_instruments_20090318_1974902629.jpg","0","64","1","0","225");
INSERT INTO jos_joomgallery VALUES("378","11","PenAgain Product Catalog","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1237408140","5","0","0","0","pacific_writing_instruments_20090318_1248105851.jpg","pacific_writing_instruments_20090318_1248105851.jpg","0","64","1","0","231");
INSERT INTO jos_joomgallery VALUES("379","11","PenAgain Product Catalog","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1237408140","9","0","0","0","pacific_writing_instruments_20090318_1938835230.jpg","pacific_writing_instruments_20090318_1938835230.jpg","0","64","1","0","166");
INSERT INTO jos_joomgallery VALUES("380","11","PenAgain Product Catalog","Pacific Writing Instruments Inc.","With new PenAgain product lines to showcase, and upcoming tradeshows to attend, Pacific Writing Instruments came to us to design their new catalog. Since then, we have produced product photography and designed direct mail materials for PenAgain, the ergonomically shaped pen that is extra-comfortable to write with.","1237408140","6","0","0","0","pacific_writing_instruments_20090318_1218719134.jpg","pacific_writing_instruments_20090318_1218719134.jpg","0","64","1","0","239");
INSERT INTO jos_joomgallery VALUES("383","37","Website","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the companyís logo ID, collateral and web site to highlight the companyís services and benefits of partnership.","1237408242","7","0","0","0","northeastern_advisory_group_20090318_1527686089.jpg","northeastern_advisory_group_20090318_1527686089.jpg","0","64","1","0","224");
INSERT INTO jos_joomgallery VALUES("332","4","Hydro-Photon, Inc.","Hydro-Photon, Inc.","","1236964573","1","0","0","0","hydro_photo_inc_20090313_1037409045.jpg","hydro_photo_inc_20090313_1037409045.jpg","0","62","1","0","285");
INSERT INTO jos_joomgallery VALUES("335","56","Website","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis. <a target=\"_blank\" href=\"http://www.gologichomes.com/\">Visit the site here.</a>","1236967936","365","0","0","1","go_logic_homes_website_20090313_1973647350.jpg","go_logic_homes_website_20090313_1973647350.jpg","0","62","1","0","170");
INSERT INTO jos_joomgallery VALUES("533","43","Identity Re-Design","RedMaple Sportswear Co.","This Maine natural-fiber apparel company engaged Pica to re-design their logo. We went on to re-design the company\'s website to incorporate e-commerce for both wholesale and retail customers.","1242156420","76","0","0","1","identity_re-design_20090512_1825339696.jpg","identity_re-design_20090512_1825339696.jpg","0","62","1","0","179");
INSERT INTO jos_joomgallery VALUES("534","56","Brand & Identity","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis.","1242156661","75","0","0","1","brand__identity_20090512_1958799762.jpg","brand__identity_20090512_1958799762.jpg","0","62","1","0","184");
INSERT INTO jos_joomgallery VALUES("531","18","Logo Identity","Belfast Free Library","In 2003, Pica Design created a new logo ID for the Belfast Free Library. With the new addition to the Library complete, we photographed the building and created the new logo from that image. We then created graphics for new library cards and other collateral, and we continue to update the Libraryís fundraising package annually.","1242156173","65","0","0","1","logo_identity_20090512_1893482510.jpg","logo_identity_20090512_1893482510.jpg","0","62","1","0","274");
INSERT INTO jos_joomgallery VALUES("487","14","Brand & Identity","Pinchy, Inc.","When 3 Tides was Belfast\'s new waterfront cocktail &amp; tapas bar, David and Sarah came to us to design the new business identity, collateral, signage and web site. Since creating their original business logo ID, we have developed advertising and additional logo identities for two new businesses: their brewery, Marshall Wharf Brewing Company, and Ship to Shore, their waterfront store which provides goods and services to boats in the Harbor.","1241041206","245","0","0","1","brand__identity_20090429_1459030702.jpg","brand__identity_20090429_1459030702.jpg","0","67","1","0","96");
INSERT INTO jos_joomgallery VALUES("438","21","Brochure","Belfast Cohousing &amp; Ecovillage","Belfast Cohousing &amp; Ecovillage\\&#039;s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1239134303","52","0","0","0","brochure_20090407_2039690184.jpg","brochure_20090407_2039690184.jpg","0","62","1","0","101");
INSERT INTO jos_joomgallery VALUES("511","24","Jewelry Collection Catalog","Prismax","Prismax came to us to design their catalog for the U.S. launch of the new Hot Diamonds Squared jewelry collection. The 12-page, 6&rdquo; x 6&rdquo; square catalog served as their key promotional piece for the launch. We went on to design a super-sized ad for the Vogue Manhattan bus advertising campaign, as well as marketing and sales collateral for the 2:Blue and other jewelry collections.","1241638218","264","0","0","1","jewelry_collection_catalog_20090506_1890320191.jpg","jewelry_collection_catalog_20090506_1890320191.jpg","0","67","1","0","302");
INSERT INTO jos_joomgallery VALUES("494","35","Promotional DVD Package","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1241205168","242","0","0","1","promotional_dvd_package_20090501_1839740419.jpg","promotional_dvd_package_20090501_1839740419.jpg","0","67","1","0","140");
INSERT INTO jos_joomgallery VALUES("471","42","Brand & Identity","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1240351022","289","0","0","1","brand__identity_20090421_1200770136.jpg","brand__identity_20090421_1200770136.jpg","0","67","1","0","291");
INSERT INTO jos_joomgallery VALUES("535","42","Brand & Identity","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1242156903","102","0","0","1","brand__identity_20090512_1381424485.jpg","brand__identity_20090512_1381424485.jpg","0","62","1","0","292");
INSERT INTO jos_joomgallery VALUES("499","21","Brochure","Belfast Cohousing &amp; Ecovillage","Belfast Cohousing &amp; Ecovillage\\\\\\&#039;s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1241472383","71","0","0","0","brochure_20090504_1531897320.jpg","brochure_20090504_1531897320.jpg","0","67","1","0","115");
INSERT INTO jos_joomgallery VALUES("473","44","Spider-Man 1 Promotion Collateral","Alpha Marketing, Inc.","Pica Design was referred to Alpha Marketing as a potential design vendor when the company was newly formed. Subsequently, we completed an array of design work in partnership for clients such as Bar Harbor Bankshares, Sony Ericsson and Parker Ridge.","1241029237","299","0","0","1","spider-man_1_promotion_collateral_20090429_1654601202.jpg","spider-man_1_promotion_collateral_20090429_1654601202.jpg","0","67","1","0","229");
INSERT INTO jos_joomgallery VALUES("474","40","Logotype","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the &lsquo;old&rsquo; museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1241030436","89","0","0","1","logotype_20090429_1875417142.jpg","logotype_20090429_1875417142.jpg","0","67","1","0","49");
INSERT INTO jos_joomgallery VALUES("459","20","A Voice of My Own Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1239199511","94","0","0","1","poster_20090408_1271006869.jpg","poster_20090408_1271006869.jpg","0","62","1","0","58");
INSERT INTO jos_joomgallery VALUES("488","56","Brand & Identity","GïO Logic, LLC","We designed a logo ID for GïO Logic and then went on to design the company\'s website based on a CMS to promote their beautiful, affordable, energy-efficient homes. We also designed their collateral and supported initial marketing efforts with messaging and competitive positioning analysis.","1241124152","105","0","0","1","brand__identity_20090430_1329528121.jpg","brand__identity_20090430_1329528121.jpg","0","67","1","0","110");
INSERT INTO jos_joomgallery VALUES("427","14","Brand & Identity","Pinchy, Inc.","When 3 Tides was Belfast\'s new waterfront cocktail &amp; tapas bar, David and Sarah came to us to design the new business identity, collateral, signage and web site. Since creating their original business logo ID, we have developed advertising and additional logo identities for two new businesses: their brewery, Marshall Wharf Brewing Company, and Ship to Shore, their waterfront store which provides goods and services to boats in the Harbor.","1239129365","91","0","0","1","brand__identity_20090407_1853039974.jpg","brand__identity_20090407_1853039974.jpg","0","62","1","0","189");
INSERT INTO jos_joomgallery VALUES("440","15","Product Catalog","Guyot Designs Inc.","Launching products in quick succession for the outdoor industry, Guyot Designs sought our services for new product identity design and packaging. We organized their family of products with a new identity system, and brought the products to life with fresh, functional, environmentally friendly packaging. The end result was a cohesive retail sales approach featuring Guyot Designs&rsquo; innovative products, including the Firefly, The Bottles, The Utensils and The Lid, sold at REI&reg;, L.L. Bean&reg;, and other outdoor retail chains across the U.S.","1239134969","101","0","0","1","product_catalog_20090407_1610707703.jpg","product_catalog_20090407_1610707703.jpg","0","62","1","0","232");
INSERT INTO jos_joomgallery VALUES("441","27","Website","Bruce Laukka, Inc.","This well-respected veteran building company came to Pica Design with great ideas for a brand-new web presence, with interactive map and photo gallery. We designed and programmed the new site, brought it online, and then went on to create new advertising to dovetail with their new image. <a target=\"_blank\" href=\"http://www.brucelaukkainc.com/\">Visit the site here.</a>","1239135336","74","0","0","1","website_20090407_1844590747.jpg","website_20090407_1844590747.jpg","0","62","1","0","207");
INSERT INTO jos_joomgallery VALUES("442","29","Collateral","Houses &amp; Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allyn&rsquo;s design aesthetics while creating the company&rsquo;s new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1239136896","4","0","0","0","collateral_20090407_1452371111.jpg","collateral_20090407_1452371111.jpg","0","62","1","0","67");
INSERT INTO jos_joomgallery VALUES("443","29","Collateral","Houses &amp; Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allyn&rsquo;s design aesthetics while creating the company&rsquo;s new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1239136896","3","0","0","0","collateral_20090407_1769097513.jpg","collateral_20090407_1769097513.jpg","0","62","1","0","73");
INSERT INTO jos_joomgallery VALUES("444","29","Collateral","Houses &amp; Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allyn&rsquo;s design aesthetics while creating the company&rsquo;s new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1239136897","3","0","0","0","collateral_20090407_1275218514.jpg","collateral_20090407_1275218514.jpg","0","62","1","0","75");
INSERT INTO jos_joomgallery VALUES("445","29","Collateral","Houses &amp; Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allyn&rsquo;s design aesthetics while creating the company&rsquo;s new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1239136958","113","0","0","1","collateral_20090407_1384650121.jpg","collateral_20090407_1384650121.jpg","0","62","1","0","81");
INSERT INTO jos_joomgallery VALUES("446","37","Brand & Identity","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the company&rsquo;s logo ID, collateral and web site to highlight the company&rsquo;s services and benefits of partnership.","1239137380","90","0","0","1","brand__identity_20090407_1592778688.jpg","brand__identity_20090407_1592778688.jpg","0","62","1","0","208");
INSERT INTO jos_joomgallery VALUES("492","38","Product Label","Peace Preserves","Launching a new fundraising product&mdash;Peace Preserves&mdash;Cathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1241203410","132","0","0","1","product_label_20090501_1586252263.jpg","product_label_20090501_1586252263.jpg","0","67","1","0","177");
INSERT INTO jos_joomgallery VALUES("493","38","Brand & Identity","Peace Preserves","Launching a new fundraising product&mdash;Peace Preserves&mdash;Cathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1241204548","130","0","0","1","brand__identity_20090501_1709616848.jpg","brand__identity_20090501_1709616848.jpg","0","67","1","0","124");
INSERT INTO jos_joomgallery VALUES("451","42","Business Card","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1239138629","116","0","0","1","business_card_20090407_1358148044.jpg","business_card_20090407_1358148044.jpg","0","62","1","0","288");
INSERT INTO jos_joomgallery VALUES("450","42","Business Card","SummerMaine","Appealing to Maine vacationers, SummerMaine offers houses for rent on the ocean, harbors and lakes of mid-coast Maine. SummerMaine came to us to design their logo ID and business cards. We then developed print and interactive advertising for Down East Magazine and other consumer and online publications.","1239138258","2","0","0","0","collateral_20090407_1361873081.jpg","collateral_20090407_1361873081.jpg","0","62","1","0","286");
INSERT INTO jos_joomgallery VALUES("502","40","Brochure & Map","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the &lsquo;old&rsquo; museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1241538835","260","0","0","1","brochure__map_20090505_1692287035.jpg","brochure__map_20090505_1692287035.jpg","0","67","1","0","111");
INSERT INTO jos_joomgallery VALUES("455","43","E-commerce Website","RedMaple Sportswear Co.","This Maine natural-fiber apparel company engaged Pica to re-design their logo. We went on to re-design the company\'s website to incorporate e-commerce for both wholesale and retail customers.","1239139190","88","0","0","1","e-commerce_website_20090407_1422237321.jpg","e-commerce_website_20090407_1422237321.jpg","0","62","1","0","172");
INSERT INTO jos_joomgallery VALUES("456","43","E-commerce Website","RedMaple Sportswear Co.","This Maine natural-fiber apparel company engaged Pica to re-design their logo. We went on to re-design the company\'s website to incorporate e-commerce for both wholesale and retail customers.","1239139190","106","0","0","1","e-commerce_website_20090407_1832384662.jpg","e-commerce_website_20090407_1832384662.jpg","0","62","1","0","178");
INSERT INTO jos_joomgallery VALUES("457","46","JOY Brand & Identity","Unity Foundation","The mission of Jumpstart Our Youth is to revolutionize youth philanthropy in Maine by building and strengthening communities through youth leadership in philanthropy and community service. Unity Foundation came to Pica Design to create the organization&rsquo;s logo identity. We have also created promotional materials for JOY, and re-created the Unity Foundation logo since we began working together in 2008.","1239139426","127","0","0","1","joy_brand__identity_20090407_2085959019.jpg","joy_brand__identity_20090407_2085959019.jpg","0","62","1","0","198");
INSERT INTO jos_joomgallery VALUES("507","17","Annual Guides","Belfast Area Chamber of Commerce","For seven consecutive years, we designed the annual guide for the Belfast Area Chamber of Commerce. We introduced an art contest in the early years, the winner of which would be featured on the cover. The contest helped to build a cache of images to be used in future guidebooks. Each year, we were charged with carrying through a new theme, incorporating new editorial, and updating all of the information listings, advertising, and maps representing nearly 200 Belfast-area businesses.","1241629730","207","0","0","1","annual_guides_20090506_1896879298.jpg","annual_guides_20090506_1896879298.jpg","0","67","1","0","324");
INSERT INTO jos_joomgallery VALUES("461","20","On Golden Pond Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1239199512","98","0","0","1","poster_20090408_1362612003.jpg","poster_20090408_1362612003.jpg","0","62","1","0","62");
INSERT INTO jos_joomgallery VALUES("463","20","Proof Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1239199512","84","0","0","1","poster_20090408_1846485889.jpg","poster_20090408_1846485889.jpg","0","62","1","0","70");
INSERT INTO jos_joomgallery VALUES("464","20","The Red Shoes Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1239199512","84","0","0","1","poster_20090408_1731124796.jpg","poster_20090408_1731124796.jpg","0","62","1","0","74");
INSERT INTO jos_joomgallery VALUES("506","19","Product Catalogs","Blue Jacket Shipcrafters, Inc.","Early in Pica Design history, we did our first project with Blue Jacket Shipcrafters, creating a new layout for the catalog to improve information design and simplify product ordering. Since then, we have refreshed the design of the catalog and its cover in various ways.","1241629529","202","0","0","1","product_catalogs_20090506_1608765711.jpg","product_catalogs_20090506_1608765711.jpg","0","67","1","0","333");
INSERT INTO jos_joomgallery VALUES("465","34","Landing Page Redesign","Monroe Salt Works","Incorporating new photography, Pica created a new ad template for Monroe Salt Works to use for various ad placements in trade and consumer publications. <a target=\"_blank\" href=\"http://www.monroesaltworks.com/\">Visit the site here.</a>","1239200704","92","0","0","1","landing_page_redesign_20090408_1680052949.jpg","landing_page_redesign_20090408_1680052949.jpg","0","62","1","0","271");
INSERT INTO jos_joomgallery VALUES("466","13","Brand & Identity","American Transformation","Timothy Rexford Wilson\'s 2004 presidential campaign was built on his vision of \"Liberty and Justice for All.\" Pica Design created a branding campaign starting with the American Transformation logo and collateral, and extending to a website and book, \"American Transformation: How One Man\'s Journey Turned into a Campaign for the U.S. Presidency.\"","1240251327","82","0","0","1","brand__identity_20090420_1478295352.jpg","brand__identity_20090420_1478295352.jpg","0","64","1","0","169");
INSERT INTO jos_joomgallery VALUES("467","40","Map 2008","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1240252864","133","0","0","1","brochure__map_20090420_1514809258.jpg","brochure__map_20090420_1514809258.jpg","0","64","1","0","120");
INSERT INTO jos_joomgallery VALUES("469","4","Bottle Topper Packaging","","","1240350190","0","0","0","0","bottle_topper_packaging_20090421_1122030633.jpg","bottle_topper_packaging_20090421_1122030633.jpg","0","67","1","0","287");
INSERT INTO jos_joomgallery VALUES("470","45","College Magazine","Unity College","Since early 2006, we have doing the layout for Unity Magazine, a 32-page magazine for alumni, donors and students of Unity College in Maine. We have continued to produce the magazine, making slight design modifications over time. The College will debut a new design of the magazine, created by Pica Design, with the Spring 2009 issue.","1240350559","286","0","0","1","college_magazine_20090421_1936104185.jpg","college_magazine_20090421_1936104185.jpg","0","67","1","0","314");
INSERT INTO jos_joomgallery VALUES("478","28","Brand & Identity","Glen Cove Dental Associates","A strong company vision motivated Glen Cove Dental Associates to  develop a fresh identity and collateral package. Their new image brands them as the friendly, family- and service-oriented dental practice that their loyal customers know them to be. Their new website will be in development in the spring of 2009.","1241034449","91","0","0","1","brand__identity_20090429_1891977764.jpg","brand__identity_20090429_1891977764.jpg","0","67","1","0","168");
INSERT INTO jos_joomgallery VALUES("479","28","Brand & Identity","Glen Cove Dental Associates","A strong company vision motivated Glen Cove Dental Associates to  develop a fresh identity and collateral package. Their new image brands them as the friendly, family- and service-oriented dental practice that their loyal customers know them to be. Their new website will be in development in the spring of 2009.","1241034449","78","0","0","1","brand__identity_20090429_1006938918.jpg","brand__identity_20090429_1006938918.jpg","0","67","1","0","181");
INSERT INTO jos_joomgallery VALUES("480","28","Brand & Identity","Glen Cove Dental Associates","A strong company vision motivated Glen Cove Dental Associates to  develop a fresh identity and collateral package. Their new image brands them as the friendly, family- and service-oriented dental practice that their loyal customers know them to be. Their new website will be in development in the spring of 2009.","1241034449","78","0","0","1","brand__identity_20090429_1228486120.jpg","brand__identity_20090429_1228486120.jpg","0","67","1","0","188");
INSERT INTO jos_joomgallery VALUES("486","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1241040560","94","0","0","1","juice_10_conference_logo_20090429_1251293554.jpg","juice_10_conference_logo_20090429_1251293554.jpg","0","67","1","0","72");
INSERT INTO jos_joomgallery VALUES("503","43","Identity Re-Design","RedMaple Sportswear Co.","This Maine natural-fiber apparel company engaged Pica to re-design their logo. We went on to re-design the company\'s website to incorporate e-commerce for both wholesale and retail customers.","1241540172","246","0","0","1","identity_re-design_20090505_2023919694.jpg","identity_re-design_20090505_2023919694.jpg","0","67","1","0","149");
INSERT INTO jos_joomgallery VALUES("504","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1241627182","243","0","0","1","juice_10_conference_logo_20090506_1616550661.jpg","juice_10_conference_logo_20090506_1616550661.jpg","0","67","1","0","156");
INSERT INTO jos_joomgallery VALUES("505","20","Promotional Collateral","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1241629072","233","0","0","1","promotional_collateral_20090506_1790981937.jpg","promotional_collateral_20090506_1790981937.jpg","0","67","1","0","102");
INSERT INTO jos_joomgallery VALUES("508","13","Brand & Identity","American Transformation","Timothy Rexford Wilson\'s 2004 presidential campaign was built on his vision of \"Liberty and Justice for All.\" Pica Design created a branding campaign starting with the American Transformation logo and collateral, and extending to a website and book, \"American Transformation: How One Man\'s Journey Turned into a Campaign for the U.S. Presidency.\"","1241629917","197","0","0","1","brand__identity_20090506_1509368004.jpg","brand__identity_20090506_1509368004.jpg","0","67","1","0","164");
INSERT INTO jos_joomgallery VALUES("539","39","Tween Notes Package","Everyday Innovations, Inc","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1242158830","70","0","0","1","tween_notes_package_20090512_1160188810.jpg","tween_notes_package_20090512_1160188810.jpg","0","62","1","0","241");
INSERT INTO jos_joomgallery VALUES("513","16","Direct Mail Promotion","Bluestreak","Launching super-fast services in midcoast Maine, this local ISP wanted to grab the attention of Internet users in Belfast. We created a unique, customizable marketing campaign for Bluestreak and executed the campaign--from conception through design, illustration, media planning and direct mailing. Materials included direct-to-consumer promotions, poster advertising, direct mail and follow-up newspaper advertising.","1241639499","179","0","0","1","direct_mail_promotion_20090506_2027381125.jpg","direct_mail_promotion_20090506_2027381125.jpg","0","67","1","0","31");
INSERT INTO jos_joomgallery VALUES("537","40","Brochure & Map 2008","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1242158672","19","0","0","0","logotype_20090512_1933369702.jpg","logotype_20090512_1933369702.jpg","0","62","1","0","144");
INSERT INTO jos_joomgallery VALUES("517","10","Brand & Identity","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maine&rsquo;s largest independent community banking organization and its affiliates.","1241815359","108","0","0","1","brand__identity_20090508_1368345694.jpg","brand__identity_20090508_1368345694.jpg","0","67","1","0","345");
INSERT INTO jos_joomgallery VALUES("518","10","Brand & Identity","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maine&rsquo;s largest independent community banking organization and its affiliates.","1241815359","108","0","0","1","brand__identity_20090508_1460582445.jpg","brand__identity_20090508_1460582445.jpg","0","67","1","0","346");
INSERT INTO jos_joomgallery VALUES("519","10","Brand & Identity","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maine&rsquo;s largest independent community banking organization and its affiliates.","1241815359","100","0","0","1","brand__identity_20090508_1627207744.jpg","brand__identity_20090508_1627207744.jpg","0","67","1","0","348");
INSERT INTO jos_joomgallery VALUES("520","10","Branch Posters","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1241815360","113","0","0","1","brand__identity_20090508_1622558411.jpg","brand__identity_20090508_1622558411.jpg","0","67","1","0","350");
INSERT INTO jos_joomgallery VALUES("521","10","Branch Posters","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1241815360","117","0","0","1","brand__identity_20090508_1584958903.jpg","brand__identity_20090508_1584958903.jpg","0","67","1","0","352");
INSERT INTO jos_joomgallery VALUES("522","10","Branch Posters","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1241815360","107","0","0","1","brand__identity_20090508_1596869740.jpg","brand__identity_20090508_1596869740.jpg","0","67","1","0","354");
INSERT INTO jos_joomgallery VALUES("523","10","Branch Posters","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1241815360","120","0","0","1","brand__identity_20090508_1018082051.jpg","brand__identity_20090508_1018082051.jpg","0","67","1","0","356");
INSERT INTO jos_joomgallery VALUES("524","6","Tradeshow Booth","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241815491","123","0","0","1","tradeshow_booth_20090508_1438014911.jpg","tradeshow_booth_20090508_1438014911.jpg","0","67","1","0","42");
INSERT INTO jos_joomgallery VALUES("525","6","Tradeshow Booth","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241815491","121","0","0","1","tradeshow_booth_20090508_1110714644.jpg","tradeshow_booth_20090508_1110714644.jpg","0","67","1","0","54");
INSERT INTO jos_joomgallery VALUES("526","6","Tradeshow Booth","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241815491","123","0","0","1","tradeshow_booth_20090508_1490945126.jpg","tradeshow_booth_20090508_1490945126.jpg","0","67","1","0","61");
INSERT INTO jos_joomgallery VALUES("527","6","Point of Purchase Display","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241815491","137","0","0","1","tradeshow_booth_20090508_1357672207.jpg","tradeshow_booth_20090508_1357672207.jpg","0","67","1","0","5");
INSERT INTO jos_joomgallery VALUES("528","6","Point of Purchase Display","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\">Case Studies</a> section.","1241815491","133","0","0","1","tradeshow_booth_20090508_2022143124.jpg","tradeshow_booth_20090508_2022143124.jpg","0","67","1","0","17");
INSERT INTO jos_joomgallery VALUES("529","35","Website","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website. <a target=\"_blank\" href=\"http://www.sailmainecoast.com/\">Visit the site here.</a>","1241815922","73","0","0","1","promotional_dvd_package_20090508_2010501095.jpg","promotional_dvd_package_20090508_2010501095.jpg","0","67","1","0","130");
INSERT INTO jos_joomgallery VALUES("530","35","Website","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website. <a target=\"_blank\" href=\"http://www.sailmainecoast.com/\">Visit the site here.</a>","1241815923","81","0","0","1","promotional_dvd_package_20090508_1054407744.jpg","promotional_dvd_package_20090508_1054407744.jpg","0","67","1","0","136");
INSERT INTO jos_joomgallery VALUES("540","39","Tween Notes Package","Everyday Innovations, Inc","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1242158830","80","0","0","1","tween_notes_package_20090512_1013590866.jpg","tween_notes_package_20090512_1013590866.jpg","0","62","1","0","243");
INSERT INTO jos_joomgallery VALUES("541","39","Tween Notes Package","Everyday Innovations, Inc","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1242158830","79","0","0","1","tween_notes_package_20090512_1348682471.jpg","tween_notes_package_20090512_1348682471.jpg","0","62","1","0","244");
INSERT INTO jos_joomgallery VALUES("542","39","Tween Notes Package","Everyday Innovations, Inc","Having worked together on packaging for PicoPad Wallet Notes, California company Everyday Innovations called on Pica to design countertop point-of-purchase displays for two lines of PicoPad products. Pica Design also developed Everyday Innovations\' new Emergency Pico Pad backcard packaging.","1242158831","65","0","0","1","tween_notes_package_20090512_1985992485.jpg","tween_notes_package_20090512_1985992485.jpg","0","62","1","0","247");
INSERT INTO jos_joomgallery VALUES("543","38","Product Label","Peace Preserves","Launching a new fundraising product&mdash;Peace Preserves&mdash;Cathy Roberts came to us to create the product identity. We went on to create the label that would wrap the jam jars of her first batch of preserves. A portion of every sale is donated to nonprofit youth organizations involved in promoting peace.","1242158993","119","0","0","1","product_label_20090512_1462181196.jpg","product_label_20090512_1462181196.jpg","0","62","1","0","187");
INSERT INTO jos_joomgallery VALUES("544","37","Brand & Identity","Northeastern Advisory Group","For the launch of this new bookkeeping, accounting and consulting firm, we developed the companyís logo ID, collateral and web site to highlight the companyís services and benefits of partnership.","1242159090","66","0","0","1","brand__identity_20090512_2043862689.jpg","brand__identity_20090512_2043862689.jpg","0","62","1","0","238");
INSERT INTO jos_joomgallery VALUES("545","35","Maine Windjammer Association","Maine Windjammer Association","Pica Design created a promotional DVD package for the Maine Windjammer Association in 2005 (including cover design, DVD label design, and 4-page insert). Since then, we have updated that package and designed numerous marketing pieces for the organization, such as color and black &amp; white print advertising campaigns, rack cards, direct mail pieces, web advertising, and a new website.","1242159180","77","0","0","1","maine_windjammer_association_20090512_1149181967.jpg","maine_windjammer_association_20090512_1149181967.jpg","0","62","1","0","141");
INSERT INTO jos_joomgallery VALUES("546","29","Brand & Identity","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1242159326","7","0","0","0","brand__identity_20090512_1908959971.jpg","brand__identity_20090512_1908959971.jpg","0","62","1","0","92");
INSERT INTO jos_joomgallery VALUES("547","29","Brand & Identity","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1242159326","81","0","0","1","brand__identity_20090512_2036040779.jpg","brand__identity_20090512_2036040779.jpg","0","62","1","0","93");
INSERT INTO jos_joomgallery VALUES("564","29","Marketing Communications","Houses & Cottages","<div>A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.</div>","1243983056","84","0","0","1","marketing_communications_20090602_1997835551.jpg","marketing_communications_20090602_1997835551.jpg","0","64","1","0","100");
INSERT INTO jos_joomgallery VALUES("548","28","Brand & Identity","Glen Cove Dental Associates","","1242159427","58","0","0","1","brand__identity_20090512_1903481352.jpg","brand__identity_20090512_1903481352.jpg","0","62","1","0","191");
INSERT INTO jos_joomgallery VALUES("549","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1242159536","85","0","0","1","juice_10_conference_logo_20090512_1634348058.jpg","juice_10_conference_logo_20090512_1634348058.jpg","0","62","1","0","89");
INSERT INTO jos_joomgallery VALUES("550","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1242159536","78","0","0","1","juice_10_conference_logo_20090512_1307612052.jpg","juice_10_conference_logo_20090512_1307612052.jpg","0","62","1","0","108");
INSERT INTO jos_joomgallery VALUES("551","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1242159536","72","0","0","1","juice_10_conference_logo_20090512_1485090309.jpg","juice_10_conference_logo_20090512_1485090309.jpg","0","62","1","0","157");
INSERT INTO jos_joomgallery VALUES("552","23","Juice 1.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1242159537","2","0","0","0","juice_10_conference_logo_20090512_1555479106.jpg","juice_10_conference_logo_20090512_1555479106.jpg","0","62","1","0","161");
INSERT INTO jos_joomgallery VALUES("553","20","Someone Who\'ll Watch Over Me Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160127","73","0","0","1","poster_20090512_1532041639.jpg","poster_20090512_1532041639.jpg","0","62","1","0","76");
INSERT INTO jos_joomgallery VALUES("554","20","The Skin of Our Teeth Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160127","70","0","0","1","poster_20090512_1069619137.jpg","poster_20090512_1069619137.jpg","0","62","1","0","79");
INSERT INTO jos_joomgallery VALUES("555","20","Tintypes Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160128","71","0","0","1","poster_20090512_2068337683.jpg","poster_20090512_2068337683.jpg","0","62","1","0","85");
INSERT INTO jos_joomgallery VALUES("556","20","The Firebird Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160128","79","0","0","1","poster_20090512_1404822919.jpg","poster_20090512_1404822919.jpg","0","62","1","0","86");
INSERT INTO jos_joomgallery VALUES("557","20","Metamorphoses Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160128","79","0","0","1","poster_20090512_1752716742.jpg","poster_20090512_1752716742.jpg","0","62","1","0","90");
INSERT INTO jos_joomgallery VALUES("622","20","Maskers Website","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1268942912","30","0","0","1","maskers_website_20100318_1956101526.jpg","maskers_website_20100318_1956101526.jpg","0","67","1","0","4");
INSERT INTO jos_joomgallery VALUES("559","20","Mask Menagerie Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160128","72","0","0","1","poster_20090512_1684839754.jpg","poster_20090512_1684839754.jpg","0","62","1","0","94");
INSERT INTO jos_joomgallery VALUES("623","20","Maskers Website","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1268942913","27","0","0","1","maskers_website_20100318_1797058076.jpg","maskers_website_20100318_1797058076.jpg","0","67","1","0","28");
INSERT INTO jos_joomgallery VALUES("561","20","True West Poster","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\' Theater, Pica Design has created promotional collateral, including the community theater\'s season brochure, program, and show posters.","1242160128","82","0","0","1","poster_20090512_1818548875.jpg","poster_20090512_1818548875.jpg","0","62","1","0","98");
INSERT INTO jos_joomgallery VALUES("562","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maine&rsquo;s largest independent community banking organization and its affiliates.","1243973550","98","0","0","1","advertising__business_collateral_20090602_1473760788.jpg","advertising__business_collateral_20090602_1473760788.jpg","0","67","1","0","358");
INSERT INTO jos_joomgallery VALUES("563","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maine&rsquo;s largest independent community banking organization and its affiliates.","1243973551","99","0","0","1","advertising__business_collateral_20090602_1329288728.jpg","advertising__business_collateral_20090602_1329288728.jpg","0","67","1","0","360");
INSERT INTO jos_joomgallery VALUES("565","40","Brochure & Map 2009","","","1250025241","4","0","0","0","brochure__map_2009_20090811_2090197716.jpg","brochure__map_2009_20090811_2090197716.jpg","0","62","1","0","147");
INSERT INTO jos_joomgallery VALUES("566","40","Brochure & Map 2009","","","1250025241","0","0","0","0","brochure__map_2009_20090811_2031772314.jpg","brochure__map_2009_20090811_2031772314.jpg","0","62","1","0","150");
INSERT INTO jos_joomgallery VALUES("567","40","Brochure & Map 2009","","","1250025241","0","0","0","0","brochure__map_2009_20090811_1358972894.jpg","brochure__map_2009_20090811_1358972894.jpg","0","62","1","0","153");
INSERT INTO jos_joomgallery VALUES("568","40","Brochure & Map 2009","","","1250025241","3","0","0","0","brochure__map_2009_20090811_1386521964.jpg","brochure__map_2009_20090811_1386521964.jpg","0","62","1","0","154");
INSERT INTO jos_joomgallery VALUES("569","40","Brochure & Map 2009","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1250025241","58","0","0","1","brochure__map_2009_20090811_1240656083.jpg","brochure__map_2009_20090811_1240656083.jpg","0","62","1","0","158");
INSERT INTO jos_joomgallery VALUES("570","40","Brochure & Map 2009","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1250025242","71","0","0","1","brochure__map_2009_20090811_1265132862.jpg","brochure__map_2009_20090811_1265132862.jpg","0","62","1","0","160");
INSERT INTO jos_joomgallery VALUES("571","40","Map 2009","Penobscot Marine Museum","Thirteen buildings brimming with art, relics of maritime history and culture, and educational exhibitions: these are the home of Penobscot Marine Museum. Located in the seaside village of Searsport, the museum has seen much growth in its 67 years. Yet, its brand image still reflected the ëoldí museum. Wanting to attract more visitors, they came to Pica Design to re-brand the museum. The new logo ID, a new membership brochure and fundraising collateral all grew out of our work together to visually blend history with the present.","1250025242","75","0","0","1","brochure__map_2009_20090811_1973733153.jpg","brochure__map_2009_20090811_1973733153.jpg","0","62","1","0","131");
INSERT INTO jos_joomgallery VALUES("572","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027660","1","0","0","0","advertising__business_collateral_20090811_1533814552.jpg","advertising__business_collateral_20090811_1533814552.jpg","0","62","1","0","361");
INSERT INTO jos_joomgallery VALUES("573","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027660","0","0","0","0","advertising__business_collateral_20090811_1215929664.jpg","advertising__business_collateral_20090811_1215929664.jpg","0","62","1","0","363");
INSERT INTO jos_joomgallery VALUES("574","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027660","72","0","0","1","advertising__business_collateral_20090811_1173782672.jpg","advertising__business_collateral_20090811_1173782672.jpg","0","62","1","0","364");
INSERT INTO jos_joomgallery VALUES("575","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027660","1","0","0","0","advertising__business_collateral_20090811_1126045096.jpg","advertising__business_collateral_20090811_1126045096.jpg","0","62","1","0","367");
INSERT INTO jos_joomgallery VALUES("576","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027660","66","0","0","1","advertising__business_collateral_20090811_1769702118.jpg","advertising__business_collateral_20090811_1769702118.jpg","0","62","1","0","368");
INSERT INTO jos_joomgallery VALUES("577","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027661","0","0","0","0","advertising__business_collateral_20090811_1918938478.jpg","advertising__business_collateral_20090811_1918938478.jpg","0","62","1","0","369");
INSERT INTO jos_joomgallery VALUES("578","10","Advertising & Business Collateral","Camden National Corporation","Now in our second year of providing graphic design services to Camden National Corporation, our ongoing work includes print and interactive ads, brochures, posters and collateral for Maineís largest independent community banking organization and its affiliates.","1250027661","0","0","0","0","advertising__business_collateral_20090811_1409878570.jpg","advertising__business_collateral_20090811_1409878570.jpg","0","62","1","0","371");
INSERT INTO jos_joomgallery VALUES("579","21","Brochure 2009","Belfast Cohousing & Ecovillage","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1250029790","77","0","0","1","brochure_2009_20090811_1636610210.jpg","brochure_2009_20090811_1636610210.jpg","0","62","1","0","138");
INSERT INTO jos_joomgallery VALUES("580","21","Brochure 2009","Belfast Cohousing & Ecovillage","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1250029790","152","0","0","1","brochure_2009_20090811_1153862905.jpg","brochure_2009_20090811_1153862905.jpg","0","62","1","0","121");
INSERT INTO jos_joomgallery VALUES("581","21","Brochure 2009","Belfast Cohousing & Ecovillage","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1250029790","66","0","0","1","brochure_2009_20090811_1241956326.jpg","brochure_2009_20090811_1241956326.jpg","0","62","1","0","132");
INSERT INTO jos_joomgallery VALUES("582","21","Brochure 2009","Belfast Cohousing & Ecovillage","Belfast Cohousing &amp; Ecovillage\'s mission is to be an environmentally sustainable, affordable, multi-generational cohousing community that is easily accessible to Belfast, includes land reserved for agricultural use and open space, and is an innovative housing development option for rural Maine. Pica Design created a promotional brochure and then went on to create advertising for the organization.","1250029790","73","0","0","1","brochure_2009_20090811_1864125509.jpg","brochure_2009_20090811_1864125509.jpg","0","62","1","0","126");
INSERT INTO jos_joomgallery VALUES("583","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","<p>A local brewery, Belfast Bay Brewing Company, came to Pica to create new sales materials to coincide with a sales trip to the midwest. We designed a sell sheet and table-top promotion for their Lobster Ale and Oatmeal Stout.</p>","1250030481","207","0","0","1","advertising__marketing_collateral_20090811_1155478024.jpg","advertising__marketing_collateral_20090811_1155478024.jpg","0","62","1","0","65");
INSERT INTO jos_joomgallery VALUES("584","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","<p>A local brewery, Belfast Bay Brewing Company, came to Pica to create new sales materials to coincide with a sales trip to the midwest. We designed a sell sheet and table-top promotion for their Lobster Ale and Oatmeal Stout.</p>","1250030481","97","0","0","1","advertising__marketing_collateral_20090811_1077397314.jpg","advertising__marketing_collateral_20090811_1077397314.jpg","0","62","1","0","118");
INSERT INTO jos_joomgallery VALUES("585","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","<p>A local brewery, Belfast Bay Brewing Company, came to Pica to create new sales materials to coincide with a sales trip to the midwest. We designed a sell sheet and table-top promotion for their Lobster Ale and Oatmeal Stout.</p>","1250030482","108","0","0","1","advertising__marketing_collateral_20090811_1511704754.jpg","advertising__marketing_collateral_20090811_1511704754.jpg","0","62","1","0","105");
INSERT INTO jos_joomgallery VALUES("586","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","<p>A local brewery, Belfast Bay Brewing Company, came to Pica to create new sales materials to coincide with a sales trip to the midwest. We designed a sell sheet and table-top promotion for their Lobster Ale and Oatmeal Stout.</p>","1250030482","100","0","0","1","advertising__marketing_collateral_20090811_1627660181.jpg","advertising__marketing_collateral_20090811_1627660181.jpg","0","62","1","0","97");
INSERT INTO jos_joomgallery VALUES("587","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","","1250030482","0","0","0","0","advertising__marketing_collateral_20090811_1688172156.jpg","advertising__marketing_collateral_20090811_1688172156.jpg","0","62","1","0","125");
INSERT INTO jos_joomgallery VALUES("588","57","Advertising & Marketing Collateral","Belfast Bay Brewing Company","","1250030482","0","0","0","0","advertising__marketing_collateral_20090811_1763963507.jpg","advertising__marketing_collateral_20090811_1763963507.jpg","0","62","1","0","128");
INSERT INTO jos_joomgallery VALUES("589","29","Brochure & Marketing Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1250031543","66","0","0","1","brochure__marketing_collateral_20090811_1376886443.jpg","brochure__marketing_collateral_20090811_1376886443.jpg","0","62","1","0","104");
INSERT INTO jos_joomgallery VALUES("590","29","Brochure & Marketing Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1250031544","65","0","0","1","brochure__marketing_collateral_20090811_1522996977.jpg","brochure__marketing_collateral_20090811_1522996977.jpg","0","62","1","0","106");
INSERT INTO jos_joomgallery VALUES("591","29","Brochure & Marketing Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1250031544","77","0","0","1","brochure__marketing_collateral_20090811_1250733103.jpg","brochure__marketing_collateral_20090811_1250733103.jpg","0","62","1","0","103");
INSERT INTO jos_joomgallery VALUES("592","29","Brochure & Marketing Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1250031544","72","0","0","1","brochure__marketing_collateral_20090811_1238392531.jpg","brochure__marketing_collateral_20090811_1238392531.jpg","0","62","1","0","107");
INSERT INTO jos_joomgallery VALUES("593","29","Brochure & Marketing Collateral","Houses & Cottages","A residential architectural design studio, Houses &amp; Cottages specializes in both traditional and progressive design. We incorporated Principal Eric E. Allynís design aesthetics while creating the companyís new identity and website. Houses &amp; Cottages reveres a strong connection to the environment; we built that connection into the website, grounding the architectural work with natural imagery.","1250031544","1","0","0","0","brochure__marketing_collateral_20090811_1931165816.jpg","brochure__marketing_collateral_20090811_1931165816.jpg","0","62","1","0","109");
INSERT INTO jos_joomgallery VALUES("594","58","Allyn & Russillo Architects","Allyn & Russillo Architects","<p>A new partnership between Rockland, Maine architects Eric E. Allyn and Joseph Rusillo prompted the need for a new Logo ID. Allyn and Rusillo came to Pica Design to create the new ID and, following its completion, the company\'s business collateral.</p>","1250032423","81","0","0","1","allyn__russillo_architects_20090811_1305930237.jpg","allyn__russillo_architects_20090811_1305930237.jpg","0","62","1","0","8");
INSERT INTO jos_joomgallery VALUES("595","58","Allyn & Russillo Architects","Allyn & Russillo Architects","<p>A new partnership between Rockland, Maine architects Eric E. Allyn and Joseph Rusillo prompted the need for a new Logo ID. Allyn and Rusillo came to Pica Design to create the new ID and, following its completion, the company\'s business collateral.</p>","1250032424","79","0","0","1","allyn__russillo_architects_20090811_1389266083.jpg","allyn__russillo_architects_20090811_1389266083.jpg","0","62","1","0","19");
INSERT INTO jos_joomgallery VALUES("596","58","Allyn & Russillo Architects","Allyn & Russillo Architects","<p>A new partnership between Rockland, Maine architects Eric E. Allyn and Joseph Rusillo prompted the need for a new Logo ID. Allyn and Rusillo came to Pica Design to create the new ID and, following its completion, the company\'s business collateral.</p>","1250032424","67","0","0","1","allyn__russillo_architects_20090811_1978421990.jpg","allyn__russillo_architects_20090811_1978421990.jpg","0","62","1","0","38");
INSERT INTO jos_joomgallery VALUES("597","58","Allyn & Russillo Architects","Allyn & Russillo Architects","<p>A new partnership between Rockland, Maine architects Eric E. Allyn and Joseph Rusillo prompted the need for a new Logo ID. Allyn and Rusillo came to Pica Design to create the new ID and, following its completion, the company\'s business collateral.</p>","1250032424","69","0","0","1","allyn__russillo_architects_20090811_1766091598.jpg","allyn__russillo_architects_20090811_1766091598.jpg","0","62","1","0","50");
INSERT INTO jos_joomgallery VALUES("598","58","Allyn & Russillo Architects","Allyn &amp; Russillo Architects","","1250032662","1","0","0","0","allyn__russillo_architects_20090811_1451701816.jpg","allyn__russillo_architects_20090811_1451701816.jpg","0","62","1","0","56");
INSERT INTO jos_joomgallery VALUES("600","23","Juice 2.0 Conference Logo","Midcoast Magnet","Midcoast Magnet brings people together to develop innovative projects that support creativity, livability and economic sustainability in Midcoast Maine. The organization initiated an inspired brand evolution when they planned Juice, the 2007 Creative Economy Conference. With brand flexibility in mind, Pica Design created the Juice identity, which became the design foundation for the Conference website, collateral and signage. Juice 2.0, planned for Fall 2009, is underway.","1250179383","83","0","0","1","juice_20_conference_logo_20090813_1764899878.jpg","juice_20_conference_logo_20090813_1764899878.jpg","0","67","1","0","163");
INSERT INTO jos_joomgallery VALUES("601","58","Allyn & Russillo Architects","Allyn & Russillo Architects","A new partnership between Rockland, Maine architects Eric E. Allyn and Joseph Rusillo prompted the need for a new Logo ID. Allyn and Rusillo came to Pica Design to create the new ID and, following its completion, the company\'s business collateral.","1250181452","157","0","0","1","allyn__russillo_architects_20090813_1700566702.jpg","allyn__russillo_architects_20090813_1700566702.jpg","0","67","1","0","69");
INSERT INTO jos_joomgallery VALUES("602","16","Bluestreak Website Update","Bluestreak","Launching super-fast services in midcoast Maine, this local ISP wanted to grab the attention of Internet users in Belfast. We created a unique, customizable marketing campaign for Bluestreak and executed the campaign--from conception through design, illustration, media planning and direct mailing. Materials included direct-to-consumer promotions, poster advertising, direct mail and follow-up newspaper advertising. <a target=\"_blank\" href=\"http://www.bluestreakme.com/\">Visit the site here.</a>","1250271809","61","0","0","1","bluestreak_20090814_1181467504.jpg","bluestreak_20090814_1181467504.jpg","0","64","1","0","59");
INSERT INTO jos_joomgallery VALUES("603","16","Bluestreak Website Update","Bluestreak","Launching super-fast services in midcoast Maine, this local ISP wanted to grab the attention of Internet users in Belfast. We created a unique, customizable marketing campaign for Bluestreak and executed the campaign--from conception through design, illustration, media planning and direct mailing. Materials included direct-to-consumer promotions, poster advertising, direct mail and follow-up newspaper advertising. <a target=\"_blank\" href=\"http://www.bluestreakme.com/\">Visit the site here.</a>","1250271809","133","0","0","1","bluestreak_20090814_1991646890.jpg","bluestreak_20090814_1991646890.jpg","0","64","1","0","45");
INSERT INTO jos_joomgallery VALUES("604","6","Java Kit Holiday Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1251132880","89","0","0","1","java_kit_packaging_20090824_1318562379.jpg","java_kit_packaging_20090824_1318562379.jpg","0","64","1","0","78");
INSERT INTO jos_joomgallery VALUES("605","6","Java Kit Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1251132880","105","0","0","1","java_kit_packaging_20090824_1812872636.jpg","java_kit_packaging_20090824_1812872636.jpg","0","64","1","0","84");
INSERT INTO jos_joomgallery VALUES("606","6","Java Kit Packaging","Jetboil, Inc.","Having re-designed the entire Jetboil packaging line, we were well-acquainted with the Jetboil brand, in 2- and 3-D. Every product in the Jetboil catalog was built into this permanent point-of-purchase display designed for outdoor retailers. The goal was to show how each product works together as an outdoor cooking system. A multi-disciplinary team from Jetboil collaborated with us on concept development, and the structural, branding and educational elements were all designed by Pica Design. Read more about this work in our <a href=\"work/case-studies.html\" alt=\"Pica Design Case Studies\">Case Studies</a> section.","1251132880","88","0","0","1","java_kit_packaging_20090824_1837599848.jpg","java_kit_packaging_20090824_1837599848.jpg","0","64","1","0","87");
INSERT INTO jos_joomgallery VALUES("607","53","Traveler Sell Sheet","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1268853458","15","0","0","1","traveler_transition_sell_sheet_20100317_1750861483.jpg","traveler_transition_sell_sheet_20100317_1750861483.jpg","0","67","1","0","3");
INSERT INTO jos_joomgallery VALUES("610","65","Emergency Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268854950","28","0","0","1","steripen_emergency_20100317_1350619653.jpg","steripen_emergency_20100317_1350619653.jpg","0","67","1","0","22");
INSERT INTO jos_joomgallery VALUES("611","65","Emergency Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268854950","47","0","0","1","steripen_emergency_20100317_1650566680.jpg","steripen_emergency_20100317_1650566680.jpg","0","67","1","0","2");
INSERT INTO jos_joomgallery VALUES("609","53","Traveler Transition Sell Sheet","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> UV water purifiers, met with us in late 2003 to initiate the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Classic, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Adventurer, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Traveler, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Journey<span class=\"Apple-style-span\" style=\"vertical-align: super;\">LCD</span>, and SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Protector, as well as the SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Solar Charging Case, SteriPEN<span class=\"Apple-style-span\" style=\"vertical-align: super;\">Æ</span> Bottle Topper for SIGG<span class=\"Apple-style-span\" style=\"vertical-align: super;\">TM</span> and other accessories.","1268853875","7","0","0","1","traveler_transition_sell_sheet_20100317_1073581509.jpg","traveler_transition_sell_sheet_20100317_1073581509.jpg","0","67","1","0","27");
INSERT INTO jos_joomgallery VALUES("612","51","Traveler Mini Retail Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268856859","19","0","0","1","traveler_packaging_20100317_1278815573.jpg","traveler_packaging_20100317_1278815573.jpg","0","67","1","0","26");
INSERT INTO jos_joomgallery VALUES("613","51","Traveler Retail Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268856859","74","0","0","1","traveler_packaging_20100317_1926491412.jpg","traveler_packaging_20100317_1926491412.jpg","0","67","1","0","10");
INSERT INTO jos_joomgallery VALUES("614","51","Traveler Mini Online Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268856859","24","0","0","1","traveler_packaging_20100317_1056318452.jpg","traveler_packaging_20100317_1056318452.jpg","0","67","1","0","41");
INSERT INTO jos_joomgallery VALUES("615","51","Traveler Online Packaging","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPENÆ UV water purifiers, met with us in late 2003 to initiate the SteriPENÆ identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPENÆ Classic, SteriPENÆ Adventurer, SteriPENÆ Traveler, SteriPENÆ JourneyLCD, and SteriPENÆ Protector, as well as the SteriPENÆ Solar Charging Case, SteriPENÆ Bottle Topper for SIGGTM and other accessories.","1268856859","20","0","0","1","traveler_packaging_20100317_1588683800.jpg","traveler_packaging_20100317_1588683800.jpg","0","67","1","0","36");
INSERT INTO jos_joomgallery VALUES("616","4","Retail Packaging Detail","Hydro-Photon, Inc.","","1268857743","1","0","0","0","detailhpi_20100317_1129547780.jpg","detailhpi_20100317_1129547780.jpg","0","67","1","0","289");
INSERT INTO jos_joomgallery VALUES("617","49","TGA Booth Design","Hydro-Photon, Inc.","Hydro-Photon, Inc., developers of SteriPEN&reg; UV water purifiers, met with us in late 2003 to initiate the SteriPEN&reg; identity and brochure design. That was the beginning of a 6-year partnership during which Pica Design created nearly all of the marketing, sales and corporate materials that Hydro-Photon, Inc. produced for the SteriPEN&reg; Classic, SteriPEN&reg; Adventurer, SteriPEN&reg; Traveler, SteriPEN&reg; JourneyLCD, and SteriPEN&reg; Protector, as well as the SteriPEN&reg; Solar Charging Case, SteriPEN&reg; Bottle Topper for SIGGTM and other accessories.","1268859464","7","0","0","1","tga_booth_design_20100317_1813713860.jpg","tga_booth_design_20100317_1813713860.jpg","0","67","1","0","382");
INSERT INTO jos_joomgallery VALUES("618","66","French and Webb Website","French &amp; Webb, Inc.","","1268860983","34","0","0","1","french_and_webb_website_20100317_1468668941.jpg","french_and_webb_website_20100317_1468668941.jpg","0","67","1","0","11");
INSERT INTO jos_joomgallery VALUES("619","66","French and Webb Website","French &amp; Webb, Inc.","","1268860983","24","0","0","1","french_and_webb_website_20100317_1728343366.jpg","french_and_webb_website_20100317_1728343366.jpg","0","67","1","0","37");
INSERT INTO jos_joomgallery VALUES("621","66","French and Webb Website","French &amp; Webb, Inc.","","1268861347","11","0","0","0","french_and_webb_website_20100317_1713236075.jpg","french_and_webb_website_20100317_1713236075.jpg","0","67","1","0","20");
INSERT INTO jos_joomgallery VALUES("624","66","French and Webb Website","French &amp; Webb, Inc.","","1268944835","81","0","0","1","french_and_webb_website_20100318_1182874733.jpg","french_and_webb_website_20100318_1182874733.jpg","0","67","1","0","43");
INSERT INTO jos_joomgallery VALUES("625","61","Logo Identity","Heidelberg International Women\'s Forum","","1268945798","25","0","0","1","logo_identity_20100318_1942410477.jpg","logo_identity_20100318_1942410477.jpg","0","67","1","0","12");
INSERT INTO jos_joomgallery VALUES("626","61","Logo Identity","Heidelberg International Women\'s Forum","","1268945799","72","0","0","1","logo_identity_20100318_1596201270.jpg","logo_identity_20100318_1596201270.jpg","0","67","1","0","25");
INSERT INTO jos_joomgallery VALUES("627","60","Business Cards","Home Energy Solutions","","1268948007","37","0","0","1","logo_identity_20100318_1809792670.jpg","logo_identity_20100318_1809792670.jpg","0","67","1","0","2");
INSERT INTO jos_joomgallery VALUES("643","20","Maskers Website","Belfast Maskers","For the past 6 seasons of the Belfast Maskers\\&#039; Theater, Pica Design has created promotional collateral, including the community theater\\&#039;s season brochure, program, and show posters.","1269032737","42","0","0","1","maskers_website_20100319_1738446972.jpg","maskers_website_20100319_1738446972.jpg","0","67","1","0","103");
INSERT INTO jos_joomgallery VALUES("630","63","Business Card","Christopher Moore CabinetMakers","","1269022782","19","0","0","1","logo_identity_20100319_1130685196.jpg","logo_identity_20100319_1130685196.jpg","0","67","1","0","39");
INSERT INTO jos_joomgallery VALUES("631","63","Logo Identity","Christopher Moore CabinetMakers","","1269022783","66","0","0","1","logo_identity_20100319_1259681213.jpg","logo_identity_20100319_1259681213.jpg","0","67","1","0","15");
INSERT INTO jos_joomgallery VALUES("632","63","Landing Page","Christopher Moore CabinetMakers","","1269022783","19","0","0","1","logo_identity_20100319_1089673860.jpg","logo_identity_20100319_1089673860.jpg","0","67","1","0","48");
INSERT INTO jos_joomgallery VALUES("633","63","Logo Identity","Christopher Moore CabinetMakers","","1269022783","20","0","0","1","logo_identity_20100319_1271154170.jpg","logo_identity_20100319_1271154170.jpg","0","67","1","0","1");
INSERT INTO jos_joomgallery VALUES("634","64","Brochure","Hospice Volunteers of Waldo County","","1269026022","20","0","0","1","brochure_20100319_1968138178.jpg","brochure_20100319_1968138178.jpg","0","67","1","0","1");
INSERT INTO jos_joomgallery VALUES("635","64","Brochure","Hospice Volunteers of Waldo County","","1269026022","21","0","0","1","brochure_20100319_1935338734.jpg","brochure_20100319_1935338734.jpg","0","67","1","0","2");
INSERT INTO jos_joomgallery VALUES("636","64","Brochure","Hospice Volunteers of Waldo County","","1269026022","21","0","0","1","brochure_20100319_1598498154.jpg","brochure_20100319_1598498154.jpg","0","67","1","0","3");
INSERT INTO jos_joomgallery VALUES("637","64","Brochure","Hospice Volunteers of Waldo County","","1269026022","55","0","0","1","brochure_20100319_1167761056.jpg","brochure_20100319_1167761056.jpg","0","67","1","0","4");
INSERT INTO jos_joomgallery VALUES("638","59","Brochure","Waldo Community Action Partners","","1269027217","20","0","0","1","brochure_20100319_2004626887.jpg","brochure_20100319_2004626887.jpg","0","67","1","0","1");
INSERT INTO jos_joomgallery VALUES("639","59","Brochure","Waldo Community Action Partners","","1269027217","13","0","0","1","brochure_20100319_1825456780.jpg","brochure_20100319_1825456780.jpg","0","67","1","0","2");
INSERT INTO jos_joomgallery VALUES("640","59","Brochure","Waldo Community Action Partners","","1269027217","41","0","0","1","brochure_20100319_1422560973.jpg","brochure_20100319_1422560973.jpg","0","67","1","0","3");
INSERT INTO jos_joomgallery VALUES("641","60","Logo Identity","Home Energy Solutions","","1269029568","62","0","0","1","logo_identity_20100319_1303767529.jpg","logo_identity_20100319_1303767529.jpg","0","67","1","0","3");
INSERT INTO jos_joomgallery VALUES("642","60","Logo Identity","Home Energy Solutions","","1269029568","27","0","0","1","logo_identity_20100319_1826570128.jpg","logo_identity_20100319_1826570128.jpg","0","67","1","0","1");
INSERT INTO jos_joomgallery VALUES("644","68","Vision Plan","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291105","26","0","0","1","txtresponsibly_collateral_20100322_1230993341.jpg","txtresponsibly_collateral_20100322_1230993341.jpg","0","67","1","0","3");
INSERT INTO jos_joomgallery VALUES("645","68","Car Magnets","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291105","26","0","0","1","txtresponsibly_collateral_20100322_2064970230.jpg","txtresponsibly_collateral_20100322_2064970230.jpg","0","67","1","0","4");
INSERT INTO jos_joomgallery VALUES("646","68","Distracted Driving Summit Name Badge","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291105","18","0","0","1","txtresponsibly_collateral_20100322_1804395308.jpg","txtresponsibly_collateral_20100322_1804395308.jpg","0","67","1","0","5");
INSERT INTO jos_joomgallery VALUES("647","68","Awareness Poster 1 Detail","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291105","31","0","0","1","txtresponsibly_collateral_20100322_1022861772.jpg","txtresponsibly_collateral_20100322_1022861772.jpg","0","67","1","0","8");
INSERT INTO jos_joomgallery VALUES("648","68","Awareness Poster 2 Detail","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291106","17","0","0","0","txtresponsibly_collateral_20100322_1204004698.jpg","txtresponsibly_collateral_20100322_1204004698.jpg","0","67","1","0","10");
INSERT INTO jos_joomgallery VALUES("649","68","Collateral","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291106","24","0","0","1","txtresponsibly_collateral_20100322_1619997728.jpg","txtresponsibly_collateral_20100322_1619997728.jpg","0","67","1","0","6");
INSERT INTO jos_joomgallery VALUES("650","68","Logo Identity","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291106","84","0","0","1","txtresponsibly_collateral_20100322_1432042925.jpg","txtresponsibly_collateral_20100322_1432042925.jpg","0","67","1","0","1");
INSERT INTO jos_joomgallery VALUES("651","68","Awareness Poster 1","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291106","22","0","0","1","txtresponsibly_collateral_20100322_1471205306.jpg","txtresponsibly_collateral_20100322_1471205306.jpg","0","67","1","0","7");
INSERT INTO jos_joomgallery VALUES("652","68","Awareness Poster 2","TxtResponsibly","TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.","1269291106","29","0","0","1","txtresponsibly_collateral_20100322_1349994680.jpg","txtresponsibly_collateral_20100322_1349994680.jpg","0","67","1","0","9");
INSERT INTO jos_joomgallery VALUES("653","68","TxtResponsibly Website","TxtResponsibly","<p>TxtResponsibly.org is a MustBeDoneô Campaign created, sponsored and donated by Pica Design, LLC. As designers and communicators we are compelled to affect change for the better. It is our social responsibility to leverage our voice and creativity to make this happen. TxtResponsibly.org has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To get involved with TxtResponsibly.org or become a Co-Sponsor of a campaign, please contact us at info@txtresponsibly.org.</p>\n<p><a href=\"http://txtresponsibly.org/\">http://txtresponsibly.org/</a></p>","1269292583","33","0","0","1","txtresponsibly_website_20100322_1942692844.jpg","txtresponsibly_website_20100322_1942692844.jpg","0","67","1","0","2");



DROP TABLE jos_joomgallery_catg;

CREATE TABLE `jos_joomgallery_catg` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  `catimage` varchar(100) DEFAULT NULL,
  `img_position` int(10) DEFAULT '0',
  `catpath` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `idx_parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

INSERT INTO jos_joomgallery_catg VALUES("1","Staff","0","<br>","65","0","0","","","0","staff_1");
INSERT INTO jos_joomgallery_catg VALUES("2","Studio","0","<br>","64","0","1","","","2","studio_2");
INSERT INTO jos_joomgallery_catg VALUES("3","Portfolio","0","<br>","63","0","1","","","0","/portfolio_3");
INSERT INTO jos_joomgallery_catg VALUES("4","Hydro-Photon, Inc.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n<li>Web Development</li>\n</ul>","9","0","1","","detailhpi_20100317_1129547780.jpg","0","/portfolio_3/hydro-photon_inc_4");
INSERT INTO jos_joomgallery_catg VALUES("5","Jaret &amp; Cohn","3","<ul>\n<li>Marketing Communications</li>\n</ul>","62","0","1","","p_20090206_1253430528.jpg","0","/portfolio_3/jaret_amp_cohn_5");
INSERT INTO jos_joomgallery_catg VALUES("6","Jetboil, Inc","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","36","0","1","","jetboil_20090318_2081386647.jpg","0","/portfolio_3/jetboil_inc_6");
INSERT INTO jos_joomgallery_catg VALUES("7","UniTel, Inc.","3","<ul>\n<li>Web Development</li>\n</ul>","61","0","1","","unitel_website_20090311_1762603548.jpg","0","/portfolio_3/unitel_inc_7");
INSERT INTO jos_joomgallery_catg VALUES("8","Cedarholm Garden Bay Inn","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Web Development</li>\n</ul>","15","0","1","","website_20090210_1594713260.jpg","0","/portfolio_3/cedarholm_garden_bay_inn_8");
INSERT INTO jos_joomgallery_catg VALUES("9","Green Mountain Environmental Resolutions, LLC","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","60","0","1","","gmer_business_card_20090407_1139966627.jpg","0","/portfolio_3/green_mountain_environmental_resolutions_llc_9");
INSERT INTO jos_joomgallery_catg VALUES("10","Camden National Corporation","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","21","0","1","","p_20090206_1747879002.jpg","0","/portfolio_3/camden_national_corporation_10");
INSERT INTO jos_joomgallery_catg VALUES("11","Pacific Writing Instruments Inc.","3","<ul>\n<li>Marketing Communications</li>\n</ul>","58","0","1","","pen_again_promotional_card_20090206_2052950602.jpg","0","/portfolio_3/pacific_writing_instruments_inc_11");
INSERT INTO jos_joomgallery_catg VALUES("12","Blue Hill Memorial Hospital","3","<ul>\n<li>Marketing Communications</li>\n</ul>","34","0","1","","annual_report_20090310_1871933753.jpg","0","/portfolio_3/blue_hill_memorial_hospital_12");
INSERT INTO jos_joomgallery_catg VALUES("13","American Transformation","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","59","0","1","","brand__identity_20090506_1509368004.jpg","0","/portfolio_3/american_transformation_13");
INSERT INTO jos_joomgallery_catg VALUES("14","Pinchy, Inc.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n<li>Web Development</li>\n</ul>","57","0","1","","brand__identity_20090429_1459030702.jpg","0","/portfolio_3/pinchy_inc_14");
INSERT INTO jos_joomgallery_catg VALUES("15","Guyot Designs Inc.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n<li>Web Development</li>\n</ul>","56","0","1","","p_20090206_1074254028.jpg","0","/portfolio_3/guyot_designs_inc_15");
INSERT INTO jos_joomgallery_catg VALUES("16","Bluestreak","3","<ul>\n<li>Marketing Communications</li>\n</ul>","55","0","1","","bluestreak_20090814_1991646890.jpg","0","/portfolio_3/bluestreak_16");
INSERT INTO jos_joomgallery_catg VALUES("17","Belfast Area Chamber of Commerce","3","<ul>\n<li>Marketing Communications</li>\n</ul>","54","0","1","","annual_guides_20090506_1896879298.jpg","0","/portfolio_3/belfast_area_chamber_of_commerce_17");
INSERT INTO jos_joomgallery_catg VALUES("18","Belfast Free Library","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","53","0","1","","belfast_free_library_20090316_1921955042.jpg","0","/portfolio_3/belfast_free_library_18");
INSERT INTO jos_joomgallery_catg VALUES("19","Blue Jacket Shipcrafters, Inc.","3","<ul>\n<li>Marketing Communications</li>\n</ul>","52","0","1","","product_catalogs_20090506_1608765711.jpg","0","/portfolio_3/blue_jacket_shipcrafters_inc_19");
INSERT INTO jos_joomgallery_catg VALUES("20","Belfast Maskers","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","12","0","1","","maskers_website_20100319_1738446972.jpg","0","/portfolio_3/belfast_maskers_20");
INSERT INTO jos_joomgallery_catg VALUES("21","Belfast Cohousing &amp; Ecovillage","3","<ul>\n<li>Marketing Communications</li>\n</ul>","25","0","1","","brochure_2009_20090811_1153862905.jpg","0","/portfolio_3/belfast_cohousing_amp_ecovillage_21");
INSERT INTO jos_joomgallery_catg VALUES("22","Knox Machine Company","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","50","0","1","","company_brochure_20090504_1601627361.jpg","0","/portfolio_3/knox_machine_company_22");
INSERT INTO jos_joomgallery_catg VALUES("23","Midcoast Magnet","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","49","0","1","","juice_10_conference_logo_20090506_1616550661.jpg","0","/portfolio_3/midcoast_magnet_23");
INSERT INTO jos_joomgallery_catg VALUES("24","Prismax","3","<ul>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","48","0","1","","jewelry_collection_catalog_20090506_1890320191.jpg","0","/portfolio_3/prismax_24");
INSERT INTO jos_joomgallery_catg VALUES("25","Coastal Enterprises Inc.","3","<ul>\n<li>Marketing Communications</li>\n</ul>","46","0","1","","business_development_booklet_20090429_1591904584.jpg","0","/portfolio_3/coastal_enterprises_inc_25");
INSERT INTO jos_joomgallery_catg VALUES("26","Maine Crafts Guild","3","<ul>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","45","0","1","","promotional_collateral_20090429_1833692354.jpg","0","/portfolio_3/maine_crafts_guild_26");
INSERT INTO jos_joomgallery_catg VALUES("27","Bruce Laukka, Inc.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","44","0","1","","bruce_laukka_inc_20090210_1239344381.jpg","0","/portfolio_3/bruce_laukka_inc_27");
INSERT INTO jos_joomgallery_catg VALUES("28","Glen Cove Dental Associates","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","43","0","1","","brand__identity_20090501_1365146721.jpg","0","/portfolio_3/glen_cove_dental_associates_28");
INSERT INTO jos_joomgallery_catg VALUES("29","Houses &amp; Cottages","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","42","0","1","","houses_and_cottages_20090310_1461475008.jpg","0","/portfolio_3/houses_amp_cottages_29");
INSERT INTO jos_joomgallery_catg VALUES("31","MEBSR","3","<br>","41","0","0","","","0","/portfolio_3/mebsr_31");
INSERT INTO jos_joomgallery_catg VALUES("34","Monroe Salt Works","3","<ul>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","39","0","1","","monroe_saltworks_ad_20090310_1636415083.jpg","0","/portfolio_3/monroe_salt_works_34");
INSERT INTO jos_joomgallery_catg VALUES("33","Maine Medical Association","3","<ul>\n<li>Marketing Communications</li>\n</ul>","40","0","1","","banquet_program_20090429_2045393575.jpg","0","/portfolio_3/maine_medical_association_33");
INSERT INTO jos_joomgallery_catg VALUES("35","Maine Windjammer Association","3","<ul>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","38","0","1","","promotional_dvd_package_20090501_1839740419.jpg","0","/portfolio_3/maine_windjammer_association_35");
INSERT INTO jos_joomgallery_catg VALUES("36","A-Train, Inc.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","37","0","0","","","0","/portfolio_3/a-train_inc_36");
INSERT INTO jos_joomgallery_catg VALUES("37","Northeastern Advisory Group","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","32","0","1","","website_20090506_1657273917.jpg","0","/portfolio_3/northeastern_advisory_group_37");
INSERT INTO jos_joomgallery_catg VALUES("38","Peace Preserves","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Retail Systems</li>\n</ul>","31","0","1","","product_label_20090501_2004291451.jpg","0","/portfolio_3/peace_preserves_38");
INSERT INTO jos_joomgallery_catg VALUES("39","Everyday Innovations, Inc.","3","<ul>\n<li>Retail Systems</li>\n</ul>","30","0","1","","pico_pad_20090310_1090660469.jpg","0","/portfolio_3/everyday_innovations_inc_39");
INSERT INTO jos_joomgallery_catg VALUES("40","Penobscot Marine Museum","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","29","0","1","","brochure__map_20090505_1692287035.jpg","0","/portfolio_3/penobscot_marine_museum_40");
INSERT INTO jos_joomgallery_catg VALUES("41","Parker Ridge Retirement Community","3","<ul>\n<li>Marketing Communications</li>\n</ul>","28","0","1","","company_brochure_20090505_1936122319.jpg","0","/portfolio_3/parker_ridge_retirement_community_41");
INSERT INTO jos_joomgallery_catg VALUES("42","SummerMaine","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","33","0","1","","brand__identity_20090421_1200770136.jpg","0","/portfolio_3/summermaine_42");
INSERT INTO jos_joomgallery_catg VALUES("43","RedMaple Sportswear Co.","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Web Development</li>\n</ul>","47","0","1","","identity_re-design_20090505_2023919694.jpg","0","/portfolio_3/redmaple_sportswear_co_43");
INSERT INTO jos_joomgallery_catg VALUES("44","Alpha Marketing, Inc.","3","<ul>\n<li>Marketing Communications</li>\n</ul>","27","0","1","","spider-man_1_promotion_collateral_20090429_1654601202.jpg","0","/portfolio_3/alpha_marketing_inc_44");
INSERT INTO jos_joomgallery_catg VALUES("45","Unity College","3","<ul>\n<li>Marketing Communications</li>\n</ul>","26","0","1","","college_magazine_20090421_1936104185.jpg","0","/portfolio_3/unity_college_45");
INSERT INTO jos_joomgallery_catg VALUES("46","Unity Foundation","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","24","0","1","","joy_brand__identity_20090430_1285730990.jpg","0","/portfolio_3/unity_foundation_46");
INSERT INTO jos_joomgallery_catg VALUES("47","FitsAll Filter","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","23","0","1","","p_20090206_1735703074.jpg","0","/portfolio_3/hydro-photon_inc_4/fitsall_filter_47");
INSERT INTO jos_joomgallery_catg VALUES("48","SteriPENÆ Adventurer","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","22","0","1","","hpi_20090312_2084122815.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_adventurer_48");
INSERT INTO jos_joomgallery_catg VALUES("49","Tradeshow Graphics","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","20","0","1","","hpi_20090312_2018983789.jpg","0","/portfolio_3/hydro-photon_inc_4/tradeshow_graphics_49");
INSERT INTO jos_joomgallery_catg VALUES("50","SteriPENÆ Bottle Topper for Sigg","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","19","0","1","","hpi_20090312_1462594786.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_bottle_topper_for_sigg_50");
INSERT INTO jos_joomgallery_catg VALUES("51","SteriPENÆ Traveler","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","51","0","1","","traveler_packaging_20100317_1926491412.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_traveler_51");
INSERT INTO jos_joomgallery_catg VALUES("52","SteriPENÆ Classic","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","18","0","1","","hpi_20090312_1859074772.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_classic_52");
INSERT INTO jos_joomgallery_catg VALUES("53","SteriPENÆ Marketing Communications","4","<ul>\n<li>Marketing Communications</li>\n</ul>","16","0","1","","hpi_20090312_1035567328.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_marketing_communications_53");
INSERT INTO jos_joomgallery_catg VALUES("55","SteriPENÆ Protector","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","8","0","1","","hpi_20090312_1588051568.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_protector_55");
INSERT INTO jos_joomgallery_catg VALUES("56","GïO Logic, LLC","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","17","0","1","","brand__identity_20090504_1860488069.jpg","0","/portfolio_3/go_logic_llc_56");
INSERT INTO jos_joomgallery_catg VALUES("57","Belfast Bay Brewing Company","3","<ul>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>","13","0","1","","advertising__marketing_collateral_20090811_1155478024.jpg","0","/portfolio_3/belfast_bay_brewing_company_57");
INSERT INTO jos_joomgallery_catg VALUES("58","Allyn & Russillo Architects","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","35","0","1","","allyn__russillo_architects_20090813_1700566702.jpg","0","/portfolio_3/allyn__russillo_architects_58");
INSERT INTO jos_joomgallery_catg VALUES("59","Waldo Community Action Partners","3","<ul>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","11","0","1","","brochure_20100319_1422560973.jpg","0","/portfolio_3/waldo_community_action_partners_59");
INSERT INTO jos_joomgallery_catg VALUES("60","Home Energy Solutions","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","7","0","1","","logo_identity_20100319_1303767529.jpg","0","/portfolio_3/home_energy_solutions_60");
INSERT INTO jos_joomgallery_catg VALUES("61","Heidelberg International Professional Womenís Forum (HIP)","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","6","0","1","","logo_identity_20100318_1596201270.jpg","0","/portfolio_3/heidelberg_international_professional_womens_forum_hip_61");
INSERT INTO jos_joomgallery_catg VALUES("62","Cornerspring Montessori School","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","5","0","0","","","0","/portfolio_3/cornerspring_montessori_school_62");
INSERT INTO jos_joomgallery_catg VALUES("63","Christopher Moore CabinetMakers","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","4","0","1","","logo_identity_20100319_1259681213.jpg","0","/portfolio_3/christopher_moore_cabinetmakers_63");
INSERT INTO jos_joomgallery_catg VALUES("64","Hospice Volunteers of Waldo County","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n</ul>","10","0","1","","brochure_20100319_1167761056.jpg","0","/portfolio_3/hospice_volunteers_of_waldo_county_64");
INSERT INTO jos_joomgallery_catg VALUES("65","SteriPENÆ Emergency","4","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n</ul>\n<p> </p>","3","0","1","","steripen_emergency_20100317_1650566680.jpg","0","/portfolio_3/hydro-photon_inc_4/steripen_emergency_65");
INSERT INTO jos_joomgallery_catg VALUES("66","French & Webb, Inc.","3","<ul>\n<li>Marketing Communications</li>\n<li>Retail Systems</li>\n<li>Web Development</li>\n</ul>","2","0","1","","french_and_webb_website_20100318_1182874733.jpg","0","/portfolio_3/french__webb_inc_66");
INSERT INTO jos_joomgallery_catg VALUES("67","Burgess & Burgess Construction","3","<ul>\n<li>Web Development</li>\n</ul>","1","0","0","","","0","/portfolio_3/burgess__burgess_construction_67");
INSERT INTO jos_joomgallery_catg VALUES("68","TxtResponsibly","3","<ul>\n<li>Brand &amp; Identity</li>\n<li>Marketing Communications</li>\n<li>Web Development</li>\n</ul>","14","0","1","","txtresponsibly_collateral_20100322_1432042925.jpg","0","/portfolio_3/txtresponsibly_68");



DROP TABLE jos_joomgallery_comments;

CREATE TABLE `jos_joomgallery_comments` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtpic` int(11) NOT NULL DEFAULT '0',
  `cmtip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `cmtname` varchar(50) NOT NULL DEFAULT '',
  `cmttext` text NOT NULL,
  `cmtdate` varchar(20) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cmtid`),
  KEY `idx_cmtpic` (`cmtpic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_joomgallery_config;

CREATE TABLE `jos_joomgallery_config` (
  `id` int(1) NOT NULL DEFAULT '1',
  `jg_pathimages` varchar(50) NOT NULL,
  `jg_pathoriginalimages` varchar(50) NOT NULL,
  `jg_paththumbs` varchar(50) NOT NULL,
  `jg_pathftpupload` varchar(50) NOT NULL,
  `jg_pathtemp` varchar(50) NOT NULL,
  `jg_wmpath` varchar(50) NOT NULL,
  `jg_wmfile` varchar(50) NOT NULL,
  `jg_dateformat` varchar(50) NOT NULL,
  `jg_checkupdate` int(1) NOT NULL,
  `jg_filenamewithjs` int(1) NOT NULL,
  `jg_filenamesearch` varchar(50) NOT NULL,
  `jg_filenamereplace` varchar(50) NOT NULL,
  `jg_thumbcreation` varchar(5) NOT NULL,
  `jg_fastgd2thumbcreation` int(1) NOT NULL,
  `jg_impath` varchar(50) NOT NULL,
  `jg_resizetomaxwidth` int(1) NOT NULL,
  `jg_maxwidth` int(5) NOT NULL,
  `jg_picturequality` int(3) NOT NULL,
  `jg_useforresizedirection` int(1) NOT NULL,
  `jg_thumbwidth` int(5) NOT NULL,
  `jg_thumbheight` int(5) NOT NULL,
  `jg_thumbquality` int(3) NOT NULL,
  `jg_uploadorder` int(1) NOT NULL,
  `jg_useorigfilename` int(1) NOT NULL,
  `jg_filenamenumber` int(1) NOT NULL,
  `jg_delete_original` int(1) NOT NULL,
  `jg_wrongvaluecolor` varchar(10) NOT NULL,
  `jg_combuild` int(1) NOT NULL,
  `jg_realname` int(1) NOT NULL,
  `jg_bridge` int(1) NOT NULL,
  `jg_cooliris` int(1) NOT NULL,
  `jg_coolirislink` int(1) NOT NULL,
  `jg_userspace` int(1) NOT NULL,
  `jg_approve` int(1) NOT NULL,
  `jg_usercat` int(1) NOT NULL,
  `jg_maxusercat` int(5) NOT NULL,
  `jg_userowncatsupload` int(1) NOT NULL,
  `jg_maxuserimage` int(9) NOT NULL,
  `jg_maxfilesize` int(9) NOT NULL,
  `jg_category` varchar(50) NOT NULL,
  `jg_usercategory` varchar(50) NOT NULL,
  `jg_usercatacc` int(1) NOT NULL,
  `jg_maxuploadfields` int(3) NOT NULL,
  `jg_useruploadnumber` int(1) NOT NULL,
  `jg_special_gif_upload` int(1) NOT NULL,
  `jg_delete_original_user` int(1) NOT NULL,
  `jg_newpiccopyright` int(1) NOT NULL,
  `jg_newpicnote` int(1) NOT NULL,
  `jg_showrating` int(1) NOT NULL,
  `jg_maxvoting` int(1) NOT NULL,
  `jg_onlyreguservotes` int(1) NOT NULL,
  `jg_showcomment` int(1) NOT NULL,
  `jg_anoncomment` int(1) NOT NULL,
  `jg_namedanoncomment` int(1) NOT NULL,
  `jg_approvecom` int(1) NOT NULL,
  `jg_secimages` int(1) NOT NULL,
  `jg_bbcodesupport` int(1) NOT NULL,
  `jg_smiliesupport` int(1) NOT NULL,
  `jg_anismilie` int(1) NOT NULL,
  `jg_smiliescolor` varchar(10) NOT NULL,
  `jg_firstorder` varchar(20) NOT NULL,
  `jg_secondorder` varchar(20) NOT NULL,
  `jg_thirdorder` varchar(20) NOT NULL,
  `jg_pagetitle_cat` varchar(50) NOT NULL,
  `jg_pagetitle_detail` varchar(50) NOT NULL,
  `jg_showgalleryhead` int(1) NOT NULL,
  `jg_showpathway` int(1) NOT NULL,
  `jg_completebreadcrumbs` int(1) NOT NULL,
  `jg_search` int(1) NOT NULL,
  `jg_showallpics` int(1) NOT NULL,
  `jg_showallhits` int(1) NOT NULL,
  `jg_showbacklink` int(1) NOT NULL,
  `jg_suppresscredits` int(1) NOT NULL,
  `jg_showuserpanel` int(1) NOT NULL,
  `jg_showallpicstoadmin` int(1) NOT NULL,
  `jg_showminithumbs` int(1) NOT NULL,
  `jg_openjs_padding` int(3) NOT NULL,
  `jg_openjs_background` varchar(10) NOT NULL,
  `jg_dhtml_border` varchar(10) NOT NULL,
  `jg_show_title_in_dhtml` int(1) NOT NULL,
  `jg_show_description_in_dhtml` int(1) NOT NULL,
  `jg_lightbox_speed` int(3) NOT NULL,
  `jg_lightbox_slide_all` int(1) NOT NULL,
  `jg_resize_js_image` int(1) NOT NULL,
  `jg_disable_rightclick_original` int(1) NOT NULL,
  `jg_showgallerysubhead` int(1) NOT NULL,
  `jg_showallcathead` int(1) NOT NULL,
  `jg_colcat` int(1) NOT NULL,
  `jg_catperpage` int(1) NOT NULL,
  `jg_ordercatbyalpha` int(1) NOT NULL,
  `jg_showgallerypagenav` int(1) NOT NULL,
  `jg_showcatcount` int(1) NOT NULL,
  `jg_showcatthumb` int(1) NOT NULL,
  `jg_showrandomcatthumb` int(1) NOT NULL,
  `jg_ctalign` int(1) NOT NULL,
  `jg_showtotalcathits` int(1) NOT NULL,
  `jg_showcatasnew` int(1) NOT NULL,
  `jg_catdaysnew` int(3) NOT NULL,
  `jg_rmsm` int(1) NOT NULL,
  `jg_showrmsmcats` int(1) NOT NULL,
  `jg_showcathead` int(1) NOT NULL,
  `jg_usercatorder` int(1) NOT NULL,
  `jg_usercatorderlist` varchar(50) NOT NULL,
  `jg_showcatdescriptionincat` int(1) NOT NULL,
  `jg_showpagenav` int(1) NOT NULL,
  `jg_showpiccount` int(1) NOT NULL,
  `jg_perpage` int(3) NOT NULL,
  `jg_catthumbalign` int(1) NOT NULL,
  `jg_colnumb` int(3) NOT NULL,
  `jg_detailpic_open` int(1) NOT NULL,
  `jg_lightboxbigpic` int(1) NOT NULL,
  `jg_showtitle` int(1) NOT NULL,
  `jg_showpicasnew` int(1) NOT NULL,
  `jg_daysnew` int(3) NOT NULL,
  `jg_showhits` int(1) NOT NULL,
  `jg_showauthor` int(1) NOT NULL,
  `jg_showowner` int(1) NOT NULL,
  `jg_showcatcom` int(1) NOT NULL,
  `jg_showcatrate` int(1) NOT NULL,
  `jg_showcatdescription` int(1) NOT NULL,
  `jg_showcategorydownload` int(1) NOT NULL,
  `jg_showcategoryfavourite` int(1) NOT NULL,
  `jg_showsubcathead` int(1) NOT NULL,
  `jg_showsubcatcount` int(1) NOT NULL,
  `jg_colsubcat` int(3) NOT NULL,
  `jg_subperpage` int(3) NOT NULL,
  `jg_subcatthumbalign` int(1) NOT NULL,
  `jg_showsubthumbs` int(1) NOT NULL,
  `jg_showrandomsubthumb` int(1) NOT NULL,
  `jg_ordersubcatbyalpha` int(1) NOT NULL,
  `jg_showtotalsubcathits` int(1) NOT NULL,
  `jg_showdetailpage` int(1) NOT NULL,
  `jg_showdetailnumberofpics` int(1) NOT NULL,
  `jg_cursor_navigation` int(1) NOT NULL,
  `jg_disable_rightclick_detail` int(1) NOT NULL,
  `jg_showdetailtitle` int(1) NOT NULL,
  `jg_showdetail` int(1) NOT NULL,
  `jg_showdetailaccordion` int(1) NOT NULL,
  `jg_showdetaildescription` int(1) NOT NULL,
  `jg_showdetaildatum` int(1) NOT NULL,
  `jg_showdetailhits` int(1) NOT NULL,
  `jg_showdetailrating` int(1) NOT NULL,
  `jg_showdetailfilesize` int(1) NOT NULL,
  `jg_showdetailauthor` int(1) NOT NULL,
  `jg_showoriginalfilesize` int(1) NOT NULL,
  `jg_showdetaildownload` int(1) NOT NULL,
  `jg_downloadfile` int(1) NOT NULL,
  `jg_downloadwithwatermark` int(1) NOT NULL,
  `jg_watermark` int(1) NOT NULL,
  `jg_watermarkpos` int(1) NOT NULL,
  `jg_bigpic` int(1) NOT NULL,
  `jg_bigpic_open` int(1) NOT NULL,
  `jg_bbcodelink` int(1) NOT NULL,
  `jg_showcommentsunreg` int(1) NOT NULL,
  `jg_showcommentsarea` int(1) NOT NULL,
  `jg_send2friend` int(1) NOT NULL,
  `jg_minis` int(1) NOT NULL,
  `jg_motionminis` int(1) NOT NULL,
  `jg_motionminiWidth` int(3) NOT NULL,
  `jg_motionminiHeight` int(3) NOT NULL,
  `jg_miniWidth` int(3) NOT NULL,
  `jg_miniHeight` int(3) NOT NULL,
  `jg_minisprop` int(1) NOT NULL,
  `jg_nameshields` int(1) NOT NULL,
  `jg_nameshields_unreg` int(1) NOT NULL,
  `jg_show_nameshields_unreg` int(1) NOT NULL,
  `jg_nameshields_height` int(3) NOT NULL,
  `jg_nameshields_width` int(3) NOT NULL,
  `jg_slideshow` int(1) NOT NULL,
  `jg_slideshow_timer` int(3) NOT NULL,
  `jg_slideshow_usefilter` int(1) NOT NULL,
  `jg_slideshow_filterbychance` int(1) NOT NULL,
  `jg_slideshow_filtertimer` int(3) NOT NULL,
  `jg_showsliderepeater` int(1) NOT NULL,
  `jg_showexifdata` int(1) NOT NULL,
  `jg_subifdtags` text NOT NULL,
  `jg_ifdotags` text NOT NULL,
  `jg_gpstags` text NOT NULL,
  `jg_showiptcdata` int(1) NOT NULL,
  `jg_iptctags` text NOT NULL,
  `jg_showtoplist` int(1) NOT NULL,
  `jg_toplist` int(3) NOT NULL,
  `jg_topthumbalign` int(1) NOT NULL,
  `jg_toptextalign` int(1) NOT NULL,
  `jg_toplistcols` int(3) NOT NULL,
  `jg_whereshowtoplist` int(1) NOT NULL,
  `jg_showrate` int(1) NOT NULL,
  `jg_showlatest` int(1) NOT NULL,
  `jg_showcom` int(1) NOT NULL,
  `jg_showthiscomment` int(1) NOT NULL,
  `jg_showmostviewed` int(1) NOT NULL,
  `jg_favourites` int(1) NOT NULL,
  `jg_showdetailfavourite` int(1) NOT NULL,
  `jg_favouritesshownotauth` int(1) NOT NULL,
  `jg_maxfavourites` int(5) NOT NULL,
  `jg_zipdownload` int(1) NOT NULL,
  `jg_usefavouritesforpubliczip` int(1) NOT NULL,
  `jg_usefavouritesforzip` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO jos_joomgallery_config VALUES("0","components/com_joomgallery/img_pictures/","components/com_joomgallery/img_originals/","components/com_joomgallery/img_thumbnails/","components/com_joomgallery/ftp_upload/","administrator/components/com_joomgallery/temp/","components/com_joomgallery/assets/images/","watermark.png","%d-%m-%Y %H:%M:%S","0","1","‰|¸|ˆ|ﬂ","ae|ue|oe|ss","gd2","1","","1","450","100","0","140","140","100","2","0","1","0","#f00","0","0","0","1","0","0","1","0","10","1","500","2000000","","","0","3","0","1","0","1","1","0","5","1","0","0","0","2","2","1","1","0","grey","ordering ASC","imgtitle ASC","imgdate ASC","#cat","Client: #cat - Project:  #img","0","1","0","0","0","0","0","0","1","1","1","10","#333333","#808080","0","0","5","0","1","1","0","0","4","50","1","1","0","2","3","1","0","0","7","0","0","1","0","title","0","1","0","50","1","5","0","0","0","0","10","0","0","0","0","0","0","0","0","0","0","5","50","1","1","2","0","0","1","0","1","1","1","1","0","1","0","0","0","0","1","0","0","2","0","0","9","0","6","0","0","2","0","1","1","300","300","75","75","0","0","0","0","12","8","0","5","1","0","3","0","0","33434,33437,34850,34855,36864,36867,36868,37121,37122,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,40961,40962,40963,41486,41487,41488,41493,41495,41728,41729,41986,41987,41988,41989,41990,41991,41992,41993,41994,41996","270,271,272,274,33432","0","0","1,2,3,4,5,6","0","12","1","3","4","0","0","0","0","0","0","0","0","0","10","0","0","0");



DROP TABLE jos_joomgallery_countstop;

CREATE TABLE `jos_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL DEFAULT '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) DEFAULT NULL,
  `cstime` datetime DEFAULT NULL,
  PRIMARY KEY (`cspicid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO jos_joomgallery_countstop VALUES("1","24.25.167.223","6d1a3a2dfe8b19c6d01e0e19211356a4","2009-01-28 17:57:33");



DROP TABLE jos_joomgallery_nameshields;

CREATE TABLE `jos_joomgallery_nameshields` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `npicid` int(11) NOT NULL DEFAULT '0',
  `nuserid` int(11) unsigned NOT NULL DEFAULT '0',
  `nxvalue` int(11) NOT NULL DEFAULT '0',
  `nyvalue` int(11) NOT NULL DEFAULT '0',
  `nuserip` varchar(15) NOT NULL DEFAULT '0',
  `ndate` varchar(20) NOT NULL,
  `nzindex` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  KEY `idx_picid` (`npicid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_joomgallery_users;

CREATE TABLE `jos_joomgallery_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uuserid` int(11) NOT NULL DEFAULT '0',
  `piclist` text,
  `layout` int(1) NOT NULL,
  `time` datetime NOT NULL,
  `zipname` varchar(70) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `idx_uid` (`uuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_joomgallery_votes;

CREATE TABLE `jos_joomgallery_votes` (
  `voteid` int(11) NOT NULL AUTO_INCREMENT,
  `picid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` varchar(15) NOT NULL DEFAULT '0',
  `datevoted` varchar(20) NOT NULL,
  `timevoted` varchar(20) NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`),
  KEY `idx_picid` (`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_jportfolio_categories;

CREATE TABLE `jos_jportfolio_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` text NOT NULL,
  `cat_info` text NOT NULL,
  `cat_path` text NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `cat_image` text NOT NULL,
  `cat_grp` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO jos_jportfolio_categories VALUES("1","HPI","<br>","portfolio","","","fitsall.jpg","2","1","0","1");



DROP TABLE jos_jportfolio_conf;

CREATE TABLE `jos_jportfolio_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL DEFAULT '1.2',
  `base_path` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `css_file` varchar(50) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `proj_template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO jos_jportfolio_conf VALUES("1","1.3","images/stories/","Portfolio","Sample description.","jp_fluid.css","Sample portfolio - description","portfolio, keyword2"," <p>Sample project description.</p><ul><li>date: enter date</li><li>client: enter client name</li><li>technology: PHP, ... </li></ul><p>Website: <a href=\\\"http://www.example.com\\\" mce_href=\\\"http://www.example.com\\\" target=\\\"_blank\\\">www.example.com</a></p> ");



DROP TABLE jos_jportfolio_plugins;

CREATE TABLE `jos_jportfolio_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `plugin` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'plugin',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `layout_icon` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `row` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '0',
  `elements` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`plugin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE jos_jportfolio_projects;

CREATE TABLE `jos_jportfolio_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `proj_image` text NOT NULL,
  `proj_images_path` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO jos_jportfolio_projects VALUES("1","1","Adventurer Box"," <p>Sample project description.</p><ul><li>date: enter date</li><li>client: enter client name</li><li>technology: PHP, ... </li></ul><p>Website: <a href=\"http://www.example.com\" mce_href=\"http://www.example.com\" target=\"_blank\">www.example.com</a></p> ","","","advenbox.jpg","","62","2009-03-13 09:50:01","1","0","1");



DROP TABLE jos_menu;

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

INSERT INTO jos_menu VALUES("1","homehidden","Home","home","index.php?option=com_content&view=article&id=2","component","1","0","20","0","2","0","0000-00-00 00:00:00","0","0","0","3","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=_home\nmenu_image=-1\nsecure=0\n\n","0","0","1");
INSERT INTO jos_menu VALUES("2","mainmenu","Culture","about-us","index.php?option=com_content&view=article&id=4","component","1","0","20","0","3","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=about\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("3","mainmenu","Approach","approach","index.php?option=com_content&view=article&id=4","component","1","2","20","1","1","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Approach\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("4","mainmenu","Staff","staff","index.php?option=com_content&view=article&id=5","component","-2","0","20","0","4","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Pica Staff\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("5","mainmenu","Studio","studio","index.php?option=com_content&view=article&id=6","component","1","2","20","1","3","62","2009-01-23 06:44:04","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("6","mainmenu","Timeline","timeline","index.php?option=com_content&view=article&id=7","component","-2","0","20","0","5","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("7","mainmenu","Connections","links-and-associations","index.php?option=com_content&view=article&id=8","component","1","2","20","1","4","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("8","mainmenu","Work","work","index.php?option=com_joomgallery&func=viewcategory&catid=3&Itemid=40","url","1","0","0","0","1","0","0000-00-00 00:00:00","0","0","0","0","menu_image=-1\n\n","0","0","0");
INSERT INTO jos_menu VALUES("42","mainmenu","Email Us","email-us","index.php?option=com_ckforms&view=ckforms&id=1","component","-2","0","108","0","7","0","0000-00-00 00:00:00","0","0","0","0","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("9","mainmenu","Portfolio","portfolio","index.php?option=com_content&view=article&id=9","component","-2","0","20","0","15","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("10","mainmenu","Clients","clients","index.php?option=com_content&view=article&id=10","component","1","8","20","1","4","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("11","mainmenu","Archive","archive","index.php?option=com_content&view=article&id=11","component","0","8","20","1","6","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("12","mainmenu","Blog","blog","http://blog.picadesign.com","url","1","0","0","0","8","0","0000-00-00 00:00:00","0","0","0","0","menu_image=-1\n\n","0","0","0");
INSERT INTO jos_menu VALUES("35","mainmenu","People","people","index.php?option=com_content&view=article&id=18","component","1","2","20","1","2","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("36","mainmenu","Contact","contact","index.php?option=com_contact&view=contact&id=1","component","1","0","7","0","6","0","0000-00-00 00:00:00","0","0","0","0","show_contact_list=0\nshow_category_crumb=0\ncontact_icons=0\nicon_address=Address-icon.jpg\nicon_email=email-icon.jpg\nicon_telephone=phone-icon.jpg\nicon_mobile=\nicon_fax=fax-icon.jpg\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=Contact Us\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("13","mainmenu","Pica Portfolio","Pica-Portfolio","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=1","component","-2","0","34","0","16","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("14","mainmenu","portfolio2","portfolio2","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=2","component","-2","0","34","0","17","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("15","mainmenu","Portfolio","portfolio","index.php?option=com_morfeoshow&task=view&gallery=4","component","-2","0","34","0","14","0","0000-00-00 00:00:00","0","0","0","3","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("16","mainmenu","Portfolio2","Portfolio2","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=5","component","-2","0","34","0","18","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("17","mainmenu","Brand and Identity","brand-and-identity","index.php?option=com_morfeoshow&task=view&gallery=6","component","-2","0","34","0","13","0","0000-00-00 00:00:00","0","0","0","3","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("18","mainmenu","Portfolio","pica-portfolio","index.php?option=com_content&view=article&id=9","component","-2","0","20","0","11","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("19","portfolio-menu","Client List","client-list","index.php?option=com_content&view=article&id=10","component","-2","0","20","0","1","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("20","portfolio-menu","Brand and Identity","brand-and-identity","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=6","component","0","0","34","0","13","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("21","portfolio-menu","Exhibit","Exhibit","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=9","component","-2","0","34","0","7","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("22","portfolio-menu","Interactive","Interactive","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=10","component","-2","0","34","0","6","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("23","portfolio-menu","Packaging and POP","Packaging-and-POP","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=7","component","-2","0","34","0","5","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("24","portfolio-menu","Print and Advertising","Print-and-Advertising","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=8","component","-2","0","34","0","4","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("25","portfolio-menu","Test","Test","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=11","component","-2","0","34","0","3","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("26","mainmenu","Portfolio","portfolio","index.php?option=com_joomgallery&func=viewcategory&catid=3&Itemid=40","url","1","8","0","1","1","0","0000-00-00 00:00:00","0","0","0","3","menu_image=-1\n\n","0","0","0");
INSERT INTO jos_menu VALUES("41","mainmenu","JPortfolio","portfolio-2","index.php?option=com_jportfolio","component","-2","0","107","0","9","0","0000-00-00 00:00:00","0","0","0","0","back_button=\nitem_navigation=\ndisplay_num=16\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("27","portfolio-menu","Exhibit","exhibit","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=12","component","0","0","34","0","12","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("28","portfolio-menu","Interactive","interactive","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=13","component","0","0","34","0","11","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("29","portfolio-menu","Packaging and POP","Packaging-and-POP","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=14","component","-2","0","34","0","8","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("30","portfolio-menu","Packaging and POP","packaging-and-pop","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=14","component","0","0","34","0","10","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("31","portfolio-menu","Portfolio","Portfolio","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=4","component","-2","0","34","0","2","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("32","portfolio-menu","Print and Advertising","print-and-advertising","index.php?option=com_morfeoshow&amp;task=view&amp;gallery=15","component","0","0","34","0","9","0","0000-00-00 00:00:00","0","0","0","3","","0","0","0");
INSERT INTO jos_menu VALUES("33","mainmenu","Portfolio","portfolio","http://www.picadesign.com/test/component/joomgallery/?func=viewcategory&catid=3","url","-2","0","0","0","2","0","0000-00-00 00:00:00","0","0","0","0","menu_image=-1\n\n","0","0","0");
INSERT INTO jos_menu VALUES("39","mainmenu","Client Tools","client-tools","index.php?option=com_content&view=article&id=20","component","1","36","20","1","3","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("34","mainmenu","Case Studies","case-studies","index.php?option=com_content&view=article&id=17","component","1","8","20","1","3","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("37","mainmenu","File Manager","file-manager","index.php?option=com_remository","component","0","36","94","1","4","0","0000-00-00 00:00:00","0","0","0","0","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("38","mainmenu","Remository","remository","index.php?option=com_remository","components","0","0","94","0","10","0","0000-00-00 00:00:00","0","0","0","0","","0","0","0");
INSERT INTO jos_menu VALUES("40","portfolio-menu","Portfolio - blank","portfolio","index.php?option=com_joomgallery","component","1","0","75","0","14","62","2009-12-17 13:33:11","0","0","0","0","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("43","mainmenu","Start a Project","start-a-project","index.php?option=com_ckforms&view=ckforms&id=2","component","0","36","108","1","2","0","0000-00-00 00:00:00","0","0","0","0","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("44","mainmenu","Thank you","thank-you","index.php?option=com_content&view=article&id=21","component","0","0","20","0","12","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("45","portfolio-menu","Thank You","thank-you","index.php?option=com_content&view=article&id=21","component","1","0","20","0","15","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("46","mainmenu","FTP Utility","ftp-utility","index.php?option=com_ckforms&view=ckforms&id=3","component","0","36","108","1","5","0","0000-00-00 00:00:00","0","0","0","0","page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("47","mainmenu","Contact Us","contact-us","index.php?option=com_contact&view=contact&id=1","component","1","36","7","1","1","0","0000-00-00 00:00:00","0","0","0","0","show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("48","mainmenu","Jobs","jobs","index.php?option=com_content&view=article&id=22","component","0","36","20","1","6","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("49","mainmenu","Services","services","index.php?option=com_content&view=article&id=23","component","1","8","20","1","2","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("50","homehidden","Services","services","index.php?option=com_content&view=article&id=23","component","1","0","20","0","3","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("51","homehidden","home-test","home-test","index.php?option=com_content&view=article&id=24","component","1","0","20","0","4","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("52","portfolio-menu","Pica Points","pica-points","index.php?option=com_content&view=article&id=25","component","1","0","20","0","16","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("53","homehidden","Site Requirements","site-requirements","index.php?option=com_content&view=article&id=26","component","-2","0","20","0","1","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("54","mainmenu","Site Requirements","site-requirements","index.php?option=com_content&view=article&id=26","component","0","36","20","1","7","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("55","homehidden","Site Requirements","site-requirements","index.php?option=com_content&view=article&id=26","component","1","0","20","0","5","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");
INSERT INTO jos_menu VALUES("56","mainmenu","Accolades","accolades","index.php?option=com_content&view=article&id=27","component","1","8","20","1","5","0","0000-00-00 00:00:00","0","0","0","0","show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n","0","0","0");



DROP TABLE jos_menu_types;

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO jos_menu_types VALUES("1","mainmenu","Main Menu","The main menu for the site");
INSERT INTO jos_menu_types VALUES("2","portfolio-menu","Portfolio","Pica Portfolio SubNav");
INSERT INTO jos_menu_types VALUES("3","homehidden","Home","Home");



DROP TABLE jos_messages;

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_messages_cfg;

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_migration_backlinks;

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_modules;

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

INSERT INTO jos_modules VALUES("1","Main Menu","","2","top","0","0000-00-00 00:00:00","0","mod_mainmenu","0","0","0","menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n","1","0","");
INSERT INTO jos_modules VALUES("2","Login","","1","login","0","0000-00-00 00:00:00","1","mod_login","0","0","1","","1","1","");
INSERT INTO jos_modules VALUES("3","Popular","","3","cpanel","0","0000-00-00 00:00:00","1","mod_popular","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("4","Recent added Articles","","4","cpanel","0","0000-00-00 00:00:00","1","mod_latest","0","2","1","ordering=c_dsc\nuser_id=0\ncache=0\n\n","0","1","");
INSERT INTO jos_modules VALUES("5","Menu Stats","","5","cpanel","0","0000-00-00 00:00:00","1","mod_stats","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("6","Unread Messages","","1","header","0","0000-00-00 00:00:00","1","mod_unread","0","2","1","","1","1","");
INSERT INTO jos_modules VALUES("7","Online Users","","2","header","0","0000-00-00 00:00:00","1","mod_online","0","2","1","","1","1","");
INSERT INTO jos_modules VALUES("8","Toolbar","","1","toolbar","0","0000-00-00 00:00:00","1","mod_toolbar","0","2","1","","1","1","");
INSERT INTO jos_modules VALUES("9","Quick Icons","","1","icon","0","0000-00-00 00:00:00","1","mod_quickicon","0","2","1","","1","1","");
INSERT INTO jos_modules VALUES("10","Logged in Users","","2","cpanel","0","0000-00-00 00:00:00","1","mod_logged","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("11","Footer","","0","footer","0","0000-00-00 00:00:00","1","mod_footer","0","0","1","","1","1","");
INSERT INTO jos_modules VALUES("12","Admin Menu","","1","menu","0","0000-00-00 00:00:00","1","mod_menu","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("13","Admin SubMenu","","1","submenu","0","0000-00-00 00:00:00","1","mod_submenu","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("14","User Status","","1","status","0","0000-00-00 00:00:00","1","mod_status","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("15","Title","","1","title","0","0000-00-00 00:00:00","1","mod_title","0","2","1","","0","1","");
INSERT INTO jos_modules VALUES("71","Brand & Identity","<p><strong>Brand &amp; Identity</strong></p>\n<p>Brand development is at the core of our work. We develop a brandís visual identity in collaboration with our clients to arrive at a true expression of a companyís personality, product and market attraction. Through research, strategy, identity and voice, we can energize a brand at all levels and stages of its reach.</p>\n<ul class=\"work\">\n<li>&gt; Brand Architecture</li>\n<li>&gt; Brand Identity</li>\n<li>&gt; Brand &amp; Product Naming</li>\n<li>&gt; Brand Positioning &amp; Strategy</li>\n<li>&gt; Communication Audits</li>\n<li>&gt; Consulting</li>\n<li>&gt; Graphic Standards </li>\n<li>&gt; Market Research</li>\n<li>&gt; Messaging Strategy</li>\n<li>&gt; Tagline &amp; Brand Voice</li>\n</ul>","0","left","62","2009-09-23 19:34:37","1","mod_custom","0","0","0","moduleclass_sfx=services-col1\n\n","0","0","");
INSERT INTO jos_modules VALUES("25","Extended Menu","","0","hornav","62","2009-12-17 20:34:41","1","mod_exmenu-j15","0","0","0","class_sfx=mainnav\nmoduleclass_sfx=dr\ncache=0\nmenutype=mainmenu\nmenu_source_type=menu\nmenu_source_value=\nmenu_source_show_section=default\nmenu_source_show_category=label\nmenu_source_show_content_item=label\nmenu_source_order=ordering\ndefault_content_itemid=\nmenu_style=list_tree\nmenu_view_plugin_name=\nmenu_images=0\nexpand_menu=1\nexpand_min=\nmax_depth=10\nhide_first=0\nshow_parent=0\nparent_item=\ncurrent_level_begin=0\nlevel_begin=\nsplit_menu=\nmenu_count=1\nquery_cache=0\nparse_access_key=3\ntitle_attribute=0\nlevel_class=3\nactive_menu_class=1\nelement_id=1\nmenu_template=1\nmenu_template_name=menu.html\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nselect_list_submit_text=Go\nselect_list_submit_hide=0\ncall_getitemid=0\ncurrent_item=smart\ncurrent_item_duplicates=convert_active\naccess_keys=\nexact_access_level=0\n\n","0","0","");
INSERT INTO jos_modules VALUES("28","mod_portfolio","","13","left","0","0000-00-00 00:00:00","1","mod_mainmenu","0","0","0","menutype=portfolio-menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n","0","0","");
INSERT INTO jos_modules VALUES("30","Testimonial Header-TIM","","1","banner","62","2009-12-17 20:58:31","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/testimonial_b.jpg\nalt_txt=These world class materials have been instrumental in expanding our presence in our existing accounts and getting us into new ones, such as LL Bean, Eastern Mountain Sports, Camphor and the Boy Scouts of America. - Time Wilson, Former CFO, Hydro-Photon, Inc.\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("31","Creativity Header","","11","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/creativity-mundane.jpg\nalt_txt=Creativity is piercing the mundane to find the marvelous. - Bill Moyers\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("32","Design Better Header","","15","banner","62","2010-04-28 18:19:38","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/Design-better.jpg\nalt_txt=Design is about making things good (and then better) and right (and fantastic) for the people who use and encounter them. - Matt Beale.\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("79","WAFL Component Wrapper Module","","2","left","62","2009-12-17 20:33:13","1","mod_wafl","0","0","1","","0","0","");
INSERT INTO jos_modules VALUES("77","Approach - Banner","","7","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/staff_quotes.jpg\nalt_txt=Our approach is simple\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("76","Portfolio - Banner","","8","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/services.jpg\nalt_txt=Service categories: Brand, Retail, Web Marketing\nlink=http://www.picadesign.com/index.php?option=com_content&view=article&id=23&Itemid=49\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("42","ME Header","","13","banner","62","2010-01-05 16:31:20","1","mod_sih","0","0","0","width=915px\nheight=100px\nimage=images/banners/mequote.jpg\nalt_txt=We are communicators, problem solvers, and strategists. We help our clients make their voices heard in a cluttered and noisy culture. Our goal is to simplify, articulate and inspire.\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("44","Solutions Header","","10","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/solutions.jpg\nalt_txt=Never accept the proposition that just because a solution satisfies a problem, that it must be the only solution. - Raymond E. Feist\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("39","Home","","11","left","62","2009-12-17 12:51:06","0","mod_mainmenu","0","0","1","menutype=homehidden","0","0","");
INSERT INTO jos_modules VALUES("41","Pica Staff","","10","left","0","0000-00-00 00:00:00","1","mod_fpss","0","0","0","moduleclass_sfx=\ncache=1\ncache_time=900\ncatid=3\nengine=jquery\ndisablelib=0\noptimizejs=0\nfpss_template=Pica-Staff\nwidth=500\nheight=500\nsidebar_width=275\nhide_nav=0\ndelay=1000000\nspeed=400\nloadingTime=800\nautoSlide=0\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=1000\nseperator=>>\nwords=250\nchars=\nstriptags=0\nshowtitle=1\nshowseccat=0\nshowcustomtext=1\nshowplaintext=1\nshowreadmore=0\nnolink=1\n\n","0","0","");
INSERT INTO jos_modules VALUES("62","Basecamp","<a href=\"https://picadesign.basecamphq.com/login\" target=\"_blank\">Basecamp </a><br />","23","left","62","2009-03-30 21:55:36","1","mod_custom","0","0","0","moduleclass_sfx=_clientTools\n\n","0","0","");
INSERT INTO jos_modules VALUES("47","Testimonial - PR","","9","banner","62","2009-12-21 16:45:03","1","mod_sih","0","0","0","width=915px\nheight=100px\nimage=images/banners/testimonial_3_b.jpg\nalt_txt=The new Downeast ad is a full success and people are calling. - Verena A. Stoll, Director of Advancement, Parker Ridge Residential Community\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("48","Testimonial - Rabble","","5","banner","62","2010-02-03 15:32:54","1","mod_sih","0","0","0","width=915px\nheight=100px\nimage=images/banners/testimonial_2_b.jpg\nalt_txt=Thank you and thanks to Pica for a great poster that brought out the rabble. We had about 500! - Mike Hurley, Mayor of Belfast, Organizer-Drum and Rabble Marching Society\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("49","Testimonials - 4 B-Unitel","","12","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","0","width=915px\nheight=100px\nimage=images/banners/testimonial_4_b.jpg\nalt_txt=We are very pleased with the outcome of our new website. It is such a pleasure working with the folks at Pica Design, who I personally have found to be very competant, creative and easy going. - Jayne Sullivan, UniTel\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("50","Directions","","8","left","0","0000-00-00 00:00:00","1","mod_planroute","0","0","0","headertxt=Get Directions to Pica from:\naddresstxt=Your address here\ncitytxt=Your city here\ncountrytxt=USA\nshowcountry=0\nbuttontxt=Plan Your Route\nshowbutton=1\nbuttonrevtxt=Plan way back\nshowrevbutton=0\ninputboxwidth=25\nwarntxt=Please enter a valid depature location!\ndestination=111 Church Street, Belfast, Maine\ngoogleurl=google.com\ntarget=lightbox\nmapwidth=800\nmapheight=700\ncache=1\ncache_time=900\nmoduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("51","Case Studies","","9","left","0","0000-00-00 00:00:00","1","mod_fpss","0","0","0","moduleclass_sfx=\ncache=1\ncache_time=900\ncatid=4\nengine=mootools\ndisablelib=1\noptimizejs=1\nfpss_template=Pica-CaseStudies\nwidth=400\nheight=750\nsidebar_width=400\nhide_nav=0\ndelay=60000000\nspeed=800\nloadingTime=800\nautoSlide=0\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=500\nseperator=>>\nwords=500\nchars=\nstriptags=0\nshowtitle=1\nshowseccat=0\nshowcustomtext=1\nshowplaintext=1\nshowreadmore=0\nnolink=1\n\n","0","0","");
INSERT INTO jos_modules VALUES("53","Sign up for the Newsletter:","<form action=\"http://picadesign.createsend.com/t/y/s/iydijt/\" method=\"post\">\n<div>\nYour <label for=\"name\">Name:</label><br> <input name=\"cm-name\" id=\"name\" type=\"text\"><br><br>\n<label for=\"iydijt-iydijt\">Your Email:</label><br> <input name=\"cm-iydijt-iydijt\" id=\"iydijt-iydijt\" type=\"text\"><br><input value=\"Subscribe\" class=\"button\" type=\"submit\">\n</div>\n</form>","19","left","62","2009-12-17 14:37:59","1","mod_custom","0","0","1","moduleclass_sfx=_Newsletter\n\n","0","0","");
INSERT INTO jos_modules VALUES("60","JoomImages","","6","left","62","2009-12-17 20:34:00","1","mod_joomimg","0","0","0","modIdentify=mod_ji\nlimit=60\nimg_per_row=5\nsorting=p.id ASC\ncats=3\nshoworhidecats=1\ndynamiccats=0\npiclink=0\nshow_empty_message=1\nimage_position=1\nimgwidth=100\nimgheight=100\nshowtext=0\nshowtitle=1\nstrtitlewrap=0\nshowdescription=0\nstrdescount=0\nstrdeswrap=0\nshowcatg=1\nshowhits=0\nshowvotesum=0\nshowvotes=0\nshowimgdate=0\nshowcmtdate=0\nshowcmttext=0\nshowcmtcount=0\nstrcmtcount=0\nstrcmtwrap=0\nshowcmtmore=0\nscrollthis=1\nscrolldirection=left\nscrollheight=250\nscrollwidth=230\nscrollamount=1\nscrolldelay=10\nscrollmouse=1\ntable_dir_hor=left\ntable_dir_vert=top\ntable_padding=5\nsectiontableentry=0\nsetborder=0\n\n","0","0","");
INSERT INTO jos_modules VALUES("54","Remository multi-purpose module","","20","left","62","2009-12-17 13:42:45","1","mod_remositorymulti","0","0","1","modtype=newest\nlisttype=list\nshowcat=0\nshowthumb=1\niconsize=25\ndiconsize=16\ndateformat=M.d\nmax=25\nmaxchars=100\ncategory=0\ndays=30\nmoduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("55","We\'re Hiring!","<p>Pica Design is looking for a talented web programmer, well versed in the arts of open source CMS development. Experience with interface design, and social media marketing a bonus. Interested?</p>","5","left","62","2010-01-07 15:48:23","0","mod_custom","0","0","0","moduleclass_sfx=_hiring\n\n","0","0","");
INSERT INTO jos_modules VALUES("67","Click here to cut out the jargon ","<div align=\"center\">\n<img src=\"images/stories/pica_sketch-2.jpg\" />\n</div>","1","inset","62","2009-12-17 20:34:13","0","mod_custom","0","0","0","moduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("56","hiring!","<span class=\"newsFlash\">We\'re hiring! <a href=\"contact/jobs.html\">Get the scoop here.</a></span>","0","hornav","62","2009-12-17 20:34:21","0","mod_custom","0","0","0","moduleclass_sfx=newsFlash\n\n","0","0","");
INSERT INTO jos_modules VALUES("57","Project Manager","<form id=\"Form1\" method=\"post\" action=\"http://app.crmgr.com/default.aspx\"> <input name=\"CK\" value=\"79896\" type=\"hidden\" /> <input name=\"ErrorReturnPage\" value=\"www.picadesign.com/login_error.htm\" type=\"hidden\" /> User ID 			      <input name=\"UserID\" type=\"text\" /> <br /><br />Password     				<input name=\"Password\" type=\"password\" /> <br /><br /><input name=\"submit\" value=\"Login\" type=\"submit\" /> </form>","21","left","0","0000-00-00 00:00:00","1","mod_custom","0","0","1","moduleclass_sfx=_clientTools\n\n","0","0","");
INSERT INTO jos_modules VALUES("58","Workamajig","<a href=\"http://app.workamajig.com\">Workamajig</a>","0","left","62","2009-05-13 21:51:28","1","mod_custom","0","0","0","moduleclass_sfx=_clientTools\n\n","0","0","");
INSERT INTO jos_modules VALUES("64","Pica FTP","","25","left","0","0000-00-00 00:00:00","1","mod_login","0","0","1","cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=37\nlogout=1\ngreeting=1\nname=0\nusesecure=1\n\n","0","0","");
INSERT INTO jos_modules VALUES("59","JoomGallery News","","1","joom_cpanel","0","0000-00-00 00:00:00","1","mod_feed","0","0","1","cache=1\n    cache_time=15\n    moduleclass_sfx=\n    rssurl=http://en.joomgallery.net/?format=feed&type=rss\n    rssrtl=0\n    rsstitle=1\n    rssdesc=0\n    rssimage=1\n    rssitems=3\n    rssitemdesc=1\n    word_count=30","0","1","");
INSERT INTO jos_modules VALUES("63","eNEWS Manager","<form action=\"http://enews.picadesign.com/login.aspx\" method=\"post\" id=\"Form2\">\n<div><label for=\"username\">Username </label><input name=\"username\" id=\"username\" type=\"text\" /><br /><br /> <label for=\"password\">Password </label><input name=\"password\" id=\"password\" type=\"password\" /><br /><br /> <input value=\"Login\" type=\"submit\" /></div>\n</form>","0","left","62","2010-01-27 14:34:38","1","mod_custom","0","0","1","moduleclass_sfx=_clientTools\n\n","0","0","");
INSERT INTO jos_modules VALUES("70","Google Analytics","<script type=\"text/javascript\">\nvar gaJsHost = ((\"https:\" == document.location.protocol) ? \"https://ssl.\" : \"http://www.\");\ndocument.write(unescape(\"%3Cscript src=\'\" + gaJsHost + \"google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E\"));\n</script>\n<script type=\"text/javascript\">\ntry {\nvar pageTracker = _gat._getTracker(\"UA-4265805-2\");\npageTracker._trackPageview();\n} catch(err) {}</script>","4","footer","0","0000-00-00 00:00:00","1","mod_custom","0","0","1","moduleclass_sfx=_gA\n\n","0","0","");
INSERT INTO jos_modules VALUES("69","Joomla! AddThis","","0","follow-us","0","0000-00-00 00:00:00","0","mod_JoomlaAddThis","0","0","0","moduleclass_sfx=\njoomlaAddThisPub=picadesign\njoomlaAddThisLogo=http://www.joomlaserviceprovider.com/images/jsp_icon.png\njoomlaAddThisLogoBackground=EFEFFF\njoomlaAddThisLogoColor=666699\njoomlaAddThisBrandName=Joomla Service Provider\njoomlaAddThisBrandURL=http://www.joomlaserviceprovider.com\njoomlaAddThisOptions=favorites, digg, delicious, google, myspace, facebook, reddit, newsvine, live, more\njoomlaAddThisImageURL=http://s9.addthis.com/button1-addthis.gif\n\n","0","0","");
INSERT INTO jos_modules VALUES("68","HomepageSlide2","","0","right","0","0000-00-00 00:00:00","0","mod_jw_ts","0","0","0","moduleclass_sfx=\njwts_id=tabsnslides\njwts_position=inset\njwts_displaytype=slides\njwts_showmodtitle=0\n\n","0","0","");
INSERT INTO jos_modules VALUES("72","Retail Systems","<p><strong>Retail Systems</strong></p>\n<p>We help our clients to meet retail setting demands through brand stewardship across a range of assets, including product packaging, point of purchase, and large-scale graphics. Our goal is to build and expand upon our clientís value proposition, whether domestic or international.</p>\n<ul class=\"work\">\n<li>&gt; Brand Management</li>\n<li>&gt; Consulting</li>\n<li>&gt; Fulfillment</li>\n<li>&gt; Guidelines Documentation</li>\n<li>&gt; Market Strategy</li>\n<li>&gt; Packaging Development</li>\n<li>&gt; Print Production</li>\n<li>&gt; Program Building</li>\n<li>&gt; Retail POP Displays</li>\n<li>&gt; Retail Environments</li>\n<li>&gt; Sourcing</li>\n<li>&gt; Trade Show Environments</li>\n<li>&gt; Trend Forecasting</li>\n</ul>","3","left","62","2009-12-17 20:34:30","1","mod_custom","0","0","0","moduleclass_sfx=services-col2\n\n","0","0","");
INSERT INTO jos_modules VALUES("73","Web Development","<p><strong>Web Development</strong></p>\n<p>We deliver websites that offer long-life and flexibility. CMS (Content Management System) websites allow our clients to take advantage of expanding interactivity, news, content and meta information within a structure that can be managed and updated in-house. We also facilitate all of the work that goes into a successful site launch: browser testing, SEO optimization, announcements and promotions.</p>\n<ul class=\"work\">\n<li>&gt; Animation &amp; Video</li>\n<li>&gt; Browser Testing</li>\n<li>&gt; Web Consulting</li>\n<li>&gt; Content Development</li>\n<li>&gt; Content Management Systems</li>\n<li>&gt; Content Strategy</li>\n<li>&gt; Email Marketing</li>\n<li>&gt; Information Architecture</li>\n<li>&gt; Interface Design</li>\n<li>&gt; Launch Strategy</li>\n<li>&gt; Market Research</li>\n<li>&gt; Quality Control</li>\n<li>&gt; Search Engine Optimization</li>\n<li>&gt; Site Planning</li>\n<li>&gt; Site Promotion</li>\n<li>&gt; Social Marketing</li>\n<li>&gt; Usability Testing</li>\n<li>&gt; Use Cases</li>\n<li>&gt; Viral Marketing</li>\n</ul>","4","left","0","0000-00-00 00:00:00","1","mod_custom","0","0","0","moduleclass_sfx=services-col3\n\n","0","0","");
INSERT INTO jos_modules VALUES("74","Marketing Communications","<p><strong>Marketing Communications</strong></p>\n<p>Everything a company says, shows and does can communicate its objectives and reach its audience, reflecting positively on its brand. We plan, design and manage all aspects of print communications, from concept through design and production, to circulation and beyond.</p>\n<ul class=\"work\">\n<li>&gt; Advertising</li>\n<li>&gt; Annual Reports</li>\n<li>&gt; Catalogs</li>\n<li>&gt; Collateral</li>\n<li>&gt; Consulting</li>\n<li>&gt; Copy Development</li>\n<li>&gt; Direct Mail</li>\n<li>&gt; Email Marketing</li>\n<li>&gt; Environments</li>\n<li>&gt; Information Graphics</li>\n<li>&gt; Media Planning &amp; Placement</li>\n<li>&gt; Packaging</li>\n<li>&gt; Promotions</li>\n<li>&gt; Publishing</li>\n<li>&gt; Signage Systems</li>\n<li>&gt; Social Marketing</li>\n<li>&gt; Studio Photography</li>\n<li>&gt; Viral Marketing</li>\n</ul>","2","left","0","0000-00-00 00:00:00","1","mod_custom","0","0","0","moduleclass_sfx=services-col4\n\n","0","0","");
INSERT INTO jos_modules VALUES("75","Featured Projects","","14","banner","62","2009-12-17 20:32:47","1","mod_fpss","0","0","0","moduleclass_sfx=\ncache=0\ncache_time=900\ncatid=1\nengine=mootools\ndisablelib=1\noptimizejs=1\nfpss_template=Pica-FeaturedTest\nwidth=885\nheight=308\nsidebar_width=200\nhide_nav=0\ndelay=12000\nspeed=1000\nloadingTime=800\nautoSlide=1\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=1000\nseperator=>>\nwords=60\nchars=\nstriptags=0\nshowtitle=2\nshowseccat=2\nshowcustomtext=2\nshowplaintext=2\nshowreadmore=2\nnolink=2\n\n","0","0","");
INSERT INTO jos_modules VALUES("78","Love it - Banner","","6","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/testimonial_5_b.jpg\nalt_txt=Love your work. Now to pick just one :)\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("80","Pica Branding Concept","","3","banner","0","0000-00-00 00:00:00","0","mod_fpss","0","0","0","moduleclass_sfx=\ncache=1\ncache_time=900\ncatid=5\nengine=mootools\ndisablelib=1\noptimizejs=1\nfpss_template=Pica-FeaturedTest\nwidth=885\nheight=600\nsidebar_width=200\nhide_nav=0\ndelay=12000\nspeed=1000\nloadingTime=800\nautoSlide=1\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=1000\nseperator=>>\nwords=60\nchars=\nstriptags=0\nshowtitle=0\nshowseccat=0\nshowcustomtext=0\nshowplaintext=0\nshowreadmore=0\nnolink=2\n\n","0","0","");
INSERT INTO jos_modules VALUES("81","MustBeDone SlideShow","","2","banner","0","0000-00-00 00:00:00","0","mod_fpss","0","0","0","moduleclass_sfx=\ncache=1\ncache_time=900\ncatid=6\nengine=jquery\ndisablelib=0\noptimizejs=0\nfpss_template=Pica-FeaturedTest\nwidth=885\nheight=600\nsidebar_width=0\nhide_nav=1\ndelay=6000\nspeed=1000\nloadingTime=800\nautoSlide=1\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=1000\nseperator=>>\nwords=20\nchars=\nstriptags=1\nshowtitle=2\nshowseccat=2\nshowcustomtext=2\nshowplaintext=2\nshowreadmore=2\nnolink=2\n\n","0","0","");
INSERT INTO jos_modules VALUES("82","Homepage Callout - Project Highlights","<div class=\"callout-title\">Project Highlights</div>\n<p>A MustBeDoneô Campaign by Pica Design, <a target=\"_blank\" title=\"TxtResponsibly\" href=\"http://www.txtresponsibly.org\">TxtResponsibly.org</a> has a mission: to raise awareness of the dangers of texting while driving and to prevent harmful injury or death caused by the act of texting recklessly. To see more of the materials created by Pica Design for the TxtResponsibly campaign please <a href=\"http://picadesign.com/index.php?option=com_joomgallery&amp;func=detail&amp;id=650&amp;Itemid=40\">click here</a>.</p>\n<p><a target=\"_blank\" title=\"TxtResponsibly\" href=\"http://txtresponsibly.org/\"><img style=\"margin-top: 15px;\" alt=\"TXTRSPNSBLYLogo\" src=\"images/stories/TXTRSPNSBLYLogo.png\" height=\"70\" width=\"70\" /></a></p>","0","callout-1","0","0000-00-00 00:00:00","1","mod_custom","0","0","0","moduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("83","Homepage Callout - Resources","<div class=\"callout-title\">Free Resources</div>\nAt Pica Design, we believe in sharing our skills as information architects with the world. Check out our <a target=\"_blank\" title=\"Pica Tutorials\" href=\"http://tutorials.picadesign.com/\">tutorials</a> covering subjects such as Graphic Design, Web Design, and Marketing tips and tricks.\n<p>†</p>\n<p>†</p>\n<a href=\"http://tutorials.picadesign.com/\" target=\"_blank\" title=\"Pica Design Tutorials\">Recent Pica Tutorials</a>","0","callout-2","62","2010-04-30 11:56:28","1","mod_custom","0","0","0","moduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("87","Homepage Callout - News - Blog Feed","","2","callout-3","62","2009-12-18 23:27:02","1","mod_feed","0","0","0","moduleclass_sfx=\nrssurl=http://feeds.feedburner.com/DebatingTheDots?format=xml\nrsstitle=0\nrssdesc=0\nrssimage=0\nrssitems=5\nrssitemdesc=0\nword_count=0\ncache=0\ncache_time=15\n\n","0","0","");
INSERT INTO jos_modules VALUES("85","Homepage Callout - Resources - Tutorial Feed","","0","callout-2","0","0000-00-00 00:00:00","1","mod_feed","0","0","0","moduleclass_sfx=\nrssurl=http://tutorials.picadesign.com/feed/\nrsstitle=0\nrssdesc=0\nrssimage=0\nrssitems=5\nrssitemdesc=0\nword_count=0\ncache=0\ncache_time=15\n\n","0","0","");
INSERT INTO jos_modules VALUES("86","Homepage Callout - News","<div class=\"callout-title\">Latest News <a target=\"_blank\" title=\"Pica Design Blog Feed\" href=\"http://feeds.feedburner.com/DebatingTheDots?format=xml\"><img style=\"margin-left: 10px;\" alt=\"rss\" src=\"images/stories/rss.png\" height=\"15\" width=\"54\" /></a><br /></div>","0","callout-3","0","0000-00-00 00:00:00","1","mod_custom","0","0","0","moduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("88","Follow-Us","<div id=\"social-net\"><a target=\"_blank\" title=\"Pica on Twitter\" href=\"http://twitter.com/picadesign\"> <img alt=\"twitter_bird_sm\" src=\"images/stories/twitter_bird_sm.png\" height=\"35\" width=\"50\" /> </a> <a target=\"_blank\" title=\"Pica on Facebook\" href=\"http://www.facebook.com/picadesign\"> <img alt=\"facebook-icon\" src=\"images/stories/facebook-icon.png\" height=\"35\" width=\"35\" /> </a></div>\n<p> </p>\n<p> </p>\n<div id=\"newsletter\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\">\n<tbody>\n<tr>\n<form action=\"http://enews.picadesign.com/t/y/s/iydijt/\" method=\"post\">\n<td>Sign up for our Newsletter:</td>\n<td><input name=\"cm-name\" id=\"name\" value=\"Name\" type=\"text\" /></td>\n<td><input name=\"cm-iydijt-iydijt\" id=\"iydijt-iydijt\" value=\"Email\" type=\"text\" /></td>\n<td><input class=\"submit\" value=\"Subscribe\" type=\"submit\" /></td>\n</form>\n</tr>\n</tbody>\n</table>\n</div>","0","follow-us","0","0000-00-00 00:00:00","1","mod_custom","0","0","0","moduleclass_sfx=\n\n","0","0","");
INSERT INTO jos_modules VALUES("90","Laurels_banner","","4","banner","0","0000-00-00 00:00:00","1","mod_sih","0","0","1","width=915px\nheight=100px\nimage=images/banners/laurels.jpg\nalt_txt=These world class materials have been instrumental in expanding our presence in our existing accounts and getting us into new ones, such as LL Bean, Eastern Mountain Sports, Camphor and the Boy Scouts of America. - Time Wilson, Former CFO, Hydro-Photon, Inc.\nlink=\npage=same_page\nalign=left\n\n","0","0","");
INSERT INTO jos_modules VALUES("91","Home Page Slideshow 400x825 04/2010","","16","banner","0","0000-00-00 00:00:00","1","mod_fpss","0","0","1","moduleclass_sfx=\ncache=1\ncache_time=900\ncatid=7\nengine=jquery\ndisablelib=0\noptimizejs=0\nfpss_template=Pica-FeaturedTest\nwidth=885\nheight=400\nsidebar_width=200\nhide_nav=0\ndelay=6000\nspeed=1000\nloadingTime=800\nautoSlide=1\nrandom=0\nlimitslides=\nrotateAction=click\nmtCTRtext_effect=0\nmtCTRtransitionText=1000\nseperator=>>\nwords=20\nchars=\nstriptags=1\nshowtitle=2\nshowseccat=2\nshowcustomtext=2\nshowplaintext=2\nshowreadmore=2\nnolink=2\n\n","0","0","");



DROP TABLE jos_modules_menu;

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_modules_menu VALUES("1","0");
INSERT INTO jos_modules_menu VALUES("25","0");
INSERT INTO jos_modules_menu VALUES("28","20");
INSERT INTO jos_modules_menu VALUES("28","26");
INSERT INTO jos_modules_menu VALUES("28","27");
INSERT INTO jos_modules_menu VALUES("28","28");
INSERT INTO jos_modules_menu VALUES("28","30");
INSERT INTO jos_modules_menu VALUES("28","32");
INSERT INTO jos_modules_menu VALUES("30","10");
INSERT INTO jos_modules_menu VALUES("30","53");
INSERT INTO jos_modules_menu VALUES("31","34");
INSERT INTO jos_modules_menu VALUES("39","0");
INSERT INTO jos_modules_menu VALUES("41","35");
INSERT INTO jos_modules_menu VALUES("42","35");
INSERT INTO jos_modules_menu VALUES("42","48");
INSERT INTO jos_modules_menu VALUES("44","2");
INSERT INTO jos_modules_menu VALUES("44","3");
INSERT INTO jos_modules_menu VALUES("46","0");
INSERT INTO jos_modules_menu VALUES("47","36");
INSERT INTO jos_modules_menu VALUES("47","47");
INSERT INTO jos_modules_menu VALUES("48","7");
INSERT INTO jos_modules_menu VALUES("49","5");
INSERT INTO jos_modules_menu VALUES("50","36");
INSERT INTO jos_modules_menu VALUES("50","47");
INSERT INTO jos_modules_menu VALUES("51","34");
INSERT INTO jos_modules_menu VALUES("53","36");
INSERT INTO jos_modules_menu VALUES("53","47");
INSERT INTO jos_modules_menu VALUES("54","37");
INSERT INTO jos_modules_menu VALUES("55","35");
INSERT INTO jos_modules_menu VALUES("56","1");
INSERT INTO jos_modules_menu VALUES("56","2");
INSERT INTO jos_modules_menu VALUES("56","3");
INSERT INTO jos_modules_menu VALUES("56","5");
INSERT INTO jos_modules_menu VALUES("56","7");
INSERT INTO jos_modules_menu VALUES("56","8");
INSERT INTO jos_modules_menu VALUES("56","10");
INSERT INTO jos_modules_menu VALUES("56","12");
INSERT INTO jos_modules_menu VALUES("56","26");
INSERT INTO jos_modules_menu VALUES("56","34");
INSERT INTO jos_modules_menu VALUES("56","36");
INSERT INTO jos_modules_menu VALUES("56","40");
INSERT INTO jos_modules_menu VALUES("57","39");
INSERT INTO jos_modules_menu VALUES("58","39");
INSERT INTO jos_modules_menu VALUES("60","26");
INSERT INTO jos_modules_menu VALUES("62","39");
INSERT INTO jos_modules_menu VALUES("63","39");
INSERT INTO jos_modules_menu VALUES("64","37");
INSERT INTO jos_modules_menu VALUES("67","0");
INSERT INTO jos_modules_menu VALUES("68","1");
INSERT INTO jos_modules_menu VALUES("69","0");
INSERT INTO jos_modules_menu VALUES("70","0");
INSERT INTO jos_modules_menu VALUES("71","49");
INSERT INTO jos_modules_menu VALUES("72","49");
INSERT INTO jos_modules_menu VALUES("73","49");
INSERT INTO jos_modules_menu VALUES("74","49");
INSERT INTO jos_modules_menu VALUES("76","8");
INSERT INTO jos_modules_menu VALUES("76","26");
INSERT INTO jos_modules_menu VALUES("76","40");
INSERT INTO jos_modules_menu VALUES("77","49");
INSERT INTO jos_modules_menu VALUES("77","55");
INSERT INTO jos_modules_menu VALUES("78","39");
INSERT INTO jos_modules_menu VALUES("78","52");
INSERT INTO jos_modules_menu VALUES("79","2");
INSERT INTO jos_modules_menu VALUES("79","3");
INSERT INTO jos_modules_menu VALUES("79","5");
INSERT INTO jos_modules_menu VALUES("79","7");
INSERT INTO jos_modules_menu VALUES("79","8");
INSERT INTO jos_modules_menu VALUES("79","10");
INSERT INTO jos_modules_menu VALUES("79","12");
INSERT INTO jos_modules_menu VALUES("79","26");
INSERT INTO jos_modules_menu VALUES("79","34");
INSERT INTO jos_modules_menu VALUES("79","35");
INSERT INTO jos_modules_menu VALUES("79","36");
INSERT INTO jos_modules_menu VALUES("79","39");
INSERT INTO jos_modules_menu VALUES("79","40");
INSERT INTO jos_modules_menu VALUES("79","45");
INSERT INTO jos_modules_menu VALUES("79","47");
INSERT INTO jos_modules_menu VALUES("79","49");
INSERT INTO jos_modules_menu VALUES("79","50");
INSERT INTO jos_modules_menu VALUES("79","51");
INSERT INTO jos_modules_menu VALUES("79","52");
INSERT INTO jos_modules_menu VALUES("80","1");
INSERT INTO jos_modules_menu VALUES("81","1");
INSERT INTO jos_modules_menu VALUES("82","1");
INSERT INTO jos_modules_menu VALUES("83","1");
INSERT INTO jos_modules_menu VALUES("85","1");
INSERT INTO jos_modules_menu VALUES("86","1");
INSERT INTO jos_modules_menu VALUES("87","1");
INSERT INTO jos_modules_menu VALUES("88","0");
INSERT INTO jos_modules_menu VALUES("90","56");
INSERT INTO jos_modules_menu VALUES("91","1");



DROP TABLE jos_modules_wafl;

CREATE TABLE `jos_modules_wafl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO jos_modules_wafl VALUES("1","1","1","1");
INSERT INTO jos_modules_wafl VALUES("2","2","1","2");
INSERT INTO jos_modules_wafl VALUES("3","3","1","3");
INSERT INTO jos_modules_wafl VALUES("4","4","1","4");
INSERT INTO jos_modules_wafl VALUES("5","5","1","5");
INSERT INTO jos_modules_wafl VALUES("6","6","1","6");
INSERT INTO jos_modules_wafl VALUES("7","7","1","7");
INSERT INTO jos_modules_wafl VALUES("8","8","1","8");
INSERT INTO jos_modules_wafl VALUES("9","9","1","9");
INSERT INTO jos_modules_wafl VALUES("10","10","1","10");
INSERT INTO jos_modules_wafl VALUES("11","11","1","11");
INSERT INTO jos_modules_wafl VALUES("12","12","1","12");
INSERT INTO jos_modules_wafl VALUES("13","13","1","13");
INSERT INTO jos_modules_wafl VALUES("14","14","1","14");
INSERT INTO jos_modules_wafl VALUES("15","15","1","15");
INSERT INTO jos_modules_wafl VALUES("16","25","1","25");
INSERT INTO jos_modules_wafl VALUES("17","28","1","28");
INSERT INTO jos_modules_wafl VALUES("18","30","1","30");
INSERT INTO jos_modules_wafl VALUES("19","31","1","31");
INSERT INTO jos_modules_wafl VALUES("20","32","1","32");
INSERT INTO jos_modules_wafl VALUES("21","39","1","39");
INSERT INTO jos_modules_wafl VALUES("22","41","1","41");
INSERT INTO jos_modules_wafl VALUES("23","42","1","42");
INSERT INTO jos_modules_wafl VALUES("24","44","1","44");
INSERT INTO jos_modules_wafl VALUES("25","47","1","47");
INSERT INTO jos_modules_wafl VALUES("26","48","1","48");
INSERT INTO jos_modules_wafl VALUES("27","49","1","49");
INSERT INTO jos_modules_wafl VALUES("28","50","1","50");
INSERT INTO jos_modules_wafl VALUES("29","51","1","51");
INSERT INTO jos_modules_wafl VALUES("30","53","1","53");
INSERT INTO jos_modules_wafl VALUES("31","54","1","54");
INSERT INTO jos_modules_wafl VALUES("32","55","1","55");
INSERT INTO jos_modules_wafl VALUES("33","56","1","56");
INSERT INTO jos_modules_wafl VALUES("34","57","1","57");
INSERT INTO jos_modules_wafl VALUES("35","58","1","58");
INSERT INTO jos_modules_wafl VALUES("36","59","1","59");
INSERT INTO jos_modules_wafl VALUES("37","60","1","60");
INSERT INTO jos_modules_wafl VALUES("38","62","1","62");
INSERT INTO jos_modules_wafl VALUES("39","63","1","63");
INSERT INTO jos_modules_wafl VALUES("40","64","1","64");
INSERT INTO jos_modules_wafl VALUES("41","67","1","67");
INSERT INTO jos_modules_wafl VALUES("42","68","1","68");
INSERT INTO jos_modules_wafl VALUES("43","69","1","69");
INSERT INTO jos_modules_wafl VALUES("44","70","1","70");
INSERT INTO jos_modules_wafl VALUES("45","71","1","71");
INSERT INTO jos_modules_wafl VALUES("46","72","1","72");
INSERT INTO jos_modules_wafl VALUES("47","73","1","73");
INSERT INTO jos_modules_wafl VALUES("48","74","1","74");
INSERT INTO jos_modules_wafl VALUES("49","75","1","75");
INSERT INTO jos_modules_wafl VALUES("50","76","1","76");
INSERT INTO jos_modules_wafl VALUES("51","77","1","77");
INSERT INTO jos_modules_wafl VALUES("52","78","1","78");
INSERT INTO jos_modules_wafl VALUES("53","79","1","79");
INSERT INTO jos_modules_wafl VALUES("80","80","1","80");
INSERT INTO jos_modules_wafl VALUES("81","81","1","81");
INSERT INTO jos_modules_wafl VALUES("82","82","1","82");
INSERT INTO jos_modules_wafl VALUES("83","83","1","83");
INSERT INTO jos_modules_wafl VALUES("84","85","1","85");
INSERT INTO jos_modules_wafl VALUES("86","86","1","86");
INSERT INTO jos_modules_wafl VALUES("87","87","1","87");
INSERT INTO jos_modules_wafl VALUES("88","88","1","88");



DROP TABLE jos_newsfeeds;

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_permissions;

CREATE TABLE `jos_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(60) NOT NULL,
  `control` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(60) NOT NULL,
  `subject_type` varchar(60) NOT NULL,
  `subject_id` text NOT NULL,
  `system` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_type` (`role`,`action`,`subject_type`,`subject_id`(60)),
  KEY `subaction` (`subject_type`,`action`,`subject_id`(60))
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

INSERT INTO jos_permissions VALUES("67","Registered","2","edit","remosFolder","6","0");
INSERT INTO jos_permissions VALUES("58","CNB","2","edit","remosFolder","4","0");
INSERT INTO jos_permissions VALUES("52","CNB","2","upload","remosFolder","4","0");
INSERT INTO jos_permissions VALUES("61","Registered","2","upload","remosFolder","6","0");
INSERT INTO jos_permissions VALUES("64","HPI","2","download","remosFolder","6","0");
INSERT INTO jos_permissions VALUES("51","CNB","2","upload","remosFolder","3","0");
INSERT INTO jos_permissions VALUES("54","CNB","2","download","remosFolder","3","0");
INSERT INTO jos_permissions VALUES("57","CNB","2","edit","remosFolder","3","0");
INSERT INTO jos_permissions VALUES("50","CNB","2","upload","remosFolder","2","0");
INSERT INTO jos_permissions VALUES("53","CNB","2","download","remosFolder","2","0");
INSERT INTO jos_permissions VALUES("56","CNB","2","edit","remosFolder","2","0");
INSERT INTO jos_permissions VALUES("60","Registered","2","upload","remosFolder","5","0");
INSERT INTO jos_permissions VALUES("63","HPI","2","download","remosFolder","5","0");
INSERT INTO jos_permissions VALUES("66","Registered","2","edit","remosFolder","5","0");
INSERT INTO jos_permissions VALUES("68","HPI","2","upload","remosFolder","1","0");
INSERT INTO jos_permissions VALUES("69","HPI","2","download","remosFolder","1","0");
INSERT INTO jos_permissions VALUES("70","HPI","2","edit","remosFolder","1","0");
INSERT INTO jos_permissions VALUES("55","CNB","2","download","remosFolder","4","0");



DROP TABLE jos_plugins;

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO jos_plugins VALUES("1","Authentication - Joomla","joomla","authentication","0","1","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("2","Authentication - LDAP","ldap","authentication","0","2","0","1","0","0","0000-00-00 00:00:00","host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n");
INSERT INTO jos_plugins VALUES("3","Authentication - GMail","gmail","authentication","0","4","0","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("4","Authentication - OpenID","openid","authentication","0","3","0","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("5","User - Joomla!","joomla","user","0","0","1","0","0","0","0000-00-00 00:00:00","autoregister=1\n\n");
INSERT INTO jos_plugins VALUES("6","Search - Content","content","search","0","1","1","1","0","0","0000-00-00 00:00:00","search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n");
INSERT INTO jos_plugins VALUES("7","Search - Contacts","contacts","search","0","3","1","1","0","0","0000-00-00 00:00:00","search_limit=50\n\n");
INSERT INTO jos_plugins VALUES("8","Search - Categories","categories","search","0","4","1","0","0","0","0000-00-00 00:00:00","search_limit=50\n\n");
INSERT INTO jos_plugins VALUES("9","Search - Sections","sections","search","0","5","1","0","0","0","0000-00-00 00:00:00","search_limit=50\n\n");
INSERT INTO jos_plugins VALUES("10","Search - Newsfeeds","newsfeeds","search","0","6","1","0","0","0","0000-00-00 00:00:00","search_limit=50\n\n");
INSERT INTO jos_plugins VALUES("11","Search - Weblinks","weblinks","search","0","2","1","1","0","0","0000-00-00 00:00:00","search_limit=50\n\n");
INSERT INTO jos_plugins VALUES("12","Content - Pagebreak","pagebreak","content","0","10000","1","1","0","0","0000-00-00 00:00:00","enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n");
INSERT INTO jos_plugins VALUES("13","Content - Rating","vote","content","0","4","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("14","Content - Email Cloaking","emailcloak","content","0","5","1","0","0","0","0000-00-00 00:00:00","mode=1\n\n");
INSERT INTO jos_plugins VALUES("15","Content - Code Hightlighter (GeSHi)","geshi","content","0","5","0","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("16","Content - Load Module","loadmodule","content","0","6","1","0","0","0","0000-00-00 00:00:00","enabled=1\nstyle=0\n\n");
INSERT INTO jos_plugins VALUES("17","Content - Page Navigation","pagenavigation","content","0","2","1","1","0","0","0000-00-00 00:00:00","position=1\n\n");
INSERT INTO jos_plugins VALUES("18","Editor - No Editor","none","editors","0","0","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("19","Editor - TinyMCE 2.0","tinymce","editors","0","0","1","1","0","0","0000-00-00 00:00:00","theme=advanced\ncleanup_startup=0\ncleanup_save=0\ncleanup_entities=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=http://picadesign.com/test/plugins/editors/tinymce/jscripts/tiny_mce/themes/pica_edit.css\nnewlines=1\nextended_elements=\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=1\ntemplate=1\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\nelement_path=0\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n");
INSERT INTO jos_plugins VALUES("20","Editor - XStandard Lite 2.0","xstandard","editors","0","0","0","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("21","Editor Button - Image","image","editors-xtd","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("22","Editor Button - Pagebreak","pagebreak","editors-xtd","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("23","Editor Button - Readmore","readmore","editors-xtd","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("24","XML-RPC - Joomla","joomla","xmlrpc","0","7","0","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("25","XML-RPC - Blogger API","blogger","xmlrpc","0","7","0","1","0","0","0000-00-00 00:00:00","catid=1\nsectionid=0\n\n");
INSERT INTO jos_plugins VALUES("27","System - SEF","sef","system","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("28","System - Debug","debug","system","0","2","1","0","0","0","0000-00-00 00:00:00","queries=1\nmemory=1\nlangauge=1\n\n");
INSERT INTO jos_plugins VALUES("29","System - Legacy","legacy","system","0","3","1","1","0","0","0000-00-00 00:00:00","route=0\n\n");
INSERT INTO jos_plugins VALUES("30","System - Cache","cache","system","0","0","0","1","0","0","0000-00-00 00:00:00","browsercache=1\ncachetime=15\n\n");
INSERT INTO jos_plugins VALUES("31","System - Log","log","system","0","0","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("32","System - Remember Me","remember","system","0","6","1","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("33","System - Backlink","backlink","system","0","7","0","1","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("34","Content - MorfeoShow","morfeoshow","content","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("36","Google Maps","plugin_googlemap2","content","0","0","1","0","0","0","0000-00-00 00:00:00","publ=1\nplugincode=mosmap\nGoogle_API_version=2.x\nurlsetting=http_host\nwidth=100%\nheight=400px\nlat=52.075581\nlon=4.541513\nzoom=10\nzoomType=Large\nmapType=Normal\nshowMaptype=1\ndragging=1\nmarker=1\nmaxads=3\nsearchlist=inline\nsearchtarget=_blank\nsearchzoompan=1\ntxtdir=Directions: \ntxtgetdir=Get Directions\ntxtfrom=From here\ntxtto=To here\ntxtdiraddr=Address: \ntxtaddr=Address: ##\nerraddr=Address ## not found!\nalign=center\nlangtype=center\ntxtlightbox=Open lightbox\nlbxwidth=100%\nlbxheight=700px\neffect=none\nkmlrenderer=google\nkmlsidebar=none\nkmlsbwidth=200\n");
INSERT INTO jos_plugins VALUES("37","Tabs & Slides (in content items)","jwts","content","0","0","1","0","0","0","0000-00-00 00:00:00","slides_slidespeed=10\nslides_timer=5\n\n");
INSERT INTO jos_plugins VALUES("53","Content - Custom Page Title","pagetitle","content","0","0","1","0","0","62","2010-01-05 16:40:41","");
INSERT INTO jos_plugins VALUES("56","System - SEOSimple","SEOSimple","system","0","0","0","0","0","0","0000-00-00 00:00:00","length=200\nseparator=\\|\nfptitle=Home\n");
INSERT INTO jos_plugins VALUES("42","Simple Image Gallery Plugin","jwsig","content","0","0","1","0","0","0","0000-00-00 00:00:00","th_width=130\nth_height=65\nth_quality=80\ndisplaynavtip=0\nnavtip=Navigation tip: Hover mouse on top of the right or left side of the image to see the next or previous image respectively.\ndisplaymessage=1\nmessage=You are browsing images of our\n\n");
INSERT INTO jos_plugins VALUES("43","Editor - JCE 1.5.2","jce","editors","0","0","1","0","0","0","0000-00-00 00:00:00","editor_custom_config=\neditor_callback_file=\n\n");
INSERT INTO jos_plugins VALUES("57","System - Wafl","wafl","system","0","1","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("58","Button - Mobile Readmore","readmoremobile","editors-xtd","0","0","1","0","0","0","0000-00-00 00:00:00","");
INSERT INTO jos_plugins VALUES("59","Content - Mobile Content","mobilecontent","content","0","0","1","0","0","0","0000-00-00 00:00:00","showtitle=1\nshowauthor=1\nshowcreatedate=1\nshowmodifydate=1\nshowpdficon=1\nshowmailicon=1\nshowprinticon=1\nreadmore=0\nautoreadmore=0\nbase=words\nnumber=50\n\n");



DROP TABLE jos_poll_data;

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_poll_date;

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_poll_menu;

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_polls;

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_sections;

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO jos_sections VALUES("1","Home","","home","","content","left","","1","0","0000-00-00 00:00:00","1","0","4","");
INSERT INTO jos_sections VALUES("2","Culture","","culture","","content","left","","1","0","0000-00-00 00:00:00","2","0","2","");
INSERT INTO jos_sections VALUES("3","Work","","work","","content","left","","1","0","0000-00-00 00:00:00","3","0","1","");
INSERT INTO jos_sections VALUES("4","Blog","","blog","","content","left","","1","0","0000-00-00 00:00:00","4","0","3","");
INSERT INTO jos_sections VALUES("5","Outtakes","","outtakes","","content","left","","0","0","0000-00-00 00:00:00","5","0","0","");
INSERT INTO jos_sections VALUES("6","Opinion Central","","opinion-central","","content","left","","0","0","0000-00-00 00:00:00","6","0","0","");
INSERT INTO jos_sections VALUES("7","Contact","","contact","","content","left","<br>","1","0","0000-00-00 00:00:00","7","0","0","");



DROP TABLE jos_session;

CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_session VALUES("","1273801115","2hvbp0t8u3tosua9s7tkjdhh44","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801115;s:18:\"session.timer.last\";i:1273801115;s:17:\"session.timer.now\";i:1273801115;s:22:\"session.client.browser\";s:87:\"Mozilla/5.0 (compatible; Yahoo! Slurp/3.0; http://help.yahoo.com/help/us/ysearch/slurp)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799492","b84vises4j4qbmgjvu2e8rfo42","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799492;s:18:\"session.timer.last\";i:1273799492;s:17:\"session.timer.now\";i:1273799492;s:22:\"session.client.browser\";s:38:\"Yandex/1.01.001 (compatible; Win16; I)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273802094","kreuij7dse5kofsnn068nrqlb4","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273802094;s:18:\"session.timer.last\";i:1273802094;s:17:\"session.timer.now\";i:1273802094;s:22:\"session.client.browser\";s:38:\"Yandex/1.01.001 (compatible; Win16; I)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799838","e9tl4ckfab781ijmo4cd6mutb6","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799838;s:18:\"session.timer.last\";i:1273799838;s:17:\"session.timer.now\";i:1273799838;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799841","sopcb4qvt2g7covagnrhfp2v15","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799841;s:18:\"session.timer.last\";i:1273799841;s:17:\"session.timer.now\";i:1273799841;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799844","4pbotvfde91isha69k0mq0i0l0","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799844;s:18:\"session.timer.last\";i:1273799844;s:17:\"session.timer.now\";i:1273799844;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799847","kb6rt3j9kscoi178vjq4oi0gj6","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799847;s:18:\"session.timer.last\";i:1273799847;s:17:\"session.timer.now\";i:1273799847;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799850","8sog9q8tfqf0q1hjnifci8l5b7","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799850;s:18:\"session.timer.last\";i:1273799850;s:17:\"session.timer.now\";i:1273799850;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273800244","e4lvtdrsurmgfi2m8001sd7u82","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273800244;s:18:\"session.timer.last\";i:1273800244;s:17:\"session.timer.now\";i:1273800244;s:22:\"session.client.browser\";s:87:\"Mozilla/5.0 (compatible; Yahoo! Slurp/3.0; http://help.yahoo.com/help/us/ysearch/slurp)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799832","jscffnabtdebkpai4p7kaeukv5","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799832;s:18:\"session.timer.last\";i:1273799832;s:17:\"session.timer.now\";i:1273799832;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273800329","jmqac3mi0inp1gddprsbs6qhl2","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273800329;s:18:\"session.timer.last\";i:1273800329;s:17:\"session.timer.now\";i:1273800329;s:22:\"session.client.browser\";s:38:\"Yandex/1.01.001 (compatible; Win16; I)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799857","mabofjhtmfdplnho7fd17mpgm1","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799857;s:18:\"session.timer.last\";i:1273799857;s:17:\"session.timer.now\";i:1273799857;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801081","0htuv0un0sm60p4ic7nqe8ohf4","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801081;s:18:\"session.timer.last\";i:1273801081;s:17:\"session.timer.now\";i:1273801081;s:22:\"session.client.browser\";s:87:\"Mozilla/5.0 (compatible; Yahoo! Slurp/3.0; http://help.yahoo.com/help/us/ysearch/slurp)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801148","ggp93bqeauq407b3jkdo8nbu24","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:4;s:19:\"session.timer.start\";i:1273801112;s:18:\"session.timer.last\";i:1273801131;s:17:\"session.timer.now\";i:1273801148;s:22:\"session.client.browser\";s:125:\"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.38 Safari/533.4\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799835","cn8bi3glm68r390dcthmh6ef77","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799835;s:18:\"session.timer.last\";i:1273799835;s:17:\"session.timer.now\";i:1273799835;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273802086","itc8fh7c61ucqn5ngq20md4143","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273802086;s:18:\"session.timer.last\";i:1273802086;s:17:\"session.timer.now\";i:1273802086;s:22:\"session.client.browser\";s:53:\"Baiduspider+(+http://www.baidu.com/search/spider.htm)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273803800","lkkjebr0ekiou5sp2351rce4e3","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273803800;s:18:\"session.timer.last\";i:1273803800;s:17:\"session.timer.now\";i:1273803800;s:22:\"session.client.browser\";s:38:\"Yandex/1.01.001 (compatible; Win16; I)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273798542","82rl32apqrv7epj35fcfoqv1a7","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273798542;s:18:\"session.timer.last\";i:1273798542;s:17:\"session.timer.now\";i:1273798542;s:22:\"session.client.browser\";s:96:\"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SaveWealth; Avant Browser; .NET CLR 1.1.4322)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273798089","jtrmdc445tpj69tl51hq8qcrp1","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273798089;s:18:\"session.timer.last\";i:1273798089;s:17:\"session.timer.now\";i:1273798089;s:22:\"session.client.browser\";s:87:\"Mozilla/5.0 (compatible; Yahoo! Slurp/3.0; http://help.yahoo.com/help/us/ysearch/slurp)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799852","01i8nlduc6pogvae5j55l0vqn3","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799852;s:18:\"session.timer.last\";i:1273799852;s:17:\"session.timer.now\";i:1273799852;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273799855","g7kjbsr0b4v9634dd0if6ie2n6","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273799855;s:18:\"session.timer.last\";i:1273799855;s:17:\"session.timer.now\";i:1273799855;s:22:\"session.client.browser\";s:92:\"Mozilla/5.0 (compatible; DotBot/1.1; http://www.dotnetdotcom.org/, crawler@dotnetdotcom.org)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801124","ph0dlq2k5e8b8nqvklqu2c40h3","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801124;s:18:\"session.timer.last\";i:1273801124;s:17:\"session.timer.now\";i:1273801124;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801129","fp023u9slt3nm74aipt65ktv15","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801129;s:18:\"session.timer.last\";i:1273801129;s:17:\"session.timer.now\";i:1273801129;s:22:\"session.client.browser\";s:47:\"msnbot/2.0b (+http://search.msn.com/msnbot.htm)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801221","8k62nc87n3m222n0924ee81hi1","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801221;s:18:\"session.timer.last\";i:1273801221;s:17:\"session.timer.now\";i:1273801221;s:22:\"session.client.browser\";s:38:\"Yandex/1.01.001 (compatible; Win16; I)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273801405","0dqc5l031d9er9pe8ke3r9q4h1","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273801405;s:18:\"session.timer.last\";i:1273801405;s:17:\"session.timer.now\";i:1273801405;s:22:\"session.client.browser\";s:87:\"Mozilla/5.0 (compatible; Yahoo! Slurp/3.0; http://help.yahoo.com/help/us/ysearch/slurp)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");
INSERT INTO jos_session VALUES("","1273802808","vml3e0kupcje3f7ncffveojk32","1","0","","0","0","__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1273802808;s:18:\"session.timer.last\";i:1273802808;s:17:\"session.timer.now\";i:1273802808;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:82:\"/home1/askpersp/public_html/picadesignBlue/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}mobile|b:0;");



DROP TABLE jos_stats_agents;

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_tagmeta;

CREATE TABLE `jos_tagmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `rindex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes,2=Skip',
  `rfollow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes,2=Skip',
  `rsnippet` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `rarchive` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `rodp` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxuri` (`uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE jos_templates_menu;

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO jos_templates_menu VALUES("Pica","0","0");
INSERT INTO jos_templates_menu VALUES("khepri","0","1");



DROP TABLE jos_users;

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO jos_users VALUES("62","Administrator","admin","caitlin.holman@gmail.com","4ec9b29ebdfb2311a360e5b7c3dde249:1bvmgbjYrS8tMyVbr0QHsEynG7OZuG2u","Super Administrator","0","1","25","2008-10-21 12:27:21","2010-04-30 11:56:01","","admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n");
INSERT INTO jos_users VALUES("63","Caitlin","cait","caitlin@picadesign.com","e72583560edddde1adfb7796f9977f2d:Qc3VJkT2Iw9gQ3dMXhJ70KQkfojAiSww","Registered","0","1","18","2008-11-04 21:41:37","2009-03-16 20:47:06","","admin_language=en-GB\nlanguage=en-GB\neditor=tinymce\nhelpsite=\ntimezone=0\n\n");
INSERT INTO jos_users VALUES("64","Jen","jen","jen@picadesign.com","085e4d36f6a9fc2f1bbce0893b28ad62:4IqmTXBmz4xTg7kOqj4jkAFmyOypwYvU","Administrator","0","1","24","2009-02-06 16:10:27","2010-03-18 17:47:14","","admin_language=en-GB\nlanguage=en-GB\neditor=jce\nhelpsite=\ntimezone=0\n\n");
INSERT INTO jos_users VALUES("67","cassidy parmley","cassidy","cassidy@picadesign.com","9f288031a24bc16f3ff9f3bfacf0a69b:0V9xGqZoqVZY9AyvRR4kxYM4Mb1vbLhr","Administrator","0","1","24","2009-04-20 17:53:31","2010-04-30 19:56:49","","admin_language=\nlanguage=\neditor=jce\nhelpsite=\ntimezone=-5\n\n");
INSERT INTO jos_users VALUES("68","Zak","zak","zakstrassberg@gmail.com","60121ca881ba279608111be29a43fb0f:SanscrlMsMUNd6CV4qy840HG6ViSrcPq","Administrator","0","1","24","2009-07-09 14:59:58","2009-09-09 19:30:53","","admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n");
INSERT INTO jos_users VALUES("69","James","james","james@picadesign.com","0fb4eee870040e32d32dfa6f70caf246:lNwo4Wb55rRR9GfE6E0ozWjSTuro7upj","Manager","0","1","23","2009-08-13 16:46:40","0000-00-00 00:00:00","","admin_language=en-GB\nlanguage=en-GB\neditor=jce\nhelpsite=\ntimezone=0\n\n");



DROP TABLE jos_wafl_settings;

CREATE TABLE `jos_wafl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siruna_login` varchar(250) DEFAULT NULL,
  `siruna_pass` varchar(250) DEFAULT NULL,
  `siruna_url` varchar(250) DEFAULT NULL,
  `siruna_mobile_url` varchar(250) NOT NULL,
  `device_detection` int(11) NOT NULL DEFAULT '0',
  `redirect_mobile_url` varchar(250) NOT NULL,
  `redirect_to_template` varchar(250) NOT NULL,
  `base_template` varchar(250) NOT NULL,
  `siruna_port` int(11) DEFAULT '80',
  `base_url` varchar(250) DEFAULT NULL,
  `siruna_user` varchar(250) NOT NULL,
  `option` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jos_wafl_settings VALUES("1","not set","not set","not set","not set","0","not set","wafl","bluesite","8080","not set","not set","1");



DROP TABLE jos_weblinks;

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




