drop table prononcer;
drop table derouler;
drop table participer;
drop table album;
drop table juron;
drop table pays;
drop table personnage;

create table album(
noalb char(4),
titrealb char(50),
datealb char(4),
constraint PKalbum primary key (noalb));

create table juron(
nojuron char(15),
nomjuron char(70),
constraint PKjuron primary key (nojuron));

create table pays(
nopays char(4),
nompays char(20),
constraint PKpays primary key (nopays));

create table personnage(
nopers char(10),
nompers char(40),
prenompers char(20),
fonctpers char(30),
sexepers char(1),
gentilpers char(3),
constraint PKpersonnage primary key (nopers));

create table prononcer(
noalb char(4) references album(noalb),
nopers char(10) references personnage(nopers),
nojuron char(15) references juron (nojuron),
numpage integer,
constraint PKprononcer primary key (noalb,nopers,nojuron,numpage));

create table derouler(
noalb char(4) references album(noalb),
nopays char(4) references pays(nopays),
constraint PKderouler primary key (noalb,nopays));

create table participer(
noalb char(4) references album(noalb),
nopers char(10) references personnage (nopers),
constraint PKparticiper primary key (noalb,nopers));