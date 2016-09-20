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
where nbpages > 100
group by ut.codeimprimante,ut.dateheure;

/*Question 5*/

select count(*) "Nombre Utilisteur"
from utilisateur u