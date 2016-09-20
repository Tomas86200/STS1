CREATE TABLE UTILISATEUR (
	idUtilisateur SERIAL,
	pseudoUtilisateur varchar(20),
	emailUtilisateur varchar(50),
	mdpUtilisateur	varchar(50),
	CONSTRAINT pk_idUtilisateur PRIMARY KEY (idUtilisateur)
	);
	
CREATE TABLE SUJET (
	idSujet SERIAL,
	titreSujet varchar(50),
	descriptionSujet varchar(200),
	idUtilisateurSujet int,
	CONSTRAINT pk_idSujet PRIMARY KEY (idSujet),
	CONSTRAINT fk_idUtilisateurSujet FOREIGN KEY (idUtilisateurSujet) REFERENCES UTILISATEUR(idUtilisateur)
	);
	
CREATE TABLE MESSAGE (
	idMessage SERIAL,
	contenuMessage varchar(1000),
	dateCreationMessage date,
	dateEditionMessage date,
	idUtilisateurMessage int,
	idSujetMessage int,
	CONSTRAINT pk_idMessage PRIMARY KEY (idMessage, idSujetMessage),
	CONSTRAINT fk_idUtilisateurMessage FOREIGN KEY (idUtilisateurMessage) REFERENCES UTILISATEUR(idUtilisateur),
	CONSTRAINT fk_idSujetMessage FOREIGN KEY (idSujetMessage) REFERENCES SUJET(idSujet)
	);

