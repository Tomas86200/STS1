<!DOCTYPE html>

<?php
	include ('\kernel\utilisateurModel.php');
			
	echo "Création de l'utilisateur<br/>";
			
	$Arcanin = new Utilisateur(3,"","", "");
		
	echo "Vous êtes enregistrés !<br/>";
			
	/*echo "Votre pseudo :".$Arcanin->getPseudo()."<br/>";
	echo "Votre email :".$Arcanin->getEmail();
	
	$Arcanin->createUtilisateur();*/
	
	$Arcanin->read(1);
	
	echo "<br/><br/>";
	print_r($Arcanin);
	$a = $Arcanin->find("pseudoutilisateur='Arcanin'");
	print_r($a);
	
	
	
	/*echo "<br/>".
	"ID : ".
	$infos['idutilisateur'].
	"<br/>".
	"Pseudo : ".
	$infos['pseudoutilisateur'].
	"<br/>".
	"Email : ".
	$infos['emailutilisateur'];*/
	
	//$Arcanin->delete(4);
	
	
	
?>
