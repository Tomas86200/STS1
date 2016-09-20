import java.util.ArrayList;



public class Classe 
{
	private ArrayList<Eleve> maClasse;
	
	public Classe()
	{
		maClasse = new ArrayList <Eleve> ();
	}
	
	public void AjouterEleve(Eleve Uneleve)
	{
		maClasse.add(Uneleve);
	}
	
	public void SupprimerEleve(Eleve Uneleve)
	{
		maClasse.remove(Uneleve);
	}
	
	public void AfficherTousLesEleves ()
	{
		for(Eleve Uneleve: maClasse)
		{
			System.out.println(Uneleve.getNom() + " " + Uneleve.getdNaissance() + " " + Uneleve.getAdresse());
		}
	}
	
	public void TriAlphaEleve()
	{
		
	}
	
}
