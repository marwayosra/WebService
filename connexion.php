<?php

$host ="mysql12.000webhost.com";
$user ="a9491971_user";
$password ="azerty1";
$db ="a9491971_android";

$con = mysqli_connect($host,$user,$password,$db);

if(!$con){
	die("Error in connection ". $mysqli_connect_error());
}else{
	echo "<br><h3>Connection success...</h3>";
}

?>