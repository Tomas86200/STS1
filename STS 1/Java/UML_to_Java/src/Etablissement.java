import java.util.ArrayList;


public class Etablissement 
{
	private String code;
	private String adresse;
	private String prospecteur;
	private ArrayList<Region> LesRegions;
	
	public Etablissement(String pCode,String pAdr, String pProspect)
	{
		code = pCode;
		adresse = pAdr;
		prospecteur = pProspect;
		LesRegions = new ArrayList();
	}

	public String getCode() {
		return code;
	}

	public String getAdresse() {
		return adresse;
	}

	public String getProspecteur() {
		return prospecteur;
	}

	public ArrayList<Region> getLesRegions() {
		return LesRegions;
	}
	
}
