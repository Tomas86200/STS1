<?php
		//include('Model.php');
		class Sujet extends Model{
			protected $idsujet;
			protected $titresujet;
			protected $descriptionsujet;
			protected $idutilisateursujet;
			
			public function __construct($id, $titre, $description, $idutil){
				parent::__construct('sujet', 'idsujet', true);
				$this->idsujet = $id;
				$this->titresujet = $titre;
				$this->descriptionsujet = $description;
				$this->idutilisateursujet = $idutil;
			}
			
			public function getId(){
				return $this->idsujet;
			}
			
			public function getTitre(){
				return $this->titresujet;
			}
			
			public function getDescription(){
				return $this->descriptionsujet;
			}
			
			public function getIdUtil(){
				return $this->idutilisateursujet;
			}
			
			public function setId($id){
				$this->idsujet = $id;
			}
			
			public function setTitre($titre){
				$this->titresujet = $titre;
			}
			
			public function setDescription($description){
				$this->descriptionsujet = $description;
			}
			
			public function setIdUtil($idutil){
				$this->idutilisateursujet = $idutil;
			}
		}
?>		