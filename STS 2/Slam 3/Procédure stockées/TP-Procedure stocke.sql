--question 1

create function derniere_impression
	(@code char(4)) 	
	returns datetime
	as
	begin
	declare @dateheure datetime
		select distinct @dateheure = max(dateheure)
		from Utiliser
		where CodeUtilisateur = @code
							
		return @dateheure
	end
	
drop	function derniere_impression
	
Declare @dateheure datetime
exec @dateheure = derniere_impression 'U001'
select @dateheure

--question 2

create function nb_impressions
	(@code char(4),
	 @mois int)
returns int
as
begin
	declare @nbImpression int
	select @nbImpression = sum(nbpages)
	from Utiliser
	where CodeUtilisateur = @code and month(dateheure) = @mois
	return @nbImpression
end

declare @nbImpression int
exec @nbImpression = nb_impressions 'U001', 10
select @nbImpression

--question 3

create procedure nom_plus_impressions
as
begin
	select codeUtilisateur, count(*)
	from Utiliser
	group by CodeUtilisateur
	having count(*) >= all(select count(*)
						  from Utiliser
						  group by CodeUtilisateur)			  
end

exec nom_plus_impressions

--question 4

