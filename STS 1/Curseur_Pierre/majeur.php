<!DOCTYPE html>
<html>
<meta http-equiv="refresh" content="5;index.php" />
<meta charset="UTF8">
<head>
<?php
$Nom=strtoupper($_POST['nom']);
$Prenom=$_POST['prenom'];
$Age=$_POST['age'];
$Option=$_POST['option'];

//Base de donnée initialisation et requête
	$DB = new PDO('mysql:host=127.0.0.1;port=3306;dbname=test;charset=UTF8;','root','', array(PDO::ATTR_PERSISTENT=>true));
	$DB->query("SET NAMES utf8;");
	$req = $DB->prepare('INSERT INTO ELEVE(nomEleve, prenomEleve, ageEleve, optionEleve) VALUES(:nomEleve, :prenomEleve, :ageEleve, :optionEleve)');
	$req->execute(array(
		'nomEleve' => $Nom, 
		'prenomEleve' => $Prenom,
		'ageEleve' => $Age,
		'optionEleve' => $Option
		));
?>
	<title><?php echo "$Nom $Prenom"; ?></title>
</head>
<body>

<?php
if ($Age < 18) {
	echo "<p>$Nom $Prenom est mineur !</p>";
}
else
{
	echo "<p>$Nom $Prenom est majeur !</p>";
}

if ($Option == "SLAM") {
	echo "<p>$Option : Excellent choix !</p>";
}
else
{
	echo "<p>$Option : $Prenom change vite !!!</p>";
}

?>

</body>
</html>