<?php
require("../scripts/config.php");
require("../scripts/functions.php");
if(isset($_GET['news'])){
	Get_News();
}
if(isset($_GET['articles'])){
	Get_Articles();
}
?>