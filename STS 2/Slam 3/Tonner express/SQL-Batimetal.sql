/*Statistiques d impression-Batimetal*/

/*Question 1*/

Select distinct u.nomutilisateur
from utilisateur u
inner join utiliser ut
on u.codeutilisateur = ut.codeutilisateur
inner join imprimante i
on i.codeimprimante = ut.codeimprimante
where i.nomimprimante = 'ETUDES'
and  ut.dateheure = '2010-10-20';		/*DAY(dateheure)=6 MONTH(dateheure)=9 YEAR(dateheure)=2009	ou	DATEPART(d,date)=6 DATEPART(m,dateheure)=9 DATEPART(yy,dateheure)=2009*/

/*Question 2*/

Select distinct u.nomutilisateur
from utilisateur u
inner join utiliser ut
on u.codeutilisateur = ut.codeutilisateur
inner join imprimante i
on i.codeimprimante = ut.codeimprimante
where u.bureau != i.nomimprimante
order by u.nomutilisateur Desc;

/*Question 3*/

Select ut.codeimprimante, sum(ut.nbpages)"Nb Pages"
from utiliser ut
group by ut.codeimprimante;

/*Question 4*/

Select ut.codeimprimante, ut.dateheure, sum(ut.nbpages) "Nb Pages"
from utiliser ut
group by ut.codeimprimante,ut.dateheure;
having sum(ut.Nb Pages) > 100;

/*Question 5*/

select i.nomimprimante, count (distinct ut.codeutilisateur) "Nombre Utilisteur"
from utilisateur u
inner join utiliser ut
on ut.codeutilisateur = u.codeutilisateur
inner join imprimante i
on i.codeimprimante = ut.codeimprimante
group by i.codeimprimante, i.nomimprimante;

/*Question 6*/

Create table utiliser2 (
	codeimprimante char(6), 
	codeutilisateur char(4),
	dateheure date,
	nbpages int,
	constraint pk_utiliser primary key (codeimprimante, codeutilisateur, dateheure),
	constraint fk_utilisateur foreign key (codeutilisateur) references utilisateur (codeutilisateur),
	constraint fk_imprimante foreign key (codeimprimante) references imprimante (codeimprimante)
);

/*Question 7*/

Delete from imprimante
where codeimprimante = '4';

/*Question 8*/

delete from utiliser
where codeimprimante = '4';

/*Question 9*/

/*Les cas où l'ajout serait impossible est par exemple ajouter un enregistrement 
avec l'imprimante 4 qui vient d'être supprimée...comme Laëtitia a fait.*/

insert into utiliser
values ('1','U001','26/09/16 08:52:00',10);

/*Question 10*/

update utilisateur
set bureau = 'ETUDES'
where codeutilisateur = 'U001';

/*Question 11*/

select distinct u.codeutilisateur, u.nomutilisateur
from utilisateur u
inner join utiliser ut
on ut.codeutilisateur = u.codeutilisateur
inner join imprimante i
on i.codeimprimante = ut.codeimprimante
where bureau <> nomimprimante
and u.codeutilisateur not in (
	select  ut.codeutilisateur
	from utiliser ut
	inner join imprimante i
	on ut.codeimprimante = i.codeimprimante
	inner join utilisateur u
	on u.codeutilisateur = ut.codeutilisateur
	where bureau = nomimprimante
);

/*Question 12*/

/* Methode 1 */
Select i.nomimprimante
from imprimante i
inner join utiliser ut
on i.codeimprimante = ut.codeimprimante
group by i.codeimprimante, i.nomimprimante
having sum(nbpages) >= all(select sum (nbpages) from utiliser group by codeimprimante);

/* Methode 2 */
create view somme as 
select  sum(nbpages) as nbpages
from utiliser ut
group by i.codeimprimante

/*---------------------------------------------------*/
select i.nomimprimante, sum(nbpages) as nbpages
from utiliser ut
inner join imprimante i
on i.codeimprimante = ut.codeimprimante
group by i.nomimprimante, i.codeimprimante
having sum(nbpages) = (select max(somme.nbpages) from somme);

/*Question 13*/

