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

/* 	