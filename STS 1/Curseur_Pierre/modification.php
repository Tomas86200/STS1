<!DOCTYPE html>
<html>
<meta charset="UTF8">
<head>
	<title>IHM</title>
</head>
<body>
<?php
$IdEleve = $_GET['IdEleve'];
	try{
$db = new PDO('mysql:host=127.0.0.1;port=3306;dbname=test;charset=UTF8;','root','',);
$res=$db->query('SELECT * FROM ELEVE WHERE idEleve = '. $db->quote($IdEleve));


$row=$res->fetch();
$Nom=$row['nomEleve'];
$Prenom=$row['prenomEleve'];
$Age=$row['ageEleve'];
$Option=$row['optionEleve'];
}catch(PDOException  $e ){
echo "Error: ".$e;
}

echo "
<p>Modification de $Nom $Prenom</p>
<form action=\"traitement_modification.php\" method=\"post\">
<input name=\"idEleve\" type=\"hidden\" value=\"$IdEleve\"></input>
<table>
	<tr>
		<td>Nom</td>
		<td><input name=\"nom\" type=\"text\" value=\"$Nom\"></input></td>
	</tr>
	<tr>
		<td>Prénom</td>
		<td><input name=\"prenom\" type=\"text\" value=\"$Prenom\"></input></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input name=\"age\" type=\"number\" min=\"0\" value=\"$Age\"></input></td>
	</tr>
	<tr>
		<td>Option</td>
		<td><select name=\"option\">";
		if ($Option == "SLAM") {
			echo "<option value=\"SLAM\" selected>SLAM</option>
		<option value=\"SISR\">SISR</option>";
		}
		else{
			echo "<option value=\"SLAM\">SLAM</option>
		<option value=\"SISR\" selected>SISR</option>";
		}
		echo "
		
	</select></td>
	</tr>
	<tr>
		<td><input type=\"submit\" value=\"Envoyer\"></input></td>
		<td><input type=\"button\" name=\"retour\" value=\"Retour\" onclick=\"self.location.href='index.php'\"onclick></td>
	</tr>
</table>
	
</form>";
?>
</body>
</html>