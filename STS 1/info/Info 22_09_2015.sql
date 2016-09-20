DROP TABLE ADHERENT;
DROP TABLE STATUT;
DROP TABLE ETABLISSEMENT;



CREATE TABLE ETABLISSEMENT
(
etabId int identity,
libelle char(100),
lieu char(100)
CONSTRAINT pk_etab PRIMARY KEY (etabId),
CONSTRAINT check_lieu CHECK (lieu=100),
);

CREATE TABLE STATUT
(
statutId int identity,
libelle char(50),
CONSTRAINT pk_statut PRIMARY KEY (statutId),
);

CREATE TABLE ADHERENT
(
adherentId int identity,
nom char(80),
prénom char (80),
adresse char (80),
cPostal char(10),
ville char(100),
dateNaissance date,
dateAdhesion date ,
nbEnfants int,
salaireAnnuel real,
montantPrime real,
etabId int,
statutId int,
CONSTRAINT pk_adherent PRIMARY KEY (adherentId) ,
CONSTRAINT fk_etab FOREIGN KEY (etabId) REFERENCES ETABLISSEMENT(etabId),
CONSTRAINT fk_statud FOREIGN KEY (statutId) REFERENCES STATUT(statutId),
CONSTRAINT dateNaissance CHECK (dateNaissance > '1996-01-01'),
CONSTRAINT dateAdhesion CHECK (dateAdhesion > '2000-01-01'),
);

CREATE TABLE ENFANT
(
enfantId int identity,
nom char(80) NOT NULL,
prenom char(80) NOT NULL,
dateNaissance date,
parent1AdherentId int NOT NULL,
parent2AdherentId int,
CONSTRAINT pk_enfant PRIMARY KEY (enfantId),
);

CREATE TABLE PRODUIT
(
produitId int identity,
designation char(100) NOT NULL,
prixVente decimal,
produitRemplacement int,
CONSTRAINT pk_produit PRIMARY KEY (produitId),
);

CREATE TABLE FACTURE
(
factureId int,
dateFacture date,
montantTotal decimal,
dateDemande date,
adherentId int,
CONSTRAINT pk_facture PRIMARY KEY (factureId),
CONSTRAINT fk_adherent FOREIGN KEY (adherentId) REFERENCES ADHERENT (adherentId),
);

CREATE TABLE DETAIL_FACTURE
(
factureId int,
noLigne int,
produitId int,
quantite int,
prixVente decimal,
CONSTRAINT pk_detail_facture PRIMARY KEY (factureId, noLigne),
CONSTRAINT fk_produit FOREIGN KEY (produitId) REFERENCES PRODUIT (produitId),
CONSTRAINT ck_noLigne CHECK (noLigne > 0),
);

CREATE TABLE HISTO_ADHERENT
(
adherentId int,
nom char(80) NOT NULL,
prenom char(80) NOT NULL,
adresse char(200),
cPostal char(10),
ville char(100),
dateNaissance date,
dateAdhesion date NOT NULL,
nbEnfants int,
salaireAnnuel real DEFAULT 0,
montantPrime real,
statutId int,
etabId int,
CONSTRAINT pk_adherentHisto PRIMARY KEY (adherentId),
CONSTRAINT fk_etab FOREIGN KEY (etabId) REFERENCES ETABLISSEMENT (etabId),
CONSTRAINT fk_statut FOREIGN KEY (statutId) REFERENCES STATUT (statutId),
CONSTRAINT ck_dateNaiss CHECK (dateNaissance > '1901-01-01'),
CONSTRAINT ck_salaire CHECK (salaireAnnuel >= 0),
CONSTRAINT ck_dateNaiss CHECK (dateNaissance >= 0),
);