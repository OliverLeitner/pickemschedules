<?php
//composer requirements
require_once 'libs/vendor/autoload.php';
//database cust funct
require_once 'libs/custom/class.db.php';
//config stuff
require_once 'conf/config.php';
//loading in the conf
$config = new Configuration('../conf/config.json');

//base db stuff
$db = adoNewConnection('mysqli'); # eg. 'mysqli' or 'oci8'
//$db->debug = true;
$db->connect($config->config["server"], $config->config["username"], $config->config["password"], $config->config["database"]);

//base template stuff
$loader = new Twig_Loader_Filesystem('../templates');
$twig = new Twig_Environment($loader, array(
    'cache' => '../cache',
    'debug' => true,
    'auto_reload' => true
));
