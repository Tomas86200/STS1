import java.util.Date;


public class Traitement {

	private Date dateTraitement;

	public Traitement(Date dateTraitement) {
		this.dateTraitement = dateTraitement;
	}

	public Date getDateTraitement() {
		return dateTraitement;
	}

	public void setDateTraitement(Date dateTraitement) {
		this.dateTraitement = dateTraitement;
	}

	@Override
	public String toString() {
		return "Traitement [dateTraitement=" + dateTraitement.toString() + "]";
	}

}
