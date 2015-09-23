<?php
session_start();
error_reporting(E_STRICT);
error_reporting(E_ALL);

//phpinfo();
require("app_functions.php");

function __autoload($class_name) 
{	//removes need to include class files.
	require_once $class_name . '.php';
}

$dbConnStr = 'Driver={Microsoft Visual Foxpro Driver};SourceType=DBF;SourceDB=D:\SYS\Apps\USTTI;Exclusive=No';

$app = new AppState();
$app->Initialize($dbConnStr);

if (isset($app->state_array['debug']) and $app->state_array['debug'] == 'password')
{
	$debug = true;
}

debug('$app->state_array', $app->state_array);

// ********** constants: ************
define("SELF", $_SERVER['PHP_SELF']);

// ************** DEFAULTS *********** 

?>
