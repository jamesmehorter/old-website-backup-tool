<?php

	include("DBConnect.php");
	$program = sqlSELECT("* FROM `mysqlbackup_tool`", 0);
	//$CreateMySQLBackupFilename = "CreateMySQLBackup.php";
	$CreateMySQLBackupFilename = "foo.php";
	
	//Gather all the client accounts
	foreach (sqlSELECT("* FROM `accounts`", 0) as $key => $account) {
		//Select account ftp information
		$ftp = sqlSELECT("* FROM `ftp_servers` WHERE `ftp_id` = {$account['ftp_id']}", 0) ;
		$log .= "<span class='AccountTitle'>{$account['account_name']}</span><br /><ul>";
		
		if ($account['account_backup_flag'] == "1") {
			
			//Connect to the account ftp server and login
			$ftp_conn = ftp_connect($ftp[0]['ftp_server']);
			$ftp_login = ftp_login($ftp_conn, $ftp[0]['ftp_username'], $ftp[0]['ftp_password']);
			
			//Check the ftp connection
			if ((!$ftp_conn) || (!$ftp_login)) {
				$log .= "<li>FTP connection has <span class='False'>Failed</span></li>";
				if (!ftp_login) {
					$log .= "&nbsp; &nbsp; <li>Incorrect login credentials</li>";
				}
			} else {
				$log .= "<li><span class='True'>Successfully</span> connected to the FTP Server</li>";
				
				//Upload the backup.php file
				//ftp_pasv($ftp_conn, true);
				if ($ftp_upload = ftp_put($ftp_conn, "{$ftp[0]['ftp_path']}$CreateMySQLBackupFilename", "$CreateMySQLBackupFilename", FTP_ASCII)) {
					ftp_chmod($ftp_conn, 0777, "{$ftp[0]['ftp_path']}$CreateMySQLBackupFilename"); 
					$log .= "<li><span class='True'>Successfully</span> uploaded {$ftp[0]['ftp_path']}$CreateMySQLBackupFilename</li>";
					
					//Select account db information
					$db = sqlSELECT("* FROM `databases` WHERE `db_id` = {$account['db_id']}", 0) ;
					foreach ($db[0] as $key => $val) {
						$db[0][$key] = urlencode($val);
					}
					
					//Execute the uploaded backup file via cURL, passing the DB connection information via GET
					$executeSQLBackupURL = $account['account_url'] . "$CreateMySQLBackupFilename?a={$account['account_name']}&s={$db[0]['db_server']}&u={$db[0]['db_username']}&p={$db[0]['db_password']}&d={$db[0]['db_database']}";
					$log .=  "<li>Executing <a href='$executeSQLBackupURL' target='_blank'>" . $executeSQLBackupURL . "</a></li>";
					
					//Create the cURL resource
					$cURL = curl_init();
					//Set the cURL URL to execute the remote script we uploaded
					curl_setopt($cURL, CURLOPT_URL, $executeSQLBackupURL);
					//Return the output from execution
					curl_setopt($cURL, CURLOPT_RETURNTRANSFER, 1);
					$cURLOutput = curl_exec($cURL);
					//Close the cURL resource
					curl_close($cURL);
					
					//The script $CreateMySQLBackupFilename echos the string 'Success' on successful completion
					//If the script generates an Apache/PHP Warning or Error we output it nicely below in this conditions else statement
					if ($cURLOutput == "Success" ) {
						$remoteSQLFilename = $account['account_name'] . "_" . date("m-d-Y", time()) . '.sql';
						$log .=  "<li><span class='True'>Successfully</span> created $remoteSQLFilename on the remote server</li>";
						//Download the backup SQL file and store locally
						if (ftp_get($ftp_conn, "SQLBackups\\" . $remoteSQLFilename, $ftp[0]['ftp_path'] . $remoteSQLFilename, FTP_BINARY)) {
							$log .=  "<li><span class='True'>Successfully</span> downloaded $remoteSQLFilename from the remote server</li>";
							if ($program[0]['keep_remote_files'] == 0) {
								ftp_delete($ftp_conn, $ftp[0]['ftp_path'] . $remoteSQLFilename);
							}
						} else {
							$log .=  "<li><span class='False'>Failed</span> to downloaded $remoteSQLFilename from the remote server</li>";
						} // End FTP Download
					} else {
						$log .=  "<li><span class='False'>Failed</span> to create the *.sql file on the remote server with the following errors: <div class='RemoteErrors'>$cURLOutput</div></li>";
					} // End cURL Output
					//Delete the uploaded php script and generated *.sql file
					if ($program[0]['keep_remote_files'] == 0) {
						ftp_delete($ftp_conn, $ftp[0]['ftp_path'] . "$CreateMySQLBackupFilename");
					}
				} else {
					$log .= "<li><span class='False'>Failed</span> to upload backup.php </li>";
				} // End FTP Upload		
				ftp_close($ftp_conn);
			} // End FTP Connection
		} //END Check account backup flag 
		else {
			$log .= "<li>Backup skipped</li>";
		}
		$log .= "</ul><br />";
	} // End Looping through accounts
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>MySQLBackup Tool</title>
		<link rel="stylesheet" href="style.css" />
    </head>
    
    <body>
    	<div id="Output">
        	<a href="ManageAccounts.php" title="Manage Accounts">Manage Accounts</a>
        	<h3>MySQL Backup Log:</h3>
            <br />
			<?php 
                //Write out a True / error log and email it to myself
                echo $log;
            ?>
        </div>
    </body>
</html>