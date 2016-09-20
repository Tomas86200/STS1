import java.util.Date;


public class Operateur extends Salarie{
	private Date dateAffectation;
	private String formationOrigine;
	
	public Operateur(String matricule, String nom, String prenom,
			String adresse, String telephone, Date dateNaissance,
			Date dateAffectation, String formationOrigine) {
		super(matricule, nom, prenom, adresse, telephone, dateNaissance);
		this.dateAffectation = dateAffectation;
		this.formationOrigine = formationOrigine;
	}
	
	
}
