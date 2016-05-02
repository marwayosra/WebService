<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
$strSQL = "SELECT * FROM  pharmacieJour ORDER BY id1  ASC ";
$objQuery = mysql_query($strSQL);
$arrRows = array();
$arryItem = array();
while($arr = mysql_fetch_array($objQuery)) {
$arryItem["id1"] = $arr["id1"]; 
$arryItem["name1"] = $arr["name1"];
$arryItem["address1"] = $arr["address1"];
$arryItem["tel1"] = $arr["tel1"];
$arryItem["ville1"] = $arr["ville1"];
$arryItem["heurematin"] = $arr["heurematin"];
$arryItem["heureapresmidi"] = $arr["heureapresmidi"];
$arryItem["lat1"] = $arr["lat1"];
$arryItem["lng1"] = $arr["lng1"];
$arrRows[] = $arryItem;
}
echo json_encode($arrRows);
?>
