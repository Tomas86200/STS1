import java.util.ArrayList;


public class Organisation 
{
	private String nom;
	private String adresse;
	private ArrayList<Visite> lesVisites;
	private Region laRegion;
	
	public Organisation(String pNom,String pAdresse, Region pRegion)
	{
		nom = pNom;
		adresse = pAdresse;
		laRegion = pRegion;
		lesVisites = new ArrayList();
	}

	public String getNom() {
		return nom;
	}

	public String getAdresse() {
		return adresse;
	}

	public ArrayList<Visite> getLesVisites() {
		return lesVisites;
	}

	public Region getLaRegion() {
		return laRegion;
	}
	public void ajoutVisite(Visite pLaVisite)
	{
		lesVisites.add(pLaVisite);
	}
}
