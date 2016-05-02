<html>
<head>
<title> ajouter pharamacie de Nuit</title>
<script type="text/javascript">
function tester()
{  
	if ((document.form1.name1.value =='')){	
		alert('Vous devez saisir le nom du pharmacie !');  
		return false; 
	   
		}
	if((document.form1.address1.value ==''))
		{
		alert('Vous devez saisir adresse de pharmacie!');  
		return false;
		}
		if((document.form1.tel1.value ==''))
		{
		alert('Vous devez saisir numero de tel!');  
		return false;
		}
	
	if (document.form1.ville1.value =='')
	{	  
		alert(' Vous devez saisir la ville de pharmacie!');  
		return false;
	}
	if (document.form1.heurematin.value =='')
	{	  
		alert(' Vous devez saisir heure matin!');  
		return false;
	
	if (document.form1.heureapresmidi.value =='')
	{	  
		alert(' Vous devez saisir heure aprés midi!');  
		return false;
	}
	if (document.form1.lat1.value =='')
	{	  
		alert(' Vous devez saisir attitude!');  
		return false;
	}
	if (document.form1.lng1.value =='')
	{	  
		alert(' Vous devez saisir longitude!');  
		return false;
	}
	
}
</script>
    
</head>
<body>
<form name="form1"  method ="POST" action="" onsubmit="return tester();">
<center><h3>Ajouter un nouveau pharmacie de jour</h3></center>
<center><table border="1">
<tr><td>Nom de pharmacie</td><td><input type="text" name="name1" id="name1" placeholder="Nom pharamcie"> </td></tr>
<tr><td> Adresse </td><td> <input type="text" name="address1" id="address1" placeholder="adresse" ></td></tr>
<tr><td> Telephone </td><td> <input type="text" name="tel1" id="tel1" placeholder="telephone"></td></tr>
<tr><td> Ville </td><td><input type="text" name="ville1" id="ville1" placeholder="ville"/></td></tr>
<tr><td> heure matin </td><td><input type="text" name="heurematin" id="heurematin" placeholder="00H00 a 00H00"/></td></tr>
<tr><td> heure aprés midi </td><td><input type="text" name="heureapresmidi" id="heureapresmidi" placeholder="00H00 a 00H00"/></td></tr>
<tr><td> Lattitude </td><td><input type="text" name="lat1" id="lat1" placeholder="lat"/></td></tr>
<tr><td> Longitude </td><td><input type="text" name="lng1" id="lng1" placeholder="lng"/></td></tr>
<tr><td><input type="submit" name="inscrire" value="Enregister" > </td><td><input type="submit"  value="Annuler" > </td></tr>
</table></center>
</form>
<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
if(isset($_POST['inscrire']))
{
$name1=$_POST['name1'];
$address1=$_POST['address1'];
$tel1=$_POST['tel1'];
$ville1=$_POST['ville1'];
$heurematin=$_POST['heurematin'];
$heureapresmidi=$_POST['heureapresmidi'];
$lat1=$_POST['lat1'];
$lng1=$_POST['lng1'];
if(($name1!="")||($address1!="")||($ville1!="")||($tel1!="")||($heurematin!="")||($heureapresmidi!="")||($lat1!="")||($lng1!="")) {
try
{
$sql = mysql_query("INSERT INTO pharmacieJour (name1,address1,tel1,ville1,heurematin,heureapresmidi,lat1,lng1) VALUES ('".$name1."','".$address1."','".$tel1."','".$ville1."','".$heurematin."','".$heureapresmidi."','".$lat1."','".$lng1."')");
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
<tr><td>Nom de pharmacie</td><td>Adresse</td><td>Telephone</td><td>Ville</td><td>Heure matin</td><td>Heure aprés midi</td><td>Lattitude </td><td>Longitude  </td><td>Modifier </td><td>Supprimer </td></tr>
<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
$res = "SELECT * FROM  pharmacieJour ";
$re=mysql_query($res) or die ("erreur sql");
while($req=mysql_fetch_array($re)) {
echo"<tr>";
echo "<td>".$req["name1"]."</td>";
echo "<td>".$req["address1"]."</td>";
echo "<td>".$req["tel1"]."</td>";
echo "<td>".$req["ville1"]."</td>";
echo "<td>".$req["heurematin"]."</td>";
echo "<td>".$req["heureapresmidi"]."</td>";
echo "<td>".$req["lat1"]."</td>";
echo "<td>".$req["lng1"]."</td>";
echo "<td><input type='submit' name='modifier' value='Modifier' ></td>";
echo "<td><input type='submit' name='supprimer' value='Supprimer' ></td>";
echo"</tr>";
}
?>
</table>
</body>
</html>
