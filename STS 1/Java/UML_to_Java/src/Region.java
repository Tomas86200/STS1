import java.util.ArrayList;


public class Region 
{
	private int numero;
	private String nom;
	private ArrayList<Organisation> LesOrganisations;
	private Etablissement LeEtablissement;
	
	public Region(int pNum, String pNom, Etablissement pEtablissement)
	{
		numero= pNum;
		nom = pNom;
		LeEtablissement = pEtablissement;
		LesOrganisations = new ArrayList();
	}
	public int getNumero() {
		return numero;
	}
	public String getNom() {
		return nom;
	}
	public Etablissement getLeEtablissement() {
		return LeEtablissement;
	}
	public ArrayList<Organisation> getLesOrganisations() {
		return LesOrganisations;
	}
	public void ajoutOrganisation(Organisation pOrganisation)
	{
		LesOrganisations.add(pOrganisation);
	}
}
