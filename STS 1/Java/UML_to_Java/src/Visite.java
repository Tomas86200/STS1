
public class Visite
{
	private String dateVisite;
	private String prospecteur;
	
	public Visite(String pDateVisite, String pProspecteur)
	{
		dateVisite = pDateVisite;
		prospecteur = pProspecteur;
	}
	public Visite(String pDateVisite)
	{
		dateVisite = pDateVisite;
		prospecteur = "Personne";
	}
	public void setProspecteur(String pProspecteur)
	{
		prospecteur = pProspecteur;
	}
	public String getDateVisite() {
		return dateVisite;
	}
	public String getProspecteur() {
		return prospecteur;
	}
}
