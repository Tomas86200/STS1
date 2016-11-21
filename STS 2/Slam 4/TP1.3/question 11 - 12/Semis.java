import java.util.Date;

public class Semis {
	private Date dateSemis;
	private float surfaceSemeeHa;
	private float qteRecolteParUnite;
	private String uniteRecolte;
	private Culture uneCulture;
	
	public Semis(Date dateSemis, float surfaceSemeeHa,
			float qteRecolteParUnite, String uniteRecolte, Culture laCulture) {
		this.dateSemis = dateSemis;
		this.surfaceSemeeHa = surfaceSemeeHa;
		this.qteRecolteParUnite = qteRecolteParUnite;
		this.uniteRecolte = uniteRecolte;
		this.uneCulture=laCulture;
	}

	public Date getDateSemis() {
		return dateSemis;
	}

	public void setDateSemis(Date dateSemis) {
		this.dateSemis = dateSemis;
	}

	public float getSurfaceSemeeHa() {
		return surfaceSemeeHa;
	}

	public void setSurfaceSemeeHa(float surfaceSemeeHa) {
		this.surfaceSemeeHa = surfaceSemeeHa;
	}

	public float getQteRecolteParUnite() {
		return qteRecolteParUnite;
	}

	public void setQteRecolteParUnite(float qteRecolteParUnite) {
		this.qteRecolteParUnite = qteRecolteParUnite;
	}

	public String getUniteRecolte() {
		return uniteRecolte;
	}

	public void setUniteRecolte(String uniteRecolte) {
		this.uniteRecolte = uniteRecolte;
	}

	public Culture getCulture() {
		return uneCulture;
	}

	public void setCulture(Culture laCulture) {
		this.uneCulture = laCulture;
	}

	@Override
	public String toString() {
		return "Semis [dateSemis=" + dateSemis + ", surfaceSemeeHa="
				+ surfaceSemeeHa + ", qteRecolteParUnite=" + qteRecolteParUnite
				+ ", uniteRecolte=" + uniteRecolte + uneCulture.toString()+ "]";
	}		
	
}
