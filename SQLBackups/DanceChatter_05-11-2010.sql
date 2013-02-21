DROP TABLE Articles;

CREATE TABLE `Articles` (
  `Article_Id` int(11) NOT NULL auto_increment,
  `Cat_Id` int(11) NOT NULL,
  `Article_Title` longtext NOT NULL,
  `Article_Body` longtext NOT NULL,
  `Date_Posted` int(11) NOT NULL,
  `Month_Posted` varchar(12) NOT NULL,
  `Year_Posted` int(4) NOT NULL,
  `Type` varchar(7) NOT NULL default 'Article',
  PRIMARY KEY  (`Article_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=armscii8 ROW_FORMAT=DYNAMIC COMMENT='DanceChatter Articles';

INSERT INTO Articles VALUES("23","3","Last Night In Pasadena / Wednesday, May 27th","<p>It is with sadness that I announce Wednesday, May 27th as my last night teaching a weekly class at Family Dance Studio in Pasadena. Earlier this year when I was asked to come on board by owners Francisco and Stacey Martinez I was very excited but we all knew logistics might not work out long-term (plans on paper don\'t always work out in real life, LOL. After two months of trying to fit the weekly drive into my schedule, it has become clear that it\'s best to discontinue the classes. Nonetheless, I want to thank Francisco and Stacey for the opportunity, I have nothing but the utmost respect for them and for the staff at Dance Family Studio, and the students are WONDERFUL. And, even though I won\'t be there on Wednesday nights anymore, I hope to see you all at the West Coast Swing Bootcamp sponsored by DFS this coming<br />Saturday, May 30th (see below for details).</p>","1244495003","Jun","2009","Article");
INSERT INTO Articles VALUES("26","3","Sub for Sunday, June 21","<p>Hello, everyone!</p>
INSERT INTO Articles VALUES("27","3","WE NEED YOUR DANCE NEWBIES","<p>We need your dance newbies NOW!!</p>
INSERT INTO Articles VALUES("28","3","Dance Like It\'s Sunday: WCS + Ballroom","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("30","3","FYI: Room Change for Sunday Classes!","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("31","21","Tuesday August 4","<p>I don\'t have my cell phone with me today!</p>
INSERT INTO Articles VALUES("32","1","Summer Dance Camp","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("33","3","No Classes Sunday, August 9th","<p><!--StartFragment-->
INSERT INTO Articles VALUES("34","2","Massage Avail at PS/SDC","<p><!--StartFragment-->
INSERT INTO Articles VALUES("35","1","Sunday Classes Resume August 16th","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("36","3","Salsa Growing in B-Bank!","<p><!--StartFragment-->
INSERT INTO Articles VALUES("37","1","43 Days Until CruiseFest!","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("38","21","Salsera Christina Haggerty","<p><!--StartFragment-->
INSERT INTO Articles VALUES("39","22","Francisco Aguabella 2Nite @ Autry","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("40","3","New 6-Week Series/Burbank: WCS + C2S","<p><span style=\"font-size: small;\"><span style=\"font-family: arial,helvetica,sans-serif;\">DanceChatter.Com Presents <br />West Coast Swing + Country 2-Step <br />Every Tuesday with Trish Connery </span></span></p>
INSERT INTO Articles VALUES("41","1","DanceChatter Part 1: Missing In Action","<p style=\"text-align: center;\"><!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>400</o:Words> <o:Characters>2285</o:Characters> <o:Company>Hohman Maybank Lieb</o:Company> <o:Lines>19</o:Lines> <o:Paragraphs>4</o:Paragraphs> <o:CharactersWithSpaces>2806</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:Geneva; 	panose-1:2 11 5 3 3 4 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;} @font-face 	{font-family:\"American Typewriter\"; 	panose-1:2 9 6 4 2 0 4 2 3 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin:0in; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-bidi-font-family:\"Times New Roman\";} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin:0in; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} --> <!--[endif]--> <!--StartFragment--><span style=\"font-size: small;\"><span style=\"font-family: book antiqua,palatino;\"><span style=\"font-size: x-small;\">DanceChatter Newsletter 8-24-09: Part 1</span><br /></span></span></p>
INSERT INTO Articles VALUES("42","23","Part 2: Paradise Dance Festival + Club Challenge J&J","<p><!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>148</o:Words> <o:Characters>849</o:Characters> <o:Company>Hohman Maybank Lieb</o:Company> <o:Lines>7</o:Lines> <o:Paragraphs>1</o:Paragraphs> <o:CharactersWithSpaces>1042</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:\"Book Antiqua\"; 	panose-1:2 4 6 2 5 3 5 3 3 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin:0in; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-bidi-font-family:\"Times New Roman\";} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin:0in; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} --> <!--[endif]--> <!--StartFragment--></p>
INSERT INTO Articles VALUES("43","23","Part 3: Say Hello & Goodbye to Salsa","<p><!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>144</o:Words> <o:Characters>823</o:Characters> <o:Company>Hohman Maybank Lieb</o:Company> <o:Lines>6</o:Lines> <o:Paragraphs>1</o:Paragraphs> <o:CharactersWithSpaces>1010</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:Calibri; 	panose-1:2 15 5 2 2 2 4 3 2 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;} @font-face 	{font-family:\"Book Antiqua\"; 	panose-1:2 4 6 2 5 3 5 3 3 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin:0in; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-bidi-font-family:\"Times New Roman\";} a:link, span.MsoHyperlink 	{color:blue; 	text-decoration:underline; 	text-underline:single;} a:visited, span.MsoHyperlinkFollowed 	{mso-style-noshow:yes; 	color:purple; 	text-decoration:underline; 	text-underline:single;} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin:0in; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} --> <!--[endif]--> <!--StartFragment--> <!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>18</o:Words> <o:Characters>103</o:Characters> <o:Company>Hohman Maybank Lieb</o:Company> <o:Lines>1</o:Lines> <o:Paragraphs>1</o:Paragraphs> <o:CharactersWithSpaces>126</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:\"Book Antiqua\"; 	panose-1:2 4 6 2 5 3 5 3 3 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin:0in; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-bidi-font-family:\"Times New Roman\";} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin:0in; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} --> <!--[endif]--> <!--StartFragment--></p>
INSERT INTO Articles VALUES("44","22","Part 4: WCS Bootcamp + 5th Saturday Dance","<p style=\"text-align: center;\"><span style=\"font-size: x-small;\"><span style=\"font-family: book antiqua,palatino;\">DanceChatter Newsletter 8-24-09: Part 4</span></span></p>
INSERT INTO Articles VALUES("45","23","DanceChatter Newsletter 8-24-09","<p>DanceChatter.Com Newsletter</p>
INSERT INTO Articles VALUES("46","23","DanceChatter Newsletter 9/19/09","<p>DanceChatter.Com Newsletter</p>
INSERT INTO Articles VALUES("47","21","Calling All SFV & Ex-Skinny\'s Dancers","<p><span style=\"font-family: \'lucida grande\', tahoma, verdana, arial, sans-serif; font-size: 11px; color: #333333;\">
INSERT INTO Articles VALUES("48","1","WC Swing & Country Starts Jan 5","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("49","20","Date Change For Critique","<p><strong><span style=\"font-size: medium;\">UPDATE &deg; UPDATE &bull; UPDATE *</span></strong></p>
INSERT INTO Articles VALUES("50","3","Rain? What Rain?!?","<p><span style=\"font-size: medium;\"><em><strong>Rain, Shine or More Rain...</strong></em></span></p>
INSERT INTO Articles VALUES("51","23","7th Tuesday Dance: Success","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("52","1","Dancing This Weekend","<p><!--StartFragment--></p>
INSERT INTO Articles VALUES("53","23","DC Quick Notes 2-23","<p><!--StartFragment--><span style=\"font-size: large;\"><span style=\"font-family: Mistral;\"><span style=\"font-size: 24pt;\">DanceChatter</span></span></span><span style=\"font-family: \'Century Gothic\';\"><span style=\"font-size: 14pt;\"> </span></span><span style=\"font-size: medium;\"><span style=\"font-family: Calibri, Verdana, Helvetica, Arial;\"><span style=\"font-size: 16pt;\">Quick Notes<br /> Tuesday, February 23<br /> </span></span></span><span style=\"font-family: Calibri, Verdana, Helvetica, Arial;\"><span style=\"font-size: 14pt;\"><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Today is <strong>Tuesday, February 23rd</strong> and I&rsquo;m very excited about all the new West Coast Swing dancers that signed up for the new <strong>6-Week Series</strong> that starts at the <strong>Burbank Moose Lodge</strong>. My <strong>7th Tuesday Dance</strong> <strong>Party </strong>on February 7th introduced a lot of new people to WCS, now they are continuing their dance journey with more classes. Congratulations and see you all tonight!<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Don&rsquo;t forget that in addition to the <strong>7:00 pm Beginning WCS</strong> class we also have <strong>Beyond Basics WCS at 8:00 pm</strong> and <strong>Beginning Nightclub </strong>(a beautiful dance)<strong> at 9:00 pm</strong>. You can still sign up for the series, in fact <span style=\"color: #0000ff;\"><em>IF YOU PAY PAL YOUR REGISTRATION TODAY BEFORE 4:00 PM</em></span> you can still get the advance registration rate. You always have the option of paying for the series at the door or paying per class but why not get the best price, the best &ldquo;dance bang&rdquo; for your buck? Sign up in advance.<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Also, this is one of the rare weekends where I am available for <strong>Private Lessons</strong> so take advantage of it! Many of you have expressed interest in booking a lesson with me, this is the weekend to do it! <strong>Saturday &amp; Sunday, February 27th &amp; 28th</strong>, <strong>Double H Club @ Hacienda</strong>. Call or e-mail to schedule, Do it now! :^)<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Have a great day, a great week and hope to see you somewhere on the dance floor!<br /> <br /> </span></span><span style=\"font-size: x-large;\"><span style=\"font-family: Mistral;\"><span style=\"font-size: 27pt;\"><strong>Trish</strong></span></span></span><span style=\"font-size: xx-small;\"><span style=\"font-family: Calibri, Verdana, Helvetica, Arial;\"><span style=\"font-size: 10pt;\"><br /> </span></span></span><span style=\"font-family: \'Century Gothic\';\"><span style=\"font-size: 14pt;\">------------------<br /> </span></span><span style=\"font-size: medium;\"><span style=\"font-family: Mistral;\"><span style=\"font-size: 16pt;\">DanceChatter.Com Presents<br /> </span></span></span><span style=\"font-family: Mistral;\"><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\"> <br /> </span></span></span><span style=\"color: #000080;\"><span style=\"font-size: large;\"><span style=\"font-family: \'Bernard MT Condensed\';\"><span style=\"font-size: 19pt;\">West Coast Swing</span></span></span><span style=\"font-family: \'Bernard MT Condensed\';\"><span style=\"font-size: medium;\"><span style=\"font-size: 18pt;\"> </span></span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\">&amp;</span></span><span style=\"font-size: medium;\"><span style=\"font-size: 18pt;\"> </span></span><span style=\"font-size: large;\"><span style=\"font-size: 19pt;\">Nightclub 2-Step<br /> </span></span></span></span><span style=\"font-family: \'Bernard MT Condensed\';\"><span><span style=\"font-size: 4pt;\"> <br /> </span></span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\"> </span></span></span><span style=\"font-size: xx-small;\"><span style=\"font-family: \'Times New Roman\';\"><span style=\"font-size: 10pt;\"><strong>EVERY TUESDAY in BURBANK<br /> </strong></span></span></span><span style=\"font-family: \'Times New Roman\';\"><strong><span><span style=\"font-size: 4pt;\"> <br /> </span></span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\"> </span></span><span style=\"font-size: 13pt;\"><em>New 6-Week Series TUESDAY, FEBRUARY 23 <br /> </em></span><span><span style=\"font-size: 6pt;\"> <br /> </span></span></strong></span><strong><span style=\"font-family: \'Abadi MT Condensed Light\';\"><span style=\"font-size: 13pt;\">7:00 pm &ndash; Beginning West Coast Swing </span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\">(Level 1)<br /> </span></span></span></strong><span style=\"font-family: \'Abadi MT Condensed Light\';\"><span style=\"font-size: xx-small;\"><span style=\"font-size: 10pt;\">Learn this fun &amp; creative swing dance from the ground up! No experience needed, no partner required!<br /> </span></span><span><span style=\"font-size: 4pt;\"> <br /> </span></span><span style=\"font-size: 13pt;\"><strong>8:00 pm &ndash; Beyond Basics/Inter. West Coast Swing </strong></span><strong><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\">(Level 2)<br /> </span></span></strong><span style=\"font-size: xx-small;\"><span style=\"font-size: 10pt;\">Break through to the next level! Crazy-cool patterns, styling &amp; syncopations<br /> </span></span><span><span style=\"font-size: 4pt;\"> <br /> </span></span><span style=\"font-size: 13pt;\"><strong>9:00 pm &ndash; Beginning Nightclub 2-Step </strong></span><strong><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\">(Level 1)<br /> </span></span></strong><span style=\"font-size: xx-small;\"><span style=\"font-size: 10pt;\">Learn the basics of this beautiful, elegant and flowing dance<br /> </span></span><span><span style=\"font-size: 4pt;\"> <br /> </span></span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\">$10/person for One (1) Single Class; <br /> $42/person for one 6-Week Series for Moose Lodge Members <strong>IN ADVANCE<br /> </strong>$48/person for one 6-Week Series <strong>IN ADVANCE for all others<br /> </strong>$54 /person for one 6-Week Series AT THE DOOR<br /> &nbsp;<br /> <span style=\"color: #800000;\"><strong>Sign up in advance, send payment via Paypal to <a href=\"trish@dancechatter.com\">trish@dancechatter.com</a><br /> </strong></span></span></span></span><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: \'Times New Roman\';\"><br /> </span><span style=\"font-family: \'Abadi MT Condensed Light\';\"><strong>Burbank Moose Lodge, 1901 W. Burbank Blvd., Burbank 91506<br /> </strong>All ages welcome &ndash; Friendly atmosphere &ndash; Plenty of street parking </span></span></span>
INSERT INTO Articles VALUES("54","22","4th Saturday Dance","<p><!--StartFragment-->
INSERT INTO Articles VALUES("55","20","Sunday Workshops 3/28","<p><!--StartFragment-->
INSERT INTO Articles VALUES("56","22","Trish @ OCWCSDC","<p style=\"text-align: center;\"><!--StartFragment-->
INSERT INTO Articles VALUES("57","23","DanceChatter Newsletter 4-23-10","<p style=\"text-align: left;\"><span style=\"font-family: arial, sans-serif; font-size: 13px; border-collapse: collapse;\"><strong>DanceChatter Quick Notes<br />Friday, April 23, 2010</strong><br /><br />BOXING VS. DANCING<br />&nbsp; &nbsp;Many of you know that I have been taking boxing lessons for the<br />past couple of months and I can not accurately describe the deep sense<br />of satisfaction it is to learn a technique that allows you to hit<br />something with all your might and have it be ok &ndash; no repercussions!<br />That&rsquo;s a great thing. Granted all I&rsquo;ve hit so far is are the hand pads<br />that my trainer wears and the big, heavy bag, I haven&rsquo;t even graduated<br />to the speed bag yet. But still, very intense, very satisfying and I<br />try not to miss a single week.<br /><br />&nbsp; &nbsp; Incidentally, my trainer, Jose Moreno (310-570-5774), who works<br />out of Muscle Under Gym in West Hollywood, is VERY good and<br />knowledgeable, a former pro fighter himself so he really knows what<br />he&rsquo;s talking about. And although I&rsquo;m not a teacher of boxing, I am a<br />teacher of dance and can recognize when someone a) knows what they are<br />talking about and b) has laid out a logical progression to follow in<br />the lessons &ndash; that&rsquo;s so important. And he doesn&rsquo;t do just boxing, he<br />does all over physical conditioning, the works. Bottom line I<br />definitely recommend if you are interested in one-on-one person<br />trainer for fitness, weight loss, boxing, physical conditioning,<br />whatever, he&rsquo;s &ldquo;the man.&rdquo;<br /><br />&nbsp; &nbsp; So back to my story. I was working out with him yesterday morning<br />and he was showing me a new technique to prepare me for sparring<br />(which I may never actually graduate to, to tell you the truth) - Step<br />to the side, ducking as you step and throwing a punch at the same<br />time. Something about it in my twisted dancer&rsquo;s mind made me think of<br />some kind of weird line dance and I said,&rdquo;You know, Jose, if we were<br />dancing this movement it would look like this,&rdquo; and proceeded to demo<br />&ndash; The step, duck with an added head roll, followed by a shoulder pop<br />at the top and a foot tap on the other leg. He just looked at me with<br />a blank stare so I tried again, this time adding a body roll at the end<br />as well. There I was, bobbing and weaving and rolling like Funkmeister<br />Trish, getting absolutely no reaction from my trainer. I guess some<br />things just don&rsquo;t translate, LOL.<br /><br />6-WEEK NIGHTCLUB GROUP PERFORMS FOR BALLROOM BY THE BAY DANCE<br />&nbsp; &nbsp;I journeyed out to Santa Monica on Wednesday night to teach for<br />Jane and her weekly Ballroom By The Bay Dance. I thought it would be a<br />great opportunity to bring my little 6-Week Performance Group with me<br />so they could do their Nightclub routine one more time. The Nightclub<br />workshop I taught went over really well, the dance was great with lots<br />of ballroom and contemporary music by DJ James Woo and the performance<br />went really well. Thanks, Jane &amp; Crew for your hospitality!<br />Ballroombythebay.com<br /><br />SPEAKING OF 6-WEEK PERFORMANCE GROUP<br />&nbsp; &nbsp;I still have room for one couple or one follower for my 6-Week<br />Performance Class on Tuesday nights. This series\' routine is WCS and<br />we will perform at the Tuesday, May 25th 7th Tuesday Dance as well as<br />other venues before moving on to other routines. Come join us!<br />Tuesdays, 10:00-10:30 pm, Burbank Moose Lodge, $30 for 6-Weeks.<br /><br />COSTCO VS. TRISH: COSTCO WINS<br />&nbsp; &nbsp;This has absolutely nothing to do with dancing I&rsquo;m still pondering<br />how it happens. You go into Costco for one or two items and come out<br />later with a grocery cart full of stuff and a receipt for $200+<br />dollars &ndash; how does that happen? I don&rsquo;t quite understand it. Granted,<br />all good stuff, all good prices but still... Is the law or something?<br />You can&rsquo;t leave the store unless you spend X amount of dollars?<br /><br />WHERE DANCECHATTER WILL BE THIS WEEKEND<br />&nbsp; &nbsp;David is coming up tonight and we will head over the hill to<br />Burbank Moose Lodge to have dinner there (there is a dinner served<br />every 2nd and 4th Friday), hang out with some of the Moose students<br />and dance to the music of The Strikers. The Strikers is a musical duo<br />that has played at the Burbank Moose Lodge every other Friday night<br />since time began. They are very kitchy, sometimes corny but lots of<br />fun, definitely worth seeing at least once and the music is pretty<br />danceable. Many of you know Janet who runs registrations for my<br />Tuesday night classes, give her a call or e-mail if you want her to<br />save you a seat with our group (&nbsp;<a style=\"color: #2a5db0;\" href=\"mailto:janeteggleston@gmail.com\">janeteggleston@gmail.com</a>,<br />626-627-6799).<br /><br />&nbsp; &nbsp; Saturday night I am headed to the Century Plaza Hotel in Century<br />City for a big fundraiser called Dancing With Our Stars. This is an<br />annual event sponsored by Santa Clarita Magazine, I believe, where<br />they recruit professional teachers from the area to donate their time<br />to teach an amateur student a dance routine. Then they all perform it<br />at this gala event, complete with cocktail hour, sit down dinner, etc.<br />Your&rsquo;s truly has been asked to judge the event, in fact I have been<br />appointed most high mucky-muck Chief Judge &ndash; probably because I<br />volunteered some suggestions as to how score/run the judging side of<br />the contest (that will teach me, LOL). Each amateur student is dancing<br />for a different charity and has been raising funds for their<br />particular charity all through out this process, and since there are<br />20 couples scheduled to compete it&rsquo;s all for a great cause &ndash; what fun!<br />Anyway, David will be with me, we get to dress up and hobnob (hob<br />knob?), and act very important, LOL. It will be fun, I&rsquo;m looking<br />forward to it.&nbsp;<a style=\"color: #2a5db0;\" href=\"http://www.scvstars.org/\" target=\"_blank\">www.scvstars.org</a><br /><br />4TH SATURDAY DANCES THIS WEEKEND<br />&nbsp; &nbsp;I understand that although Rhonda Diamond is still out of<br />commission this week but her 4th Saturday Dance is STILL scheduled for<br />this Saturday in Lomita at the Regency Ballroom/South Bay Dance<br />Center. Matt V will be helming the dance with assistance from others<br />so all should run smoothly in Rhonda&rsquo;s absence (although I know she<br />will be very much missed!). Diamondswing.com<br /><br />&nbsp; &nbsp; Carrie Lucas is also hosting her 4th Saturday Dance, check out<br />her website for all the info:&nbsp;<a style=\"color: #2a5db0;\" href=\"http://www.carrielucas.com/\" target=\"_blank\">www.carrielucas.com</a><br /><br />PRIVATE LESSONS THIS WEEKEND<br />&nbsp; &nbsp;By the way, both David and I are available for private lessons on<br />Sunday, April 25th, call to schedule!<br /><br />NEXT DANCE TECHNIQUE WORKSHOPS: SUNDAY, MAY 2ND:<br />Sunday, May 2nd (also May 16)<br />Dance Technique Workshops with Trish Connery<br />12:30 pm - Hustle<br />1:30 pm &nbsp;- Nightclub<br />2:30 pm &ndash; West Coast Swing<br />All Workshops Intermediate Level<br />One (1) Workshop: $10/person or $18/couple; Two (2) Workshops:<br />$18/person or $34/couple; Three (3) Workshops: $25/person or<br />$48/couple<br />Double H Club / Hacienda Hotel, 525 N. Sepulveda Blvd. (at Mariposa,<br />south of Imperial Highway &amp; LAX) El Segundo, 90245<br />Trish is available for Private Lessons BEFORE and AFTER workshops<br /><br />SWING TEAM! SWING TEAM! SWING TEAM! SWING TEAM!<br />&nbsp; &nbsp;Michele Adams and I are starting our long awaited Double Diva WCS<br />Performance Team on Monday, May 3rd. WCS practice will start<br />immediately after the on-going Hustle team practice. You don&rsquo;t have to<br />be on the Hustle team to joing the WCS team and vice versa. BUT, there<br />is a special price if you decide to do BOTH teams!<br />Monday, May 3rd<br />Double Diva WCS Performance Team Begins<br />With Trish Connery &amp; Michelle Adams<br />7:30-9:00 pm &ndash; Hustle Team<br />9:00-10:30 pm &ndash; WCS Team<br />$40 per person per team or $60 for BOTH Hustle &amp; WCS Teams (plus floor fees)<br />BeaHive Studio, 9627 Chapman Ave., Garden Grove, 92841<br /><br />CHECK OUT THE PICTURE OF THE DOUBLE DIVA HUSTLE TEAM!!<br />&nbsp; &nbsp;The Double Diva Hustle Team did their debut performance at LAPD<br />Classic, what fun! See attached picture. This is an on-going team, we<br />are planning performances at FreZno Dance Classic and other venues. We<br />are working on new choreography, it&rsquo;s not too late to join, we are<br />STILL taking new people! Practices on Monday nights, see above.<br /><br />HELP ME NAME THIS DANCE!<br />&nbsp; &nbsp;Country Moose? Moose Country? Moose On The Loose? I&rsquo;m excited to<br />announce that I&rsquo;m starting a once a month Country dance at the Burbank<br />Moose Lodge starting Friday, May 7th. This 1st Friday of Every Month<br />Dance will feature Country 2-Step, East Coast &amp; West Coast Swing, Line<br />Dancing, Country Waltz, Cowboy Cha Cha, and all those good Country<br />Dances. But I need a catch name!! Help me name this dance!!!<br /><br />Friday, May 7th<br />Moose On The Loose<br />Country Dancing Comes to the Burbank Moose Lodge<br />6:30 pm &ndash; Line Dance Lesson with Trish<br />7:00 pm &ndash; Country 2-Step Lesson with Trish<br />8:00 pm &ndash; Open Dancing<br />Country 2-Step, East Coast &amp; West Coast Swing, Line Dance, Waltz &ndash; ALL AGES!<br />$10 per person, $8 for Moose Lodge Members or Dance Club members with<br />current membership card<br />Burbank Moose Lodge, 1901 W. Burbank Blvd., Burbank 91505<br /><br />TUESDAY NIGHT WCS, NIGHTCLUB &amp; PERFORMANCE CLASSES AT BURBANK MOOSE LODGE<br />And the Fun continues!<br />Every Tuesday<br />West Coast Swing + Nightclub + Performance Classes &nbsp;With Trish<br />7:00 pm &ndash; Beginning WCS<br />8:00 pm &ndash; Beyond Basics WCS<br />9:00 pm &ndash; Beginning/Beyond Nightclub<br />10:00 pm &ndash; 6-Week Performance Class: Perform at our dance and other venues!<br />$10 per class or sign up for the series and save!<br />Burbank Moose Lodge, 1901 W. Burbank Blvd., Burbank 91505<br /><br />7TH TUESDAY DANCE: TUESDAY, MAY 25TH<br />&nbsp; &nbsp;My 7th Tuesday Dance has grown each time we&rsquo;ve held it so we are<br />continuing the dance, the next dance is scheduled for Tuesday, May<br />25th. WCS Lessons, lots of Open Dancing and variety of dancing with<br />DJDK David Koppelman, refreshments, it&rsquo;s a fun night. Bring your<br />friends, discounts for Moose Lodge members AND members of established<br />dance clubs like OCWDC, etc. 1st time, brand new to WCS, never taken a<br />lesson newbies get in for $1.<br />Tuesday, May 25th<br />The Every 7th Tuesday Dance Party<br />6:15 pm &ndash; Beginning WCS Lesson: Brand New, 1st Time New To WCS Newbies<br />get in for $1!<br />7:00 pm &ndash; Intermediate WCS Lesson<br />8:00-11:00 pm &ndash; Open Dancing with DJDK David Koppelman<br />WCS, Hustle, Nightclub, Country 2-Step &amp; More!<br />$10 per person, $8 for Moose Lodge Members or Dance Club members with<br />current membership card<br />Burbank Moose Lodge, 1901 W. Burbank Blvd., Burbank 91505<br /><br />1 PAGE FLYER OF EVENTS<br />Check out the 1-page flyer of events, everything scheduled for<br />DanceChatter through the end of May!<br /><br />DANCECHATTER GROUP AT CRUISEFEST SWING DANCE CRUISE!<br />&nbsp; &nbsp;The DanceChatter Group going on the CruiseFest Swing Dance Cruise<br />is growing (Sept 26-Oct 3 to Caribbean)! Time to sign up NOW. You<br />don&rsquo;t have to be a dancer to go (last year I brought my parents and<br />they don&rsquo;t dance and had a wonderful time) but you do have to sign up<br />with our group in order to be able to enjoy all the CruiseFest<br />activities &ndash; special seated dinner arrangements, special dance<br />parties, tons of lessons in a variety of dances and MORE! I have<br />flyers, registrations forms AND my CruiseFest Swing Dance Cruise<br />picture board with pics from last year&rsquo;s cruise with me almost<br />everywhere I go, so ask me any questions, look at the pictures, pick<br />up a flyer and registration form and get your deposits in!!!<br /><br />DANCECHATTER GROUP AT PALM SPRINGS SUMMER DANCE CAMP<br />&nbsp; &nbsp;As you know I always take a big group with me to Summer Dance Camp<br />(Aug 13-15, Palm Springs)&ndash; we all hang out and dance together PLUS the<br />now famous DanceChatter Coctail Party &ndash; but you have to sign up with<br />Trish! I have my ticket package with me most everywhere I go, get your<br />ticket NOW!!! Plus, this event has one of the BIGGEST and BESTEST<br />Beginning Bootcamp Workshop Rooms of any event I&rsquo;ve been to &ndash; Bring<br />your newbie dance friends and check it out! Something for EVERYONE!!!<br />Don&rsquo;t wait too long &ndash; my group always sells out as does the event<br />hotel!<br /></span></p>","1272057930","Apr","2010","Article");
INSERT INTO Articles VALUES("58","0","WCS Team Starts 2Night & More","<p><span style=\"font-family: arial, sans-serif; font-size: 13px; border-collapse: collapse;\">
INSERT INTO Articles VALUES("59","23","CruiseFest Update","<p><!--StartFragment--></p>



DROP TABLE Categories;

CREATE TABLE `Categories` (
  `Cat_Id` int(11) NOT NULL auto_increment,
  `Cat_Title` longtext NOT NULL,
  `Cat_Color` varchar(20) NOT NULL,
  PRIMARY KEY  (`Cat_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=armscii8 COMMENT='DanceChatter Categories';

INSERT INTO Categories VALUES("1","Competition","rgb(195,240,208)");
INSERT INTO Categories VALUES("2","Convention","rgb(244,177,204)");
INSERT INTO Categories VALUES("3","Lesson","rgb(225,158,241)");
INSERT INTO Categories VALUES("20","Workshop","rgb(154,208,204)");
INSERT INTO Categories VALUES("21","Misc","rgb(182,192,214)");
INSERT INTO Categories VALUES("22","Dance + Lesson","rgb(213,162,224)");
INSERT INTO Categories VALUES("23","Newsletter","rgb(219,194,234)");
INSERT INTO Categories VALUES("24","Dance","rgb(228,177,179)");
INSERT INTO Categories VALUES("25","Practice Dance","rgb(226,205,170)");



DROP TABLE Event_Times;

CREATE TABLE `Event_Times` (
  `Event_Time_Id` int(11) NOT NULL auto_increment,
  `Event_Id` int(11) NOT NULL,
  `Event_Timestamp` int(11) NOT NULL,
  `Event_Month` varchar(12) NOT NULL,
  `Event_Day` varchar(12) NOT NULL,
  `Event_Year` varchar(12) NOT NULL,
  PRIMARY KEY  (`Event_Time_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=1201 DEFAULT CHARSET=armscii8 ROW_FORMAT=DYNAMIC COMMENT='DanceChatter Events';

INSERT INTO Event_Times VALUES("567","31","1251864000","Sep","02","2009");
INSERT INTO Event_Times VALUES("566","31","1251259200","Aug","26","2009");
INSERT INTO Event_Times VALUES("579","1","1249963200","Aug","11","2009");
INSERT INTO Event_Times VALUES("282","11","1248580800","Jul","26","2009");
INSERT INTO Event_Times VALUES("281","11","1247976000","Jul","19","2009");
INSERT INTO Event_Times VALUES("280","11","1247371200","Jul","12","2009");
INSERT INTO Event_Times VALUES("565","31","1250654400","Aug","19","2009");
INSERT INTO Event_Times VALUES("564","31","1250049600","Aug","12","2009");
INSERT INTO Event_Times VALUES("563","31","1249444800","Aug","05","2009");
INSERT INTO Event_Times VALUES("279","11","1246766400","Jul","05","2009");
INSERT INTO Event_Times VALUES("278","11","1246161600","Jun","28","2009");
INSERT INTO Event_Times VALUES("277","11","1245556800","Jun","21","2009");
INSERT INTO Event_Times VALUES("276","11","1244952000","Jun","14","2009");
INSERT INTO Event_Times VALUES("562","31","1248913800","Jul","29","2009");
INSERT INTO Event_Times VALUES("561","30","1252814400","Sep","13","2009");
INSERT INTO Event_Times VALUES("578","1","1249358400","Aug","04","2009");
INSERT INTO Event_Times VALUES("577","1","1248753600","Jul","28","2009");
INSERT INTO Event_Times VALUES("576","1","1248148800","Jul","21","2009");
INSERT INTO Event_Times VALUES("575","1","1247544000","Jul","14","2009");
INSERT INTO Event_Times VALUES("574","1","1246939200","Jul","7","2009");
INSERT INTO Event_Times VALUES("560","30","1252209600","Sep","06","2009");
INSERT INTO Event_Times VALUES("559","30","1251604800","Aug","30","2009");
INSERT INTO Event_Times VALUES("121","19","1245297600","Jun","18","2009");
INSERT INTO Event_Times VALUES("558","30","1251000000","Aug","23","2009");
INSERT INTO Event_Times VALUES("557","30","1250395200","Aug","16","2009");
INSERT INTO Event_Times VALUES("556","30","1249790400","Aug","09","2009");
INSERT INTO Event_Times VALUES("555","30","1249246800","Aug","2","2009");
INSERT INTO Event_Times VALUES("554","29","1252814400","Sep","13","2009");
INSERT INTO Event_Times VALUES("553","29","1252209600","Sep","06","2009");
INSERT INTO Event_Times VALUES("552","29","1251604800","Aug","30","2009");
INSERT INTO Event_Times VALUES("551","29","1251000000","Aug","23","2009");
INSERT INTO Event_Times VALUES("550","29","1250395200","Aug","16","2009");
INSERT INTO Event_Times VALUES("549","29","1249790400","Aug","09","2009");
INSERT INTO Event_Times VALUES("548","29","1249185600","Aug","2","2009");
INSERT INTO Event_Times VALUES("533","20","1251345600","Aug","27","2009");
INSERT INTO Event_Times VALUES("532","20","1250740800","Aug","20","2009");
INSERT INTO Event_Times VALUES("531","20","1250136000","Aug","13","2009");
INSERT INTO Event_Times VALUES("530","20","1249531200","Aug","06","2009");
INSERT INTO Event_Times VALUES("529","20","1248926400","Jul","30","2009");
INSERT INTO Event_Times VALUES("528","20","1248321600","Jul","23","2009");
INSERT INTO Event_Times VALUES("527","20","1247716800","Jul","16","2009");
INSERT INTO Event_Times VALUES("525","20","1246507200","Jul","2","2009");
INSERT INTO Event_Times VALUES("526","20","1247112000","Jul","09","2009");
INSERT INTO Event_Times VALUES("570","32","1248148800","Jul","21","2009");
INSERT INTO Event_Times VALUES("569","32","1247544000","Jul","14","2009");
INSERT INTO Event_Times VALUES("568","32","1247014800","Jul","7","2009");
INSERT INTO Event_Times VALUES("468","28","1251864000","Sep","02","2009");
INSERT INTO Event_Times VALUES("467","28","1251259200","Aug","26","2009");
INSERT INTO Event_Times VALUES("466","28","1250654400","Aug","19","2009");
INSERT INTO Event_Times VALUES("465","28","1250049600","Aug","12","2009");
INSERT INTO Event_Times VALUES("464","28","1249444800","Aug","05","2009");
INSERT INTO Event_Times VALUES("463","28","1248840000","Jul","29","2009");
INSERT INTO Event_Times VALUES("571","32","1248753600","Jul","28","2009");
INSERT INTO Event_Times VALUES("572","32","1249358400","Aug","04","2009");
INSERT INTO Event_Times VALUES("573","32","1249963200","Aug","11","2009");
INSERT INTO Event_Times VALUES("613","33","1249963200","Aug","11","2009");
INSERT INTO Event_Times VALUES("612","33","1249358400","Aug","04","2009");
INSERT INTO Event_Times VALUES("611","33","1248753600","Jul","28","2009");
INSERT INTO Event_Times VALUES("610","33","1248148800","Jul","21","2009");
INSERT INTO Event_Times VALUES("609","33","1247544000","Jul","14","2009");
INSERT INTO Event_Times VALUES("608","33","1246939200","Jul","7","2009");
INSERT INTO Event_Times VALUES("771","45","1257829200","Nov","10","2009");
INSERT INTO Event_Times VALUES("770","45","1257224400","Nov","03","2009");
INSERT INTO Event_Times VALUES("769","45","1256616000","Oct","27","2009");
INSERT INTO Event_Times VALUES("768","45","1256011200","Oct","20","2009");
INSERT INTO Event_Times VALUES("767","45","1255406400","Oct","13","2009");
INSERT INTO Event_Times VALUES("766","45","1254877200","Oct","6","2009");
INSERT INTO Event_Times VALUES("759","44","1257829200","Nov","10","2009");
INSERT INTO Event_Times VALUES("758","44","1257224400","Nov","03","2009");
INSERT INTO Event_Times VALUES("757","44","1256616000","Oct","27","2009");
INSERT INTO Event_Times VALUES("756","44","1256011200","Oct","20","2009");
INSERT INTO Event_Times VALUES("755","44","1255406400","Oct","13","2009");
INSERT INTO Event_Times VALUES("754","44","1254873600","Oct","6","2009");
INSERT INTO Event_Times VALUES("765","34","1257829200","Nov","10","2009");
INSERT INTO Event_Times VALUES("764","34","1257224400","Nov","03","2009");
INSERT INTO Event_Times VALUES("763","34","1256616000","Oct","27","2009");
INSERT INTO Event_Times VALUES("762","34","1256011200","Oct","20","2009");
INSERT INTO Event_Times VALUES("761","34","1255406400","Oct","13","2009");
INSERT INTO Event_Times VALUES("760","34","1254801600","Oct","6","2009");
INSERT INTO Event_Times VALUES("642","35","1250643600","Aug","18","2009");
INSERT INTO Event_Times VALUES("643","35","1251172800","Aug","25","2009");
INSERT INTO Event_Times VALUES("644","35","1251777600","Sep","01","2009");
INSERT INTO Event_Times VALUES("645","35","1252382400","Sep","08","2009");
INSERT INTO Event_Times VALUES("646","35","1252987200","Sep","15","2009");
INSERT INTO Event_Times VALUES("647","35","1253592000","Sep","22","2009");
INSERT INTO Event_Times VALUES("648","36","-1","Aug","9","2009");
INSERT INTO Event_Times VALUES("782","38","1255492800","Oct","14","2009");
INSERT INTO Event_Times VALUES("781","38","1254888000","Oct","07","2009");
INSERT INTO Event_Times VALUES("780","38","1254283200","Sep","30","2009");
INSERT INTO Event_Times VALUES("779","38","1253678400","Sep","23","2009");
INSERT INTO Event_Times VALUES("778","38","1253073600","Sep","16","2009");
INSERT INTO Event_Times VALUES("777","38","1252468800","Sep","9","2009");
INSERT INTO Event_Times VALUES("718","41","-1","","","");
INSERT INTO Event_Times VALUES("719","42","-1","Sep","27","");
INSERT INTO Event_Times VALUES("773","37","1254024000","Sep","27","2009");
INSERT INTO Event_Times VALUES("772","37","1253419200","Sep","20","2009");
INSERT INTO Event_Times VALUES("747","43","1254679200","Oct","4","2009");
INSERT INTO Event_Times VALUES("774","46","1255284000","Oct","11","2009");
INSERT INTO Event_Times VALUES("775","47","1256493600","Oct","25","2009");
INSERT INTO Event_Times VALUES("783","38","1256097600","Oct","21","2009");
INSERT INTO Event_Times VALUES("784","38","1256702400","Oct","28","2009");
INSERT INTO Event_Times VALUES("833","49","1260939600","Dec","16","2009");
INSERT INTO Event_Times VALUES("832","49","1260334800","Dec","09","2009");
INSERT INTO Event_Times VALUES("831","49","1259730000","Dec","02","2009");
INSERT INTO Event_Times VALUES("830","49","1259125200","Nov","25","2009");
INSERT INTO Event_Times VALUES("829","49","1258520400","Nov","18","2009");
INSERT INTO Event_Times VALUES("828","49","1257915600","Nov","11","2009");
INSERT INTO Event_Times VALUES("827","49","1257310800","Nov","4","2009");
INSERT INTO Event_Times VALUES("834","50","1258504200","Nov","17","2009");
INSERT INTO Event_Times VALUES("835","50","1259038800","Nov","24","2009");
INSERT INTO Event_Times VALUES("836","50","1259643600","Dec","01","2009");
INSERT INTO Event_Times VALUES("837","50","1260248400","Dec","08","2009");
INSERT INTO Event_Times VALUES("838","50","1260853200","Dec","15","2009");
INSERT INTO Event_Times VALUES("840","51","1258434000","Nov","17","2009");
INSERT INTO Event_Times VALUES("841","51","1259038800","Nov","24","2009");
INSERT INTO Event_Times VALUES("842","51","1259643600","Dec","01","2009");
INSERT INTO Event_Times VALUES("843","51","1260248400","Dec","08","2009");
INSERT INTO Event_Times VALUES("844","51","1260853200","Dec","15","2009");
INSERT INTO Event_Times VALUES("845","52","1258509600","Nov","17","2009");
INSERT INTO Event_Times VALUES("846","52","1259038800","Nov","24","2009");
INSERT INTO Event_Times VALUES("847","52","1259643600","Dec","01","2009");
INSERT INTO Event_Times VALUES("848","52","1260248400","Dec","08","2009");
INSERT INTO Event_Times VALUES("849","52","1260853200","Dec","15","2009");
INSERT INTO Event_Times VALUES("850","53","-1","Nov","26","2009");
INSERT INTO Event_Times VALUES("852","55","-1","Nov","25","2009");
INSERT INTO Event_Times VALUES("862","65","1261524600","Dec","22","2009");
INSERT INTO Event_Times VALUES("854","57","1258911000","Nov","22","2009");
INSERT INTO Event_Times VALUES("855","58","1258914600","Nov","22","2009");
INSERT INTO Event_Times VALUES("856","59","1258918200","Nov","22","2009");
INSERT INTO Event_Times VALUES("858","61","1260124200","Dec","6","2009");
INSERT INTO Event_Times VALUES("859","62","1260124200","Dec","6","2009");
INSERT INTO Event_Times VALUES("860","63","1260120600","Dec","6","2009");
INSERT INTO Event_Times VALUES("941","66","1265691600","Feb","09","2010");
INSERT INTO Event_Times VALUES("940","66","1265086800","Feb","02","2010");
INSERT INTO Event_Times VALUES("939","66","1264482000","Jan","26","2010");
INSERT INTO Event_Times VALUES("938","66","1263877200","Jan","19","2010");
INSERT INTO Event_Times VALUES("937","66","1263272400","Jan","12","2010");
INSERT INTO Event_Times VALUES("936","66","1262667600","Jan","5","2010");
INSERT INTO Event_Times VALUES("947","67","1265691600","Feb","09","2010");
INSERT INTO Event_Times VALUES("946","67","1265086800","Feb","02","2010");
INSERT INTO Event_Times VALUES("945","67","1264482000","Jan","26","2010");
INSERT INTO Event_Times VALUES("944","67","1263877200","Jan","19","2010");
INSERT INTO Event_Times VALUES("943","67","1263272400","Jan","12","2010");
INSERT INTO Event_Times VALUES("942","67","1262667600","Jan","5","2010");
INSERT INTO Event_Times VALUES("953","68","1265691600","Feb","09","2010");
INSERT INTO Event_Times VALUES("952","68","1265086800","Feb","02","2010");
INSERT INTO Event_Times VALUES("951","68","1264482000","Jan","26","2010");
INSERT INTO Event_Times VALUES("950","68","1263877200","Jan","19","2010");
INSERT INTO Event_Times VALUES("949","68","1263272400","Jan","12","2010");
INSERT INTO Event_Times VALUES("948","68","1262667600","Jan","5","2010");
INSERT INTO Event_Times VALUES("902","69","1263099600","Jan","10","2010");
INSERT INTO Event_Times VALUES("931","70","1263099600","Jan","10","2010");
INSERT INTO Event_Times VALUES("933","71","1263099600","Jan","10","2010");
INSERT INTO Event_Times VALUES("903","69","1264309200","Jan","24","2010");
INSERT INTO Event_Times VALUES("904","72","1260234000","Dec","7","2009");
INSERT INTO Event_Times VALUES("905","72","1260766800","Dec","14","2009");
INSERT INTO Event_Times VALUES("906","72","1261371600","Dec","21","2009");
INSERT INTO Event_Times VALUES("907","72","1261976400","Dec","28","2009");
INSERT INTO Event_Times VALUES("908","72","1262581200","Jan","04","2010");
INSERT INTO Event_Times VALUES("909","72","1263186000","Jan","11","2010");
INSERT INTO Event_Times VALUES("910","72","1263790800","Jan","18","2010");
INSERT INTO Event_Times VALUES("911","72","1264395600","Jan","25","2010");
INSERT INTO Event_Times VALUES("912","72","1265000400","Feb","01","2010");
INSERT INTO Event_Times VALUES("913","72","1265605200","Feb","08","2010");
INSERT INTO Event_Times VALUES("914","72","1266210000","Feb","15","2010");
INSERT INTO Event_Times VALUES("915","72","1266814800","Feb","22","2010");
INSERT INTO Event_Times VALUES("916","72","1267419600","Mar","01","2010");
INSERT INTO Event_Times VALUES("917","72","1268024400","Mar","08","2010");
INSERT INTO Event_Times VALUES("918","72","1268625600","Mar","15","2010");
INSERT INTO Event_Times VALUES("919","72","1269230400","Mar","22","2010");
INSERT INTO Event_Times VALUES("920","72","1269835200","Mar","29","2010");
INSERT INTO Event_Times VALUES("921","72","1270440000","Apr","05","2010");
INSERT INTO Event_Times VALUES("922","72","1271044800","Apr","12","2010");
INSERT INTO Event_Times VALUES("923","72","1271649600","Apr","19","2010");
INSERT INTO Event_Times VALUES("924","72","1272254400","Apr","26","2010");
INSERT INTO Event_Times VALUES("925","72","1272859200","May","03","2010");
INSERT INTO Event_Times VALUES("926","72","1273464000","May","10","2010");
INSERT INTO Event_Times VALUES("927","72","1274068800","May","17","2010");
INSERT INTO Event_Times VALUES("928","72","1274673600","May","24","2010");
INSERT INTO Event_Times VALUES("929","72","1275278400","May","31","2010");
INSERT INTO Event_Times VALUES("930","72","1275883200","Jun","07","2010");
INSERT INTO Event_Times VALUES("932","70","1264309200","Jan","24","2010");
INSERT INTO Event_Times VALUES("934","71","1264309200","Jan","24","2010");
INSERT INTO Event_Times VALUES("935","73","-1","Dec","31","2009");
INSERT INTO Event_Times VALUES("955","75","1266775200","Feb","21","2010");
INSERT INTO Event_Times VALUES("956","76","1264285800","Jan","23","2010");
INSERT INTO Event_Times VALUES("957","77","1264966200","Jan","31","2010");
INSERT INTO Event_Times VALUES("958","78","1264962600","Jan","31","2010");
INSERT INTO Event_Times VALUES("960","80","1264959000","Jan","31","2010");
INSERT INTO Event_Times VALUES("961","81","1266364800","Feb","16","2010");
INSERT INTO Event_Times VALUES("1006","85","1269921600","Mar","30","2010");
INSERT INTO Event_Times VALUES("1005","85","1269316800","Mar","23","2010");
INSERT INTO Event_Times VALUES("1004","85","1268712000","Mar","16","2010");
INSERT INTO Event_Times VALUES("1003","85","1268110800","Mar","09","2010");
INSERT INTO Event_Times VALUES("1002","85","1267506000","Mar","02","2010");
INSERT INTO Event_Times VALUES("1001","85","1266901200","Feb","23","2010");
INSERT INTO Event_Times VALUES("994","84","1267891200","Mar","6","2010");
INSERT INTO Event_Times VALUES("1018","86","1269921600","Mar","30","2010");
INSERT INTO Event_Times VALUES("1017","86","1269316800","Mar","23","2010");
INSERT INTO Event_Times VALUES("1016","86","1268712000","Mar","16","2010");
INSERT INTO Event_Times VALUES("1015","86","1268110800","Mar","09","2010");
INSERT INTO Event_Times VALUES("1014","86","1267506000","Mar","02","2010");
INSERT INTO Event_Times VALUES("1013","86","1266901200","Feb","23","2010");
INSERT INTO Event_Times VALUES("1060","87","1269921600","Mar","30","2010");
INSERT INTO Event_Times VALUES("1059","87","1269316800","Mar","23","2010");
INSERT INTO Event_Times VALUES("1058","87","1268712000","Mar","16","2010");
INSERT INTO Event_Times VALUES("1057","87","1268110800","Mar","09","2010");
INSERT INTO Event_Times VALUES("1056","87","1267506000","Mar","02","2010");
INSERT INTO Event_Times VALUES("1055","87","1266901200","Feb","23","2010");
INSERT INTO Event_Times VALUES("1066","91","-1","Apr","10","2010");
INSERT INTO Event_Times VALUES("1065","90","-1","Apr","9","2010");
INSERT INTO Event_Times VALUES("1064","89","1271457900","Apr","16","2010");
INSERT INTO Event_Times VALUES("1067","92","-1","Apr","11","2010");
INSERT INTO Event_Times VALUES("1068","93","1270592100","Apr","6","2010");
INSERT INTO Event_Times VALUES("1098","94","1283400000","Sep","02","2010");
INSERT INTO Event_Times VALUES("1097","94","1282795200","Aug","26","2010");
INSERT INTO Event_Times VALUES("1096","94","1282190400","Aug","19","2010");
INSERT INTO Event_Times VALUES("1095","94","1281585600","Aug","12","2010");
INSERT INTO Event_Times VALUES("1094","94","1280980800","Aug","05","2010");
INSERT INTO Event_Times VALUES("1093","94","1280376000","Jul","29","2010");
INSERT INTO Event_Times VALUES("1092","94","1279771200","Jul","22","2010");
INSERT INTO Event_Times VALUES("1091","94","1279166400","Jul","15","2010");
INSERT INTO Event_Times VALUES("1090","94","1278561600","Jul","08","2010");
INSERT INTO Event_Times VALUES("1089","94","1277956800","Jul","1","2010");
INSERT INTO Event_Times VALUES("1099","95","1269730800","Mar","27","2010");
INSERT INTO Event_Times VALUES("1100","96","1269126000","Mar","20","2010");
INSERT INTO Event_Times VALUES("1101","97","1269196200","Mar","21","2010");
INSERT INTO Event_Times VALUES("1102","98","1269192600","Mar","21","2010");
INSERT INTO Event_Times VALUES("1103","99","1269189000","Mar","21","2010");
INSERT INTO Event_Times VALUES("1104","100","1269795600","Mar","28","2010");
INSERT INTO Event_Times VALUES("1116","101","1272427200","Apr","28","2010");
INSERT INTO Event_Times VALUES("1115","101","1271822400","Apr","21","2010");
INSERT INTO Event_Times VALUES("1114","101","1271217600","Apr","14","2010");
INSERT INTO Event_Times VALUES("1113","101","1270612800","Apr","07","2010");
INSERT INTO Event_Times VALUES("1112","101","1270008000","Mar","31","2010");
INSERT INTO Event_Times VALUES("1111","101","1269403200","Mar","24","2010");
INSERT INTO Event_Times VALUES("1117","102","1271199600","Apr","13","2010");
INSERT INTO Event_Times VALUES("1118","102","1271736000","Apr","20","2010");
INSERT INTO Event_Times VALUES("1119","102","1272340800","Apr","27","2010");
INSERT INTO Event_Times VALUES("1120","102","1272945600","May","04","2010");
INSERT INTO Event_Times VALUES("1121","102","1273550400","May","11","2010");
INSERT INTO Event_Times VALUES("1122","102","1274155200","May","18","2010");
INSERT INTO Event_Times VALUES("1123","103","1271890800","Apr","21","2010");
INSERT INTO Event_Times VALUES("1124","104","1273271400","May","7","2010");
INSERT INTO Event_Times VALUES("1125","105","1272146400","Apr","24","2010");
INSERT INTO Event_Times VALUES("1126","106","1272934800","May","3","2010");
INSERT INTO Event_Times VALUES("1127","106","1273464000","May","10","2010");
INSERT INTO Event_Times VALUES("1128","106","1274068800","May","17","2010");
INSERT INTO Event_Times VALUES("1129","106","1274673600","May","24","2010");
INSERT INTO Event_Times VALUES("1130","106","1275278400","May","31","2010");
INSERT INTO Event_Times VALUES("1131","106","1275883200","Jun","07","2010");
INSERT INTO Event_Times VALUES("1132","106","1276488000","Jun","14","2010");
INSERT INTO Event_Times VALUES("1133","106","1277092800","Jun","21","2010");
INSERT INTO Event_Times VALUES("1134","106","1277697600","Jun","28","2010");
INSERT INTO Event_Times VALUES("1135","106","1278302400","Jul","05","2010");
INSERT INTO Event_Times VALUES("1136","106","1278907200","Jul","12","2010");
INSERT INTO Event_Times VALUES("1137","106","1279512000","Jul","19","2010");
INSERT INTO Event_Times VALUES("1138","106","1280116800","Jul","26","2010");
INSERT INTO Event_Times VALUES("1139","106","1280721600","Aug","02","2010");
INSERT INTO Event_Times VALUES("1140","106","1281326400","Aug","09","2010");
INSERT INTO Event_Times VALUES("1141","106","1281931200","Aug","16","2010");
INSERT INTO Event_Times VALUES("1142","106","1282536000","Aug","23","2010");
INSERT INTO Event_Times VALUES("1143","106","1283140800","Aug","30","2010");
INSERT INTO Event_Times VALUES("1144","106","1283745600","Sep","06","2010");
INSERT INTO Event_Times VALUES("1145","106","1284350400","Sep","13","2010");
INSERT INTO Event_Times VALUES("1146","106","1284955200","Sep","20","2010");
INSERT INTO Event_Times VALUES("1147","106","1285560000","Sep","27","2010");
INSERT INTO Event_Times VALUES("1148","107","1274825700","May","25","2010");
INSERT INTO Event_Times VALUES("1191","112","1278388800","Jul","06","2010");
INSERT INTO Event_Times VALUES("1190","112","1277784000","Jun","29","2010");
INSERT INTO Event_Times VALUES("1189","112","1277179200","Jun","22","2010");
INSERT INTO Event_Times VALUES("1188","112","1276574400","Jun","15","2010");
INSERT INTO Event_Times VALUES("1187","112","1275969600","Jun","08","2010");
INSERT INTO Event_Times VALUES("1186","112","1275444000","Jun","1","2010");
INSERT INTO Event_Times VALUES("1169","109","1277179200","Jun","22","2010");
INSERT INTO Event_Times VALUES("1168","109","1276574400","Jun","15","2010");
INSERT INTO Event_Times VALUES("1167","109","1275969600","Jun","08","2010");
INSERT INTO Event_Times VALUES("1166","109","1275364800","Jun","1","2010");
INSERT INTO Event_Times VALUES("1170","109","1277784000","Jun","29","2010");
INSERT INTO Event_Times VALUES("1171","109","1278388800","Jul","06","2010");
INSERT INTO Event_Times VALUES("1173","110","1275364800","Jun","1","2010");
INSERT INTO Event_Times VALUES("1174","110","1275969600","Jun","08","2010");
INSERT INTO Event_Times VALUES("1175","110","1276574400","Jun","15","2010");
INSERT INTO Event_Times VALUES("1176","110","1277179200","Jun","22","2010");
INSERT INTO Event_Times VALUES("1177","110","1277784000","Jun","29","2010");
INSERT INTO Event_Times VALUES("1178","110","1278388800","Jul","06","2010");
INSERT INTO Event_Times VALUES("1180","111","1275364800","Jun","1","2010");
INSERT INTO Event_Times VALUES("1181","111","1275969600","Jun","08","2010");
INSERT INTO Event_Times VALUES("1182","111","1276574400","Jun","15","2010");
INSERT INTO Event_Times VALUES("1183","111","1277179200","Jun","22","2010");
INSERT INTO Event_Times VALUES("1184","111","1277784000","Jun","29","2010");
INSERT INTO Event_Times VALUES("1185","111","1278388800","Jul","06","2010");
INSERT INTO Event_Times VALUES("1200","113","1273982400","May","16","2010");
INSERT INTO Event_Times VALUES("1199","113","1272772800","May","2","2010");



DROP TABLE Events;

CREATE TABLE `Events` (
  `Event_Id` int(11) NOT NULL auto_increment,
  `Cat_Id` int(11) NOT NULL,
  `Date_Posted` int(11) NOT NULL,
  `Month_Posted` varchar(12) NOT NULL,
  `Year_Posted` int(4) NOT NULL,
  `StartTime` varchar(10) NOT NULL,
  `FinishTime` varchar(10) NOT NULL,
  `StartTimeStamp` int(11) NOT NULL,
  `StartMonth` varchar(3) NOT NULL,
  `StartDay` int(2) NOT NULL,
  `StartYear` int(4) NOT NULL,
  `FinishTimeStamp` int(11) NOT NULL,
  `FinishMonth` varchar(3) NOT NULL,
  `FinishDay` int(2) NOT NULL,
  `FinishYear` int(4) NOT NULL,
  `RepeatFlag` int(1) NOT NULL,
  `RepeatEvery` varchar(10) NOT NULL,
  `Event_Title` longtext NOT NULL,
  `Event_Price` varchar(6) NOT NULL,
  `Event_BoolSignUp` int(11) NOT NULL default '1',
  `Event_Desc` longtext NOT NULL,
  `Event_Venue` varchar(100) NOT NULL,
  `Event_Color` varchar(18) NOT NULL,
  `Type` varchar(5) NOT NULL default 'Event',
  PRIMARY KEY  (`Event_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=armscii8 ROW_FORMAT=DYNAMIC COMMENT='DanceChatter Events';

INSERT INTO Events VALUES("1","3","1244318565","Jun","2009","7:30 pm","8:00 pm","1247009400","Jul","7","2009","1250035200","Aug","11","2009","1","Week","WCS 1","","1","<p><strong><br /></strong></p>
INSERT INTO Events VALUES("20","3","1247598797","Jul","2009","6:00 pm","9:00 pm","1246572000","Jul","2","2009","1251421200","Aug","27","2009","1","Week","Sizzlin\' Salsa Nights","7.00","0","<p><strong><span style=\"font-size: medium;\"><span style=\"font-size: large;\"><span style=\"font-family: \'comic sans ms\', sans-serif;\">Sizzlin\' Salsa Summer Nights</span></span></span></strong></p>
INSERT INTO Events VALUES("11","3","1244480169","Jun","2009","2:00 pm","6:00 pm","1245002400","Jun","14","2009","1248645600","Jul","26","2009","1","Week","West Coast Swing + Ballroom 6-Week Series","48.00","1","<p><span style=\"font-size: x-small;\"><strong><span style=\"font-family: arial,helvetica,sans-serif;\">DANCE LIKE IT\'S SUNDAY... EVERY SUNDAY!<br /></span></strong></span></p>
INSERT INTO Events VALUES("8","3","1244474623","Jun","2009","12:00 pm","5:40 pm","0","May","30","2009","0","","0","0","0","","WCS BOOTCAMP","","1","<p><strong>TRISH CONNERY ~ JAY BYAM ~ SUE DRAGOO</strong></p>
INSERT INTO Events VALUES("19","3","1245367671","Jun","2009","07:45 pm","12:00 am","1245368700","Jun","18","2009","1248580800","","0","0","0","","Trish Gal & DJDK Rock Atomic!","","0","<p>Trish Connery &amp; DJDK David Koppelman rock Swingin\' The Blues at Atomic Ballroom on Thursday, June 18th.</p>
INSERT INTO Events VALUES("29","3","1248978235","Jul","2009","2:00 pm","5:00 pm","1249236000","Aug","2","2009","1252875600","Sep","13","2009","1","Week","WCS 1, 2 & 3","43","0","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("28","3","1248896673","Jul","2009","9:15 pm","10:00 pm","1248916500","Jul","29","2009","1251943200","Sep","2","2009","1","Week","Salsa 2","43.00","0","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("30","0","1248978885","Jul","2009","5:00 pm","6:00 pm","1249246800","Aug","2","2009","1252879200","Sep","13","2009","1","Week","Ballroom 1: Amer Tango","43","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("31","0","1248979140","Jul","2009","8:30 pm","9:15 pm","1248913800","Jul","29","2009","1251940500","Sep","2","2009","1","Week","Salsa 1","43","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("32","0","1248979449","Jul","2009","9:00 pm","10:00 pm","1247014800","Jul","7","2009","1250042400","Aug","11","2009","1","Week","Country 2-Step","","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("33","3","1248980046","Jul","2009","8:00 pm","9:00 pm","1247011200","Jul","7","2009","1250038800","Aug","11","2009","1","Week","WCS 2","","0","<p>&nbsp;</p>
INSERT INTO Events VALUES("34","3","1249596257","Aug","2009","7:30 pm","8:00 pm","1254871800","Oct","6","2009","1257901200","Nov","10","2009","1","Week","WCS Level 1","48","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("44","0","1254321930","Sep","2009","8:00 pm","9:00 pm","1254873600","Oct","6","2009","1257904800","Nov","10","2009","1","Week","WCS Level 2","48","0","<p>
INSERT INTO Events VALUES("35","0","1249596454","Aug","2009","9:00 pm","10:00 pm","1250643600","Aug","18","2009","1253671200","Sep","22","2009","1","Week","Country 2-Step","48","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("36","0","1249597443","Aug","2009","h:mm am/pm","h:mm am/pm","-1","Aug","9","2009","-1","","0","0","0","","No Classes @ Hacienda 8/9","","0","","Double H Club / Hacienda Hotel","rgb(144,155,179)","Event");
INSERT INTO Events VALUES("37","1","1251698513","Aug","2009","h:mm am/pm","h:mm am/pm","-1","Sep","20","2009","-1","Sep","27","2009","1","Week","CruiseFest Swing Dance Cruise","","0","<p>CruiseFest Swing Dance Cruise</p>
INSERT INTO Events VALUES("38","3","1251765236","Aug","2009","8:30 pm","9:15 pm","1252542600","Sep","9","2009","1256778900","Oct","28","2009","1","Week","Salsa 1","$48","1","<p><!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>95</o:Words> <o:Characters>547</o:Characters> <o:Company>Hohman Maybank Lieb</o:Company> <o:Lines>4</o:Lines> <o:Paragraphs>1</o:Paragraphs> <o:CharactersWithSpaces>671</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:Cambria; 	panose-1:2 4 5 3 5 4 6 3 2 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin:0in; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:Cambria; 	mso-fareast-theme-font:minor-latin; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin:0in; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin;} --> <!--[endif]--> <!--StartFragment--></p>
INSERT INTO Events VALUES("41","3","1253403319","Sep","2009","","","1253419200","Sep","20","2009","1253332800","","0","0","0","","Mike Kluck Subs @ Hacienda","","0","<p>Mike Kluck subs for Trish Connery @ Hacienda Hotel</p>
INSERT INTO Events VALUES("42","1","1253403394","Sep","2009","","","1254024000","Sep","27","0","1253332800","","0","0","0","","No Sunday Classes 9/27/09","","0","<p>No Sunday Classes @ Double H Club/Hacienda</p>
INSERT INTO Events VALUES("43","0","1253403673","Sep","2009","2:00 pm","3:00 pm","1254679200","Oct","4","2009","1253386800","","0","0","0","","Wild Whips & Saucy Syncopations","10","0","<p>Sunday, October 4<br />Special West Coast Swing Workshop <br />Wild Whips &amp; Saucy Syncopations</p>
INSERT INTO Events VALUES("45","0","1254322126","Sep","2009","9:00 pm","10:00 pm","1254877200","Oct","6","2009","1257908400","Nov","10","2009","1","Week","Country Level 1/2","48","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("46","0","1254852881","Oct","2009","2:00 pm","3:00 pm","1255284000","Oct","11","2009","1254855600","","0","0","0","","Lead, Follow & Connection","10","0","<p>DanceChatter.Com Presents</p>
INSERT INTO Events VALUES("47","1","1254853337","Oct","2009","2:00 pm","3:15 pm","1256493600","Oct","25","2009","1256152500","","0","0","0","","Critique Session","15","0","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("48","2","1254853595","Oct","2009","","","1255665600","Oct","16","2009","1254801600","","0","0","0","","Paradise Dance Festival","","0","<p>Paradise Dance Festival</p>
INSERT INTO Events VALUES("49","1","1256853858","Oct","2009","8:30 pm","9:30 pm","1257384600","Nov","4","2009","1261017000","Dec","16","2009","1","Week","Salsa 1","$48","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("50","0","1257449173","Nov","2009","7:30 pm","8:00 pm","1258504200","Nov","17","2009","1260925200","Dec","15","2009","1","Week","WCS Level 1","20","0","<p style=\"text-align: center; \"><span style=\"font-size: large;\">DanceChatter.Com Presents</span></p>
INSERT INTO Events VALUES("51","3","1257449339","Nov","2009","8:00 pm","9:00 pm","1258506000","Nov","17","2009","1260928800","Dec","15","2009","1","Week","WCS Level 2","","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("52","0","1257449579","Nov","2009","9:00 pm","10:00 pm","1258509600","Nov","17","2009","1260932400","Dec","15","2009","1","Week","Country 2-Step Level 1/2","","0","<p><span style=\"font-family: Times; font-size: small;\">
INSERT INTO Events VALUES("53","0","1257449615","Nov","2009","h:mm am/pm","h:mm am/pm","-1","Nov","26","2009","-1","Jan","0","0","0","","Thanksgiving Day","","0","","","rgb(167,169,177)","Event");
INSERT INTO Events VALUES("54","3","1257449694","Nov","2009","","","1259038800","Nov","24","2009","1257397200","","0","0","0","","No Class Tonight @ Moose","","0","<p>No Classes on Tuesday, November 24th due to Thanksgiving!</p>","","rgb(214,239,205)","Event");
INSERT INTO Events VALUES("55","1","1257449734","Nov","2009","","","1259125200","Nov","25","2009","1257397200","","0","0","0","","No Class Tonight @ Moose","","0","","","rgb(223,181,215)","Event");
INSERT INTO Events VALUES("57","20","1258412061","Nov","2009","12:30 pm","1:30 pm","1258911000","Nov","22","2009","1258396200","","0","0","0","","Hustle","10","0","<p><span style=\"font-size: small;\">DanceChatter.Com Presents</span></p>
INSERT INTO Events VALUES("58","20","1258412097","Nov","2009","1:30 pm","2:30 pm","1258914600","Nov","22","2009","1258399800","","0","0","0","","Nightclub 2-Step","10","1","<p><span style=\"font-family: Times; font-size: small;\"> </span></p>
INSERT INTO Events VALUES("59","0","1258412314","Nov","2009","2:30 pm","3:30 pm","1258918200","Nov","22","2009","1258403400","","0","0","0","","WC Swing","10","0","<p><span style=\"font-family: Times; font-size: small;\">
INSERT INTO Events VALUES("61","0","1259646114","Dec","2009","1:30 pm","2:30 pm","1260124200","Dec","6","2009","1259695800","","0","0","0","","WC Swing","10","0","<p>
INSERT INTO Events VALUES("62","0","1259646208","Dec","2009","1:30 pm","2:30 pm","1260124200","Dec","6","2009","1259695800","","0","0","0","","Nightclub","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("63","0","1259646323","Dec","2009","12:30 pm","1:30 pm","1260120600","Dec","6","2009","1259692200","","0","0","0","","Hustle","10.00","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("65","22","1259972787","Dec","2009","6:30 pm","?","1261524600","Dec","22","2009","-1","","0","0","0","","Dance Party & Fundraiser","10","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("66","3","1262243152","Dec","2009","7:00 pm","8:00 pm","1262736000","Jan","5","2010","1265763600","Feb","9","2010","1","Week","Beg WCS 1","48","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("67","1","1262243466","Dec","2009","8:00 pm","9:00 pm","1262739600","Jan","5","2010","1265767200","Feb","9","2010","1","Week","WCS 2","48","1","<p>&nbsp;</p>
INSERT INTO Events VALUES("68","1","1262243589","Dec","2009","9:00 pm","10:00 pm","1262743200","Jan","5","2010","1265770800","Feb","9","2010","1","Week","Country 2 Step","48","1","<p>&nbsp;</p>
INSERT INTO Events VALUES("69","1","1262243705","Dec","2009","2:30 pm","3:30 pm","1263151800","Jan","10","2010","1264365000","Jan","24","2010","1","","WC Swing","10","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("70","1","1262243794","Dec","2009","1:30 pm","2:30 pm","1263148200","Jan","10","2010","1264361400","Jan","24","2010","1","","Nightclub","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("71","1","1262243870","Dec","2009","12:30 pm","1:30 pm","1263144600","Jan","10","2010","1264357800","Jan","24","2010","1","","Hustle","10","0","<p>&nbsp;</p>
INSERT INTO Events VALUES("72","0","1262244156","Dec","2009","8:00 pm","9:30 pm","1260234000","Dec","7","2009","1262313000","","0","0","1","Week","Hustle Team","40/mon","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("73","0","1262244337","Dec","2009","h:mm am/pm","h:mm am/pm","-1","Dec","31","2009","-1","Jan","3","2010","1","","NY Dance Camp","","0","<p>New year\'s Dance Camp</p>
INSERT INTO Events VALUES("75","20","1263430739","Jan","2010","1:00 pm","3:00 pm","1266775200","Feb","21","2010","1263585600","","0","0","0","","WCS Critique","15","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("76","22","1263582717","Jan","2010","5:30 pm","11:00 pm","1264285800","Jan","23","2010","1263614400","","0","0","0","","Annual Country Dance","10.00-","0","<p style=\"text-align: center;\"><strong><em><span style=\"font-size: medium;\">The Glendale Moose Lodge Presents</span></em></strong></p>
INSERT INTO Events VALUES("77","0","1264528006","Jan","2010","2:30 pm","3:30 pm","1264966200","Jan","31","2010","1264537800","","0","0","0","","WCS Workshop","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("78","0","1264528135","Jan","2010","1:30 pm","2:30 pm","1264962600","Jan","31","2010","1264534200","","0","0","0","","Nightclub Workshop","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("80","0","1264528312","Jan","2010","12:30 pm","1:30 pm","1264959000","Jan","31","2010","1264530600","","0","0","0","","Hustle Workshop","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("81","22","1264528431","Jan","2010","7:00 pm","12:00 am","1266364800","Feb","16","2010","1265950800","","0","0","0","","WCS Dance","10","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("83","3","1264528726","Jan","2010","7:00 pm","10:00 pm","1266969600","Feb","23","2010","1266030000","","0","0","0","","New 6-Wk Series","48","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("84","20","1266005793","Feb","2010","11:00 am","4:00 pm","1267891200","Mar","6","2010","1266008400","","0","0","0","","Hustle Workshops","","0","<p style=\"text-align: center;\"><!--StartFragment--></p>
INSERT INTO Events VALUES("85","1","1266006039","Feb","2010","7:00 pm","8:00 pm","1266969600","Feb","23","2010","1269993600","Mar","30","2010","1","Week","Beg WCS","48","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("86","20","1266006284","Feb","2010","8:00 pm","9:00 pm","1266973200","Feb","23","2010","1269997200","Mar","30","2010","1","Week","WCS 2","48","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("87","3","1266006445","Feb","2010","9:00 pm","10:00 pm","1266976800","Feb","23","2010","1270000800","Mar","30","2010","1","Week","Nightclub 2-Step","48","1","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("88","1","1266006707","Feb","2010","h:mm am/pm","h:mm am/pm","-1","Apr","9","2010","-1","","0","0","0","","LAPD","","0","<p>Los Angeles Premiere Dance Classic</p>
INSERT INTO Events VALUES("89","0","1266536811","Feb","2010","6:45 pm","10:00 pm","1271457900","Apr","16","2010","1266548400","","0","0","0","","South Bay Dance Club","","0","<p><span style=\"font-size: medium;\">South Bay Dance Club Presents&nbsp;</span></p>
INSERT INTO Events VALUES("90","2","1266536933","Feb","2010","h:mm am/pm","h:mm am/pm","-1","Apr","9","2010","-1","","0","0","0","","LAPD","95","0","<p>Los Angeles Premiere Dance Classic</p>
INSERT INTO Events VALUES("91","0","1266537046","Feb","2010","h:mm am/pm","h:mm am/pm","-1","Apr","10","2010","-1","","0","0","0","","LAPD","","0","<p><span style=\"font-family: Times; font-size: small;\">
INSERT INTO Events VALUES("92","0","1266537078","Feb","2010","h:mm am/pm","h:mm am/pm","-1","Apr","11","2010","-1","","0","0","0","","LAPD","","0","<p><span style=\"font-family: Times; font-size: small;\">
INSERT INTO Events VALUES("93","0","1266537407","Feb","2010","6:15 pm","12:00 am","1270592100","Apr","6","2010","1266469200","","0","0","0","","7th Tues Dance","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("94","1","1266537659","Feb","2010","6:00 pm","9:00 pm","1278021600","Jul","1","2010","1282957200","Aug","27","2010","1","Week","Salsa @ Autry","7","0","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("95","22","1266537993","Feb","2010","7:00 pm","12:00 am","1269730800","Mar","27","2010","1266469200","","0","0","0","","4th Sat Dance","10","0","<p><strong> </strong></p>
INSERT INTO Events VALUES("96","20","1268786276","Mar","2010","7:30 pm","11:45 pm","1269127800","Mar","20","2010","1268970300","","0","0","0","","FREE Nightclub Workshop","0","0","<p><span style=\"font-size: medium;\"><strong><em>Free</em></strong> Nightclub 2-Step Workshop</span></p>
INSERT INTO Events VALUES("97","0","1268786423","Mar","2010","2:30 pm","3:30 pm","1269196200","Mar","21","2010","1268767800","","0","0","0","","WCS","","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("98","0","1268786522","Mar","2010","1:30 pm","2:30 pm","1269192600","Mar","21","2010","1268764200","","0","0","0","","Nightclub Workshop","","0","<p>
INSERT INTO Events VALUES("99","0","1268786623","Mar","2010","12:30 pm","1:30 pm","1269189000","Mar","21","2010","1268760600","","0","0","0","","Hustle Workshop","","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("100","0","1268786747","Mar","2010","1:00 pm","3:00 pm","1269795600","Mar","28","2010","1268766000","","0","0","0","","WCS Essentials","","0","<p><span style=\"font-size: medium;\">WCS Essentials</span></p>
INSERT INTO Events VALUES("101","3","1268949598","Mar","2010","h:mm am/pm","h:mm am/pm","-1","Mar","24","2010","-1","Apr","28","2010","1","Week","Private Lessons","","0","<p><span style=\"font-size: medium;\">Hear Ye! Hear Ye! Hear Ye!</span></p>
INSERT INTO Events VALUES("102","0","1270060475","Mar","2010","7:00 pm","10:30 pm","1271199600","Apr","13","2010","1274236200","May","18","2010","1","Week","WCS + Nightclub","48","0","<p><!--StartFragment-->
INSERT INTO Events VALUES("103","0","1270061568","Mar","2010","7:00 pm","h:mm am/pm","1271890800","Apr","21","2010","-1","","0","0","0","","Ballroom By The Bay","10.00","0","<p><span style=\"font-size: medium;\"><strong>Trish Teaches for Ballroom By The Bay&nbsp;</strong></span></p>
INSERT INTO Events VALUES("104","0","1270061844","Mar","2010","6:30 pm","11:45 pm","1273271400","May","7","2010","1270093500","","0","0","0","","Country Night","10.00","0","<p><span style=\"font-size: small;\">DanceChatter.Com Presents</span></p>
INSERT INTO Events VALUES("105","0","1271701979","Apr","2010","6:00 pm","12:00 am","1272146400","Apr","24","2010","1271649600","","0","0","0","","Dancing With Our Stars","120.00","0","<p>Trish Judges for \"Dancing With Our Stars\" Fundraiser!</p>
INSERT INTO Events VALUES("106","0","1272933319","May","2010","9:00 pm","10:30 pm","1272934800","May","3","2010","1285641000","Sep","27","2010","1","Week","WCS Performance Team","40/Mon","0","<p><span style=\"font-family: arial, sans-serif; font-size: 13px; border-collapse: collapse;\"><span style=\"font-size: x-large;\"><span style=\"font-family: Mistral;\"><span style=\"font-size: 26pt;\"><span style=\"font-size: large;\">DanceChatter.Com &amp; CountryDanceSport Present</span><br /></span></span></span><span style=\"color: #0000fe;\"><span style=\"font-size: large;\"><span style=\"font-family: \'Marker Felt\';\"><span style=\"font-size: 22pt;\"><strong><span style=\"font-size: large;\">Double Diva WCS Performance Team</span><br /></strong></span></span></span></span><span style=\"font-family: \'Marker Felt\';\"><span style=\"font-size: medium;\"><span style=\"font-size: 18pt;\"><span style=\"font-size: large;\">Every Monday</span><br /></span></span></span><span style=\"font-size: medium;\"><span style=\"color: #00007f;\"><span style=\"font-family: \'Abadi MT Condensed Extra Bold\';\"><span style=\"font-size: 16pt;\"><strong>With Trish Connery &amp; Michelle Adams<br /></strong></span></span></span></span></span></p>
INSERT INTO Events VALUES("107","22","1272933495","May","2010","6:15 pm","11:55 pm","1274825700","May","25","2010","-1","Jan","0","0","0","","7th Tues Dance","10","0","<p><span style=\"font-family: arial, sans-serif; font-size: 13px; border-collapse: collapse;\"><span style=\"font-family: Mistral;\"><span style=\"color: #00007f;\"><span style=\"font-size: large;\"><span style=\"font-size: 22pt;\">DanceChatter.Com&nbsp;</span></span></span></span><span style=\"color: #00007f;\"><span style=\"font-size: large;\"><span style=\"font-size: 22pt;\"><span style=\"font-family: Optima, \'Times New Roman\';\">&amp;&nbsp;</span><span style=\"font-family: \'Abadi MT Condensed Extra Bold\';\">DJDK ROCKS!</span><span style=\"font-family: Optima, \'Times New Roman\';\"><em>&nbsp;<br /></em></span></span></span></span><span style=\"font-family: Optima, \'Times New Roman\';\"><em><span style=\"font-size: x-small;\"><span style=\"font-size: 12pt;\"><br /><strong><span style=\"font-size: small;\">Present The Every 7th Tuesday</span><br /></strong></span></span></em></span><span><span style=\"color: #7f0000;\"><span style=\"font-size: large;\"><span style=\"font-size: large;\">Burbank Dance Party&nbsp;<br /></span></span></span></span><span style=\"color: #7f0000;\"><span style=\"font-size: large;\"><span><span style=\"font-size: 22pt;\"><strong><span style=\"font-size: xx-large;\">Tuesday</span></strong></span></span></span><span style=\"font-family: \'Times New Roman\';\"><strong><span style=\"font-size: medium;\"><span style=\"font-size: xx-large;\">,</span></span><span style=\"font-size: large;\"><span style=\"font-size: 22pt;\"><span style=\"font-size: xx-large;\">&nbsp;May 25th&nbsp;</span><br /></span></span></strong></span></span><span style=\"font-family: \'Times New Roman\';\"><span style=\"font-size: x-small;\"><span style=\"font-size: 11pt;\">(also July 13th)<br /></span></span></span><span style=\"font-size: x-small;\"><span style=\"font-family: \'Bernard MT Condensed\';\"><span style=\"font-size: 12pt;\"><br /></span></span></span><span style=\"font-size: medium;\"><span style=\"font-family: Candara;\"><span style=\"font-size: 18pt;\"><strong><span style=\"font-size: large;\">West Coast Swing &nbsp;&bull; &nbsp;Country 2-Step&nbsp;<br />Hustle &bull; &nbsp;Nightclub &nbsp;&bull; Cha Cha &nbsp;&bull; &nbsp;Salsa &nbsp;&bull; &nbsp;More!</span><br /></strong></span></span></span><span><span style=\"font-family: \'Apple Casual\';\"><span style=\"font-size: 6pt;\"><br /></span></span></span><span style=\"font-family: \'Arial Narrow\';\"><span style=\"font-size: 14pt;\"><em>With<strong>&nbsp;Instructor&nbsp;<span style=\"color: #00007f;\">TRISH CONNERY</span></strong>&nbsp;&amp;&nbsp;<span style=\"color: #7f007f;\"><strong>DJDK DAVID KOPPELMAN<br /></strong></span></em></span></span><span style=\"font-size: 14pt;\"><span style=\"font-family: \'Apple Casual\';\"><br /></span><span style=\"font-family: \'Abadi MT Condensed Light\';\"><strong>6:15 pm &ndash; Beginning WCS w/ Trish<br />7:00 pm &ndash; Intermediate WCS w/ Trish<br />8:00 pm &ndash; Open Dancing w/ DJDK David Koppelman<br /></strong></span></span><span><span style=\"font-family: Calibri, Verdana, Helvetica, Arial;\"><span style=\"font-size: 4pt;\"><br /></span></span></span><span style=\"font-family: Calibri, Verdana, Helvetica, Arial;\"><span style=\"font-size: 14pt;\"><span style=\"font-size: medium;\">$10/person includes workshops&nbsp;<br />$8/person for Moose Lodge Members &amp; Dance Club Members&nbsp;<br />(OCWCSDC, USA Dance, Dance Buddies, Valley Swing, etc.) Must show current membership card!</span></span></span></span></p>
INSERT INTO Events VALUES("112","0","1272934531","May","2010","10:00 pm","10:30 pm","1275444000","Jun","1","2010","1278469800","Jul","6","2010","1","Week","Performance","30","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">
INSERT INTO Events VALUES("113","20","1272934699","May","2010","12:30 pm","1:30 pm","1272817800","May","2","2010","1274031000","May","16","2010","1","Other Week","Hustle","10","0","<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"> </span></p>
INSERT INTO Events VALUES("109","3","1272934135","May","2010","7:00 pm","8:00 pm","1275433200","Jun","1","2010","1278460800","Jul","6","2010","1","Week","Beg WCS/Level 1","48","0","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("110","3","1272934286","May","2010","8:00 pm","9:00 pm","1275436800","Jun","1","2010","1278464400","Jul","6","2010","1","Week","WCS Level 2","48","1","<p><!--StartFragment--></p>
INSERT INTO Events VALUES("111","3","1272934409","May","2010","9:00 pm","10:00 pm","1275440400","Jun","1","2010","1278468000","Jul","6","2010","1","Week","Nightclub","48","1","<p><!--StartFragment--></p>



DROP TABLE Galleries;

CREATE TABLE `Galleries` (
  `Gal_Id` int(11) NOT NULL auto_increment,
  `Cat_Id` int(11) NOT NULL,
  `Gal_Title` varchar(45) NOT NULL,
  PRIMARY KEY  (`Gal_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=armscii8 COMMENT='Store Dancechatter Image Galleries';

INSERT INTO Galleries VALUES("24","2","2008 NYDC");
INSERT INTO Galleries VALUES("25","23","8-24-09 Newsletter");
INSERT INTO Galleries VALUES("29","2","2009 NYDC");



DROP TABLE Images;

CREATE TABLE `Images` (
  `Img_Id` int(11) NOT NULL auto_increment,
  `Gal_Id` int(11) NOT NULL,
  `Img_Description` longtext NOT NULL,
  `File_Extension` varchar(6) NOT NULL,
  `Date_Posted` int(11) NOT NULL,
  `Month_Posted` varchar(12) NOT NULL,
  `Year_Posted` int(4) NOT NULL,
  `Type` varchar(5) NOT NULL default 'Image',
  PRIMARY KEY  (`Img_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=armscii8 ROW_FORMAT=DYNAMIC COMMENT='DanceChatter_Gallery_Images';

INSERT INTO Images VALUES("84","24","",".jpg","1249516777","Aug","2009","Image");
INSERT INTO Images VALUES("83","24","",".jpg","1249516719","Aug","2009","Image");
INSERT INTO Images VALUES("86","25","DanceChatter.Com Newsletter 8-24-09
INSERT INTO Images VALUES("90","26","",".jpg","1256236021","Oct","2009","Image");
INSERT INTO Images VALUES("91","0","",".jpg","1261015499","Dec","2009","Image");



DROP TABLE Users;

CREATE TABLE `Users` (
  `User_Id` int(11) NOT NULL auto_increment,
  `User_Email` varchar(60) NOT NULL,
  `User_Fname` varchar(50) NOT NULL,
  `User_Lname` varchar(50) NOT NULL,
  `User_Pass` varchar(40) NOT NULL,
  `User_Lvl` int(1) NOT NULL default '1',
  `User_LastLogon` int(11) NOT NULL,
  `User_Token` varchar(40) NOT NULL,
  PRIMARY KEY  (`User_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=armscii8 ROW_FORMAT=DYNAMIC COMMENT='Store User Information';

INSERT INTO Users VALUES("1","james@jamesmehorter.com","James","Mehorter","4782cd205338cdc5fd913e3d4150205be0af7a49","1","1244150965","");
INSERT INTO Users VALUES("2","james@7mdesign.com","Jamesy","Mehorter","4782cd205338cdc5fd913e3d4150205be0af7a49","0","1244150821","");
INSERT INTO Users VALUES("3","trish@dancechatter.com","Trish","Connery","27a379329c1ed573c25773e2e3707d85a93d0c3b","1","1244703766","");
INSERT INTO Users VALUES("4","trish_connery@yahoo.com","Trish","Connery","0ab3dec6d8baf3ab4281abf5b147a25fe5af34e8","1","1244731561","");
INSERT INTO Users VALUES("5","krhicks@sbcglobal.net","Karen","Hicks","7011c75cab574eb8a8a4002d5b94f06167da4d49","0","1248627617","");
INSERT INTO Users VALUES("6","Lisaboek@aol.com","Melisa","Boeckermann","e68d4bffbe2e8678421f9facb8418b7d1f33a415","0","1248718514","");
INSERT INTO Users VALUES("7","mrustia96@hotmail.com","Mary","Rustia","ca156a1c7566ad39d4a2484c6a951e853ffea4ab","0","1248821942","");
INSERT INTO Users VALUES("8","davefosteraz@yahoo.com","David","Foster","c05a4d11d37f0fd2292f51c6871521b35b49619a","0","1250293727","");
INSERT INTO Users VALUES("9","darcy.cordova@hotmail.com","Darcy","Cordova","c35b07262fca57647e4281358eec6674c2c5bb44","0","1252280742","");
INSERT INTO Users VALUES("10","ernesto5387@sbcglobal.net","Ernesto","Garcia","c424e9d6d4e0e66aee79994a662ec0fa407856cc","0","1252306455","");
INSERT INTO Users VALUES("11","kim_pendergest@hotmail.com","Kim","Pendergest","44060752d7f7ae069c8187120455195325af0cca","0","1252347451","");
INSERT INTO Users VALUES("12","r_alquitela@yahoo.com","ralph","alquitela","71acd53c8ccc610e252d2275775d573471fdb7ca","0","1252376113","");
INSERT INTO Users VALUES("13","luz.m.mccullough@kp.org","Luz","McCullough","da39a3ee5e6b4b0d3255bfef95601890afd80709","0","1253143194","");
INSERT INTO Users VALUES("14","debbyharrington@aol.com","debby","harrington","bfab9e7aa885f5e10afab6509d74dd2965325c39","0","1255460815","");
INSERT INTO Users VALUES("15","bloomfieldltd@hotmail.com","Kay","George","0c8bd2fc692619412449ec1d9078869798a7b1f1","0","1257299934","");
INSERT INTO Users VALUES("16","mlewis_556@hotmail.com","Maureen","Lewis","644c1bd124d0b04d44aa8cde736106723dd0e33d","0","1257363020","");
INSERT INTO Users VALUES("17","pplagensusmc@hotmail.com","Patrick","Plagens","457c10bf2fe2adecaed61cf3ef55946fa7edd27e","0","1258477807","");
INSERT INTO Users VALUES("18","rocknantique@yahoo.com","ron","gordon","4170ac2a2782a1516fe9e13d7322ae482c1bd594","0","1260664735","");
INSERT INTO Users VALUES("19","chip107@ca.rr.com","Chip","Hammett","f42e0258e8eb22e2f37f0fe14f949e41a692e0e7","0","1262100708","");
INSERT INTO Users VALUES("20","dmochinaga@verizon.net","Dean","Mochinaga","1a63f8201eb92dc4f7ce0d768fadd162a82f9ff1","0","1265631759","");
INSERT INTO Users VALUES("21","aojudy@gmail.com","","","b3843ec09ae5984d18cd69dae5de80f251204df7","0","1268877571","");
INSERT INTO Users VALUES("22","itzmehere123@yahoo.com","jo","Sitjar","32f27c06cfd9fb80b98d99018ff1255403eea4c3","0","1269287811","");
INSERT INTO Users VALUES("23","rjamplis@yahoo.com","Robin","Jamplis","ed0bf98f27d428af95a42121fc62c62f16c2a885","0","1269671516","");
INSERT INTO Users VALUES("24","mouseandrobin@aol.com","robin","Gildehaus","2a7a66c2e74cd3ec293a85db961b0d3322b1b736","0","1270435287","");
INSERT INTO Users VALUES("25","heljorn@att.net","Helen","Jordan","de76b9510c350060b8085a1eec7b0e60ef2d567e","0","1270711084","");
INSERT INTO Users VALUES("26","sharkey9955@msn.com","STEVE","NAKAMA","36cb04ea89e97099ed4d74c74520e493cceeaf05","0","1271124026","");
INSERT INTO Users VALUES("27","janeliepshutz@gmail.com","Jane","Liepshutz","f5626f64bd1e69151f1c52938e1b3880dc75fb05","0","1271787360","");


