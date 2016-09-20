<!DOCTYPE html>

<?php
	include '\kernel\utilisateurModel.php';
			
	echo "Création de l'utilisateur";
			
	$Arcanin = new Utilisateur("Arcanin","jesuisgenial", "arcanin@pokemon-nintendo.jap");
		
	echo "Vous êtes enregistrés !";
			
	echo "Votre pseudo :".$Arcanin.getPseudo();
	echo "Votre email :".$Arcanin.getEmail();
?>
