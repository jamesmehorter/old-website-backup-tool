<?php
	
	/*
	//HOME
	$dbhost     = "localhost";
	$dbname 	= "mysqlbackup_tool";
    $dbuname    = "root";
    $dbpassw    = "1309jamM@";
	*/

    //PICA
	$dbhost     = "localhost";
	$dbname 	= "website-backup-tool";
    $dbuname    = "root";
    $dbpassw    = "1309piCa";

    $conn = mysql_connect($dbhost, $dbuname, $dbpassw)or die("The Website could not connect to the Database. Please help us out and <a href=\"mailto: jamesmehorter@gmail.com?subject=DB Backup Tool: Bug Report\">Submit a Bug!</a>");
    mysql_select_db($dbname)or die("The Website could not select the Database Tables. Please help us out and <a href=\"mailto: jamesmehorter@gmail.com?subject=DB Backup Tool: Bug Report\">Submit a Bug!</a>");  
	
	//This stops SQL Injection in POST vars
	foreach ($_POST as $key => $value) {
		$_POST[$key] = mysql_real_escape_string($value);
	}
	
	//This stops SQL Injection in GET vars
	foreach ($_GET as $key => $value) {
		$_GET[$key] = mysql_real_escape_string($value);
	} 
	
	//Perform a sql select
	//PRE: Receive a SQL Str
	//POST: Return an array of the returned items
	function sqlSELECT ($sql, $bool_echo) {
		global $conn;
		$sql = "SELECT ".$sql;
		if ($bool_echo) echo $sql;
		$res = mysql_query($sql, $conn);
		if (mysql_num_rows($res) > 0) {
			$arr = array();									
			while ($row = mysql_fetch_assoc($res)) {
				$arr[] = $row;
			}
			return $arr;
		} else {
			return false;
		}	
	}
	//Perform a sql insert
	//PRE: Recieve a SQL Str
	//POST: Return a boolean value
	function sqlINSERT ($sql, $bool_echo) {
		global $conn;
		$sql = "INSERT INTO ".$sql;
		if ($bool_echo) echo $sql;		
		if (mysql_query($sql, $conn)) {
			return mysql_insert_id();
		} else {
			return false;
		}
	}
	//Perform a sql update
	//PRE: Recieve a SQL Str
	//POST: Return a boolean value
	function sqlUPDATE ($sql, $bool_echo) {
		global $conn;
		$sql = "UPDATE ".$sql;
		if ($bool_echo) echo $sql;		
		if (mysql_query($sql, $conn)) {
			return true;
		} else {
			return false;
		}
	}
	//Perform a sql deletion
	//PRE: Recieve a SQL Str
	//POST: Return a boolean value
	function sqlDELETE ($sql, $bool_echo) {
		global $conn;
		$sql = "DELETE ".$sql;
		if ($bool_echo) echo $sql;		
		if (mysql_query($sql, $conn)) {
			return true;
		} else {
			return false;
		}
	}
?>