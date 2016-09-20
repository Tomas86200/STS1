<?php

	class Utilisateur{
		private $id;
		private	$motDePasse;
		private $pseudo;
		private $email;
		
		public function __construct($pseudo, $motDePasse, $email){
			$this->id = $id;
			$this->pseudo = $pseudo;
			$this->motDePasse = $motDePasse;
			$this->email = $email;
		}
		public function getId(){
			return $id;
		}

		public function getPseudo(){
			return $pseudo;
		}
		
		public function getMotDePasse(){
			return $motDePasse;
		}

		public function getEmail(){
			return $email;
		}
		
			private function connexion(){
			$host = "localhost";	
			$nomdb = "forum";
			$user ="postgres";
			$mdp = "pgadmin";
		
		
		try{
			$db = new PDO("pgsql:host=".$host.";dbname=".$nomdb, $user, $mdp);
		}
		catch{
			print "ERREUR : ".$getMessage()."<br/>";
			die();
		}
	}
	
	public function createUtilisateur($utilisateur){
		$db = connexion();
		
		//$id = $utilisateur-> ;
		$pseudo = $utilisateur->pseudo;
		$mdp = $utilisateur->mdp;
		$email = $utilisateur->email;
		
		$requete = "INSERT INTO UTILISATEUR(pseudoUtilisateur, mdpUtilisateur,emailUtilisateur)
					VALUES ('{tintin}', '{secret}','{abc@opml.fr}');";
					
		$bd->query($requete);
	}

	}
?>