<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
	<title>Modifié</title>
</head>
<body>
<?php
$IdEleve=$_GET['IdEleve'];
$db = new PDO('mysql:host=127.0.0.1;port=3306;dbname=test;charset=UTF8;','root','', array(PDO::ATTR_PERSISTENT=>true));

$req2=$db->prepare('DELETE FROM ELEVE  WHERE idEleve = '. $db->quote($IdEleve));

	
	$req2->execute();
	header('Location: index.php');
	exit();

?>

</body>
</html>