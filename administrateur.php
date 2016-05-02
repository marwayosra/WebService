<?php
//connexion a la base
session_start();
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
mysql_select_db('a9491971_android') ;//or die ("erreur2")
  if (!$objConnect) 
  {
    echo "Désolé, connexion impossible\n";
    exit;
  }
 
  if (!mysql_select_db ('a9491971_android', $objConnect)) 
  {
    echo "Désolé, accès à la base impossible\n";
    exit;
  }

if (isset($_POST['username']))$username=$_POST['username']; else $username="";
if (isset($_POST['password']))$mp=$_POST['password']; else $password="";

$requet ="SELECT * FROM `admin` WHERE `username`='$username' and `password`='$password'";
$result=mysql_query($requet)or die("Erreur de la sélection ");
$r=mysql_fetch_row($result);
if ($r){ 
echo '<center><h4>'."*********vous etes administrateur alors vous pouvez faire ls mise a jour de la base*********".'<br>'
                .'<a href= Acceuil.html>entrer</a>'.'<br>'.'</h4></center>';
}

?>
