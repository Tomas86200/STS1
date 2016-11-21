--A--
select p.nom
from produit p
inner join dangerosite d
on p.num = d.numProduit
where d.codeRisque = 3
and d.numNiveau > 0
order by p.nom;

--B--
select n.num, n.libelle, count(d.numProduit) as 'nombreProduit'
from niveau n
inner join dangerosite d
on n.num = d.numNiveau
group by n.num, n.libelle
having 'nombreProduit' >10;

--C--
select p.num, p.nom
from produit p
where p.num not in (select numProduit
								from dangerosite);
								

--2.2--
create table categorie(
	code int,
	nom varchar(30),
	constraint pk_code primary key (code));
	
alter table produit
		add column codeCategorie int,
				constraint codeCategorie foreign key codeCategorie references categorie (code);
		
--2.3--
grant select, insert, update, delete
on categorie
to 'application'