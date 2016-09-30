<?php
	

	abstract class Model{
		protected $table;
		protected $pk;
		
		public function __construct() {
			$this->table = "";
			$this->pk = "";
		}
		
		// Fonction pour la connexion
		protected function connexion(){
			$host = "localhost";	
			$nomdb = "forum";
			$user ="postgres";
			$mdp = "pgadmin";
			
			try{
				$db = new PDO("pgsql:host=".$host.";dbname=".$nomdb, $user, $mdp);
				echo "<br/>connexion...<br/>";
			}
			catch(PDOException $e){
				echo "ERREUR : ".$e->getMessage()."<br/>";
				die();
			}
			return $db;
		}
		
		public function delete($id){
			$req = "Delete from {$this->table} WHERE {$this->pk} = $id";
			
			$base = $this->connexion();
			$sql = $base->prepare($req);
			
			$sql->execute();
			//echo $req;
		}
		
		public function read($id){
		$req2 = "SELECT * FROM {$this->table} WHERE {$this->pk} = $id";
			
			$base = $this->connexion();
			
			//Préparation de la requête pour récupérer les infos
			$tab = $base->query($req2);
			
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
		
		public function find($condition){
			$sql="SELECT * FROM {$this->table} WHERE $condition";
			//echo $sql;
			$connexion=$this->connexion();
			$sql=$connexion->query($sql);
			$tmp[]="";
			while ($result=$sql->fetch(PDO::FETCH_ASSOC)){;
				$tmp[] = $result;
			}
			return $tmp;
		}
		
		public function create(){
			$req3 = "INSERT INTO {$this->$table}
						VALUES (";
						
			foreach($this as $cle=>$val){
				if($notFirstComma > 0){
					$req3 = $req3.$val.", ";
				}
			}
			$req3 = $req3.")";
			
			$db = $this->connexion();
						
			$db->execute($req3);
		}
	}	