<!DOCTYPE html>
<html>
<meta charset="UTF8">
<head>
	<title>Affichage</title>
</head>
<body>

<table border=\"1\">
<tr>
	<td>Nom</td>
	<td>Prénom</td>
	<td>Age</td>
	<td>Option</td>
	<td>Éditer</td>
	<td>Effacer</td>
</tr>
<?php

$nbrep = 0;
$LienDrop = "drop.jpg";
$LienEdit = "edit.png";
	try{
$db = new PDO('mysql:host=127.0.0.1;port=3306;dbname=test;charset=UTF8;','root','', array(PDO::ATTR_PERSISTENT=>true));
$res=$db->query('SELECT * FROM ELEVE');

$row=$res->fetch();
while($row) {
		$IdEleve[$nbrep]=$row['idEleve'];
        $Nom[$nbrep]=$row['nomEleve'];
		$Prenom[$nbrep]=$row['prenomEleve'];
		$Age[$nbrep]=$row['ageEleve'];
		$Option[$nbrep]=$row['optionEleve'];
		$row=$res->fetch();
		$nbrep++;
    }
    $res->closeCursor();
    for ($i=0; $i < $nbrep; $i++) { 
	echo "
					<tr>
						<td>$Nom[$i]</td>
						<td>$Prenom[$i]</td>
						<td>$Age[$i] ans</td>
						<td>$Option[$i]</td>
						<td><a href=\"modification.php?IdEleve=$IdEleve[$i]\"><center><img src=\"$LienEdit\"></center></a></td>
						<td><a href=\"drop.php?IdEleve=$IdEleve[$i]\"><center><img src=\"$LienDrop\"></center></a></td>
					</tr>
				";
}
}catch(PDOException  $e ){
echo "Error: ".$e;
}
?>
<input type="button" name="Ajouter" value="Creation" onclick="self.location.href='creation.php'" style="background-color:#3cb371" style="color:white; font-weight:bold"onclick>

</table>
</body>
</html>
