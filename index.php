<?php
date_default_timezone_set('Europe/Paris');

require_once('model/class.bdd.inc.php');
require_once('model/bdPC.inc.php');
require_once('model/bdGlobal.inc.php');

$pdo = PdoPermis::getPdoPermis();

if (isset($_GET["uc"])) {
	$uc = $_GET["uc"];
}
else {
	$uc = "acc";
}

include('vues/nav.php');


switch($uc) {
	case 'acc':{
		include('controllers/c_accueil.php');
		break;
	}
}
?>
