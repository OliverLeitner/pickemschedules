<?php
/**
 * our config stuff
 */
class Configuration {
    public $config = "";
    function __construct ($json_text) {
        $configdata = json_decode(file_get_contents($json_text),true);
        (object)$this->config = $configdata;
        foreach ($this->config as $key => $val) {
            //we use _SERVER env vars, if theres any... can be done in vhost specific setup
            if (isset($_SERVER[strtoupper($key)]) && $_SERVER[strtoupper($key)]) {
                $this->config[$key] = $_SERVER[strtoupper($key)];
            }
        }
        return $this->config;
    }
}
