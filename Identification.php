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

if (isset($_POST['login']))$nom=$_POST['login']; else $nom="";
if (isset($_POST['mp']))$mp=$_POST['mp']; else $mp="";

$requet ="SELECT * FROM  admin WHERE `username`='$nom' and `password`='$mp'";
$result=mysql_query($requet)or die("Erreur de la sélection ");
$r=mysql_fetch_row($result);

if ($r){ echo("<center><a href='Acceuil.html'>  cliquer ici</a></center>");echo("<center> pour acceder à l'acceuil</center>");}
else { echo("<center> login ou/et mot de passe fausse </font> <BR> vous devez s'inscrire</center>");echo(" <center>cliquer </center>");
echo("<center><a href='inscription.html'>ici</a></center>");echo("<center> pour le faire</center>");}
?>


