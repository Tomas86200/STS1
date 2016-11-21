create table Imprimante
(
	CodeImprimante char(6) primary Key,
	NomImprimante char(12)
);

create table Utilisateur
(
	CodeUtilisateur char(4) primary key,
	NomUtilisateur varchar(20),
	Bureau char(12)
);

create table Utiliser
(
	CodeImprimante char(6) references Imprimante(CodeImprimante),
	CodeUtilisateur char(4) references Utilisateur(CodeUtilisateur),
	dateheure datetime,
	nbpages int,
	primary key (CodeImprimante, CodeUtilisateur, dateheure)
); 

insert into Imprimante values('1','ETUDES');
insert into Imprimante values('2','COMMERCIAL');
insert into Imprimante values('3','INFORMATIQUE');
insert into Imprimante values('4','ATELIER');


insert into Utilisateur values('U001','CHASSIER','INFORMATIQUE');
insert into Utilisateur values('U002','MERCIER','INFORMATIQUE');
insert into Utilisateur values('U003','DAILLET','COMMERCIAL');
insert into Utilisateur values('U004','MANOURY','ATELIER');
insert into Utilisateur values('U005','MICHAUD','ETUDES');
insert into Utilisateur values('U006','DEJEANS','INFORMATIQUE');
insert into Utilisateur values('U007','RICHARDEAU','COMMERCIAL');
insert into Utilisateur values('U008','BROUARD','INFORMATIQUE');
insert into Utilisateur values('U009','CARAYON','ATELIER');
insert into Utilisateur values('U010','ARNAULT','COMMERCIAL');
insert into Utilisateur values('U011','BILLOT','COMMERCIAL');
insert into Utilisateur values('U012','BERGUER','INFORMATIQUE');
insert into Utilisateur values('U013','LELOUP','INFORMATIQUE');
insert into Utilisateur values('U014','CONTRERAS','ETUDES');
insert into Utilisateur values('U015','MELON','INFORMATIQUE');
insert into Utilisateur values('U016','CHASSIER','ETUDES');
insert into Utilisateur values('U017','DEJEANS','ATELIER');
insert into Utilisateur values('U018','MERCIER','ATELIER');
insert into Utilisateur values('U019','DAVID','ATELIER');


insert into Utiliser values ('1','U018', '01/09/09 08:50:00',10);
insert into Utiliser values ('1','U001', '01/09/09 10:20:00',5);
insert into Utiliser values ('1','U016', '06/09/09 08:12:00',8);
insert into Utiliser values ('1','U005', '06/09/09 15:55:00',10);
insert into Utiliser values ('1','U014', '08/09/09 08:50:00',50);
insert into Utiliser values ('1','U016', '15/09/09 13:50:00',6);
insert into Utiliser values ('1','U014', '26/09/09 16:26:00',12);
insert into Utiliser values ('1','U018', '30/09/09 11:30:00',112);
insert into Utiliser values ('1','U005', '08/10/09 09:10:00',35);
insert into Utiliser values ('1','U005', '19/10/09 15:40:00',67);
insert into Utiliser values ('1','U014', '27/10/09 14:00:00',78);
insert into Utiliser values ('1','U019', '30/10/09 18:19:00',35);


insert into Utiliser values ('2','U003', '01/09/09 08:50:00',10);
insert into Utiliser values ('2','U003', '05/09/09 10:50:00',8);
insert into Utiliser values ('2','U018', '07/09/09 09:25:00',78);
insert into Utiliser values ('2','U007', '10/09/09 14:35:00',23);
insert into Utiliser values ('2','U010', '15/09/09 09:38:00',45);
insert into Utiliser values ('2','U003', '17/09/09 08:50:00',15);
insert into Utiliser values ('2','U018', '17/09/09 08:50:00',35);
insert into Utiliser values ('2','U007', '25/09/09 16:43:00',23);
insert into Utiliser values ('2','U006', '01/10/09 11:29:00',10);
insert into Utiliser values ('2','U018', '05/10/09 16:31:00',79);
insert into Utiliser values ('2','U001', '05/10/09 16:31:00',4);

insert into Utiliser values ('3','U001', '01/09/09 16:50:00',67);
insert into Utiliser values ('3','U006', '03/09/09 15:26:00',10);
insert into Utiliser values ('3','U002', '07/09/09 18:34:00',79);
insert into Utiliser values ('3','U018', '12/09/09 13:28:00',70);
insert into Utiliser values ('3','U012', '16/09/09 16:55:00',8);
insert into Utiliser values ('3','U001', '19/09/09 15:47:00',10);
insert into Utiliser values ('3','U008', '23/09/09 13:50:00',5);
insert into Utiliser values ('3','U012', '25/09/09 17:03:00',8);
insert into Utiliser values ('3','U013', '28/09/09 16:50:00',10);
insert into Utiliser values ('3','U001', '04/10/09 15:35:00',70);
insert into Utiliser values ('3','U015', '13/10/09 14:08:00',8);
insert into Utiliser values ('3','U002', '17/10/09 13:23:00',45);
insert into Utiliser values ('3','U019', '30/10/09 18:19:00',35);

insert into Utiliser values ('4','U018', '06/09/09 07:59:00',50);
insert into Utiliser values ('4','U001', '12/09/09 08:37:00',6);
insert into Utiliser values ('4','U004', '24/09/09 09:04:00',12);
insert into Utiliser values ('4','U009', '24/09/09 10:27:00',98);
insert into Utiliser values ('4','U018', '30/09/09 11:02:00',10);
insert into Utiliser values ('4','U018', '07/10/09 09:30:00',8);
insert into Utiliser values ('4','U017', '14/10/09 09:41:00',15);



