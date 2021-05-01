<?php
declare(strict_types=1);
error_reporting(E_ALL);
ini_set("display_errors", "true");
//composer requirements
// require_once 'libs/vendor/autoload.php';
//database cust funct
// require_once 'libs/custom/class.db.php';
//config stuff
require_once '../conf/config.php';
//loading in the conf
$config = new Configuration('../conf/config.json');

//base db stuff
//$db = adoNewConnection('mysqli'); # eg. 'mysqli' or 'oci8'
//$db->debug = true;
/*$db->connect(
    $config->config["server"],
    $config->config["username"],
    $config->config["password"],
    $config->config["database"]
);*/

//base template stuff
/*$loader = new \Twig\Loader\FilesystemLoader('../templates');
$twig = new \Twig\Environment($loader, array(
    'cache' => '../cache',
    'debug' => true,
    'auto_reload' => true
));*/

$currentyear = date("Y");
$lastyear = date("Y", strtotime("-1 year"));

// just a lil writer
function writeScores(string $result, string $year): void {
    if(!is_dir("json")) mkdir("json", 0755, true);
    try {
        $handle = fopen("json/nfl_scoreboard_".$year.".json", "w");
        fwrite($handle, $result);
        fclose($handle);
    } catch(Exception $ex) {
        die($ex);
    }
}

// getting the scores either from api, or at every further call through the locally cached json
function getScores(string $url, string $year): string {
    // TODO: actual error handling
    $result = '{ "msg": something went wrong, no scores found" }';
    if (!$url) return $result;
    if(!file_exists("json/nfl_scoreboard_".$year.".json")) {
        try {
            $ch = curl_init($url."&dates=".$year);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $result = curl_exec($ch);
            curl_close($ch);
            writeScores($result, $year);
        } catch (Exception $ex) {
            die($ex);
        }
    } else return file_get_contents("json/nfl_scoreboard_".$year.".json");
}

// get season games
// games at the date: ...['events'] 0 -> all the games...
var_dump(json_decode(getScores($config->config["apiurl"], $currentyear), true)['events'][0]);
var_dump(json_decode(getScores($config->config["apiurl"], $lastyear), true)['events'][0]);
// get a single game competitions always only one entry in this call...
// var_dump(json_decode($result, true)['events'][0]['competitions'][0]['competitors']);
// season specific data, adding ['year'] shows the current year as int
// var_dump(json_decode($result, true)['leagues'][0]['season']);
