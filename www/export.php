<?php
// slightly modified version of: https://phppot.com/php/how-to-backup-mysql-database-using-php/
require_once "../loader.php";
$con = mysqli_connect($config->config["server"], $config->config["username"], $config->config["password"], $config->config["database"]);
$con->set_charset("utf8");
$query = "SHOW CREATE TABLE ".$config->config["table"];
$result = mysqli_query($con, $query);
$row = mysqli_fetch_row($result);
$sqlScript = "DROP TABLE IF EXISTS `".$config->config["table"]."`;\n".$row[1].";\n";

$query = "SELECT * FROM ".$config->config["table"];
$result = mysqli_query($con, $query);

$columnCount = mysqli_num_fields($result);

for ($i = 0; $i < $columnCount; $i ++) {
	while ($row = mysqli_fetch_row($result)) {
		$sqlScript .= "INSERT INTO ".$config->config["table"]." VALUES(";
		for ($j = 0; $j < $columnCount; $j ++) {
			$row[$j] = $row[$j];

			if (isset($row[$j])) {
				if (is_numeric($row[$j])) $sqlScript .= $row[$j]; 
				else $sqlScript .= '"' . $row[$j] . '"';
			} else {
				$sqlScript .= 0;
			}
			if ($j < ($columnCount - 1)) {
				$sqlScript .= ',';
			}
		}
		$sqlScript .= ");\n";
	}
}

$sqlScript .= "\n";
header('Content-type: text/plain');
header('Content-disposition: attachment; filename="'.$config->config["table"].'.sql"');
die($sqlScript);
