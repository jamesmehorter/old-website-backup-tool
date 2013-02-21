<?php
	include("DBConnect.php");	
	
	/*PROCESS NEW ACCOUNT CREATION*/
	if ($_POST['AddForm']) {
		$Success = false;	
		//Store account FTP Information
		if ($ftp_id = sqlINSERT("`ftp_servers` VALUES('', '{$_POST['FTPServer']}', '{$_POST['FTPPath']}', '{$_POST['FTPUsername']}', '{$_POST['FTPPassword']}')", 0)) {
			//Store account DB Information
			if ($db_id = sqlINSERT("`databases` VALUES('', '{$_POST['DBServer']}', '{$_POST['DBDatabase']}', '{$_POST['DBUsername']}', '{$_POST['DBPassword']}')", 0)) {
				//Store account information
				if ($account_id = sqlINSERT("`accounts` VALUES('', $ftp_id, $db_id, '{$_POST['AccountName']}', '{$_POST['AccountURL']}', '1')", 0) != false) {
					$Success = true;
				}
			}
		}																							   
	}
	
	/*PROCCESS PROGRAM UPDATES*/
	if ($_POST['SaveForm']) {
		if ($_POST["Keep_Remote_Files"] == "on") {
			$KeepRemoteFiles = 1;
		} else {
			$KeepRemoteFiles = 0;
		}
		sqlUPDATE("`mysqlbackup_tool` SET `keep_remote_files` = '$KeepRemoteFiles'", 0);
	}
	
	
	/*PROCESS ACCOUNT UPDATES*/
	if ($_POST['EditForm']) {
		//Store Account Information
		if ($_POST["account_flag"] == "on") {
			$account_flag = 1;
		} else {
			$account_flag = 0;
		}
		sqlUPDATE("`accounts` SET `account_name` = '{$_POST['account_name']}',
								  `account_url`  = '{$_POST['account_url']}',
								  `account_backup_flag` = '$account_flag'
							  WHERE `account_id` = '{$_POST['account_id']}'", 0);
		//Store FTP Information
		sqlUPDATE("`ftp_servers` SET `ftp_server` = '{$_POST['ftp_server']}',
									 `ftp_path` = '{$_POST['ftp_path']}',
									 `ftp_username` = '{$_POST['ftp_username']}',
									 `ftp_password` = '{$_POST['ftp_password']}'
								WHERE `ftp_id` = '{$_POST['ftp_id']}'", 0);
		//Store DB Information
		sqlUPDATE("`databases` SET `db_server` = '{$_POST['db_server']}',
									 `db_database` = '{$_POST['db_database']}',
									 `db_username` = '{$_POST['db_username']}',
									 `db_password` = '{$_POST['db_password']}'
								WHERE `db_id` = '{$_POST['db_id']}'", 0);		
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Edit Accounts</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    
    <body>
    	<div id="Output">
        	<?php
				if ($Success) {
					echo "<div id='Notice'>Account added successfully</div>";
				}
			?>
        	<form action="" method="post">
            	<div class="Column">
                	<h4>Account Information</h4>
                    <label for="AccountName">Account Name</label>
                    <input type="text" name="AccountName" /><br />
                    <label for="AccountURL">Website URL</label>
                    <input type="text" name="AccountURL" />
				</div>
                <div class="Column">
                    <h4>FTP Information</h4>
                    <label for="FTPServer">FTP Server</label>
                    <input type="text" name="FTPServer" /><br />
                    <label for="FTPPath">FTP Path</label>
                    <input type="text" name="FTPPath" /><br />
                    <label for="FTPUsername">FTP Username</label>
                    <input type="text" name="FTPUsername" /><br />
                    <label for="FTP Password">FTP Password</label>
                    <input type="text" name="FTPPassword" /><br />
				</div>
                
                <div class="Column">
                    <h4>DB Information</h4>
                    <label for="DBServer">DB Server</label>
                    <input type="text" name="DBServer" /><br />
                    <label for="DBDatabase">DB Database</label>
                    <input type="text" name="DBDatabase" /><br />
                    <label for="DBUsername">DB Username</label>
                    <input type="text" name="DBUsername" /><br />
                    <label for="DBPassword">DB Password</label>
                    <input type="text" name="DBPassword" /><br />
                </div>
                <div class="Column">
                	<h4></h4>
                    <input type="hidden" name="AddForm" value="1" />
	                <input type="submit" value="Add Account" />
                </div>
            </form>
        </div>

    	<div id="Output">
			<a href="MySQLBackup_Tool.php" title="Backup Now">Backup Now</a>
            <br /><br />
            <form action="" method="post">
            	<label for="Keep_Remote_File">Keep Remote Files</label>
            	<?php
				$program = sqlSELECT("* FROM `mysqlbackup_tool`", 0);
				if ($program[0]['keep_remote_files'] == 1) {
					echo "<input type='checkbox' name='Keep_Remote_Files' checked='checked' />";
				} else {
					echo "<input type='checkbox' name='Keep_Remote_Files' />";						
				}
				?>
                <input type="hidden" name="SaveForm" value="1"/>
                <input type="submit" value="Save" />
            </form>
            <br /><br /><?php
			//Gather all the client accounts
			$accounts = sqlSELECT("* FROM `accounts`", 0);
			foreach ($accounts as $account) {
				$ftp = sqlSELECT("* FROM `ftp_servers` WHERE ftp_id = {$account['ftp_id']}", 0) ;
				$ftp = $ftp[0];
				$db = sqlSELECT("* FROM `databases` WHERE db_id = {$account['db_id']}", 0) ;
				$db = $db[0];?>
                <form action="#<?php echo $account['account_name']; ?>" method="post">
                <a name="<?php echo $account['account_name']; ?>"></a>
				<div class='Account'>
					<div class="AccountTitle">
						<?php echo $account['account_name']; ?>
                        <?php
						if ($account['account_backup_flag'] == 1) {
							echo "<input type='checkbox' name='account_flag' checked='checked' />";
							echo "<span class='True'>Active</span>";
						} else {
							echo "<input type='checkbox' name='account_flag' />";						
							echo "<span class='False'>Inactive</span>";
						}
						?>
                    </div>
					<div class='AccountInformation'>
						<table cellpadding="0" cellspacing="5" border="0">
                        	<tr>
								<td><small>Account</small> &nbsp; </td>
								<input type="hidden" name="account_id" value="<?php echo $account['account_id'];?>" />
								<td><input name="account_name" value="<?php echo $account['account_name'];?>" /></td>
								<td><input name="account_url" value="<?php echo $account['account_url'];?>" /></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td><small>FTP</small></td>
								<input type="hidden" name="ftp_id" value="<?php echo $ftp['ftp_id'];?>" />
								<td><input name="ftp_server" value="<?php echo $ftp['ftp_server'];?>" /></td>
								<td><input name="ftp_path" value="<?php echo $ftp['ftp_path'];?>" /></td>
								<td><input name="ftp_username" value="<?php echo $ftp['ftp_username'];?>" /></td>
								<td><input name="ftp_password" value="<?php echo $ftp['ftp_password'];?>" /></td>
							</tr>
							<tr>
								<td><small>DB</small></td>
								<input type="hidden" name="db_id" value="<?php echo $db['db_id'];?>" />
								<td><input name="db_server" value="<?php echo $db['db_server'];?>" /></td>
								<td><input name="db_database" value="<?php echo $db['db_database'];?>" /></td>
								<td><input name="db_username" value="<?php echo $db['db_username'];?>" /></td>
								<td><input name="db_password" value="<?php echo $db['db_password'];?>" /></td>
							</tr>
						</table>
					</div>
				</div>
                <input type="hidden" name="AccountCount" value="<?php echo count($accounts); ?>" />
                <input type="hidden" name="EditForm" value="1" />
                <input type="submit" value="Apply Changes" />
            </form>
            <br /><br /><?php }?>            
        </div>
        <br /><br /><br /><br />
    </body>
</html>