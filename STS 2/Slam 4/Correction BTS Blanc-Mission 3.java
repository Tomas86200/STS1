//Question 6
La collection lesVisites dans la classe Organisation n'est pas instanciée dans le constructeur. Il manque une ligne : "this.lesVisites = new ArrayList<lesVisites>();"

//Question 7

//1)
	Visite uneVisite = new Visite (txtSaisieDateVisite.getText());
	
//2)
	public void(ajoutVisite(Visite.pLaVisite){
		pLaVisite.setProspecteur (this.laRegion.getleEtablissement().getProspecteur());
		this.lesVisites.add(pLaVisite);
	}
	
//Question 8

public class Region {
	public float indicateurCouverture(){
		int i, taille, nbVisite;
		nbVisite = null;
		taille = this.lesOrganisations.size();
		indicateur = null;
		for (i = 0; i < taille; i++){
			if (this.lesOrganisations.get(i).getlesVisites().size() > 0) {
				nbVisite++;
			}
		}
		return (nbVisite / taille);
	}
}	