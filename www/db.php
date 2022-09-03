<?php
require_once "../loader.php";
header('Content-Type: application/json');
//define what to write where
$table = $config->config["table"];
$record = array();
$record["weekNum"] = intval($_GET["weekNum"]);
$dt = new DateTime($_GET["gameTimeEastern"]);
$record["gameTimeEastern"] = $dt->getTimeStamp();
$record["homeID"] = $_GET["homeID"];
$record["visitorID"] = $_GET["visitorID"];
if (!$_GET['gameID']) $db->autoExecute($table,$record,'INSERT');
else $db->autoExecute($table,$record,'UPDATE', 'gameID = '.intval($_GET['gameID']));
$status = array("status" => "success");
echo json_encode($status);
