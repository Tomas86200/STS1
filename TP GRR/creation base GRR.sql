CREATE TABLE cours (
    coursId int  NOT NULL,
    libelle varchar(80) NOT NULL,
	CONSTRAINT cours_pkey PRIMARY KEY (coursId)
);

CREATE TABLE enseignant (
    enseignantId int  NOT NULL,
    login varchar(80),
    mp varchar(80),
    nom varchar(80),
    prenom varchar(80),
	CONSTRAINT enseignant_pkey PRIMARY KEY (enseignantId)
);

CREATE TABLE ressource (
    ressourceId int  NOT NULL,
    libelle varchar(80) NOT NULL,
    capacite int,
	CONSTRAINT ressource_pkey PRIMARY KEY (ressourceId)
);
CREATE TABLE classe
(
	classeId int,
	libelle varchar(80),
	CONSTRAINT pk_classe PRIMARY KEY (classeId)
);
ALTER TABLE enseignant 
ADD CONSTRAINT ck_login_enseignant CHECK (login is NOT NULL);

ALTER TABLE enseignant 
ADD CONSTRAINT ck_mp_enseignant CHECK (mp is NOT NULL);

CREATE TABLE reservation
(
	ressourceId int NOT NULL,
	dateReservation date NOT NULL,
	heureDebut time NOT NULL,
	heureFin time NOT NULL,
	description varchar(500),
	enseignantId int,
	coursId int,
	classeId int,
	CONSTRAINT pk_reservation PRIMARY KEY (ressourceId,dateReservation,heureDebut),
	CONSTRAINT fk_ressource FOREIGN KEY (ressourceId) REFERENCES ressource (ressourceId),
	CONSTRAINT fk_enseignant FOREIGN KEY (enseignantId) REFERENCES enseignant (enseignantID),
	CONSTRAINT fk_cours FOREIGN KEY (coursId) REFERENCES cours(coursId),
	CONSTRAINT fk_classe FOREIGN KEY (classeId) REFERENCES classe(classeId));


