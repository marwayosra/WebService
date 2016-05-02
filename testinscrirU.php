<html>
<head>
<title> ajouter urgence</title>
<script type="text/javascript">
function tester()
{  
	if ((document.form1.name.value =='')){	
		alert('Vous devez saisir le nom du pharmacie !');  
		return false; 
	   
		}
	if((document.form1.address.value ==''))
		{
		alert('Vous devez saisir adresse de pharmacie!');  
		return false;
		}
		if((document.form1.tel.value ==''))
		{
		alert('Vous devez saisir numero de tel!');  
		return false;
		}
	
	if (document.form1.ville.value =='')
	{	  
		alert(' Vous devez saisir la ville de pharmacie!');  
		return false;
	}
	if (document.form1.seancecontinu.value =='')
	{	  
		alert(' Vous devez saisir heure!');  
		return false;
	}
	if (document.form1.lat.value =='')
	{	  
		alert(' Vous devez saisir attitude!');  
		return false;
	}
	if (document.form1.lng.value =='')
	{	  
		alert(' Vous devez saisir longitude!');  
		return false;
	}
	
}
</script>
    
</head>
<body>
<form name="form1"  method ="POST" action="" onsubmit="return tester();">
<center><h3>Ajouter un nouveau adresse d'urgenceMédecin généraliste</h3></center>
<center><table border="1">
<tr><td>Nom de pharmacie</td><td><input type="text" name="name" id="name" placeholder="Nom pharamcie"> </td></tr>
<tr><td> Adresse </td><td> <input type="text" name="address" id="address" placeholder="adresse" ></td></tr>
<tr><td> Telephone </td><td> <input type="text" name="tel" id="tel" placeholder="telephone"></td></tr>
<tr><td> Ville </td><td><input type="text" name="ville" id="ville" placeholder="ville"/></td></tr>
<tr><td> Seance Continu </td><td><input type="text" name="seancecontinu" id="seancecontinu" placeholder="00H00 a 00H00"/></td></tr>
<tr><td> Lattitude </td><td><input type="text" name="lat" id="lat" placeholder="lat"/></td></tr>
<tr><td> Longitude </td><td><input type="text" name="lng" id="lng" placeholder="lng"/></td></tr>
<tr><td><input type="submit" name="inscrire" value="Enregister" > </td><td><input type="submit"  value="Annuler" > </td></tr>
</table></center>
</form>
<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
if(isset($_POST['inscrire']))
{
$name=$_POST['name'];
$address=$_POST['address'];
$tel=$_POST['tel'];
$ville=$_POST['ville'];
$seancecontinu=$_POST['seancecontinu'];
$lat=$_POST['lat'];
$lng=$_POST['lng'];
if(($name!="")||($address!="")||($ville!="")||($seancecontinu!="")||($lat!="")||($lng!="")) {
try
{
$sql = mysql_query("INSERT INTO urgence (name,address,tel,ville,seancecontinu,lat,lng) VALUES ('".$name."','".$address."','".$tel."','".$ville."','".$seancecontinu."','".$lat."','".$lng."')");
if (!$sql) 
throw new Exception( mysql_error() );
// Si aucune erreur on redirige vers la page d?tail de l'article
else
echo 'insertion avec succe';
// on ferme la connexion
mysql_close();
}
catch (Exception $e) { die( $e->getMessage() ); }
}}
?>
<br>
<table border="1">
<tr><td>Nom de pharmacie</td><td>Adresse</td><td>Telephone</td><td>Ville</td><td>Seance Continu</td><td>Lattitude </td><td>Longitude  </td><td>Modifier </td><td>Supprimer </td></tr>
<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
$res = "SELECT * FROM  urgence ";
$re=mysql_query($res) or die ("erreur sql");
while($req=mysql_fetch_array($re)) {
echo"<tr>";
echo "<td>".$req["name"]."</td>";
echo "<td>".$req["address"]."</td>";
echo "<td>".$req["tel"]."</td>";
echo "<td>".$req["ville"]."</td>";
echo "<td>".$req["seancecontinu"]."</td>";
echo "<td>".$req["lat"]."</td>";
echo "<td>".$req["lng"]."</td>";
echo "<td><input type='submit' name='modifier' value='Modifier' ></td>";
echo "<td><input type='submit' name='supprimer' value='Supprimer' ></td>";
echo"</tr>";
}
?>
</table>
</body>
</html>
