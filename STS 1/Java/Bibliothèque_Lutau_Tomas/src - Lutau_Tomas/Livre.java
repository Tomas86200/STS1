
public class Livre 
{
	private String nomaut;
	private String titre;
	
	public Livre(String nom, String titrelivre)
	{
		nomaut = nom;
		titre= titrelivre;
	}
	public String donnetitre()
	{
		return(titre);
	}
	public String donnenom()
	{
		return(nomaut);
	}
}
