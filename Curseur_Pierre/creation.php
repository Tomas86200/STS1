<!DOCTYPE html>
<html>
<meta charset="UTF8">
<head>
	<title>IHM</title>
</head>
<body>

<p>Enregistrement d'un élève</p>
<form action="majeur.php" method="post">
<table>
	<tr>
		<td>Nom</td>
		<td><input name="nom" type="text"></input></td>
	</tr>
	<tr>
		<td>Prénom</td>
		<td><input name="prenom" type="text"></input></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input name="age" type="number" min="0"></input></td>
	</tr>
	<tr>
		<td>Option</td>
		<td><select name="option">
		<option value="SLAM">SLAM</option>
		<option value="SISR">SISR</option>
	</select></td>
	</tr>
	<tr>
		<td><input type="submit" value="Envoyer"></input></td>
		<td></input><input type="button" name="retour" value="Retour" onclick="self.location.href='index.php'"onclick></td>
	</tr>
</table>
	
</form>

</body>
</html>