<?php


define('DS', DIRECTORY_SEPARATOR);
define('ROOT', dirname(dirname(__FILE__)));

require_once(ROOT.DS.'lib'.DS.'init.php');

$router = new Router($_SERVER['REQUEST_URI']);
var_dump($this);

var_dump('Route: '.$router->getRoute());
var_dump('Language : '.$router->getLanguage());
var_dump('Controller : '.$router->getController());
var_dump('Action to be called: '.$router->getMethodPrefix().$router->getAction());


echo 'Params';
var_dump($router->getParams());