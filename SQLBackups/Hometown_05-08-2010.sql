DROP TABLE accounts;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL auto_increment,
  `owner_id` int(11) NOT NULL default '0',
  `title` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='Accounts';

INSERT INTO accounts VALUES("1","1","Hometown");



DROP TABLE accounts_users;

CREATE TABLE `accounts_users` (
  `account_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0'
) TYPE=MyISAM;




DROP TABLE assoc;

CREATE TABLE `assoc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `phone` varchar(14) NOT NULL default '',
  `email` varchar(35) NOT NULL default '',
  `website` varchar(45) NOT NULL default '',
  `image` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM COMMENT='Associates';

INSERT INTO assoc VALUES("19","Jim Black","207-338-4047","Blackink@acadia.net","","Jim photo.jpg");



DROP TABLE houses;

CREATE TABLE `houses` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `housetype` varchar(20) NOT NULL default '',
  `city` varchar(15) NOT NULL default '',
  `address` varchar(25) NOT NULL default '',
  `beds` varchar(5) NOT NULL default '',
  `baths` varchar(5) NOT NULL default '',
  `comment` varchar(250) NOT NULL default '',
  `price` varchar(11) NOT NULL default '',
  `mls` varchar(12) NOT NULL default '',
  `lotsize` varchar(10) NOT NULL default '',
  `sqfeet` varchar(8) NOT NULL default '',
  `pets` char(3) NOT NULL default '',
  `heat` varchar(20) NOT NULL default '',
  `MFU` char(3) NOT NULL default '',
  `MBR` char(3) NOT NULL default '',
  `skyL` char(3) NOT NULL default '',
  `BaseB` char(3) NOT NULL default '',
  `garage` char(3) NOT NULL default '',
  `fence` char(3) NOT NULL default '',
  `yard` char(3) NOT NULL default '',
  `sideW` char(3) NOT NULL default '',
  `fridge` char(3) NOT NULL default '',
  `EHW` char(3) NOT NULL default '',
  `dryer` char(3) NOT NULL default '',
  `cWash` char(3) NOT NULL default '',
  `dWash` char(3) NOT NULL default '',
  `oven` char(3) NOT NULL default '',
  `date_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_added` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM PACK_KEYS=0 COMMENT='store house info';

INSERT INTO houses VALUES("8","1","Intown Belfast Home/ SOLD","Sale","Belfast","7 Margin St","3-4","2","Located in one of the best neighborhoods in town,just steps to the General Hospital,city park and the Bay.This home offers a Eat-in Kitchen,Formal Dinning Room,Woodfloors and a fireplace.Also there are 2-Garages!","$199,900.00","744444",".38","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-06-20 08:29:03","0000-00-00");
INSERT INTO houses VALUES("5","1","Intown Belfast Waterview JUST LEASED","Rental","Belfast","Bay View St.","3","2","Intown executive home with harbor,Bay views.Wood floors,Fireplace..as good as it gets...Walking distance  to downtown,park or Hospital.","$1300.00 Mo","","1/4 ac","","","Forced Hot Water","","","No","Yes","Yes","Yes","Yes","No","No","No","No","No","No","No","2009-09-07 09:30:17","0000-00-00");
INSERT INTO houses VALUES("14","1","South Cape Shores Condo/ CURENTLY LEASED","Rental","Stockton Spring","","4","3","Waterfront Condo with Pool,decks,Views-3 bdrms,3 baths and brand new.","1400.00 Mo.","","","","","In-Floor Heating","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-13 14:18:55","0000-00-00");
INSERT INTO houses VALUES("16","1","Blacks Landing","Sale","Belfast","15 Blacks Landing","3","2"," COMING SOON -Beautiful waterfront home w/views west accross the inner harbor and south to the islands.","","779271",".53 ac or","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-01-25 08:36:47","0000-00-00");
INSERT INTO houses VALUES("28","1","Intown Long Term Lease         JUST LEASED","Rental","Belfast","31 Seaview Terrace","3","2","Beautifull intown home for lease, All on one floor 1 block to the hospital,3-4 to the park,very private yard.Atached two-car garage.","900.00 Mo.","","1/4ac","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-03-27 12:19:09","0000-00-00");
INSERT INTO houses VALUES("23","1","Bayside Waterfront CURENTLY LEASED","Rental","Northport","Shore Rd.","2-3","2","Private waterfront location between Camden & Belfast. Home is furnished exceptionally well.There are hardwood floors a firplace and a large deck for you know what. This property will be available for September through May 2007","1200.00 Mo.","","5ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-07-31 09:16:49","0000-00-00");
INSERT INTO houses VALUES("29","1","13 AC Hill Top Ranch / CURENTLY LEASED","Rental","Searsport","","3","1 1/2","Privacy,views,space-workshop & outbuildings come to mind for openers...","875.00  + L","","20 ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-07-17 09:47:58","0000-00-00");
INSERT INTO houses VALUES("30","1","Cheri Lane/ CURENTLY LEASED","Sale","Northport","Northport","2","2","New & Beautiful-situated in a private subdivision just outside of Belfast.","225,000.00","","1.7ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-17 08:05:07","0000-00-00");
INSERT INTO houses VALUES("35","1","Intown Belfast Waterview/ CURENTLY LEASED","Rental","Belfast","Belfast","3","1.5","Cute and in the right neighborhood. Clean waterview home with woodfloors,lots of light,Glassed in porch.Walk to everything.","875.00","","1/8 ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-19 12:23:12","0000-00-00");
INSERT INTO houses VALUES("32","1","Intown Belfast /  SOLD","Rental","Belfast","Belfast","4","3","All the qualities youve been looking for: intown location,large private lot with deck,two car heated garege,woodfloors,large spacious rooms.","1000.00 Mo.","","2ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-07-07 13:49:59","0000-00-00");
INSERT INTO houses VALUES("33","1","Intown Belfast / CURENTLY LEASED","Rental","Belfast","Belfast","3","1","Cozy & Warm Intown Home Just a Few blocks to the Historic District.","875.00 Mo.","","1/4 AC","","","Forced Hot Air","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-19 12:23:57","0000-00-00");
INSERT INTO houses VALUES("34","1","Lake View/ CURANTLY LEASED","Rental","Northport","Pitcher Pond","4","2","Lake & Mountain Views from this Hill Top Private  retreat.Screened in Porch,Gardens and more...","1000.00 Mo.","","5ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-05-16 08:41:44","0000-00-00");
INSERT INTO houses VALUES("36","1","Swan Lake Waterfront Home","Rental","Swanville","Swanville","3","2","Waterfront Year Round Home at the end a Fire Lane with views south down the lake. Great swimming spot!,Moor your boat out front.","1200.00 Mo.","","1ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-07-05 14:39:03","0000-00-00");
INSERT INTO houses VALUES("37","1","MOUNTAIN VIEWS / CURENTLY LEASED","Rental","Swanville","Swanville","2","1","Privacy! Lots of light,wood floors,wood stove,monitore heat,decks,2 ponds,gardens...huge 2+ car garage.","900.00 + Le","","10 ac","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-07-17 09:46:15","0000-00-00");
INSERT INTO houses VALUES("38","1","Intown Belfast Duplex/ CURENTLY LEASED","Rental","Belfast","Intown","2","1","Intown with waterviews,Decks,Garage and Heated....","900.00 + Le","","1/8 ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-19 12:22:36","0000-00-00");
INSERT INTO houses VALUES("40","1","Log Home on 125 Acers/ CURENTLY LEASED","Rental","Monroe","Monroe","3","1","Newer Log Home on 125 ac at the end of a dead end road. Like your privacy?","950.00 + Le","","125 ac","","","Forced Hot Air","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-10-22 12:41:21","0000-00-00");
INSERT INTO houses VALUES("41","1","Intown Belfast Condos/ CURENTLY LEASED","Rental","Belfast","Belfast","3","2","Waterviews,Intown Walk to everything,Clean and new.","900.00 + Le","","","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-19 12:21:49","0000-00-00");
INSERT INTO houses VALUES("42","1","The Northport House/ CURENTLY LEASED","Rental","Northport","Rt#1 Northport","1-3","1","Quality Apartments","5-900.00 +","","1ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-13 14:04:34","0000-00-00");
INSERT INTO houses VALUES("43","1","UPSCALE WATERFRONT CONDO / CURENTLY LEASED","Rental","Stockton Spring","South Cape Shores","3","3","As Good as it gets! Waterfront, Veiws, Decks, Pool....","1300.00 Mo.","","","","","In-Floor Heating","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-06-27 15:35:10","0000-00-00");
INSERT INTO houses VALUES("44","1","Intown Belfast Home               SOLD","Sale","Belfast","Pearl St.","3","2","Great Intown Location, and in great condition!","239,000.00","",".25","","","Forced Hot Air","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-01-11 12:02:00","0000-00-00");
INSERT INTO houses VALUES("45","1","Intown Belfast /  CURENTLY LEASED","Rental","Belfast","Belfast","4","2","Walk to everything. Oversized 3 car garage also.","900.00 MO.","",".25ac","","","Forced Hot Air","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-19 12:21:12","0000-00-00");
INSERT INTO houses VALUES("46","1","Bayside Water view/ CURENTLY LEASED","Rental","Northport","Bayside","3","2","Beautiful Home with Ocean Views. Deck & Gardens.","1000.00 Mo.","","2ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-09-08 13:51:18","0000-00-00");
INSERT INTO houses VALUES("47","1","  UpScale Lakefront Home/ CURENTLY LEASED","Rental","Liberty","Liberty","3","2","Gorgeous Lakefront Home available furnished or not. Huge two car garage,Decks and a hot spot for the fishing.","1200.00 Mo.","","3ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-09-07 09:29:16","0000-00-00");
INSERT INTO houses VALUES("48","1","Intown Belfast w /Pool! CURENTLY LEASED","Rental","Belfast","Belfast","4","2","Beautiful,Private & Intown w/Pool","975.00 mo +","","1/8ac","","","Forced Hot Air","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-04-17 11:33:33","0000-00-00");
INSERT INTO houses VALUES("49","1","Private Belfast Home CURENTLY LEASED","Rental","Belfast","Belfast","2","1","A very Private setting with gardens and two car garage.","1000.00 Mo.","","2+ ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-09-07 09:28:37","0000-00-00");
INSERT INTO houses VALUES("56","1","INTOWN BELFAST /   CURENTLY LEASED","Rental","","","4","2","This Beautiful Intowm Home offers Charm & Character. Wood Floors, Fireplaces, Sun Porch and a Private Back Yard fenced with Lilacs.","1250.00 Mo.","","","Belfast","","Forced Hot Water","","","No","Yes","No","No","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","2009-07-17 09:47:17","0000-00-00");
INSERT INTO houses VALUES("60","1","Land on Beach Hill Rd.","Sale","Northport","lOT #3 Small Lane/Beech H","","","Great Building Site Located Between Belfast & Camden in a private Subdivition.Level and wooded with a soils test available.","36,900.00","","1.3","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-01-11 11:54:42","0000-00-00");
INSERT INTO houses VALUES("61","1","250 Acre Horse Farm / CURENTLY LEASED","Rental","Monroe","Monroe","3+","2","A Most Special Place, Privacy,Feilds,Woods,Barns,Streams. The house is imaculate with woodfloors,Wood/Gas stove,Screened in Porch........","1100.00 Mo.","","250 ac","","","Forced Hot Water","","","No","No","Yes","No","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","2008-07-08 07:01:18","0000-00-00");
INSERT INTO houses VALUES("62","1","Intown Belfast Home / SOLD","Sale","Belfast","Belfast","3-4","2","Beautiful Intown Home in a peasefull setting with a private back yard,Out Building,Heated Two Car Garage,Laundry Room,Full Basement with a Finished Room, Woodfloors,Kitchen with Island, Deck and Large Rooms with lots or Light.","249,000.00","","1/8 ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-11-24 10:12:48","0000-00-00");
INSERT INTO houses VALUES("64","1","13 Ac. Hill Top / CURENTLY OFF THE MARKET","Sale","Searsport","318 Mt. Eprraim Rd.","3","2","This 4 Beroom Ranch sits High & Dry with Views South. The Deck is Huge, The Garage has Finished Room on the 2nd Floor. There is also a Out Building that was used for a 4-6 dog type Kennal.","149.000.00","","13 Ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","Yes","No","No","No","Yes","2008-02-04 19:28:55","0000-00-00");
INSERT INTO houses VALUES("65","1","PITCHER POND COTTAGE","SeasonalWaterfront","Northport","Pitcher Pond","2","1","This location will blow your mind. Its a hot spot for fishing & Swimming.\nThe cottage has wood floors, enclosed porch with sweeping views over the lake. There is a wood stove, refrigerator,elect/propane cook stove and most of the essentials for lake","2500.00 Mo.","","1/4 ac +/-","","","Wood Heat","","","No","No","No","No","No","No","Yes","No","No","No","No","Yes","2009-05-06 10:05:21","0000-00-00");
INSERT INTO houses VALUES("70","1","CURRENTLY OFF MARKET","Sale","Morrill","25 Robinson School House","3","2","Newer 3 Bedroom, 2 bath Cape with The Open Floor Plan and Wrap Around Deck.Full ,Dry Bsement with Walk-Out & Garage Space.Private Yard with Swimming Pool.","218,500.00","","1.250","","","Forced Hot Air","","","No","Yes","Yes","Yes","Yes","No","Yes","Yes","Yes","Yes","No","Yes","2008-01-25 09:04:03","0000-00-00");
INSERT INTO houses VALUES("71","1","OCEANFRONT  COTTAGE","SeasonalWaterfront","Belfast","Belfast","3","1 1/2","Very Special Place. Private Waterfront Cottage at the Waters Edge. Fireplace,Wood Floors,Deck and Views South.","1500.00 Wk","","175\' Ocean","","","Wood Heat","","","No","No","No","No","Yes","No","Yes","Yes","No","No","No","Yes","2007-08-23 17:30:23","0000-00-00");
INSERT INTO houses VALUES("72","1","Waterfront-Marshal Wharf / SOLD","Sale","Belfast","Belfast","N/A","1","Belfast Waterfront Comercial Buildings with Dockage/Slips","Private","",".25","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2007-11-24 10:11:10","0000-00-00");
INSERT INTO houses VALUES("73","1","DOWNTOWN COMERCIAL BUILDING FOR LEASE","Rental","Belfast","Main Street","n/a","1","Downtown Retail or Office Space on the Ground Floor. High Visibility,City Parking,Beautiful Wood Floors and lots of Light.Possibly more space available on upper floors.","1500.00 Mo.","","Corner Bui","tbd","","Forced Hot Water","","","No","Yes","No","No","No","Yes","No","No","No","No","No","No","2009-03-13 11:20:48","0000-00-00");
INSERT INTO houses VALUES("74","1","IN TOWN BELFAST / CURENTLY LEASED","Rental","Belfast","Ceader St.","3","2","A very Desirable Neighborhood. Insulated Two car garage w/remote entry. House offers Eat-in Kitchen,Large Living Room,Three Bedrooms, Two Full Baths all on 1 floor. A Full / Dry Basement with Washer & Dryer.","875.00 Mo.","",".25","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","Yes","Yes","Yes","No","Yes","2007-11-23 13:35:49","0000-00-00");
INSERT INTO houses VALUES("76","1"," LOG HOME on 128 ac +/- CURRENTLY OFF THE MARKET","Sale","Monroe","Twombly Rd.","4","2","Acereage & Privacy, Huge Log Home,Woods Road to the Back Forty. Currently Leased.","189,900.00","","128ac","","","Forced Hot Air","","","No","Yes","No","No","Yes","No","Yes","Yes","No","No","No","Yes","2008-09-08 13:49:33","0000-00-00");
INSERT INTO houses VALUES("77","1","Belfast in-town lot w/ foundation  SOLD","Sale","Belfast","31 Field St.","TBD","TBD","Intown Lot, with foundation,heating System,City Water,City Sewer. House had a fire and has been torn down and removed. There is also a one car garage on the property.","39,900.00","",".16 ac","","","Forced Hot Air","","","No","Yes","Yes","No","Yes","No","No","No","No","No","No","No","2010-03-05 08:54:23","0000-00-00");
INSERT INTO houses VALUES("82","1","SWAN LAKE COTTAGE","SeasonalWaterfront","Swanville","Private","2","1","Location, Location,Location","1500.00 Wk","","600+ water","","","Wood Heat","","","No","No","Yes","No","No","No","Yes","Yes","No","No","No","Yes","2009-05-06 10:04:31","2008-01-11");
INSERT INTO houses VALUES("81","1","Belfast Harbor","Sale","Belfast","13 Blacks Landing","","","As rare could be, an Ocean Front Lot with views west and south.","375,000.00","875626","0.7","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-01-17 12:13:21","2008-01-11");
INSERT INTO houses VALUES("84","1","4 UNIT APARTMENT BUILDING / Curently off the Marke","Sale","Belfast","72 Park St.","8","4","Four,Two Bedroom Units in the heart of the city.","239,000.00","","1/8 ac","","","Other","","","No","Yes","No","No","No","Yes","Yes","Yes","No","No","No","Yes","2009-04-25 11:28:15","2008-04-03");
INSERT INTO houses VALUES("85","1","WATERFRONT w/ views west and south","Sale","Belfast","15 Blacks Landing","2-3","2","3 bedroom two bath waterfront home with additional buildable lot.\nBroker owned\n\n","840,000.00","885937","1.2 Ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","No","Yes","Yes","Yes","Yes","2009-06-12 09:32:08","2008-04-08");
INSERT INTO houses VALUES("86","1","The Northport House / Curently off the Market","Sale","Northport","1409 Atlantic Ave.","8","6","6 Unit apartment building in good condition located between Belfast and Camden","282,500.00","","5.3 ac","","","Forced Hot Water","","","No","Yes","No","No","Yes","No","Yes","Yes","No","No","No","Yes","2009-04-25 11:28:46","2008-04-23");
INSERT INTO houses VALUES("87","1","Private Contemporary","Rental","Belfast","Private","3","2","This is a fantastic Property in Belfast with privacy.Three Fireplaces....","1200.mo + L","","8 ac","","","Forced Hot Water","","","Yes","Yes","Yes","No","Yes","No","Yes","No","No","No","No","Yes","2008-07-07 13:23:51","2008-07-07");
INSERT INTO houses VALUES("88","1","On The Side of a Mountain / CURENTLY LEASED","Rental","Liberty","Liberty","3","1","In between Camden and Belfast in South Liberty this salt box design offers the comfort of country living.Long winding drivway, Your relitives will need a GPS to find you.","825.00 Mo.","","20 Ac","","","Wood Heat","","","No","No","No","No","Yes","No","No","No","No","No","No","No","2008-07-08 06:31:17","2008-07-08");
INSERT INTO houses VALUES("89","1","New Home","Rental","Searsport","Searsport","3","2","First floor living in new,clean,spacious rooms. Lots of light,deck,huge garage w/workshop.","1200.00 Mo.","","4ac","","","Forced Hot Water","","","Yes","Yes","Yes","No","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","2008-07-08 06:37:44","2008-07-08");
INSERT INTO houses VALUES("90","1","Log Home at the Lake","Rental","Swanville","Swanlake","3","2","Huge screened porch,Beach area,privacy...","1000.00 Mo.","","2 Ac","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2008-07-08 06:44:48","2008-07-08");
INSERT INTO houses VALUES("92","1","Furnished Winter rental-  JUST LEASED","Rental","Belfast","Bayview St.","3","2","Wood floors, Deck, Waterviews,Clean..","1200.00. +","",".10ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","No","No","No","No","No","No","2009-08-13 14:38:27","2008-07-22");
INSERT INTO houses VALUES("94","1","In Town Belfast     JUST LEASED","Rental","Belfast","Belfast","3","1","Kitchen with Pantry,Dinning Room,Living Room,Wood Floors,Washer,Dryer. Lots of Light, Big yard,Clean. Walk to everything. Preferd Neighborhood.","850.00 Mo.+","","1/4 ac","","","Forced Hot Water","","","No","Yes","No","No","Yes","No","Yes","Yes","Yes","Yes","No","Yes","2009-03-13 10:53:38","2008-10-29");
INSERT INTO houses VALUES("99","1","BELFAST WATER VIEW  Curently LEASED","Rental","Belfast","Seaside Dr.","3","2","Wood Floors Throughout Sunny Spacious Rooms Fireplace, Deck, Heated Garage Great Views South Over the Bay","1200.00Mo.","","1/8 ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","2009-04-20 09:38:36","2008-12-31");
INSERT INTO houses VALUES("97","1","Log Home","Sale","Belfast","128 Swan Lake Ave.","3-4","1","New Listing, Cute as a button. This log home has had many upgrades. There is a nice yard with storage shed.","129,000.00","","tbd","","","Forced Hot Water","","","No","No","No","No","Yes","No","Yes","No","No","No","No","Yes","2009-04-27 09:23:45","2008-12-31");
INSERT INTO houses VALUES("105","1","Wooded building lot between Camden and Belfast","Sale","Northport","Lot #3 Small Lane","N/A","N/A","Level wooded house lot, convenient to both Camden and Belfast. Private subdivision. Septic design available.","29,900.00","","1.3 ac","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2010-03-24 10:06:39","2009-01-07");
INSERT INTO houses VALUES("106","1","A Home for an Artist  Curently LEASED","Rental","Northport","Northport","3","1","Quiet,Secluded located between Camden and Belfast. Lots of light. The second floor is huge and open for either the 3rd bedroom or that home studio space.Newley painted and clean as it gets.","850.00 Mo +","","2.5 ac","","","Forced Hot Air","","","Yes","No","No","No","Yes","No","Yes","Yes","No","Yes","No","Yes","2009-04-20 09:39:04","2009-01-09");
INSERT INTO houses VALUES("109","1","COMMERCIAL TWO FLOORS","Rental","Belfast","Church St.","N/A","1","Prime Downtown Location accross from the City Building","1500.00 Mo.","","n/a","2000+","","Forced Hot Water","","","No","No","No","No","No","Yes","No","No","No","No","No","No","2009-03-11 11:55:28","2009-03-11");
INSERT INTO houses VALUES("110","1","Classic Village Home with Barn and Gardens","Rental","Stockton Spring","Stockton Springs","3","2","A Most Beautiful Home with Wood Floors, lots of light, all the updates one could want.\nA very clean and comfortable home.\nGardens,Barn and a sunny Deck","1200.00 Mo.","","","","","Forced Hot Air","","","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","2009-05-06 08:56:32","2009-03-13");
INSERT INTO houses VALUES("111","1","Belfast\'s Secret Garden  CURENTLY LEASED","Rental","Belfast","Near Park & Hospital","3","1","In town privacy,long term lease prefered. Comes with a gardener and snow removal. Two bay garage with workshop.","1200.00 Mo.","","1/2 ac","","","Forced Hot Water","","","No","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","2009-05-21 10:30:15","2009-03-16");
INSERT INTO houses VALUES("112","1","Brand new Water View","Rental","Belfast","Down Town","2","1.5","Located Right in Belfast with sweeping Inner Harbor Views. Walk to Everything","1200.00 Mo","","1+","","","Forced Hot Water","","","Yes","No","No","No","Yes","No","Yes","Yes","No","No","No","Yes","2009-05-04 08:18:01","2009-04-24");
INSERT INTO houses VALUES("113","1","Waterview Condo w/ pool","Sale","Stockton Spring","24 Harbor View Drive","3","2","This Premier Community of Townhouses is the Alternative to ordinary Living. The Deck has Sweeping Views over the Harbor and is oriented West for the Sunsets. The Pool is Heated and Fabulous.","325,000.00","929928","28 Ac","2386","","Forced Hot Water","","","No","Yes","No","No","No","Yes","Yes","No","No","No","No","Yes","2010-04-08 14:10:55","2009-04-25");
INSERT INTO houses VALUES("114","1","Historic Belfast Square","Sale","Belfast","121 Main St.","4","3","Currently used as retail store front on first floor. Two large suites on 2nd and 3rd floors with gourmet kitchens. An elevator has been installed. There is sweeping views of the historic district.Building is 3 blocks to the bay.\nCompletely restored.","850,000.00","932852",".06","4665","","Forced Hot Water","","","No","Yes","No","No","No","Yes","Yes","No","Yes","Yes","Yes","Yes","2010-04-10 11:14:58","2009-05-15");
INSERT INTO houses VALUES("115","1","Architecturally Striking Victorian Home","Sale","Belfast","97 Congress St.","4","2","An Architecturally striking victorian home with original detail throughout.\nBeautiful hardwood floors,interior shutters, four bedrooms, two baths, patio,deck, and a two car garage with workshop. Well Landscaped. There is a large third floor for ?","359,000.00","936463",".87ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","2010-04-10 11:13:58","2009-06-08");
INSERT INTO houses VALUES("133","1","Belfast Waterview Home","Rental","Belfast","Bayview St.","3","1.5","Lots of light, clean & open\nFurnished till June 30,2010","1100.00 Mo.","","","","","Forced Hot Water","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-07-28 08:24:09","2009-07-17");
INSERT INTO houses VALUES("135","1","In Town","SeasonalWaterfront","Belfast","Belfast","4","3","","1200.00 Mo.","",".25","","","Forced Hot Water","","","Yes","Yes","Yes","No","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","2009-09-07 20:01:51","2009-07-28");
INSERT INTO houses VALUES("139","1","OCEAN VIEWS FROM EVERY ROOM/          OFF MARKET","Sale","Belfast","30 Hazeltine Rd.","3","2","Charming 3 bedroom 2 bath home with sweeping ocean views from every room.\n2 fireplaces,den lots of light.Located on a dead end road near the waters edge.","339,000.00","945084",".85","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","No","No","No","Yes","Yes","2009-09-23 20:38:27","2009-08-08");
INSERT INTO houses VALUES("144","1","4 bedroom 2 bath cape betreen Camden and Belfast","Sale","Northport","349 Atlantic Hyw","4","2","This home has many amenities such as a seperate 30 x40 insulated building with wood stove. Curently used as an art studio. There is also a large pond with reportably good fishing. The home is spacious and comfortable with lots of light.","189,000.00","945244","3 ac","","","Other","","","No","No","Yes","No","Yes","No","Yes","Yes","No","No","No","Yes","2010-04-10 08:31:26","2009-08-08");
INSERT INTO houses VALUES("145","1","Swanville 10 ac Privacy w/garage- JUST LEASED","Rental","Swanville","Swanville","2","1","Clean, Privacy, Gardens. This is a long term rental. The garage has power and there is a wood shed as well. The home has a propane monitor for heat and or you can use the wood stove. There is also a well maintained horse-shoe pit.","800.00 mo +","","10 ac","","","Wood Heat","","","No","No","Yes","No","No","No","Yes","No","No","No","No","Yes","2009-08-13 14:39:41","2009-08-13");
INSERT INTO houses VALUES("146","1","FURNISHED WINTER RENTAL","Rental","Belfast","Crosby Estates","3","3","Water view, lots of light, spacious rooms, heated garage, well decorated.","1,000.00 Mo","","Shared","","","Forced Hot Water","","","Yes","No","Yes","No","No","Yes","Yes","No","Yes","Yes","Yes","Yes","2009-08-31 10:27:54","2009-08-31");
INSERT INTO houses VALUES("147","1","Furnished winter rental","SeasonalWaterfront","Belfast","Crosby Estates","3","3","","1,000.00 mo","","shared","","","Forced Hot Water","","","Yes","No","No","No","No","Yes","Yes","Yes","Yes","Yes","Yes","Yes","2009-08-31 10:30:42","2009-08-31");
INSERT INTO houses VALUES("149","1","Restored farm House       JUST LEASED","Rental","Belfast","Belfast","2-3","2","Everything is clean and new. There is a lot of light. wood floors through out with tile in baths. A very thought out renovation. Well insulated and economical to heat.Close to town on route 1 with grazing sheep as your neighbors. Cozy/Spacious.","1000.00 Mo.","","2ac","","","Forced Hot Air","","","No","Yes","No","No","Yes","No","Yes","Yes","No","No","No","Yes","2009-11-09 10:53:28","2009-09-18");
INSERT INTO houses VALUES("150","1","Intown Belfast    SOLD   HAPPY NEW YEAR","Sale","Belfast","Belfast","3-4","2","Newer 3-4 bdrm cape with master suite. Attached two car garage, wood floors, fireplace, dead end street.","349,000.00","N/A","1/8 ac","","","Forced Hot Water","","","Yes","Yes","Yes","No","Yes","No","Yes","No","Yes","Yes","Yes","Yes","2010-01-05 07:36:19","2009-11-25");
INSERT INTO houses VALUES("151","1","Meguntcook Riverfront home site","Sale","Camden","Lot#1 Mutton Acres, Washi","N/A","N/A","Fabulous private home site near village. Offers mature tree growth, pristine river frontage, acess to town sewer and water.","229,000.00","TBD","2.25 acres","","","Other","","","No","No","No","No","No","No","No","No","No","No","No","No","2009-12-23 13:21:13","2009-12-22");
INSERT INTO houses VALUES("152","1"," NEW LISTING -Charles Street  SOLD","Sale","Belfast","40 Pine St./ on the corne","2","2","New Listing, cute as a button, wood floors, lots of light, the list goes on.","189,000.00","tbd",".80","","","Forced Hot Air","","","No","Yes","No","Yes","Yes","No","Yes","Yes","No","No","No","Yes","2010-04-10 08:29:47","2009-12-23");
INSERT INTO houses VALUES("153","1","Nice intown Home  CURENTLY LEASED","Rental","Belfast","Belfast","3","1","Clean with new paint & carpets, walk to it all. Large 2-car garage.","900.00 Mo.","N/A",".80","","","Forced Hot Air","","","No","Yes","Yes","No","Yes","No","Yes","Yes","Yes","Yes","No","Yes","2010-05-05 12:52:19","2010-03-07");
INSERT INTO houses VALUES("154","1","Historic Belfast","Sale","Belfast","Church Street","4-5","3","Historic 1800s residence in the heart of Belfast. Eat in Chefs kitchen, formal dinning room with fireplace, Parlor & library with fireplaces. Wood floors with original detail through out. Home is currently being used as a B&B.","434,000.00","TBD",".25 ac","","","Forced Hot Water","","","No","Yes","Yes","No","Yes","No","Yes","No","Yes","Yes","Yes","Yes","2010-04-10 12:37:26","2010-04-10");



DROP TABLE images;

CREATE TABLE `images` (
  `id` int(11) NOT NULL default '0',
  `title` varchar(40) NOT NULL default '',
  `cover` varchar(40) NOT NULL default '',
  `image1` varchar(40) NOT NULL default '',
  `image2` varchar(40) NOT NULL default '',
  `image3` varchar(40) NOT NULL default '',
  `image4` varchar(40) NOT NULL default '',
  `image5` varchar(40) NOT NULL default '',
  `image6` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM PACK_KEYS=0;

INSERT INTO images VALUES("15","Homes & apartments","104 Pearl front 2.JPG","104 Pearl front 2.JPG","","","","","");
INSERT INTO images VALUES("8","Intown Belfast Home/ SOLD","18 Seaview Terrace.jpg","18 Seaview Terrace.jpg","Kelly 005.jpg","Kelly 001.jpg","Kelly 002.jpg","Kelly 003.jpg","Kelly 004.jpg");
INSERT INTO images VALUES("5","Intown Belfast Waterview  CURENTLY LEASE","Sinclair 2.jpg","Sinclair 2.jpg","Sinclair 1.JPG","Sinclair 3.jpg","Sinclair deck.jpg","Sinclair view.jpg","Sinclair view 2.jpg");
INSERT INTO images VALUES("14","South Cape Shores Condo/ CURENTLY LEASED","14_1.jpg","14_1.jpg","","","","","");
INSERT INTO images VALUES("16","Blacks Landing","16_1.jpg","16_1.jpg","P1010605.JPG","P1010606.JPG","P1010607.JPG","P1010608.JPG","P1010609.JPG");
INSERT INTO images VALUES("17","Pitcher Pond Cottage","Gammon Camp.jpg","Gammon Camp.jpg","Gammon Camp 3.jpg","","","","");
INSERT INTO images VALUES("23","Bayside Waterfront CURENTLY LEASED","Baker 007.jpg","Baker 007.jpg","Baker 010.jpg","Baker 004.jpg","Baker 009.jpg","Baker 007.jpg","Baker 006.jpg");
INSERT INTO images VALUES("28"," CURENTLY LEASED","31 Seaview Terrace 001.jpg","31 Seaview Terrace 001.jpg","31 Seaview Terrace 003.jpg","","31 Seaview Terrace 004.jpg","","31 Seaview Terrace 005.jpg");
INSERT INTO images VALUES("29","13 AC Hill Top Ranch / CURENTLY LEASED","Photos 034.jpg","Photos 034.jpg","Photos 016.jpg","","Photos 023.jpg","","Photos 036.jpg");
INSERT INTO images VALUES("30","Cheri Lane/ CURENTLY LEASED","Cheri Lane,Northport 003.jpg","Cheri Lane,Northport 003.jpg","Cheri Lane,Northport 001.jpg","","Cheri Lane,Northport 004.jpg","","Cheri Lane,Northport 005.jpg");
INSERT INTO images VALUES("32","Intown Belfast /  SOLD","Morow 16 School St. Belfast 002.jpg","Morow 16 School St. Belfast 002.jpg","Morow 16 School St. Belfast 001.jpg","","","","");
INSERT INTO images VALUES("33","Intown Belfast / CURENTLY LEASED","Endicott 3.jpg","Endicott 3.jpg","Endicott-16 Cedar St. 001.jpg","","Endicott 2.jpg","","Endicott-16 Cedar St. 002.jpg");
INSERT INTO images VALUES("34","Lake View/ CURANTLY LEASED","34_1.jpg","34_1.jpg","Picture 002.jpg","","","","");
INSERT INTO images VALUES("35","Intown Belfast Waterview/ CURENTLY LEASE","Enochs-68 Union St. 002.jpg","Enochs-68 Union St. 002.jpg","Enochs-68 Union St. 001.jpg","","Enochs-68 Union St. 003.jpg","","");
INSERT INTO images VALUES("36","Swan Lake Waterfront Home","Rimm_FL_5_2.jpg","Rimm_FL_5_2.jpg","Rimm_FL_5.jpg","","","","");
INSERT INTO images VALUES("37","MOUNTAIN VIEWS / CURENTLY LEASED","Bishop house.jpg","Bishop house.jpg","Bishop house2.jpg","","Bishop garage.jpg","","Bishop entry.jpg");
INSERT INTO images VALUES("38","Intown Belfast Duplex/ CURENTLY LEASED","38_1.jpg","38_1.jpg","Enochs-68 Union St. 004 (4).jpg","","","","");
INSERT INTO images VALUES("40","Log Home on 125 Acers/ CURENTLY LEASED","40_1.jpg","40_1.jpg","","","","","");
INSERT INTO images VALUES("41","Intown Belfast Condos/ CURENTLY LEASED","41_1.jpg","41_1.jpg","","","","","");
INSERT INTO images VALUES("42","The Northport House/ CURENTLY LEASED","42_1.jpg","42_1.jpg","","","","","");
INSERT INTO images VALUES("43","UPSCALE WATERFRONT CONDO","43_1.jpg","43_1.jpg","","","","","");
INSERT INTO images VALUES("44","Intown Belfast Home               SOLD","44_1.jpg","44_1.jpg","","","","","");
INSERT INTO images VALUES("45","Intown Belfast /  CURENTLY LEASED","45_1.jpg","45_1.jpg","","","","","");
INSERT INTO images VALUES("46","Bayside Water view/ CURENTLY LEASED","46_1.jpg","46_1.jpg","","","","","");
INSERT INTO images VALUES("47","  UpScale Lakefront Home/ CURENTLY LEASE","47_1.jpg","47_1.jpg","47_2.jpg","47_3.jpg","","","");
INSERT INTO images VALUES("48","Intown Belfast w /Pool! CURENTLY LEASED","48_1.jpg","48_1.jpg","48_2.jpg","","","","");
INSERT INTO images VALUES("49","Private Belfast Home/ CURENTLY LEASED","49_1.jpg","49_1.jpg","","","","","");
INSERT INTO images VALUES("52","Intown Belfast / CURENTLY UNAVAILABLE","53_1.jpg","53_1.jpg","","","","","");
INSERT INTO images VALUES("53","Charm & Character / CURENTLY UNAVAILABLE","54_1.jpg","54_1.jpg","","","","","");
INSERT INTO images VALUES("54","Intown / CURENTLY UNAVAILABLE","55_1.jpg","55_1.jpg","","","","","");
INSERT INTO images VALUES("55","Testing","56_1.jpg","56_1.jpg","","","","","");
INSERT INTO images VALUES("56","Intown Belfast   CURENTLY LEASED","57_1.jpg","57_1.jpg","","","","","");
INSERT INTO images VALUES("57","Intown Belfast","58_1.jpg","58_1.jpg","","","","","");
INSERT INTO images VALUES("60","Land on Beach Hill Rd.","60_1.jpg","60_1.jpg","","","","","");
INSERT INTO images VALUES("61","250 Acre Horse Farm / CURENTLY LEASED","61_1.jpg","61_1.jpg","61_2.jpg","","","","");
INSERT INTO images VALUES("62","Intown Belfast Home / SOLD","62_1.jpg","62_1.jpg","","","","","");
INSERT INTO images VALUES("64","13 Ac. Hill Top / CURENTLY OFF THE MARKE","64_1.jpg","64_1.jpg","64_2.jpg","64_3.jpg","64_4.jpg","","");
INSERT INTO images VALUES("65","LAKE FRONT COTTAGE","65_1.jpg","65_1.jpg","65_2.jpg","65_3.jpg","65_4.jpg","65_5.jpg","");
INSERT INTO images VALUES("70","CURRENTLY OFF MARKET","70_1.jpg","70_1.jpg","70_2.jpg","70_3.jpg","70_4.jpg","","");
INSERT INTO images VALUES("71","OCEANFRONT  COTTAGE","71_1.jpg","71_1.jpg","71_2.jpg","71_3.jpg","","","");
INSERT INTO images VALUES("72","Waterfront-Marshal Wharf / SOLD","72_1.jpg","72_1.jpg","","","","","");
INSERT INTO images VALUES("73","DOWNTOWN COMERCIAL BUILDING FOR LEASE","73_1.jpg","73_1.jpg","73_2.jpg","","","","");
INSERT INTO images VALUES("74","IN TOWN BELFAST / CURENTLY LEASED","74_1.jpg","74_1.jpg","74_2.jpg","","","","");
INSERT INTO images VALUES("76"," LOG HOME on 128 ac +/- CURRENTLY OFF TH","76_1.jpg","76_1.jpg","76_2.jpg","76_3.jpg","76_4.jpg","76_5.jpg","76_6.jpg");
INSERT INTO images VALUES("77","NEW LISTING /  LAND","77_1.jpg","77_1.jpg","","","","","");
INSERT INTO images VALUES("81","Belfast Harbor","81_1.jpg","81_1.jpg","81_2.jpg","81_3.jpg","","","");
INSERT INTO images VALUES("82","SWAN LAKE COTTAGE","82_1.jpg","82_1.jpg","","","","","");
INSERT INTO images VALUES("84","4 UNIT APARTMENT BUILDING","84_1.jpg","84_1.jpg","","","","","");
INSERT INTO images VALUES("85","WATERFRONT w/ VIEWs WEST & SOUTH","85_1.jpg","85_1.jpg","85_2.jpg","85_3.jpg","85_4.jpg","85_5.jpg","85_6.jpg");
INSERT INTO images VALUES("86","The Northport House","86_1.jpg","86_1.jpg","86_2.jpg","","","","");
INSERT INTO images VALUES("87","Private Contemporary","87_1.jpg","87_1.jpg","87_2.jpg","87_3.jpg","87_4.jpg","","");
INSERT INTO images VALUES("88","On The Side of a Mountain / CURENTLY LEA","88_1.jpg","88_1.jpg","88_2.jpg","88_3.jpg","","","");
INSERT INTO images VALUES("89","New Home","89_1.jpg","89_1.jpg","89_2.jpg","","","","");
INSERT INTO images VALUES("90","Log Home at the Lake","90_1.jpg","90_1.jpg","90_2.jpg","","","","");
INSERT INTO images VALUES("92","CURENTLY LEASED","92_1.jpg","92_1.jpg","92_2.jpg","92_3.jpg","","","");
INSERT INTO images VALUES("94","In Town Belfast","94_1.jpg","94_1.jpg","","","","","");
INSERT INTO images VALUES("99","BELFAST WATER VIEW JUST LEASED","99_2.jpg","99_2.jpg","","","","","");
INSERT INTO images VALUES("97","Log Home","97_1.jpg","97_1.jpg","97_2.jpg","97_3.jpg","","","");
INSERT INTO images VALUES("105","Wooded Building Lot","105_1.jpg","105_1.jpg","","","","","");
INSERT INTO images VALUES("106","A Home for an Artist","106_1.jpg","106_1.jpg","106_2.jpg","106_3.jpg","","","");
INSERT INTO images VALUES("109","COMMERCIAL TWO FLOORS","109_1.jpg","109_1.jpg","","","","","");
INSERT INTO images VALUES("110","The Garden Home","110_1.jpg","110_1.jpg","110_2.jpg","110_3.jpg","110_4.jpg","110_5.jpg","110_6.jpg");
INSERT INTO images VALUES("111","Belfast\'s Secret Garden","111_1.jpg","111_1.jpg","","","","","");
INSERT INTO images VALUES("112","Brand new Water View","112_1.jpg","112_1.jpg","","","","","");
INSERT INTO images VALUES("113","Waterview Condo w/ Pool","113_1.jpg","113_1.jpg","","","","","");
INSERT INTO images VALUES("114","Historic Belfast Square","114_1.jpg","114_1.jpg","114_2.jpg","114_3.jpg","","","");
INSERT INTO images VALUES("115","Belfast Victorian","115_1.jpg","115_1.jpg","","","","","");
INSERT INTO images VALUES("133","Intown Furnished","133_1.jpg","133_1.jpg","","","","","");
INSERT INTO images VALUES("135","In Town","135_1.jpg","135_1.jpg","","","","","");
INSERT INTO images VALUES("0","4 bedroom 2 bath cape betreen Camden and","","","","","","","");
INSERT INTO images VALUES("139","OCEAN VIEWS FROM EVERY ROOM","139_1.jpg","139_1.jpg","139_2.jpg","139_3.jpg","139_4.jpg","139_5.jpg","");
INSERT INTO images VALUES("144","4 bedroom 2 bath cape betreen Camden and","144_1.jpg","144_1.jpg","","","","","");
INSERT INTO images VALUES("145","Swanville 10 ac Privacy w/garage- Long T","145_1.jpg","145_1.jpg","","","","","");
INSERT INTO images VALUES("146","FURNISHED WINTER RENTAL","146_1.jpg","146_1.jpg","146_2.jpg","","","","");
INSERT INTO images VALUES("147","Furnished winter rental","147_1.jpg","147_1.jpg","","","","","");
INSERT INTO images VALUES("149","Restored farm House","149_1.jpg","149_1.jpg","149_2.jpg","149_3.jpg","149_4.jpg","149_5.jpg","149_6.jpg");
INSERT INTO images VALUES("150","Intown Belfast  UNDER CONTRACT","150_1.jpg","150_1.jpg","","","","","");
INSERT INTO images VALUES("151","Meguntcook Riverfront homesite","151_1.jpg","151_1.jpg","","","","","");
INSERT INTO images VALUES("152","Charles Street!","152_1.jpg","152_1.jpg","152_2.jpg","","","","");
INSERT INTO images VALUES("153","Nice intown Home for lease","153_1.jpg","153_1.jpg","153_2.jpg","","","","");
INSERT INTO images VALUES("154","Historic Belfast","154_1.jpg","154_1.jpg","","","","","");



DROP TABLE listing_image_order;

CREATE TABLE `listing_image_order` (
  `listing_id` int(11) NOT NULL default '0',
  `image_1_id` int(11) NOT NULL default '0',
  `image_2_id` int(11) NOT NULL default '0',
  `image_3_id` int(11) NOT NULL default '0',
  `image_4_id` int(11) NOT NULL default '0',
  `image_5_id` int(11) NOT NULL default '0',
  `image_6_id` int(11) NOT NULL default '0'
) TYPE=MyISAM COMMENT='Listing Image Order (Cover-1-6)';

INSERT INTO listing_image_order VALUES("5","1","2","3","4","5","6");
INSERT INTO listing_image_order VALUES("8","7","8","9","10","11","12");
INSERT INTO listing_image_order VALUES("9","13","14","15","16","17","18");
INSERT INTO listing_image_order VALUES("14","19","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("16","20","21","22","23","24","25");
INSERT INTO listing_image_order VALUES("21","26","27","28","29","30","31");
INSERT INTO listing_image_order VALUES("23","32","33","34","35","36","37");
INSERT INTO listing_image_order VALUES("26","38","39","40","41","42","43");
INSERT INTO listing_image_order VALUES("28","44","45","46","47","0","0");
INSERT INTO listing_image_order VALUES("29","48","49","50","51","0","0");
INSERT INTO listing_image_order VALUES("30","52","53","54","55","0","0");
INSERT INTO listing_image_order VALUES("31","56","57","58","0","0","0");
INSERT INTO listing_image_order VALUES("32","59","60","0","0","0","0");
INSERT INTO listing_image_order VALUES("33","61","62","63","64","0","0");
INSERT INTO listing_image_order VALUES("34","65","66","0","0","0","0");
INSERT INTO listing_image_order VALUES("35","67","68","69","0","0","0");
INSERT INTO listing_image_order VALUES("36","70","71","0","0","0","0");
INSERT INTO listing_image_order VALUES("37","72","73","74","75","0","0");
INSERT INTO listing_image_order VALUES("38","76","77","0","0","0","0");
INSERT INTO listing_image_order VALUES("40","78","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("41","79","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("42","80","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("43","81","82","0","0","0","0");
INSERT INTO listing_image_order VALUES("44","83","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("45","84","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("46","85","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("47","86","87","88","0","0","0");
INSERT INTO listing_image_order VALUES("48","89","90","0","0","0","0");
INSERT INTO listing_image_order VALUES("49","91","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("50","92","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("56","93","94","0","0","0","0");
INSERT INTO listing_image_order VALUES("60","95","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("61","96","97","0","0","0","0");
INSERT INTO listing_image_order VALUES("62","98","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("64","99","100","101","102","0","0");
INSERT INTO listing_image_order VALUES("65","103","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("70","104","105","106","107","0","0");
INSERT INTO listing_image_order VALUES("71","108","109","110","0","0","0");
INSERT INTO listing_image_order VALUES("72","111","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("73","112","113","0","0","0","0");
INSERT INTO listing_image_order VALUES("74","114","115","0","0","0","0");
INSERT INTO listing_image_order VALUES("76","116","117","118","119","120","121");
INSERT INTO listing_image_order VALUES("77","122","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("81","123","124","125","0","0","0");
INSERT INTO listing_image_order VALUES("82","126","127","0","0","0","0");
INSERT INTO listing_image_order VALUES("84","128","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("85","129","130","131","132","133","0");
INSERT INTO listing_image_order VALUES("86","134","135","0","0","0","0");
INSERT INTO listing_image_order VALUES("87","136","137","138","139","0","0");
INSERT INTO listing_image_order VALUES("88","140","141","142","0","0","0");
INSERT INTO listing_image_order VALUES("89","143","144","0","0","0","0");
INSERT INTO listing_image_order VALUES("90","145","146","0","0","0","0");
INSERT INTO listing_image_order VALUES("92","147","148","149","0","0","0");
INSERT INTO listing_image_order VALUES("93","150","151","152","0","0","0");
INSERT INTO listing_image_order VALUES("94","153","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("95","154","155","0","0","0","0");
INSERT INTO listing_image_order VALUES("97","156","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("99","157","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("134","159","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("135","160","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("138","161","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("139","162","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("108","163","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("109","164","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("110","165","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("111","166","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("112","167","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("113","168","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("114","169","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("115","170","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("116","171","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("117","172","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("118","173","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("119","174","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("120","175","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("121","176","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("122","177","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("123","178","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("124","179","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("125","180","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("126","181","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("127","182","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("128","183","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("129","184","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("130","185","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("131","186","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("132","187","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("134","188","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("135","189","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("137","190","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("138","191","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("139","192","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("145","193","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("148","194","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("149","195","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("150","196","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("151","197","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("152","198","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("153","199","0","0","0","0","0");
INSERT INTO listing_image_order VALUES("154","200","0","0","0","0","0");



DROP TABLE listing_images;

CREATE TABLE `listing_images` (
  `image_id` int(11) NOT NULL auto_increment,
  `listing_id` int(11) NOT NULL default '0',
  `image_title` varchar(32) NOT NULL default '',
  `image_filename` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`image_id`)
) TYPE=MyISAM COMMENT='Listing Images';

INSERT INTO listing_images VALUES("1","5","Sinclair 2.jpg","Sinclair 2.jpg");
INSERT INTO listing_images VALUES("2","5","Sinclair 1.JPG","Sinclair 1.JPG");
INSERT INTO listing_images VALUES("3","5","Sinclair 3.jpg","Sinclair 3.jpg");
INSERT INTO listing_images VALUES("4","5","Sinclair deck.jpg","Sinclair deck.jpg");
INSERT INTO listing_images VALUES("5","5","Sinclair view.jpg","Sinclair view.jpg");
INSERT INTO listing_images VALUES("6","5","Sinclair view 2.jpg","Sinclair view 2.jpg");
INSERT INTO listing_images VALUES("7","8","18 Seaview Terrace.jpg","18 Seaview Terrace.jpg");
INSERT INTO listing_images VALUES("8","8","Kelly 005.jpg","Kelly 005.jpg");
INSERT INTO listing_images VALUES("9","8","Kelly 001.jpg","Kelly 001.jpg");
INSERT INTO listing_images VALUES("10","8","Kelly 002.jpg","Kelly 002.jpg");
INSERT INTO listing_images VALUES("11","8","Kelly 003.jpg","Kelly 003.jpg");
INSERT INTO listing_images VALUES("12","8","Kelly 004.jpg","Kelly 004.jpg");
INSERT INTO listing_images VALUES("13","9","33 main st..JPG","33 main st..JPG");
INSERT INTO listing_images VALUES("14","9","33 Main St. 002.jpg","33 Main St. 002.jpg");
INSERT INTO listing_images VALUES("15","9","33 Main St. 003.jpg","33 Main St. 003.jpg");
INSERT INTO listing_images VALUES("16","9","33 Main View down street.JPG","33 Main View down street.JPG");
INSERT INTO listing_images VALUES("17","9","33 Main St. 005.jpg","33 Main St. 005.jpg");
INSERT INTO listing_images VALUES("18","9","33 Main St. 001.jpg","33 Main St. 001.jpg");
INSERT INTO listing_images VALUES("19","14","Stewart 002.jpg","14_1.jpg");
INSERT INTO listing_images VALUES("20","16","Black 001.jpg","16_1.jpg");
INSERT INTO listing_images VALUES("21","16","P1010605.JPG","P1010605.JPG");
INSERT INTO listing_images VALUES("22","16","P1010606.JPG","P1010606.JPG");
INSERT INTO listing_images VALUES("23","16","P1010607.JPG","P1010607.JPG");
INSERT INTO listing_images VALUES("24","16","P1010608.JPG","P1010608.JPG");
INSERT INTO listing_images VALUES("25","16","P1010609.JPG","P1010609.JPG");
INSERT INTO listing_images VALUES("26","21","window 001.jpg","window 001.jpg");
INSERT INTO listing_images VALUES("27","21","window 003.jpg","window 003.jpg");
INSERT INTO listing_images VALUES("28","21","window 004.jpg","window 004.jpg");
INSERT INTO listing_images VALUES("29","21","window 005.jpg","window 005.jpg");
INSERT INTO listing_images VALUES("30","21","window 006.jpg","window 006.jpg");
INSERT INTO listing_images VALUES("31","21","window 009.jpg","window 009.jpg");
INSERT INTO listing_images VALUES("32","23","Baker 007.jpg","Baker 007.jpg");
INSERT INTO listing_images VALUES("33","23","Baker 010.jpg","Baker 010.jpg");
INSERT INTO listing_images VALUES("34","23","Baker 004.jpg","Baker 004.jpg");
INSERT INTO listing_images VALUES("35","23","Baker 009.jpg","Baker 009.jpg");
INSERT INTO listing_images VALUES("36","23","Baker 007.jpg","Baker 007.jpg");
INSERT INTO listing_images VALUES("37","23","Baker 006.jpg","Baker 006.jpg");
INSERT INTO listing_images VALUES("38","26","Gamon camp 001.jpg","Gamon camp 001.jpg");
INSERT INTO listing_images VALUES("39","26","Gamon camp 003.jpg","Gamon camp 003.jpg");
INSERT INTO listing_images VALUES("40","26","Gamon camp 012.jpg","Gamon camp 012.jpg");
INSERT INTO listing_images VALUES("41","26","Gamon camp 013.jpg","Gamon camp 013.jpg");
INSERT INTO listing_images VALUES("42","26","Gamon camp 016.jpg","Gamon camp 016.jpg");
INSERT INTO listing_images VALUES("43","26","Gamon camp 017.jpg","Gamon camp 017.jpg");
INSERT INTO listing_images VALUES("44","28","31 Seaview Terrace 001.jpg","31 Seaview Terrace 001.jpg");
INSERT INTO listing_images VALUES("45","28","31 Seaview Terrace 003.jpg","31 Seaview Terrace 003.jpg");
INSERT INTO listing_images VALUES("46","28","31 Seaview Terrace 004.jpg","31 Seaview Terrace 004.jpg");
INSERT INTO listing_images VALUES("47","28","31 Seaview Terrace 005.jpg","31 Seaview Terrace 005.jpg");
INSERT INTO listing_images VALUES("48","29","Photos 034.jpg","Photos 034.jpg");
INSERT INTO listing_images VALUES("49","29","Photos 016.jpg","Photos 016.jpg");
INSERT INTO listing_images VALUES("50","29","Photos 023.jpg","Photos 023.jpg");
INSERT INTO listing_images VALUES("51","29","Photos 036.jpg","Photos 036.jpg");
INSERT INTO listing_images VALUES("52","30","Cheri Lane,Northport 003.jpg","Cheri Lane,Northport 003.jpg");
INSERT INTO listing_images VALUES("53","30","Cheri Lane,Northport 001.jpg","Cheri Lane,Northport 001.jpg");
INSERT INTO listing_images VALUES("54","30","Cheri Lane,Northport 004.jpg","Cheri Lane,Northport 004.jpg");
INSERT INTO listing_images VALUES("55","30","Cheri Lane,Northport 005.jpg","Cheri Lane,Northport 005.jpg");
INSERT INTO listing_images VALUES("56","31","Cheri Lane,Northport 002.jpg","Cheri Lane,Northport 002.jpg");
INSERT INTO listing_images VALUES("57","31","Cheri Lane,Northport 004.jpg","Cheri Lane,Northport 004.jpg");
INSERT INTO listing_images VALUES("58","31","Cheri Lane,Northport 001.jpg","Cheri Lane,Northport 001.jpg");
INSERT INTO listing_images VALUES("59","32","Morow 16 School St. Belfast 002.","Morow 16 School St. Belfast 002.");
INSERT INTO listing_images VALUES("60","32","Morow 16 School St. Belfast 001.","Morow 16 School St. Belfast 001.");
INSERT INTO listing_images VALUES("61","33","Endicott 3.jpg","Endicott 3.jpg");
INSERT INTO listing_images VALUES("62","33","Endicott-16 Cedar St. 001.jpg","Endicott-16 Cedar St. 001.jpg");
INSERT INTO listing_images VALUES("63","33","Endicott 2.jpg","Endicott 2.jpg");
INSERT INTO listing_images VALUES("64","33","Endicott-16 Cedar St. 002.jpg","Endicott-16 Cedar St. 002.jpg");
INSERT INTO listing_images VALUES("65","34","PIC_0132.JPG","34_1.jpg");
INSERT INTO listing_images VALUES("66","34","Picture 002.jpg","Picture 002.jpg");
INSERT INTO listing_images VALUES("67","35","Enochs-68 Union St. 002.jpg","Enochs-68 Union St. 002.jpg");
INSERT INTO listing_images VALUES("68","35","Enochs-68 Union St. 001.jpg","Enochs-68 Union St. 001.jpg");
INSERT INTO listing_images VALUES("69","35","Enochs-68 Union St. 003.jpg","Enochs-68 Union St. 003.jpg");
INSERT INTO listing_images VALUES("70","36","Rimm_FL_5_2.jpg","Rimm_FL_5_2.jpg");
INSERT INTO listing_images VALUES("71","36","Rimm_FL_5.jpg","Rimm_FL_5.jpg");
INSERT INTO listing_images VALUES("72","37","Bishop house.jpg","Bishop house.jpg");
INSERT INTO listing_images VALUES("73","37","Bishop house2.jpg","Bishop house2.jpg");
INSERT INTO listing_images VALUES("74","37","Bishop garage.jpg","Bishop garage.jpg");
INSERT INTO listing_images VALUES("75","37","Bishop entry.jpg","Bishop entry.jpg");
INSERT INTO listing_images VALUES("76","38","Gammon 120 Union 005.jpg","38_1.jpg");
INSERT INTO listing_images VALUES("77","38","Enochs-68 Union St. 004 (4).jpg","Enochs-68 Union St. 004 (4).jpg");
INSERT INTO listing_images VALUES("78","40","house.jpg","40_1.jpg");
INSERT INTO listing_images VALUES("79","41","Ashe 003.jpg","41_1.jpg");
INSERT INTO listing_images VALUES("80","42","Baker 002.jpg","42_1.jpg");
INSERT INTO listing_images VALUES("81","43","Walter 001.jpg","43_1.jpg");
INSERT INTO listing_images VALUES("82","43","Walter 002.jpg","43_2.jpg");
INSERT INTO listing_images VALUES("83","44","window 002.jpg","44_1.jpg");
INSERT INTO listing_images VALUES("84","45","Gallo 002.jpg","45_1.jpg");
INSERT INTO listing_images VALUES("85","46","Baker 001.jpg","46_1.jpg");
INSERT INTO listing_images VALUES("86","47","Front of House_edited.jpg","47_1.jpg");
INSERT INTO listing_images VALUES("87","47","Hope Dinning area_edited.jpg","47_2.jpg");
INSERT INTO listing_images VALUES("88","47","Hope waterfront_edited.jpg","47_3.jpg");
INSERT INTO listing_images VALUES("89","48","88s back yard 003.jpg","48_1.jpg");
INSERT INTO listing_images VALUES("90","48","88 Congress.JPG","48_2.jpg");
INSERT INTO listing_images VALUES("91","49","Brower.jpg","49_1.jpg");
INSERT INTO listing_images VALUES("92","50","Mclean front of house.JPG","50_1.jpg");
INSERT INTO listing_images VALUES("93","56","Murphy 23 Franklin St. 001.jpg","57_1.jpg");
INSERT INTO listing_images VALUES("94","56","Label-Design_H_01.jpg","");
INSERT INTO listing_images VALUES("95","60","Petit.jpg","60_1.jpg");
INSERT INTO listing_images VALUES("96","61","Monroe 010.jpg","61_1.jpg");
INSERT INTO listing_images VALUES("97","61","Monroe 004.jpg","61_2.jpg");
INSERT INTO listing_images VALUES("98","62","Morow 16 School St. Belfast 002.","62_1.jpg");
INSERT INTO listing_images VALUES("99","64","Cook 318 Mt. Ephraim 003.jpg","64_1.jpg");
INSERT INTO listing_images VALUES("100","64","Cook 318 Mt. Ephraim 002.jpg","64_2.jpg");
INSERT INTO listing_images VALUES("101","64","Photos 020.jpg","64_3.jpg");
INSERT INTO listing_images VALUES("102","64","Photos 036.jpg","64_4.jpg");
INSERT INTO listing_images VALUES("103","65","PIC_0127.JPG","65_1.jpg");
INSERT INTO listing_images VALUES("104","70","HPIM0341.jpg","70_1.jpg");
INSERT INTO listing_images VALUES("105","70","HPIM0335.JPG","70_2.jpg");
INSERT INTO listing_images VALUES("106","70","HPIM0340.JPG","70_3.jpg");
INSERT INTO listing_images VALUES("107","70","HPIM0344.JPG","70_4.jpg");
INSERT INTO listing_images VALUES("108","71","Marland 002.jpg","71_1.jpg");
INSERT INTO listing_images VALUES("109","71","Marland 004.jpg","71_2.jpg");
INSERT INTO listing_images VALUES("110","71","Marland 001.jpg","71_3.jpg");
INSERT INTO listing_images VALUES("111","72","51_1.jpg","72_1.jpg");
INSERT INTO listing_images VALUES("112","73","Daniels 003.jpg","73_1.jpg");
INSERT INTO listing_images VALUES("113","73","Daniels 002.jpg","73_2.jpg");
INSERT INTO listing_images VALUES("114","74","stephenson 010.jpg","74_1.jpg");
INSERT INTO listing_images VALUES("115","74","Stephenson 005.jpg","74_2.jpg");
INSERT INTO listing_images VALUES("116","76","house.jpg","76_1.jpg");
INSERT INTO listing_images VALUES("117","76","twombley 20001.jpg","76_2.jpg");
INSERT INTO listing_images VALUES("118","76","Joy 003.jpg","76_3.jpg");
INSERT INTO listing_images VALUES("119","76","Joy 001.jpg","76_4.jpg");
INSERT INTO listing_images VALUES("120","76","Joy 002.jpg","76_5.jpg");
INSERT INTO listing_images VALUES("121","76","Joy 005.jpg","76_6.jpg");
INSERT INTO listing_images VALUES("122","77","Munkelt.jpg","77_1.jpg");
INSERT INTO listing_images VALUES("123","81","875626_101_72.jpg","81_1.jpg");
INSERT INTO listing_images VALUES("124","81","875626_101_72.jpg","81_2.jpg");
INSERT INTO listing_images VALUES("125","81","13 BL WATER PIC.jpg","81_3.jpg");
INSERT INTO listing_images VALUES("126","82","Camp w new Chimney cap.jpg","82_1.jpg");
INSERT INTO listing_images VALUES("127","82","Camp w new Chimney cap.jpg","82_2.jpg");
INSERT INTO listing_images VALUES("128","84","Ashe 001.jpg","84_1.jpg");
INSERT INTO listing_images VALUES("129","85","winter view.JPG","85_1.jpg");
INSERT INTO listing_images VALUES("130","85","P4080216.JPG","85_2.jpg");
INSERT INTO listing_images VALUES("131","85","ariel photo two.JPG","85_3.jpg");
INSERT INTO listing_images VALUES("132","85","ariel photo.JPG","85_4.jpg");
INSERT INTO listing_images VALUES("133","85","Black 002.jpg","85_5.jpg");
INSERT INTO listing_images VALUES("134","86","Baker 002.jpg","86_1.jpg");
INSERT INTO listing_images VALUES("135","86","DCP00499.JPG","86_2.jpg");
INSERT INTO listing_images VALUES("136","87","Fox Side.JPG","87_1.jpg");
INSERT INTO listing_images VALUES("137","87","Fox.JPG","87_2.jpg");
INSERT INTO listing_images VALUES("138","87","Fox 2.JPG","87_3.jpg");
INSERT INTO listing_images VALUES("139","87","Fox front yard.JPG","87_4.jpg");
INSERT INTO listing_images VALUES("140","88","Curwitz 005.jpg","88_1.jpg");
INSERT INTO listing_images VALUES("141","88","Curwitz 006.jpg","88_2.jpg");
INSERT INTO listing_images VALUES("142","88","Curwitz 001.jpg","88_3.jpg");
INSERT INTO listing_images VALUES("143","89","Dakin.JPG","89_1.jpg");
INSERT INTO listing_images VALUES("144","89","Dakin 2.JPG","89_2.jpg");
INSERT INTO listing_images VALUES("145","90","Fletcher 002.jpg","90_1.jpg");
INSERT INTO listing_images VALUES("146","90","jvm1003.jpg","90_2.jpg");
INSERT INTO listing_images VALUES("147","92","DCP00522.JPG","92_1.jpg");
INSERT INTO listing_images VALUES("148","92","DCP00521.JPG","92_2.jpg");
INSERT INTO listing_images VALUES("149","92","DCP00520.JPG","92_3.jpg");
INSERT INTO listing_images VALUES("150","93","DCP00531.JPG","93_1.jpg");
INSERT INTO listing_images VALUES("151","93","DCP00532.JPG","93_2.jpg");
INSERT INTO listing_images VALUES("152","93","DCP00529.JPG","93_3.jpg");
INSERT INTO listing_images VALUES("153","94","Gallo.JPG","94_1.jpg");
INSERT INTO listing_images VALUES("154","95","PIC_0134.JPG","95_1.jpg");
INSERT INTO listing_images VALUES("155","95","PIC_0135.JPG","95_2.jpg");
INSERT INTO listing_images VALUES("156","97","jvm1001_sm.jpg","97_2.jpg");
INSERT INTO listing_images VALUES("157","99","IMAGE001_sm.jpg","99_2.jpg");
INSERT INTO listing_images VALUES("159","134","","134_1.jpg");
INSERT INTO listing_images VALUES("160","135","camp.jpg","135_1.jpg");
INSERT INTO listing_images VALUES("161","138","Turtle.jpg","138_1.jpg");
INSERT INTO listing_images VALUES("162","139","buttercup.jpg","139_1.jpg");
INSERT INTO listing_images VALUES("163","108","IMAGE001.JPG","108_1.jpg");
INSERT INTO listing_images VALUES("164","109","IMAGE002.JPG","109_1.jpg");
INSERT INTO listing_images VALUES("165","110","transparent-v123627241800043.gif","110_1.jpg");
INSERT INTO listing_images VALUES("166","111","DCP00530.JPG","111_1.jpg");
INSERT INTO listing_images VALUES("167","112","IMAGE002.JPG","112_1.jpg");
INSERT INTO listing_images VALUES("168","113","919421_101_12.jpg","113_1.jpg");
INSERT INTO listing_images VALUES("169","114","Daniels 003.jpg","114_1.jpg");
INSERT INTO listing_images VALUES("170","115","IMAGE005.JPG","115_1.jpg");
INSERT INTO listing_images VALUES("171","116","919421_101_12.jpg","116_1.jpg");
INSERT INTO listing_images VALUES("172","117","919421_101_12.jpg","117_1.jpg");
INSERT INTO listing_images VALUES("173","118","919421_101_12.jpg","118_1.jpg");
INSERT INTO listing_images VALUES("174","119","919421_101_12.jpg","119_1.jpg");
INSERT INTO listing_images VALUES("175","120","5a225d0c8a07.jpg","120_1.jpg");
INSERT INTO listing_images VALUES("176","121","919421_101_12.jpg","121_1.jpg");
INSERT INTO listing_images VALUES("177","122","919421_101_12.jpg","122_1.jpg");
INSERT INTO listing_images VALUES("178","123","919421_101_12.jpg","123_1.jpg");
INSERT INTO listing_images VALUES("179","124","919421_101_12.jpg","124_1.jpg");
INSERT INTO listing_images VALUES("180","125","919421_101_12.jpg","125_1.jpg");
INSERT INTO listing_images VALUES("181","126","919421_101_12.jpg","126_1.jpg");
INSERT INTO listing_images VALUES("182","127","919421_101_12.jpg","127_1.jpg");
INSERT INTO listing_images VALUES("183","128","919421_101_12.jpg","128_1.jpg");
INSERT INTO listing_images VALUES("184","129","919421_101_12.jpg","129_1.jpg");
INSERT INTO listing_images VALUES("185","130","919421_101_12.jpg","130_1.jpg");
INSERT INTO listing_images VALUES("186","131","919421_101_12.jpg","131_1.jpg");
INSERT INTO listing_images VALUES("187","132","919421_101_12.jpg","132_1.jpg");
INSERT INTO listing_images VALUES("188","134","IMAGE006.JPG","134_1.jpg");
INSERT INTO listing_images VALUES("189","135","IMAGE006.JPG","135_1.jpg");
INSERT INTO listing_images VALUES("190","137","IMAGE003.JPG","137_1.jpg");
INSERT INTO listing_images VALUES("191","138","IMAGE020.JPG","138_1.jpg");
INSERT INTO listing_images VALUES("192","139","IMAGE003.JPG","139_1.jpg");
INSERT INTO listing_images VALUES("193","145","IMAGE014.JPG","145_1.jpg");
INSERT INTO listing_images VALUES("194","148","IMAGE008.JPG","148_1.jpg");
INSERT INTO listing_images VALUES("195","149","IMAGE009.JPG","149_1.jpg");
INSERT INTO listing_images VALUES("196","150","IMAGE007.JPG","150_1.jpg");
INSERT INTO listing_images VALUES("197","151","IMG.pdf","151_1.jpg");
INSERT INTO listing_images VALUES("198","152","IMAGE008.JPG","152_1.jpg");
INSERT INTO listing_images VALUES("199","153","Alto st. front.jpg","153_1.jpg");
INSERT INTO listing_images VALUES("200","154","belfast_wealthy_poor_house.jpg","154_1.jpg");



DROP TABLE orig_images;

CREATE TABLE `orig_images` (
  `id` int(11) NOT NULL default '0',
  `title` varchar(40) NOT NULL default '',
  `cover` varchar(40) NOT NULL default '',
  `image1` varchar(40) NOT NULL default '',
  `image2` varchar(40) NOT NULL default '',
  `image3` varchar(40) NOT NULL default '',
  `image4` varchar(40) NOT NULL default '',
  `image5` varchar(40) NOT NULL default '',
  `image6` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM PACK_KEYS=0;

INSERT INTO orig_images VALUES("15","Homes & apartments","104 Pearl front 2.JPG","104 Pearl front 2.JPG","","","","","");
INSERT INTO orig_images VALUES("8","Intown Belfast Home/ SOLD","18 Seaview Terrace.jpg","18 Seaview Terrace.jpg","Kelly 005.jpg","Kelly 001.jpg","Kelly 002.jpg","Kelly 003.jpg","Kelly 004.jpg");
INSERT INTO orig_images VALUES("5","Intown Belfast Waterview  CURENTLY LEASE","Sinclair 2.jpg","Sinclair 2.jpg","Sinclair 1.JPG","Sinclair 3.jpg","Sinclair deck.jpg","Sinclair view.jpg","Sinclair view 2.jpg");
INSERT INTO orig_images VALUES("14","South Cape Shores Condo/ CURENTLY LEASED","Stewart 002.jpg","Stewart 002.jpg","","","","","");
INSERT INTO orig_images VALUES("16","Blacks Landing","Black 001.jpg","Black 001.jpg","P1010605.JPG","P1010606.JPG","P1010607.JPG","P1010608.JPG","P1010609.JPG");
INSERT INTO orig_images VALUES("17","Pitcher Pond Cottage","Gammon Camp.jpg","Gammon Camp.jpg","Gammon Camp 3.jpg","","","","");
INSERT INTO orig_images VALUES("23","Bayside Waterfront CURENTLY LEASED","Baker 007.jpg","Baker 007.jpg","Baker 010.jpg","Baker 004.jpg","Baker 009.jpg","Baker 007.jpg","Baker 006.jpg");
INSERT INTO orig_images VALUES("28"," CURENTLY LEASED","31 Seaview Terrace 001.jpg","31 Seaview Terrace 001.jpg","31 Seaview Terrace 003.jpg","","31 Seaview Terrace 004.jpg","","31 Seaview Terrace 005.jpg");
INSERT INTO orig_images VALUES("29","13 AC Hill Top Ranch / CURENTLY LEASED","Photos 034.jpg","Photos 034.jpg","Photos 016.jpg","","Photos 023.jpg","","Photos 036.jpg");
INSERT INTO orig_images VALUES("30","Cheri Lane/ CURENTLY LEASED","Cheri Lane,Northport 003.jpg","Cheri Lane,Northport 003.jpg","Cheri Lane,Northport 001.jpg","","Cheri Lane,Northport 004.jpg","","Cheri Lane,Northport 005.jpg");
INSERT INTO orig_images VALUES("32","Intown Belfast /  SOLD","Morow 16 School St. Belfast 002.jpg","Morow 16 School St. Belfast 002.jpg","Morow 16 School St. Belfast 001.jpg","","","","");
INSERT INTO orig_images VALUES("33","Intown Belfast / CURENTLY LEASED","Endicott 3.jpg","Endicott 3.jpg","Endicott-16 Cedar St. 001.jpg","","Endicott 2.jpg","","Endicott-16 Cedar St. 002.jpg");
INSERT INTO orig_images VALUES("34","Lake View/ CURANTLY LEASED","PIC_0132.JPG","PIC_0132.JPG","Picture 002.jpg","","","","");
INSERT INTO orig_images VALUES("35","Intown Belfast Waterview/ CURENTLY LEASE","Enochs-68 Union St. 002.jpg","Enochs-68 Union St. 002.jpg","Enochs-68 Union St. 001.jpg","","Enochs-68 Union St. 003.jpg","","");
INSERT INTO orig_images VALUES("36","Swan Lake Waterfront Home","Rimm_FL_5_2.jpg","Rimm_FL_5_2.jpg","Rimm_FL_5.jpg","","","","");
INSERT INTO orig_images VALUES("37","MOUNTAIN VIEWS / CURENTLY LEASED","Bishop house.jpg","Bishop house.jpg","Bishop house2.jpg","","Bishop garage.jpg","","Bishop entry.jpg");
INSERT INTO orig_images VALUES("38","Intown Belfast Duplex/ CURENTLY LEASED","Gammon 120 Union 005.jpg","Gammon 120 Union 005.jpg","Enochs-68 Union St. 004 (4).jpg","","","","");
INSERT INTO orig_images VALUES("40","Log Home on 125 Acers/ CURENTLY LEASED","house.jpg","house.jpg","","","","","");
INSERT INTO orig_images VALUES("41","Intown Belfast Condos/ CURENTLY LEASED","Ashe 003.jpg","Ashe 003.jpg","","","","","");
INSERT INTO orig_images VALUES("42","The Northport House/ CURENTLY LEASED","Baker 002.jpg","Baker 002.jpg","","","","","");
INSERT INTO orig_images VALUES("43","UPSCALE WATERFRONT CONDO","919421_101_12.jpg","919421_101_12.jpg","","","","","");
INSERT INTO orig_images VALUES("44","Intown Belfast Home               SOLD","window 002.jpg","window 002.jpg","","","","","");
INSERT INTO orig_images VALUES("45","Intown Belfast /  CURENTLY LEASED","Gallo 002.jpg","Gallo 002.jpg","","","","","");
INSERT INTO orig_images VALUES("46","Bayside Water view/ CURENTLY LEASED","Baker 001.jpg","Baker 001.jpg","","","","","");
INSERT INTO orig_images VALUES("47","  UpScale Lakefront Home/ CURENTLY LEASE","Front of House_edited.jpg","Front of House_edited.jpg","Hope Dinning area_edited.jpg","Hope waterfront_edited.jpg","","","");
INSERT INTO orig_images VALUES("48","Intown Belfast w /Pool! CURENTLY LEASED","88s back yard 003.jpg","88s back yard 003.jpg","88 Congress.JPG","","","","");
INSERT INTO orig_images VALUES("49","Private Belfast Home/ CURENTLY LEASED","Brower.jpg","Brower.jpg","","","","","");
INSERT INTO orig_images VALUES("56","Intown Belfast   CURENTLY LEASED","Murphy 23 Franklin St. 001.jpg","Murphy 23 Franklin St. 001.jpg","Label-Design_H_01.jpg","","","","");
INSERT INTO orig_images VALUES("60","Land on Beach Hill Rd.","Petit.jpg","Petit.jpg","","","","","");
INSERT INTO orig_images VALUES("61","250 Acre Horse Farm / CURENTLY LEASED","Monroe 010.jpg","Monroe 010.jpg","Monroe 004.jpg","","","","");
INSERT INTO orig_images VALUES("62","Intown Belfast Home / SOLD","Morow 16 School St. Belfast 002.jpg","Morow 16 School St. Belfast 002.jpg","","","","","");
INSERT INTO orig_images VALUES("64","13 Ac. Hill Top / CURENTLY OFF THE MARKE","Cook 318 Mt. Ephraim 003.jpg","Cook 318 Mt. Ephraim 003.jpg","Cook 318 Mt. Ephraim 002.jpg","Photos 020.jpg","Photos 036.jpg","","");
INSERT INTO orig_images VALUES("65","LAKE FRONT COTTAGE","PIC_0127.JPG","PIC_0127.JPG","Gamon camp 018.jpg","Gamon camp 010.jpg","Gamon camp 017.jpg","jvm1008.jpg","");
INSERT INTO orig_images VALUES("70","CURRENTLY OFF MARKET","HPIM0341.jpg","HPIM0341.jpg","HPIM0335.JPG","HPIM0340.JPG","HPIM0344.JPG","","");
INSERT INTO orig_images VALUES("71","OCEANFRONT  COTTAGE","Marland 002.jpg","Marland 002.jpg","Marland 004.jpg","Marland 001.jpg","","","");
INSERT INTO orig_images VALUES("72","Waterfront-Marshal Wharf / SOLD","51_1.jpg","51_1.jpg","","","","","");
INSERT INTO orig_images VALUES("73","DOWNTOWN COMERCIAL BUILDING FOR LEASE","Daniels 003.jpg","Daniels 003.jpg","Daniels 002.jpg","","","","");
INSERT INTO orig_images VALUES("74","IN TOWN BELFAST / CURENTLY LEASED","stephenson 010.jpg","stephenson 010.jpg","Stephenson 005.jpg","","","","");
INSERT INTO orig_images VALUES("76"," LOG HOME on 128 ac +/- CURRENTLY OFF TH","house.jpg","house.jpg","twombley 20001.jpg","Joy 003.jpg","Joy 001.jpg","Joy 002.jpg","Joy 005.jpg");
INSERT INTO orig_images VALUES("77","NEW LISTING /  LAND","Munkelt.jpg","Munkelt.jpg","","","","","");
INSERT INTO orig_images VALUES("82","SWAN LAKE COTTAGE","Camp w new Chimney cap.jpg","Camp w new Chimney cap.jpg","","","","","");
INSERT INTO orig_images VALUES("81","Belfast Harbor","875626_101_72.jpg","875626_101_72.jpg","875626_101_72.jpg","13 BL WATER PIC.jpg","","","");
INSERT INTO orig_images VALUES("84","4 UNIT APARTMENT BUILDING","Ashe 001.jpg","Ashe 001.jpg","","","","","");
INSERT INTO orig_images VALUES("85","WATERFRONT w/ VIEWs WEST & SOUTH","ariel photo.JPG","ariel photo.JPG","P4080216.JPG","ariel photo two.JPG","ariel photo.JPG","Black 002.jpg","");
INSERT INTO orig_images VALUES("86","The Northport House","Baker 002.jpg","Baker 002.jpg","DCP00499.JPG","","","","");
INSERT INTO orig_images VALUES("87","Private Contemporary","Fox Side.JPG","Fox Side.JPG","Fox.JPG","Fox 2.JPG","Fox front yard.JPG","","");
INSERT INTO orig_images VALUES("88","On The Side of a Mountain / CURENTLY LEA","Curwitz 005.jpg","Curwitz 005.jpg","Curwitz 006.jpg","Curwitz 001.jpg","","","");
INSERT INTO orig_images VALUES("89","New Home","Dakin.JPG","Dakin.JPG","Dakin 2.JPG","","","","");
INSERT INTO orig_images VALUES("90","Log Home at the Lake","Fletcher 002.jpg","Fletcher 002.jpg","jvm1003.jpg","","","","");
INSERT INTO orig_images VALUES("92","CURENTLY LEASED","DCP00522.JPG","DCP00522.JPG","DCP00521.JPG","DCP00520.JPG","","","");
INSERT INTO orig_images VALUES("94","In Town Belfast","Gallo.JPG","Gallo.JPG","","","","","");
INSERT INTO orig_images VALUES("99","BELFAST WATER VIEW JUST LEASED","IMAGE001_sm.jpg","IMAGE001_sm.jpg","","","","","");
INSERT INTO orig_images VALUES("97","Log Home","IMAGE001.JPG","IMAGE001.JPG","DCP00634.JPG","IMAGE001.JPG","","","");
INSERT INTO orig_images VALUES("105","Wooded Building Lot","Petit.jpg","Petit.jpg","","","","","");
INSERT INTO orig_images VALUES("106","A Home for an Artist","January2009 023.jpg","January2009 023.jpg","January2009 018.jpg","January2009 020.jpg","","","");
INSERT INTO orig_images VALUES("109","COMMERCIAL TWO FLOORS","IMAGE002.JPG","IMAGE002.JPG","","","","","");
INSERT INTO orig_images VALUES("110","The Garden Home","IMG_1044.JPG","IMG_1044.JPG","IMG_0837.jpg","IMG_1014.jpg","IMG_1016.jpg","47b9df24b3127cce98548a39ed7700000025100A","IMG_1014.jpg");
INSERT INTO orig_images VALUES("111","Belfast\'s Secret Garden","DCP00530.JPG","DCP00530.JPG","","","","","");
INSERT INTO orig_images VALUES("112","Brand new Water View","IMAGE002.JPG","IMAGE002.JPG","","","","","");
INSERT INTO orig_images VALUES("113","Waterview Condo w/ Pool","919421_101_12.jpg","919421_101_12.jpg","","","","","");
INSERT INTO orig_images VALUES("114","Historic Belfast Square","Daniels 003.jpg","Daniels 003.jpg","1st floor entry.JPG","DCP00541.JPG","","","");
INSERT INTO orig_images VALUES("115","Belfast Victorian","IMAGE005.JPG","IMAGE005.JPG","","","","","");
INSERT INTO orig_images VALUES("133","Intown Furnished","DCP00520.JPG","DCP00520.JPG","","","","","");
INSERT INTO orig_images VALUES("135","In Town","IMAGE006.JPG","IMAGE006.JPG","","","","","");
INSERT INTO orig_images VALUES("0","4 bedroom 2 bath cape betreen Camden and","","","","","","","");
INSERT INTO orig_images VALUES("139","OCEAN VIEWS FROM EVERY ROOM","IMAGE003.JPG","IMAGE003.JPG","IMAGE006.JPG","IMAGE008.JPG","IMG_7688.JPG","DSCN7206.JPG","");
INSERT INTO orig_images VALUES("144","4 bedroom 2 bath cape betreen Camden and","IMAGE020.JPG","IMAGE020.JPG","","","","","");
INSERT INTO orig_images VALUES("145","Swanville 10 ac Privacy w/garage- Long T","IMAGE014.JPG","IMAGE014.JPG","","","","","");
INSERT INTO orig_images VALUES("146","FURNISHED WINTER RENTAL","IMAGE006.JPG","IMAGE006.JPG","IMAGE002.JPG","","","","");
INSERT INTO orig_images VALUES("147","Furnished winter rental","IMAGE006.JPG","IMAGE006.JPG","","","","","");
INSERT INTO orig_images VALUES("149","Restored farm House","IMAGE001.JPG","IMAGE001.JPG","DSC04591.JPG","DSC04611.JPG","DSC04591.JPG","IMAGE012.JPG","IMAGE014.JPG");
INSERT INTO orig_images VALUES("150","Intown Belfast  UNDER CONTRACT","IMAGE007.JPG","IMAGE007.JPG","","","","","");
INSERT INTO orig_images VALUES("151","Meguntcook Riverfront homesite","plot.jpg","plot.jpg","","","","","");
INSERT INTO orig_images VALUES("152","Charles Street!","IMAGE008.JPG","IMAGE008.JPG","IMAGE001.JPG","","","","");
INSERT INTO orig_images VALUES("153","Nice intown Home for lease","Alto st. front.jpg","Alto st. front.jpg","Alto st. 2.jpg","","","","");
INSERT INTO orig_images VALUES("154","Historic Belfast","belfast_wealthy_poor_house.jpg","belfast_wealthy_poor_house.jpg","","","","","");



DROP TABLE users;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL default '0',
  `user_first_name` varchar(32) NOT NULL default '',
  `user_last_name` varchar(32) NOT NULL default '',
  `user_email` varchar(64) NOT NULL default '',
  `user_password` varchar(15) NOT NULL default '',
  `user_password_encrypt` varchar(32) NOT NULL default '',
  `user_last_login` int(11) NOT NULL default '0',
  `user_num_logins` int(11) NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_email`)
) TYPE=MyISAM COMMENT='User Information';

INSERT INTO users VALUES("1","1","Sam","Mehorter","hometownrealestate@verizon.net","kristy3949","2db62b9ced7a45e98747b852d493af49","1273078293","144");
INSERT INTO users VALUES("2","1","Jim","Black","Blackink@acadia.net","blackink","e611584e5436267bc168894e6bcf5a03","0","0");



DROP TABLE users_listing_types;

CREATE TABLE `users_listing_types` (
  `user_id` int(11) NOT NULL default '0',
  `listing_type` varchar(32) NOT NULL default ''
) TYPE=MyISAM;

INSERT INTO users_listing_types VALUES("1","Rental");
INSERT INTO users_listing_types VALUES("1","Sale");
INSERT INTO users_listing_types VALUES("1","SeasonalWaterfront");



