<?php
	/*
	*		@author LUTAU T
	*/

	abstract class Model{
		private $table;
		private $pk;
		private $attribtech;
		private $autoincrement;
		
		/**
		*		__construct - Constructeur de la classe Model
		*		$table, $pk et $autoincrement font partis de l'objet Model.
		*
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		public function __construct($table, $pk, $autoincrement) {
			$this->table = $table;
			$this->pk = $pk;
			$this->autoincrement = $autoincrement;
			$this->attribtech = array('table', 'pk','attribtech','autoincrement');
		}
		
	/**
		*		connexion - Connexion à la base de données
		*		Charge les informations de connexion depuis un fichier configuration (.ini)
		*
		*		@return PDO La connexion à la base de donnée
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		protected function connexion(){
			$ini_parse = parse_ini_file("/conf/bdd.ini");//Fichier de configuration
			$dsn = $ini_parse['type'].":dbname=".$ini_parse['dbName'].";host=".$ini_parse['host'].";port=".$ini_parse['port'];
			try{
				$DB = new PDO($dsn, $ini_parse['pseudo'], $ini_parse['mdp']);
			}catch(PDOException $e){
				echo "Connexion échouée : ".$e->getMessage();
				$DB = null;
			}
			return $DB;
		}
		
				/**
		*		delete - Suppression d'un enregistrement de la base de données
		*		Supprime un enregistrement dans la base de données en fonction de l'id
		*
		*		@param int $id identifiant de l'enregistrement à supprimer
		*		@see Model::connexion()		 Connexion à la base
		*		@author LUTAU T
		*		@date 27/09/2016
		*/
		public function delete($id){
			$req = "Delete from {$this->table} WHERE {$this->pk} = $id";
			
			$base = $this->connexion();
			$sql = $base->prepare($req);
			
			$sql->execute();
			$base = null;
			//echo $req;
		}
		
		/**
		*		read - Lire un enregistrement
		*		Lit un enregistrement en fonction de l'id
		*
		*		@param String $id identifiant de l'enregistrement à lire
		*		@see Model::connexion()		Connexion à la base
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		public function read($id){
		$req2 = "SELECT * FROM {$this->table} WHERE {$this->pk} = $id";
			
			$base = $this->connexion();
			
			//Préparation de la requête pour récupérer les infos
			$tab = $base->query($req2);
			$base = null;
			
			//Lecture
			$infos= $tab->fetch(PDO::FETCH_ASSOC);
			//retourne toute la table dans un tableau dans $infos donc print_r pour l'afficher

			foreach($infos as $cle=>$val){
				//echo $cle." : ".$val . "<br/>" ;
				$this->$cle = $val;
				//$s ="set_{$key} ('{$val}')";
				//echo "{$s}</br>";
			}
			//return($infos);
		}
		
		/**
		*		find - trouver un enregistrement
		*		Trouve un enregistrement en fonction d'une condition
		*
		*		@param String $condition condition pour trier les enregistrements à trouver
		*		@see Model::connexion()		Connexion à la base
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		public function find($condition){
			$sql="SELECT * FROM {$this->table} WHERE $condition";
			//echo $sql;
			$connexion=$this->connexion();
			$sql=$connexion->query($sql);
			$connexion = null;
			$tmp[]="";
			while ($result=$sql->fetch(PDO::FETCH_ASSOC)){;
				$tmp[] = $result;
			}
			return $tmp;
		}
		
		/**
		*		create - Créer un enregistrement dans la base de données
		*		Créer un enregistrement à partir de l'objet courant
		*
		*		@see Model::connexion()		Connexion à la base
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		public function create(){
			$prop = "";
			$value ="";
			
			if( (!in_array($this->pk, $this->attribtech)) && $this->autoincrement){
				$this->attribtech[] = $this->pk;
			}
			foreach($this as $cle=>$val){
				if(!in_array($cle,$this->attribtech)){
					$prop = "{$prop} {$cle},";
					$value = "{$value} '{$val}',";
				}
			}
			$prop = substr($prop, 0, -1);
			$value= substr($value, 0, -1); 
			$req3 = "INSERT INTO {$this->table}({$prop}) VALUES({$value})";
			echo "<br/>".$req3."<br/>";
			$db = $this->connexion();		
			$db->exec($req3);
			$db = null;
		}
		/**
		*		update - Modifier un enregistrement dans la base de données
		*		Modifie un enregistrement à partir de l'identifiant de l'objet courant
		*
		*		@param String $id identifiant de l'enregistrement à modifier
		*		@see Model::connexion()		Connexion à la base
		*		@author LUTAU T
		*		@date 07/10/2016
		*/
		public function update(){
			$tabattrib = $this->attribtech;
			$req3 = "UPDATE {$this->table} SET ";
			
				if(!in_array($this->pk,$tabattrib)){
					$tabattrib[] =$this->pk;
				}
				
				foreach($this as $cle=> $val){
					if(!in_array($cle,$tabattrib)){
						$req3 = "{$req3} {$cle} = '{$val}',";
					}
				}
			$req3 = substr($req3, 0, -1);
			$req3 = $req3." WHERE {$this->pk} = {$this->{$this->pk}}";
			echo $req3;
			$db = $this->connexion();		
			$db->exec($req3);
			$db = null;
		}
	}	