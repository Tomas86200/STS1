import java.util.Date;


public class PosteTravail {
	private int numeroPoste, intervalleMaxVerification;
	private String nomPoste, libellePoste;
	private Date dateInstallationPoste, dateVerificationPoste;
	
	public PosteTravail(int numeroPoste, int intervalleMaxVerification,
			String nomPoste, String libellePoste, Date dateInstallationPoste,
			Date dateVerificationPoste) {
		super();
		this.numeroPoste = numeroPoste;
		this.intervalleMaxVerification = intervalleMaxVerification;
		this.nomPoste = nomPoste;
		this.libellePoste = libellePoste;
		this.dateInstallationPoste = dateInstallationPoste;
		this.dateVerificationPoste = dateVerificationPoste;
	}
	
	
}
