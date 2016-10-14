<?php
	/**
		*		Classe de gestion d'employés
		*		@author LUTAU T
		*		@version 1.0
		*/
		
	//include('Model.php');
	
	class utilisateur extends Model {
		protected $idutilisateur;
		protected $mdputilisateur;
		protected $pseudoutilisateur;
		protected $emailutilisateur;
		
		
		public function __construct($idutilisateur, $pseudoutilisateur, $motDePasseutilisateur, $emailutilisateur){
			parent::__construct('utilisateur','idutilisateur', true);
			$this->idutilisateur = $idutilisateur;
			$this->pseudoutilisateur = $pseudoutilisateur;
			$this->mdputilisateur = $motDePasseutilisateur;
			$this->emailutilisateur = $emailutilisateur;
			
		}
		
		/**
		*		getId - Renvoie l'id de l'utilisateur
		*
		*		@return int idutilisateur
		*		@date 07/10/2016
		*/
		public function getId(){
			return $this->idutilisateur;
		}

		/**
		*		getPseudo - Renvoie le pseudo de l'utilisateur
		*
		*		@return String pseudoutilisateur
		*		@date 07/10/2016
		*/
		public function getPseudo(){
			return $this->pseudoutilisateur;
		}
		
		/**
		*		getMotDePasse - Renvoie le mot de passe de l'utilisateur
		*
		*		@return String motDePasseutilisateur
		*		@date 07/10/2016
		*/
		public function getMotDePasse(){
			return $this->motDePasseutilisateur;
		}

		/**
		*		getEmail - Renvoie l'email de l'utilisateur
		*
		*		@return String emailutilisateur
		*		@date 07/10/2016
		*/
		public function getEmail(){
			return $this->emailutilisateur;
		}

		public function setId($idutilisateur){
			
		}
	}
?>