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

	
select count (*) as NbProduit,LigneProduit_nom
	from Produit p
	inner join LigneProduit lp
		on referenceLigne = referenceProduit
	group by LigneProduit_code, LigneProduit_nom;

	
select s.matricule,s.nom,s.prenom, count (e.matricule) as nbsuperviseur
	from salarie s
	left join superviseur sup
		on s.matricule = sup.matricule
	left join equipe e 
		on sup.matricule = e.equipe
	group by s.matricule,s.nom,s.prenom

select d.numero, d.libelle,count(*)
		from diplome d 
		inner join operateur o 
			on d.numero = o. numeroD
		group by d.numero
		
		
	