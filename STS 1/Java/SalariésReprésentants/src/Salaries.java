
public class Salaries
{
	private int num;
	private String nom;
	private String prenom;
	private String rue;
	private String ville;
	private String fonction;
	private float salaire;
	
	//Tous les param�tres sont en entr�e.
	public Salaries(int nu, String no, String pr, String ru, String vil, String fo, float sa)
	{
		//Permet d'initialiser les variables priv�es.
		num=nu;
		nom=no;
		prenom=pr;
		rue=ru;
		ville=vil;
		fonction=fo;
		salaire=sa;
	}
	
	public void AfficherCoordonnees()
	{
		//Permet d'afficher nom,prenom et adresse du salari�.
		System.out.println(prenom + " " + nom + " " + rue + " " + ville);
	}
	
	public void AugmenterSalaire(float TauxPourcentage)
	{
		//Permet d'augmenter le salaire du pourcentage saisi.
		salaire = salaire*(1 + (TauxPourcentage/100)); 
	}
	
	public void ModifierNom (String NouvNom)
	{
		//Permet de modifier le nom avec la nouvelle donn�e.
		nom=NouvNom;
	}
	
	public void ModifierAdresse(String NouvRue, String NouvVille)
	{
		//Permet de modifier l'adresse avec les nouvelles donn�es.
		rue=NouvRue;
		ville=NouvVille;
	}
	
	public void AfficherSalaire()
	{
		//Permet d'afficher la fonction et le salaire du salari�.
		System.out.println(fonction + " : " + num);
		System.out.println(salaire + " � ");
	}
	public int getNum()
	{
		return num;
	}
}

