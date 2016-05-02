<?php
$objConnect = mysql_connect("mysql12.000webhost.com","a9491971_user","azerty1");
$objDB = mysql_select_db("a9491971_android");
$strSQL = "SELECT * FROM `urgence`  ORDER BY id  ASC ";
$objQuery = mysql_query($strSQL) or die(mysql_error());
$arrRows = array();
$arryItem = array();
while($arr = mysql_fetch_array($objQuery)) {
$arryItem["id"] = $arr["id"]; 
$arryItem["name"] = $arr["name"];
$arryItem["address"] = $arr["address"];
$arryItem["tel"] = $arr["tel"];
$arryItem["ville"] = $arr["ville"];
$arryItem["seancecontinu"] = $arr["seancecontinu"];
$arryItem["lat"] = $arr["lat"];
$arryItem["lng"] = $arr["lng"];
$arrRows[] = $arryItem;
}

echo json_encode($arrRows);

?>