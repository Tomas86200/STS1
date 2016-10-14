<!DOCTYPE html>

<?php
	include ('\kernel\Model.php');
	include ('\kernel\utilisateurModel.php');
	include ('\kernel\Sujet.php');
	include ('\kernel\Message.php');
						
	//$Arcanin = new Utilisateur(5,"Mew","lol", "mew@nintendo-pokemon.jap");
	//$Pokemon = new Sujet(4,"","",11);
	$Message = new Message(5,"",'','',1,1);
	
	//$Pokemon->create();
	//$Arcanin->create();
	//$Message->create();

	
	echo "<br/><br/>";
	//print_r($Arcanin);
	//$a = $Arcanin->find("pseudoutilisateur='Pikachu'");
	//print_r($a);
	
	//print_r($Pokemon);
	//$b = $Pokemon->find("titresujet='Pokemon Go'");
	//print_r($b);
	
	//print_r($Message);
	//$c = $Message->find("idmessage=1");
	//print_r($c);
	
	echo"<br/> <br/>";
	//$Arcanin->delete(10);
	//$Pokemon->delete(3);
	//$Message->delete(3);
	
	echo "<br/> <br/>";
	//$Arcanin->read(2);
	//$Pokemon->read(4);
	$Message->read(5);
	
	echo "<br/> <br/>";
	//$Arcanin->update(3);
	//$Pokemon->update(1);
	$Message->setContenu("Salut les vieux");
	$Message->update();
	
	
	
?>
