CREATE TABLE SALARIE(
	matricule int,
	nom varchar(25),
	prenom varchar(25),
	dateNaissance date,
	adresse varchar(100),
	telephone varchar(10),
	CONSTRAINT pk_salarie PRIMARY KEY (matricule)
);

CREATE TABLE DIPLOME(
	numeroDiplome serial,
	libelle varchar(100),
	CONSTRAINT pk_Diplome PRIMARY KEY (numeroDiplome)
);

CREATE TABLE SUPERVISEUR(
	matriculeSuperviseur int,
	datePremiereAffectation date,
	Origine varchar(50),
	CONSTRAINT pk_Superviseur PRIMARY KEY (matriculeSuperviseur),
	CONSTRAINT fk_Superviseur_idSalarie FOREIGN KEY (matriculeSuperviseur) REFERENCES SALARIE(matricule)
);

CREATE TABLE UNITE_PRODUCTION(
	codeUnite int,
	nomUnite varchar(100),
	CONSTRAINT pk_Unite PRIMARY KEY (codeUnite)
);

CREATE TABLE LIGNE_PRODUIT(
	referenceProduit int,
	codeUniteProduit int,
	nomLigne varchar(100),
	CONSTRAINT pk_Ligne PRIMARY KEY (referenceProduit),
	CONSTRAINT fk_CodeUniteLigne FOREIGN KEY (codeUniteProduit) REFERENCES UNITE_PRODUCTION(codeUnite)
);

CREATE TABLE POSTE_TRAVAIL(
	numeroPoste int,
	referenceProduitPoste int,
	nom varchar(50),
	libelle varchar(100),
	dateInstallation date,
	dateVerification date,
	intervalleMaxVerification int,
	CONSTRAINT pk_Poste PRIMARY KEY (numeroPoste)
);

CREATE TABLE HABILITATION(
	niveau int,
	numeroHabilitation int,
	libelle varchar(100),
	CONSTRAINT pk_Habilitation PRIMARY KEY (niveau,numeroHabilitation),
	CONSTRAINT fk_HabilitationPoste FOREIGN KEY (numeroHabilitation) REFERENCES POSTE_TRAVAIL(numeroPoste)
); 

CREATE TABLE COMPETENCE(
	codeCompetence int,
	libelle varchar(100),
	CONSTRAINT pk_Competence PRIMARY KEY (codeCompetence)
);

CREATE TABLE PRODUIT(
	numeroProduit int,
	reference int,
	nomProduit varchar(50),
	datePremiereFbrication date,
	descriptifProduit varchar(250),
	CONSTRAINT pk_Produit PRIMARY KEY (numeroProduit,reference),
	CONSTRAINT fk_ProduitLigne FOREIGN KEY (reference) REFERENCES LIGNE_PRODUIT(referenceProduit)
);

CREATE TABLE EQUIPE(
	numeroEquipe int,
	mariculeSuperviseur int,
	datePriseEnCharge date,
	CONSTRAINT pk_Equipe PRIMARY KEY (numeroEquipe),
	CONSTRAINT fk_SuperviseurEquipe FOREIGN KEY (mariculeSuperviseur) REFERENCES SUPERVISEUR(matriculeSuperviseur)
);

CREATE TABLE OPERATEUR(
	matriculeOperateur int,
	numeroDiplomeOperateur int,
	numeroPosteOperateur int,
	numeroEquipeOperateur int,
	dateAffectation date,
	formationOrigine varchar(100),
	CONSTRAINT pk_Operateur PRIMARY KEY (matriculeOperateur),
	CONSTRAINT fk_matricule FOREIGN KEY (matriculeOperateur) REFERENCES SALARIE(matricule),
	CONSTRAINT fk_numero FOREIGN KEY (numeroDiplomeOperateur) REFERENCES DIPLOME(numeroDiplome),
	CONSTRAINT fk_numeroPoste FOREIGN KEY (numeroPosteOperateur) REFERENCES POSTE_TRAVAIL(numeroPoste),
	CONSTRAINT fk_numeroEquipe FOREIGN KEY (numeroEquipeOperateur) REFERENCES EQUIPE(numeroEquipe)
);

CREATE TABLE COMPOSER(
	niveauComposer int,
	numeroComposer int,
	codeCompetenceHabilitation int,
	CONSTRAINT pk_Composer PRIMARY KEY (niveauComposer,numeroComposer,codeCompetenceHabilitation),
	CONSTRAINT fk_ComposerCompetence FOREIGN KEY (codeCompetenceHabilitation) REFERENCES COMPETENCE(codeCompetence),
	CONSTRAINT fk_Habilitation FOREIGN KEY (niveauComposer, numeroComposer) REFERENCES HABILITATION(niveau,numeroHabilitation)
);

CREATE TABLE CONSTRUIRE(
	numeroPosteConstruire int,
	numeroProduitConstruire int,
	reference int,
	CONSTRAINT pk_Construire PRIMARY KEY (numeroPosteConstruire,numeroProduitConstruire,reference),
	CONSTRAINT fk_construirePoste FOREIGN KEY (numeroPosteConstruire) REFERENCES POSTE_TRAVAIL(numeroPoste),
	CONSTRAINT fk_ComposerProduit FOREIGN KEY (numeroProduitConstruire,reference) REFERENCES PRODUIT(numeroProduit,reference)
);