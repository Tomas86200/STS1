<?php
	include('Model.php');
	
	class utilisateur extends Model {
		protected $idutilisateur;
		protected $mdputilisateur;
		protected $pseudoutilisateur;
		protected $emailutilisateur;
		
		//Attributs techniques
		protected $table = 'utilisateur';
		protected $pk = 'idutilisateur'; 
		
		public function __construct($idutilisateur, $pseudoutilisateur, $motDePasseutilisateur, $emailutilisateur){
			$this->idutilisateur = $idutilisateur;
			$this->pseudoutilisateur = $pseudoutilisateur;
			$this->mdputilisateur = $motDePasseutilisateur;
			$this->emailutilisateur = $emailutilisateur;
			$this->table = "utilisateur";
			$this->pk = "idutilisateur";
		}
		public function getId(){
			return $this->idutilisateur;
		}

		public function getPseudo(){
			return $this->pseudoutilisateur;
		}
		
		public function getMotDePasse(){
			return $this->motDePasseutilisateur;
		}

		public function getEmail(){
			return $this->emailutilisateur;
		}	

	}
?>