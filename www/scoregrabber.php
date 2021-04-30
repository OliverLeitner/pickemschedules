<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
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

// just a lil writer
function writeScores($result) {
    $handle = fopen("nfl_scoreboard.json", "w");
    fwrite($handle, $result);
    fclose($handle);
}

// getting the scores either from api, or at every further call through the locally cached json
function getScores($url) {
    // TODO: actual error handling
    $result = '{ "msg": something went wrong, no scores found" }';
    if (!$url) return $result;
    if(!file_exists("nfl_scoreboard.json")) {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        writeScores($result);
    } else {
        $result = file_get_contents("nfl_scoreboard.json");
    }
    return $result;
}

// get season games
// games at the date: ...['events'] 0 -> all the games...
var_dump(json_decode(getScores($config->config["apiurl"]), true)['events'][0]);
// get a single game competitions always only one entry in this call...
// var_dump(json_decode($result, true)['events'][0]['competitions'][0]['competitors']);
// season specific data, adding ['year'] shows the current year as int
// var_dump(json_decode($result, true)['leagues'][0]['season']);
