/* Création des tables */

CREATE TABLE fi_artiste
(
  idArtiste integer NOT NULL,
  nom varchar(30) NOT NULL,
  prenom varchar(30) NOT NULL,
  anneeNaiss integer,
  CONSTRAINT PKArtiste PRIMARY KEY (idArtiste),
  CONSTRAINT UniqueNomArtiste UNIQUE (nom, prenom)
);


CREATE TABLE fi_pays
(
  code varchar(4) NOT NULL,
  nom varchar(30) NOT NULL DEFAULT 'Inconnu',
  langue varchar(30) NOT NULL,
  CONSTRAINT PKPays PRIMARY KEY (code)
);



CREATE TABLE fi_film
(
  idFilm integer NOT NULL,
  titre varchar(50) NOT NULL,
  annee integer NOT NULL,
  idRealisateur integer,
  genre varchar(20) NOT NULL,
  description varchar(500),
  budget numeric(16,2),
  codePays varchar(4),
  CONSTRAINT PKFilm PRIMARY KEY (idFilm),
  CONSTRAINT film_codePays_fkey FOREIGN KEY (codePays)
      REFERENCES fi_pays (code) 
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT film_idRealisateur_fkey FOREIGN KEY (idRealisateur)
      REFERENCES fi_artiste (idArtiste) 
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE fi_role
(
  idFilm integer NOT NULL,
  idActeur integer NOT NULL,
  nomRole varchar(30),
  CONSTRAINT PKRole PRIMARY KEY (idActeur, idFilm),
  CONSTRAINT role_idActeur_fkey FOREIGN KEY (idActeur)
      REFERENCES fi_artiste (idArtiste) 
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT role_idFilm_fkey FOREIGN KEY (idFilm)
      REFERENCES fi_film (idFilm) 
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

/* entrée des valeurs*/

INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (6, 'Cameron', 'James', 1954);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (3, 'Hitchcock', 'Alfred', 1899);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (4, 'Scott', 'Ridley', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (5, 'Weaver', 'Sigourney', 1949);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (9, 'Tarkovski', 'Andrei', 1932);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (10, 'Woo', 'John', 1946);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (11, 'Travolta', 'John', 1954);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (12, 'Cage', 'Nicolas', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (13, 'Burton', 'Tim', 1958);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (14, 'Depp', 'Johnny', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (15, 'Stewart', 'James', 1908);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (16, 'Novak', 'Kim', 1925);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (17, 'Mendes', 'Sam', 1965);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (18, 'Spacey', 'Kevin', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (19, 'Bening', 'Anette', 1958);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (20, 'Eastwood', 'Clint', 1930);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (21, 'Hackman', 'Gene', 1930);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (22, 'Freeman', 'Morgan', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (23, 'Crowe', 'Russell', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (24, 'Ford', 'Harrison', 1942);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (25, 'Hauer', 'Rutger', 1944);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (26, 'McTierman', 'John', 1951);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (27, 'Willis', 'Bruce', 1955);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (28, 'Harlin', 'Renny', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (29, 'Pialat', 'Maurice', 1925);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (30, 'Dutronc', 'Jacques', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (31, 'Fincher', 'David', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (32, 'Pitt', 'Brad', 1963);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (33, 'Gilliam', 'Terry', 1940);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (34, 'Annaud', 'Jean-Jacques', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (35, 'Connery', 'Sean', 1930);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (36, 'Slater', 'Christian', 1969);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (37, 'Tarantino', 'Quentin', 1963);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (38, 'Jackson', 'Samuel L.', 1948);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (39, 'Arquette', 'Rosanna', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (40, 'Thurman', 'Uma', 1970);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (41, 'Farrelly', 'Bobby', 1958);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (42, 'Diaz', 'Cameron', 1972);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (43, 'Dillon', 'Mat', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (44, 'Schwartzenegger', 'Arnold', 1947);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (45, 'Spielberg', 'Steven', 1946);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (46, 'Scheider', 'Roy', 1932);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (47, 'Shaw', 'Robert', 1927);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (48, 'Dreyfus', 'Richard', 1947);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (49, 'Demme', 'Jonathan', 1944);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (50, 'Hopkins', 'Anthony', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (51, 'Foster', 'Jodie', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (53, 'Kilmer', 'Val', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (54, 'Fiennes', 'Ralph', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (55, 'Pfeiffer', 'Michelle', 1957);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (56, 'Bullock', 'Sandra', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (57, 'Goldblum', 'Jeff', 1952);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (58, 'Emmerich', 'Roland', 1955);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (59, 'Broderick', 'Matthew', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (60, 'Reno', 'Jean', 1948);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (61, 'Wachowski', 'Andy', 1967);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (62, 'Reeves', 'Keanu', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (63, 'Fishburne', 'Laurence', 1961);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (64, 'De Palma', 'Brian', 1940);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (65, 'Cruise', 'Tom', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (66, 'Voight', 'John', 1938);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (67, 'Bart', 'Emmanuelle', 1965);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (68, 'Kurozawa', 'Akira', 1910);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (69, 'Harris', 'Ed', 1950);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (70, 'Linney', 'Laura', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (71, 'Girault', 'Jean', 1924);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (72, 'De Funs', 'Louis', 1914);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (73, 'Galabru', 'Michel', 1922);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (224, 'Swank', 'Hillary', 1974);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (75, 'Balasko', 'Josiane', 1950);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (76, 'Lavanant', 'Dominique', 1944);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (77, 'Lanvin', 'Grard', 1950);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (78, 'Villeret', 'Jacques', 1951);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (79, 'Levinson', 'Barry', 1942);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (80, 'Hoffman', 'Dustin', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (81, 'Scott', 'Tony', 1944);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (82, 'McGillis', 'Kelly', 1957);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (83, 'Leconte', 'Patrice', 1947);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (84, 'Blanc', 'Michel', 1952);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (85, 'Clavier', 'Christian', 1952);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (86, 'Lhermite', 'Thierry', 1952);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (88, 'Perkins', 'Anthony', 1932);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (89, 'Miles', 'Vera', 1929);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (90, 'Leigh', 'Janet', 1927);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (91, 'Marquand', 'Richard', 1938);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (92, 'Hamill', 'Mark', 1951);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (93, 'Fisher', 'Carrie', 1956);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (94, 'Taylor', 'Rod', 1930);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (95, 'Hedren', 'Tippi', 1931);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (96, 'Ricci', 'Christina', 1980);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (97, 'Walken', 'Christopher', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (98, 'Keitel', 'Harvey', 1939);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (99, 'Roth', 'Tim', 1961);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (100, 'Penn', 'Chris', 1966);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (101, 'Kubrick', 'Stanley', 1928);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (102, 'Kidman', 'Nicole', 1967);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (103, 'Nicholson', 'Jack', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (104, 'Kelly', 'Grace', 1929);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (105, 'Grant', 'Cary', 1904);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (106, 'Saint', 'Eva Marie', 1924);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (107, 'Mason', 'James', 1909);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (110, 'DiCaprio', 'Leonardo', 1974);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (109, 'Winslet', 'Kate', 1975);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (111, 'Besson', 'Luc', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (112, 'Jovovich', 'Milla', 1975);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (113, 'Dunaway', 'Fane', 1941);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (114, 'Malkovitch', 'John', 1953);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (115, 'Karyo', 'Tchky', 1953);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (116, 'Oldman', 'Gary', 1958);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (117, 'Holm', 'Ian', 1931);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (118, 'Portman', 'Natalie', 1981);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (119, 'Parillaud', 'Anne', 1960);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (120, 'Anglade', 'Jean-Hughes', 1955);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (121, 'Barr', 'Jean-Marc', 1960);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (122, 'Ferrara', 'Abel', 1951);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (123, 'Caruso', 'David', 1956);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (124, 'Snipes', 'Wesley', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (125, 'Sciora', 'Annabella', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (126, 'Rosselini', 'Isabella', 1952);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (127, 'Gallo', 'Vincent', 1961);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (128, 'von Trier', 'Lars', 1956);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (129, 'Gudmundsdottir', 'Bjork', 1965);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (130, 'Deneuve', 'Catherine', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (131, 'Kassowitz', 'Matthieu', 1967);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (132, 'Cassel', 'Vincent', 1966);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (133, 'Gray', 'James', 1969);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (134, 'Wahlberg', 'Mark', 1971);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (135, 'Phoenix', 'Joaquin', 1974);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (136, 'Theron', 'Charlize', 1975);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (137, 'Caan', 'James', 1940);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (138, 'Chabrol', 'Claude', 1930);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (139, 'Huppert', 'Isabelle', 1953);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (140, 'Mouglalis', 'Anna', 1978);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (141, 'Costner', 'Kevin', 1955);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (142, 'Dern', 'Laura', 1967);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (143, 'Hanks', 'Tom', 1956);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (144, 'Sizemore', 'Tom', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (145, 'Damon', 'Matt', 1970);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (146, 'Modine', 'Matthew', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (147, 'Baldwin', 'Adam', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (148, 'O Neal', 'Ryan', 1941);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (149, 'Berenson', 'Marisa', 1946);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (150, 'McDowell', 'Macolm', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (151, 'Dullea', 'Keir', 1936);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (152, 'Lockwood', 'Gary', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (153, 'Sellers', 'Peter', 1925);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (154, 'Scott', 'George', 1927);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (155, 'Hayden', 'Sterling', 1916);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (156, 'Douglas', 'Kirk', 1916);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (157, 'Donat', 'Robert', 1905);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (158, 'Caroll', 'Madeleine', 1906);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (159, 'Olivier', 'Laurence', 1907);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (160, 'Fontaine', 'Joan', 1917);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (161, 'Sanders', 'George', 1906);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (162, 'Bergman', 'Ingrid', 1915);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (163, 'Rains', 'Claude', 1889);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (164, 'Milland', 'Ray', 1907);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (166, 'Day', 'Doris', 1924);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (167, 'De Niro', 'Robert', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (168, 'Grier', 'Pam', 1949);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (169, 'Fonda', 'Bridget', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (170, 'Keaton', 'Michael', 1951);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (171, 'Shyamalan', 'M. Night', 1970);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (172, 'Osment', 'Haley Joel', 1988);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (173, 'Collette', 'Tony', 1972);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (174, 'Leighton', 'Eric', 1962);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (175, 'Mann', 'Michael', 1943);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (176, 'Pacino', 'Al', 1940);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (177, 'Crowe', 'Russel', 1964);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (178, 'Plummer', 'Christopher', 1927);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (179, 'Furlong', 'Edward', 1977);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (180, 'Redgrave', 'Vanessa', 1937);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (181, 'Coppola', 'Francis Ford', 1939);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (182, 'Brando', 'Marlon', 1924);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (183, 'Keaton', 'Diane', 1946);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (184, 'Duvall', 'Robert', 1931);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (185, 'Caan', 'Jamees', 1939);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (186, 'Garcia', 'Andy', 1956);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (187, 'Raimi', 'Sam', 1959);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (188, 'Maguire', 'Tobey', 1975);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (210, 'Moss', 'Carrie-Anne', 1967);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (211, 'Weaving', 'Hugo', 1960);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (212, 'Jackson', 'Samuel', 1948);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (213, 'Liu', 'Lucy', 1968);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (214, 'Carradine', 'David', 1936);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (215, 'Madsen', 'Michael', 1958);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (216, 'Hannah', 'Daryl', 1960);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (217, 'Buscemi', 'Steve', 1957);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (218, 'Bunker', 'Edward', 1933);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (221, 'Volonte', 'Gian Maria', NULL);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (220, 'Van Cleef', 'Lee', NULL);
INSERT INTO fi_artiste (idArtiste, nom, prenom, anneeNaiss) VALUES (219, 'Leone', 'Sergio', 1929);



INSERT INTO fi_pays (code, nom, langue) VALUES ('FR', 'France', 'Français');
INSERT INTO fi_pays (code, nom, langue) VALUES ('USA', 'Etats Unis', 'Anglais');
INSERT INTO fi_pays (code, nom, langue) VALUES ('IT', 'Italie', 'Italien');
INSERT INTO fi_pays (code, nom, langue) VALUES ('GB', 'Royaume-Uni', 'Anglais');
INSERT INTO fi_pays (code, nom, langue) VALUES ('DE', 'Allemagne', 'Allemand');
INSERT INTO fi_pays (code, nom, langue) VALUES ('JP', 'Japon', 'Japonais');



INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (22, 'Godzilla', 1998, 58, 'Action', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (25, 'Kagemusha', 1980, 68, 'Guerre', NULL, NULL, 'JP');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (33, 'Psychose', 1960, 3, 'Thriller', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (36, 'Reservoir dogs', 1992, 37, 'Policier', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (37, 'Eyes Wide Shut', 1999, 101, 'Thriller', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (38, 'Shining', 1980, 101, 'Horreur', NULL, NULL, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (39, 'Pas de printemps pour Marnie', 1964, 3, 'Thriller', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (48, 'King of New York', 1990, 122, 'Drame', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (51, 'De bruit et de fureur', 1988, 138, 'Drame', NULL, NULL, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (53, 'Bad Lieutenant', 1992, 122, 'Drame', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (57, 'Jackie Brown', 1997, 37, 'Policier', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (60, 'Lost in Translation', 2003, 172, 'Comédie sentimentale', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (61, 'Kill Bill', 2003, 37, 'Drame', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (62, 'Stalingrad', 2001, 34, 'Drame', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (63, 'Million Dollar Baby', 2005, 20, 'Drame', NULL, NULL, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (1, 'Vertigo', 1958, 3, 'Drame', NULL, 750000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (2, 'Alien', 1979, 4, 'Science-fiction', NULL, 600000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (3, 'Titanic', 1997, 6, 'Drame', NULL, 1560000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (4, 'Sacrifice', 1986, 9, 'Drame', NULL, 370000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (5, 'Volte/Face', 1997, 10, 'Action', NULL, 550000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (6, 'Sleepy  Hollow', 1999, 13, 'Fantastique', NULL, 400000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (7, 'American Beauty', 1999, 17, 'Comédie', NULL, 380000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (8, 'Impitoyable', 1992, 20, 'Western', NULL, 560000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (9, 'Gladiator', 2000, 4, 'Drame', NULL, 1200000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (10, 'Blade Runner', 1982, 4, 'Action', NULL, 800000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (11, 'Piège de cristal', 1988, 26, 'Action', NULL, 1250000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (12, '58 minutes pour vivre', 1990, 28, 'Action', NULL, 1300000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (13, 'Van Gogh', 1990, 29, 'Drame', NULL, 750000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (14, 'Seven', 1995, 31, 'Policier', NULL, 500000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (15, 'L armée des douze singes', 1995, 33, 'Science-fiction', NULL, 720000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (16, 'Le nom de la rose', 1986, 34, 'Policier', NULL, 980000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (17, 'Pulp fiction', 1994, 37, 'Action', NULL, 900000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (18, 'Mary à tout prix', 1998, 41, 'Comédie', NULL, 765000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (19, 'Terminator', 1984, 6, 'Science-fiction', NULL, 1200000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (20, 'Les dents de la mer', 1975, 45, 'Horreur', NULL, 1000000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (21, 'Le silence des agneaux', 1990, 49, 'Policier', NULL, 1000000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (23, 'Matrix', 1999, 61, 'Science-fiction', NULL, 1100000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (24, 'Mission: Impossible', 1996, 64, 'Action', NULL, 950000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (26, 'Les pleins pouvoirs', 1997, 20, 'Policier', NULL, 300000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (27, 'Le gendarme et les extra-terrestres', 1978, 71, 'Comédie', NULL, 420000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (28, 'Le monde perdu', 1997, 45, 'Horreur', NULL, 200000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (29, 'Rain Man', 1988, 79, 'Drame', NULL, 1000000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (30, 'Top Gun', 1986, 81, 'Action', NULL, 900000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (31, 'Les bronzés font du ski', 1979, 83, 'Comédie', NULL, 500000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (32, 'Le bon, la brute et le truand', 1966, 219, 'Western', NULL, 520000.00, 'IT');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (34, 'Le retour du Jedi', 1983, 91, 'Science-fiction', NULL, 980000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (35, 'Les oiseaux', 1963, 3, 'Horreur', NULL, 540000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (42, 'Jeanne d Arc', 1999, 111, 'Guerre', NULL, 200000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (40, 'Fenêtre sur cour', 1954, 3, 'Suspense', NULL, 150000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (43, 'Le cinquième élément', 1997, 111, 'Science-fiction', NULL, 700000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (44, 'Léon', 1994, 111, 'Action', NULL, 600000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (45, 'Nikita', 1990, 111, 'Thriller', NULL, 600000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (46, 'Le grand bleu', 1988, 111, 'Drame', NULL, 500000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (47, 'Spider-Man', 2002, 123, 'Action', NULL, 800000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (49, 'The Matrix reloaded', 2003, 61, 'Science-fiction', NULL, 925000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (50, 'The Matrix Revolutions', 2003, 135, 'Science-fiction', NULL, 950000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (54, 'Le parrain', 1972, 64, 'Drame', NULL, 800000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (55, 'Le parrain II', 1974, 64, 'Drame', NULL, 900000.00, 'FR');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (56, 'Le parrain III', 1990, 64, 'Drame', NULL, 1000000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (58, 'Une journée en enfer', 1995, 168, 'Action', NULL, 720000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (52, 'Usual suspects', 1995, 142, 'Thriller', NULL, 700000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (59, 'Sixième sens', 1999, 170, 'Fantastique', NULL, 520000.00, 'USA');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (64, 'Pour quelques dollars de plus', 1965, 219, 'Western', NULL, 400000.00, 'IT');
INSERT INTO fi_film (idFilm, titre, annee, idRealisateur, genre, description, budget, codePays) VALUES (41, 'La mort aux trousses', 1959, 3, 'Suspense', NULL, 540000.00, 'USA');





INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (1, 15, 'John Ferguson');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (1, 16, 'Madeleine Elster');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (2, 5, 'Ripley');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (3, 109, 'Rose DeWitt Bukater');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (3, 110, 'Jack Dawson');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (5, 11, 'Sean Archer Castor Troy');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (5, 12, 'Castor Troy Sean Archer');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (6, 14, 'Constable Ichabod Crane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (6, 96, 'Katrina Anne Van Tassel');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (6, 97, 'Le cavalier');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (7, 18, 'Lester Burnham');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (7, 19, 'Carolyn Burnham');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (8, 20, 'William Munny');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (8, 21, 'Little Bill Dagget');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (8, 22, 'Ned Logan');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (9, 23, 'Maximus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (9, 147, 'Commode');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (9, 148, 'Lucilla');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (9, 149, 'Marc Aurele');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (10, 24, 'Deckard');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (10, 25, 'Batty');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (11, 27, 'McClane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (12, 27, 'McClane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (13, 30, 'Van Gogh');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (14, 18, 'Doe');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (14, 22, 'Somerset');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (14, 32, 'Mills');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (15, 27, 'Cole');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (16, 35, 'Baskerville');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (16, 36, 'de Melk');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 11, 'Vincent Vega');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 27, 'Butch Coolidge');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 37, 'Jimmy Dimmick');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 38, 'Jules Winnfield');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 39, 'Jody');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 40, 'Mia Wallace');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 97, 'Capt. Koons');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 98, 'Winston The Wolf Wolfe');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (17, 99, 'Pumpkin (Ringo)');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (18, 42, 'Mary Jensen Matthews');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (18, 43, 'Pat Healy');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (19, 44, 'Terminator');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (20, 46, 'Martin Brody');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (20, 47, 'Quint');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (20, 48, 'Matt Hooper');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (21, 50, 'Dr. Hannibal Lecter');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (21, 51, 'Clarice Starling');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (22, 59, 'Dr. Nikos Tatopoulos');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (22, 60, 'Philippe Roaché');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (23, 62, 'Neo');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (23, 63, 'Morpheus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (24, 60, 'Franz Krieger');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (24, 65, 'Ethan Hunt');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (24, 66, 'Jim Phelps');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (24, 67, 'Claire Phelps');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (26, 20, 'Luther Whitney');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (26, 21, 'Le président Richmond');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (26, 69, 'Seth Frank');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (27, 72, 'Inspecteur Cruchot');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (27, 73, 'Adjudant Gerber');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (28, 57, 'Dr. Ian Malcolm');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (29, 65, 'Charlie Babbitt');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (29, 80, 'Raymond Babbitt');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (30, 53, 'Iceman');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (30, 65, 'Lt. Pete Maverick Mitchell');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (30, 82, 'Charlotte Blackwood');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (31, 75, 'Nathalie Morin');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (31, 76, 'Christiane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (31, 84, 'Jean-Claude Dus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (31, 85, 'Jérôme');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (31, 86, 'Popeye');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (32, 20, '');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (33, 88, 'Bates');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (33, 89, 'Lila Crane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (33, 90, 'Marion Crane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (34, 24, 'Han Solo');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (34, 92, 'Luke Skywalker');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (34, 93, 'Princesse Leia');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (35, 94, 'Mitch Brenner');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (35, 95, 'Melanie Daniels');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 37, 'Mr. Brown');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 98, 'Mr. White/Larry');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 99, 'Freddy Newendyke Mr. Orange');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 100, 'Nice Guy Eddie');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 215, 'Mr Blonde');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 217, 'Mr Pink');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (36, 218, 'Mr Blue');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (37, 65, 'Docteur William Bill Harford');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (37, 102, 'Alice Harford');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (38, 103, 'Jack Torrance');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (39, 35, 'Mark R');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (39, 95, 'Marnie Edgar');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (41, 105, 'Roger O. Thornhill');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (41, 106, 'Eve Kendall');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (41, 107, 'Philipp Vandamm');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (42, 80, '');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (42, 112, 'Jeanne d Arc');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (42, 113, 'Yolande d  Aragon');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (42, 114, 'Charles VII');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (42, 115, 'Dunois');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (43, 27, 'Major Korben Dalla');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (43, 112, 'Leeloo');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (43, 116, 'Jean-Baptiste Emmanuel Zorg');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (43, 117, 'Vito Cornelius');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (44, 60, 'Léon');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (44, 116, 'Norman Stansfield');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (44, 118, 'Mathilda');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (45, 115, 'Bob');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (45, 119, 'Nikita');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (45, 120, 'Marco');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (46, 39, 'Johanna');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (46, 60, 'Enzo Molinari');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (46, 121, 'Jacques Mayol');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (47, 124, 'Spider-Man');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (47, 125, 'Norman Osborn');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (47, 126, 'Mary Jane Watson');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (47, 127, 'Oncle Ben');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (47, 128, 'Tante May');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 63, 'Jimmy Jump');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 97, 'Frank White');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 124, 'Thomas Flanigan');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 131, 'Dennis Gilley');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 132, 'Thomas Flanigan');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (48, 217, 'Test tube');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (49, 62, 'Neo');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (49, 63, 'Morpheus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (49, 210, 'Trinity');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (49, 211, 'Agent Smith');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (50, 62, 'Neo');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (50, 63, 'Morpheus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (50, 134, 'Agent Smith');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (50, 136, 'Trinity');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (50, 137, 'L  Oracle');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (51, 139, 'Marcel');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (51, 140, 'Enseignante');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (51, 141, 'Bruno');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (52, 18, 'Roger  Verbal  Kint');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (52, 143, 'Micheal McManus');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (52, 144, 'Dean Keaton');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (52, 145, 'Fred Fenster');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (52, 146, 'Todd Hockney');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (53, 98, 'Le lieutenant');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (54, 151, 'Don Vito Corleone');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (54, 152, 'Micheal');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (54, 153, 'Sonny');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (54, 154, 'Tom Hagen');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (54, 155, 'Kay Adams');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (57, 167, 'Luis Gara');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (57, 168, 'Jackie Brown');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (57, 169, 'Melanie');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (57, 170, 'Ray Nicolette');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (57, 212, 'Ordell Robbie');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (58, 27, 'McClane');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (58, 38, 'Zeus Carver');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (58, 169, 'Simon Gruber');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (59, 27, 'Malcom Crowe');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (59, 171, 'Cole Sear');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (60, 173, 'Bob Harris');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (60, 174, 'Charlotte');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (60, 175, 'John');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (60, 176, 'Kelly');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (60, 177, 'Patron Nightclub');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (61, 40, 'La mariée, alias   Black Mamba');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (61, 213, 'O-Ren Ishii');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (61, 214, 'Bill');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (61, 215, 'Budd Sidewinder');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (61, 216, 'Elle Driver');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (62, 182, 'Vassili Zaïtzev');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (62, 183, 'major König');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (63, 20, 'Frankie Dunn');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (63, 22, 'Eddie Scrap-Iron Dupris');
INSERT INTO fi_role (idFilm, idActeur, nomRole) VALUES (63, 224, 'Maggie Fitzerald');

SELECT genre, annee, titre, nom, prenom
FROM fi_film
INNER JOIN fi_artiste
ON fi_film.idRealisateur = fi_artiste.idArtiste
ORDER BY genre ASC, annee DESC;

SELECT titre, annee
FROM fi_film
WHERE titre LIKE '%Matrix%'

SELECT titre, genre, annee
FROM fi_film
WHERE budget IS NULL

SELECT a.nom, a.prenom, f.titre, r.nomRole
FROM fi_artiste a
INNER JOIN fi_role r
ON a.idArtiste = r.idActeur
INNER JOIN fi_film f
ON r.idFilm = f.idFilm
INNER JOIN fi_role r2
ON f.idFilm = r2.idFilm
INNER JOIN fi_artiste a2
ON r2.idActeur = a2.idArtiste
WHERE (a2.nom = 'O Neil');

/*question 13*/
SELECT AVG(budget) "Budget moyen"
FROM fi_film
WHERE (genre = 'Action');

/*question 14*/
SELECT MIN(budget) "Plus petit budget", MAX(budget) "Pus gros budget"
FROM fi_film

/*question 15*/
SELECT a.nom, a.prenom, AVG(f.budget) "Budget moyen"
FROM fi_film f
INNER JOIN fi_artiste a
ON f.idRealisateur = a.idArtiste
GROUP BY a.nom, a.prenom;

/*16*/
SELECT genre, AVG(budget) "Budget Moyen"
FROM fi_film
GROUP BY genre
ORDER BY 'Budget Moyen' DESC;

/*17*/
SELECT a.nom, a.prenom, COUNT(f.idFilm) "Nombres de films réalisés"
FROM fi_artiste a
INNER JOIN fi_film f
ON a.idArtiste = f.idRealisateur
GROUP BY a.nom, a.prenom;

/*18*/
SELECT SUM(budget)
FROM fi_film
WHERE (titre LIKE '%MATRIX%');

/*19*/
SELECT a.nom, a.prenom, COUNT (f.idFilm) "Nombres de films réalisés"
FROM fi_artiste a
INNER JOIN fi_film f
ON a.idArtiste = f.idRealisateur
GROUP BY a.nom, a.prenom;

/*20*/
SELECT genre,MIN(budget) "Budget le plus petit",MAX(budget)"Budget le plus grand"
FROM fi_film
GROUP BY genre;

/*21*/
SELECT AVG(budget), nom
FROM fi_film f
INNER JOIN fi_pays p
ON f.codePays = p.code
GROUP BY p.nom;

/*22*/
SELECT genre, AVG(budget)
FROM fi_film
GROUP BY genre
HAVING (count(*) >= 2)
ORDER BY AVG(budget) DESC;

/*23*/
SELECT a.nom "Nom", a.prenom "Prénom", AVG(f.budget)"Budget moyen par film",
SUM(f.budget)"Budget total"
FROM fi_film f
INNER JOIN fi_Artiste a
ON f.idRealisateur=A.idArtiste
GROUP BY A.nom, A.prenom
HAVING (count(*) >=3)
ORDER BY AVG(f.budget) DESC;

/*24*/
SELECT p.nom "Pays", COUNT(*) "Nombre de films"
FROM fi_film f, fi_pays p
WHERE f.codePays = p.code
GROUP BY p.nom;

/*25*/
SELECT f.genre "Genre", MAX(f.budget) "Plusgrand budget"
FROM fi_film f,fi_pays p
WHERE (f.codePays= p.code) AND (f.annee > 1980-01-01)
GROUP BY f.genre
HAVING (MAX(f.budget) > 500000);