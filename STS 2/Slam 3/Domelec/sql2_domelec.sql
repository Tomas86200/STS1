/* Question 1 */

Select s.nom
	from salarie s
	inner join operateur o
		on s.matricule = o.matricule
	inner join poste_travail pt
		on o.numeroPoste = pt.numeroPoste
	inner join habilitation h
		on pt.numeroPoste=h.numeroPoste
	inner join composer c
		on h.niveau = c.niveau 
		and h.numeroPoste= c numero 
	inner join competence co
		on c.code = co.code
	where co.libelle = 'Test de fonctionnement du poste soudure.';

/*Question 2 */
	
select count (*) as NbProduit,LigneProduit_nom
	from Produit p
	inner join LigneProduit lp
		on referenceLigne = referenceProduit
	group by LigneProduit_code, LigneProduit_nom;

/* Question 3 */
	
select s.matricule,s.nom,s.prenom, count (e.matricule) as nbsuperviseur
	from salarie s
	left join superviseur sup
		on s.matricule = sup.matricule
	left join equipe e 
		on sup.matricule = e.equipe
	group by s.matricule,s.nom,s.prenom

/*Question 4*/	
	
select d.*, /* count(*) */
		from diplome d 
		inner join operateur o 
			on d.numero = o. numeroD
		group by d.numero, d.libelle
		having count(*) > 10;
		
/* Question 5 */

select u.*
	from unite_production u
	inner join ligne_produit lp
		on u.codeUnite = lp.codeUnite
	where lp.referenceLigne like 'L1%';

/* Question 6 */

select *
from diplome
where numeroD not in (select numeroD from operateur);

/* Question 7*/

select pt.nom, pt.numeroPoste
from poste_travail pt
where pt.dateinstallation =
(select min(pt.dateinstallation) from poste_travail pt);

/* Question 8 */

select op.*,
from salarie sa2
inner join operateur op
on sa2.matricule = op.matricule
inner join equipe e
on e.idequipe = op.idequipe
inner join superviseur su
on su.matricule = e.matricule
inner join salarie sa
on sa.matricule = su.matricule
where sa.prenom LIKE 'LEON' and sa.nom LIKE 'BART';							

/* Question 9 */

select d.libelle, count(*)
from diplome d
left join operateur o
on d.idDiplome = o.idDiplome
group by d.idDiplome,d.libelle

/*Question 10 */

select pt.nomPoste, count(*) as nbproduit
from poste_travail pt
inner join composer c
on pt.numeroPoste = c.numeroPoste
inner join produit p
on c.numeroProduit = p.numeroProduit
group by pt.numeroPoste, pt.nomPoste
having nbproduit < (select avg(nbProduit) 
								from countPdt);
								
/* Quetion 11*/

create view countPdt as 
select count (*) as nbproduit
from composer co
group by co.numeroPoste;

select pt.nom
from poste_travail pt
inner join composer co
on pt.numeroPoste = co.numeroPoste
group by pt.numeroPoste, pt.nom
having count (*) = (select min(nbProduit) from countPdt);