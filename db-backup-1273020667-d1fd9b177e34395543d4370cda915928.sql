DROP TABLE phpmysqlautobackup;

CREATE TABLE `phpmysqlautobackup` (
  `id` int(11) NOT NULL,
  `version` varchar(6) COLLATE latin1_german2_ci DEFAULT NULL,
  `time_last_run` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

INSERT INTO phpmysqlautobackup VALUES("1","1.5.4","1273018744");



DROP TABLE portfolio_items;

CREATE TABLE `portfolio_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(10) NOT NULL,
  `title` varchar(35) NOT NULL,
  `copy` text NOT NULL,
  `LgImgFilename` varchar(25) NOT NULL,
  `SmImgFilename` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `copy` (`copy`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=armscii8 COMMENT='Store James Mehorter Portfolio Items';

INSERT INTO portfolio_items VALUES("28","WebDesign","BurgessBurgess","Website and Design done by myself while working for <a href=\"http://www.picadesign.com\" title=\"Pica Design, LLC.\" target=\"_blank\">Pica Design</a>. Built on Wordpress as a custom theme. <ul><li><a href=\"http://www.burgessbilt.com\" title=\"Burgess & Burgess\" target=\"_blank\">Check out the Site</a></li></ul> ","BurgessBilt_Lg.jpg","BurgessBilt_Sm.jpg");
INSERT INTO portfolio_items VALUES("1","WebDesign","Hometown Real Estate","Maine based business, Hometown Real Estate needed a database driven website to display all their listings. Included with the project was a powerful control panel to manage their listings. <ul><li><a href=\"http://www.hometownre.org\" target=\"_blank\" title=\"Hometown Real Estate\">Check out the Site</a></li></ul>","Hometown_Lg.jpg","Hometown_Sm.jpg");
INSERT INTO portfolio_items VALUES("2","WebDesign","Art History 155","This project required a custom blogging environment to be created for an online class offered by The University of Maine. The Professor needed the ability to post lessons which facilitated the comparison of art history images for students to blog about. We also designed flashcards and per lesson image study tools for students to use prior to exams. ","ARH155_Lg.jpg","ARH155_Sm.jpg");
INSERT INTO portfolio_items VALUES("3","WebDesign","Olive Hill","Client needed a small website to display information about their Italian olive oil import business. <ul><li><a href=\"http://www.labellacolina.com\" target=\"_blank\" title=\"La Bella Colia\">Check out the Site</a></li></ul>","OliveHill_Lg.jpg","OliveHill_Sm.jpg");
INSERT INTO portfolio_items VALUES("4","WebDesign","MaineStudies","Website to display information on the The University of Maine\'s MaineStudies Program. Created while working for <a href=\"http://learnonline.umaine.edu/\" target=\"_blank\" title=\"Continuing & Distance Education\">Continuing & Distance Education</a><ul><li><a href=\"http://dll.umaine.edu/mainestudy/\" target=\"_blank\" title=\"Maine Studies\"> Check out the Site</a></li></ul>","MaineStudies_Lg.jpg","MaineStudies_Sm.jpg");
INSERT INTO portfolio_items VALUES("6","Personal","Divvy","Divvy is a social network we created while in college as a Capstone Project. Divvy is a place where people can create their own social networks for all their interests, collaborate with others, and share media in their communities. <a href=\"http://divvy.7mdesign.com\" target=\"_blank\">Visit Divvy</a>","Divvy_Lg.jpg","Divvy_Sm.jpg");
INSERT INTO portfolio_items VALUES("5","WebDesign","Welcome Pages","Client needed a powerful web application for staff and professors to create their own online course \'Welcome Page\' detailing the things students will need for the course. <ul><li><a href=\"http://dll.umaine.edu/info/welcomepage/WelcomePage.php?course=ARH155_995\" target=\"_blank\">View a sample welcome page</a></li></ul>","WelcomePages_Lg.jpg","WelcomePages_Sm.jpg");
INSERT INTO portfolio_items VALUES("7","WebDeisgn","Lucid Productions","Southern Maine based client, Lucid Productions needed an informational website to display upcoming parties they were throwing, to promote employment, and provide an email mailing list for their patrons. Their site is no longer in service at this time.","Lucid_Lg.jpg","Lucid_Sm.jpg");
INSERT INTO portfolio_items VALUES("8","WebDesign","Maine Campus Solutions","Client needed an informational website to display services and pricing for a small business which fixes computers.","MCS_Lg.jpg","MCS_Sm.jpg");
INSERT INTO portfolio_items VALUES("9","Graphics","Club Gemini","Client needed a company image for a large sign, business cards, and letterheads.","Gemini_Lg.jpg","Gemini_Sm.jpg");
INSERT INTO portfolio_items VALUES("11","Graphics","Architectural Portfolio","This Connecticut based client needed divider images for their architectural portfolio. They were used to separate different categories of the clients work. ","Joe_Lg.jpg","Joe_Sm.jpg");
INSERT INTO portfolio_items VALUES("12","Graphics ","Kennebec Software Consultation","Client needed a company image created for their computer software consultation business.  ","KSC_Lg.jpg","KSC_Sm.jpg");
INSERT INTO portfolio_items VALUES("13","Graphics","Umaine Life","Client needed a cartoon logo & company image for their campus recreation website. Image created into animated flash. ","UMaineLife_Lg.jpg","UMaineLife_Sm.jpg");
INSERT INTO portfolio_items VALUES("10","Graphics","Soundscape","Client needed a proposed graphical layout for their company website which displays info on upcoming local concerts. ","Soundscape_Lg.jpg","Soundscape_Sm.jpg");
INSERT INTO portfolio_items VALUES("14","WebDesign","Noby Noby Boy Fansite","This Vermont based client needed a small informational website to facilitate a fan page for the Wii video game Noby Noby Boy.","NobyNoby_Lg.jpg","NobyNoby_Sm.jpg");
INSERT INTO portfolio_items VALUES("15","WebDesign","Inland Valley Office Furniture","California based client, Inland Valley Office Furniture needed a database driven website to display their products for sale. Included in the project was a powerful back-end control panel for the client to manage all their products. <ul><li><a href=\"http://www.ivof.net\" target=\"_blank\" title=\"Inland Valley Office Furniture\">Check out the site</a></li></ul>","IVOF_Lg.jpg","IVOF_Sm.jpg");
INSERT INTO portfolio_items VALUES("16","WebDesign","Amanda Prouty Photography","Maine based client, Amanda Prouty needed her SmugMug-hosted photography website stylized and new graphics created. <ul><li><a href=\"http://www.amandaproutyphotography.com/\" target=\"_blank\" title=\"Amanda Prouty Photography\">Check out the site</a></li></ul>","Prouty_Lg.jpg","Prouty_Sm.jpg");
INSERT INTO portfolio_items VALUES("17","Personal","Mclaren F1","This is one of my favorite cars, the Mclaren LM. Only 5 of these cars where ever built. I decided to tackle the project once I had learned enough about 3d, although I doubt I will ever really be done with it. The traditional color of these is Papaya Orange in memory of Bruce Mclaren, however I despise this color and so; did mine in black :D  Maya + Photoshop.","Mclaren_Lg.jpg","Mclaren_Sm.jpg");
INSERT INTO portfolio_items VALUES("18","Personal","Clink Character","Clink is a narrative and technical experiment in 3D-Animation created by myself and Justin Rogers. The film is based on a robot that comes to life and discovers himself. When a human element is introduced, he discovers he is not what he initially believes himself to be. Photoshop + Maya.","ClinkCharacter_Lg.jpg","ClinkCharacter_Sm.jpg");
INSERT INTO portfolio_items VALUES("20","Personal","Robotics","Robotics used in the Clink animation.","Robotics_Lg.jpg","Robotics_Sm.jpg");
INSERT INTO portfolio_items VALUES("21","Personal","Droid","Just playing around one day trying to make a tread-driven robot. Maya.","Droid_Lg.jpg","Droid_Sm.jpg");
INSERT INTO portfolio_items VALUES("19","Personal","Ransom Note Generator","The Ransom Note Generator was a project I developed for a web-design class. <a href=\"http://ransom.7mdesign.com\" target=\"_blank\">Try it out!</a> ","Ransom_Lg.jpg","Ransom_Sm.jpg");
INSERT INTO portfolio_items VALUES("22","Personal","Caught","Just playing around with 3D Studio Max and Photoshop.","Caught_Lg.jpg","Caught_Sm.jpg");
INSERT INTO portfolio_items VALUES("23","Personal","Clink","Clink is a narrative and technical experiment in 3D-Animation created by myself and Justin Rogers. The film is based on a robot that comes to life and discovers himself. When a human element is introduced, he discovers he is not what he initially believes himself to be. Photoshop + Maya.","Clink_Lg.jpg","Clink_Sm.jpg");
INSERT INTO portfolio_items VALUES("24","Personal","Clink Vs Monster","Digital Painting in Photoshop, done for an art class. Designed for and Printed on 24\" x 42\" Semi-Gloss.","Clink_Monster_Lg.jpg","Clink_Monster_Sm.jpg");
INSERT INTO portfolio_items VALUES("26","WebDesign","VMD Studio","VMD Studio website re-design done while working for <a href=\"http://www.picadesign.com\" title=\"Pica Design, LLC.\" target=\"_blank\">Pica Design</a>. Built on Joomla with custom modules. <ul><li><a href=\"www.vmdstudio.com\" target=\"_blank\" title=\"Check out the Site\">Check out the Site</a></li></ul>","VMDStudio_Lg.jpg","VMDStudio_Sm.jpg");
INSERT INTO portfolio_items VALUES("25","WebDesign","DanceChatter","Local LA dance instructor Trish Connery, needed a new website to promote her dance classes and newsletter. We designed her a RSS powered feed blog to facilitate the posting of articles, events, classes, and images. We also designed her a powerful event calendar which students can use to sign up for her classes and events. <ul><li><a href=\"http://www.dancechatter.com\" target=\"_blank\" title=\"Danecchatter\">Check out the Site</a></li></ul>","DanceChatter_Lg.jpg","DanceChatter_Sm.jpg");
INSERT INTO portfolio_items VALUES("27","WebDesign","Chris Klicka","Website created in conjunction with Micah Ellis of <a href=\"http://www.mestudios.net/\" title=\"mestudios\" target=\"_blank\">ME Studios</a> who created the design, and I coded it while working for Shepherd Press. <ul><li><a href=\"/ChrisKlicka/\" target=\"_blank\" title=\"Check out the Website\">Check out the Site</a></li></ul>","ChrisKlicka_Lg.jpg","ChrisKlicka_Sm.jpg");
INSERT INTO portfolio_items VALUES("29","WebDesign","French & Webb","Website design by Rob Dietz and Micah Ellis, and developed on Wordpress MU by myself while working for <a href=\"http://www.picadesign.com\" title=\"Pica Design, LLC.\" target=\"_blank\">Pica Design.</a> <ul><li><a href=\"http://www.frenchwebb.com\" title=\"French & Webb\" target=\"_blank\">Check out the Site</a></li></ul>","FrenchWebb_Lg.jpg","FrenchWebb_Sm.jpg");



