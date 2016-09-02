<html>
<head>
	<title>
	Premier programme de test
	</title>
</head>

<body>
<h1> Ceci est mon premier programme PHP</h1>
<br />
		Bonjour, nous sommes le :
		<?PHP
		echo date ("d / m / Y ");
		echo "<BR />et il est : ".date("H : i : s");
		$Repertoire = "Images";//Nom du dossier des images
	$Indice = opendir($Repertoire);//ouverture du fichier
	$Image = 0;//Créer et Règle le compteur d'image à 0
	$TargetPNG = "/png/";//paramètre recherche fichier png
	$TargetJPG = "/jpg/";//paramètre recherche fichier jpg
	$ImageLigne = 0;
	do  
	{
		
		echo "<tr>";
		while($ImageLigne < 4 && !empty($Fichier))
		{
			$Fichier = readdir($Indice);
			if(preg_match($TargetPNG, $Fichier) || preg_match($TargetJPG, $Fichier))//Test le type
			{
				echo "<td>";
				echo "<a href=\"Images/", $Fichier, "\" ><img src=\"$Repertoire/$Fichier\" height=\"70\">", $Fichier, "</img></a>";//Affiche l'image avec un lien vers elle
				$Image++;//compteur d'image
				$ImageLigne++;
				echo "</td>";
			}
			
		}
		echo "</tr>";
		$ImageLigne = 0;
		
	}while(!empty($Fichier));//Test s'il n'y a plus de nouveau fichiers
			?>
</body>
</html>		