<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
	<title>Modifié</title>
</head>
<body>
<?php
$IdEleve=$_POST['idEleve'];
$Nom=strtoupper($_POST['nom']);
$Prenom=$_POST['prenom'];
$Age=$_POST['age'];
$Option=$_POST['option'];
$db = new PDO('mysql:host=127.0.0.1;port=3306;dbname=test;charset=UTF8;','root','', array(PDO::ATTR_PERSISTENT=>true));

$req2=$db->prepare('UPDATE ELEVE SET nomEleve=:NomEleve, prenomEleve=:PrenomEleve, ageEleve=:AgeEleve, optionEleve=:OptionEleve WHERE idEleve = '. $db->quote($IdEleve));

	
	$req2->execute(array(
		'NomEleve' => $Nom,
		'PrenomEleve' => $Prenom,
		'AgeEleve' => $Age,
		'OptionEleve' => $Option,
		));
	echo "<h1>Données modifiés</h1>";
	header('Location: index.php');
	exit();

?>

</body>
</html>