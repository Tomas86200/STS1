<?php
		class Message extends Model{
			protected $idmessage;
			protected $contenumessage;
			protected $datecreationmessage;
			protected $dateeditionmessage;
			protected $idutilisateurmessage;
			protected $idsujetmessage;
			
			public function __construct($id,$contenu,$datecreation,$dateedition,$idutil, $idsujet){
				parent::__construct('message', 'idmessage', true);
				$this->idmessage = $id;
				$this->contenumessage = $contenu;
				$this->datecreationmessage = $datecreation;
				$this->dateeditionmessage = $dateedition;
				$this->idutilisateurmessage = $idutil;
				$this->idsujetmessage = $idsujet;
			}
			
			public function getId(){
				return $this->idmessage;
			}
			
			public function setId($id){
				$this->idmessage = $id;
			}
			
				public function getContenu(){
				return $this->contenumessage;
			}
			
			public function setContenu($contenu){
				$this->contenumessage = $contenu;
			}
			
				public function getCreation(){
				return $this->datecreationmessage;
			}
			
			public function setCreation($datecreation){
				$this->datecreationmessage = $datecreation;
			}
			
				public function getEdition(){
				return $this->dateeditionmessage;
			}
			
			public function setEdition($dateedition){
				$this->dateeditionmessage = $dateedition;
			}
			
				public function getUtilisateur(){
				return $this->idutilisateurmessage;
			}
			
			public function setUtilisateur($idutilisateur){
				$this->idutilisateurmessage = $idutil;
			}
			
				public function getSujet(){
				return $this->idsujetmessage;
			}
			
			public function setSujet($idsujet){
				$this->idsujetmessage = $idsujet;
			}
		}
?>		