import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Semis {
	private Date dateSemis;
	private float surfaceSemeeHa;
	private float qteRecolteParUnite;
	private String uniteRecolte;
	private Culture culture;
	private Semence semence;
	private List<Traitement> lesTraitements;
	
	public Semis(Date dateSemis, float surfaceSemeeHa,
			float qteRecolteParUnite, String uniteRecolte, Culture culture, Semence semence) {
		this.dateSemis = dateSemis;
		this.surfaceSemeeHa = surfaceSemeeHa;
		this.qteRecolteParUnite = qteRecolteParUnite;
		this.uniteRecolte = uniteRecolte;
		this.culture=culture;
		this.semence=semence;
		this.lesTraitements = new ArrayList<Traitement>();
	}

	public void addTraitement (Traitement traitement) {
		this.lesTraitements.add(traitement);
	}

	public Traitement removeTraitement(int index) {
		Traitement traitementSupprime=null;
		if (index>0 && index < this.lesTraitements.size()) traitementSupprime=this.lesTraitements.remove(index);
		return traitementSupprime;
	}

	public void removeAllTraitement() {
		this.lesTraitements.clear();
	}

	public Traitement getTraitement(int index) {
		Traitement traitementTrouve=null;
		if (index>0 && index < this.lesTraitements.size()) traitementTrouve=this.lesTraitements.get(index);
		return traitementTrouve;
	}
	
	public int getIndexTraitement (Traitement traitement) {
		int index=-1;
		int i=0;
		while ( index==-1 && i<this.lesTraitements.size()) {
			if ( this.lesTraitements.get(i).equals(traitement))
				index = i;
			else 
				i++;
		}
		return index;
	}

	public List<Traitement> getLesTraitement() {
		return this.lesTraitements;
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
		return culture;
	}

	public void setCulture(Culture culture) {
		this.culture = culture;
	}
	
	public Semence getSemence() {
		return semence;
	}

	public void setSemence(Semence semence) {
		this.semence = semence;
	}

	@Override
	public String toString() {
		return "Semis [dateSemis=" + dateSemis + ", surfaceSemeeHa="
				+ surfaceSemeeHa + ", qteRecolteParUnite=" + qteRecolteParUnite
				+ ", uniteRecolte=" + uniteRecolte + culture.toString() + semence.toString()+ "]";
	}		
	
}
