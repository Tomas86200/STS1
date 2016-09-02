
public class Eleve 
{
	private String nom;
	private float note;

	
	public Eleve(String nom, float note)
	{
		setnom(nom);
		setnote(note);
	}
	
	
	//Methode alternative pour l'init
	/*public void init_eleve(String nom, float note)
	{
		this.nom=nom;
		this.note=note;
	}*/
		
	//retourne le nom de l'eleve
	public String Donnenom(){
		return nom;
	}
	
	//retourne la note de l'eleve
	public float Donnenote(){
		return note;
		
	}
	
	public void setnote(float note){
		this.note=note;
	}

	public void setnom(String nom)
	{
		this.nom=nom;
	}
}	
