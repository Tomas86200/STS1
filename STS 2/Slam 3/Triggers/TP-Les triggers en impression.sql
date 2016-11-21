Create table histo_utiliser (
	codeimprimante char(6), 
	codeutilisateur char(4),
	dateheure date,
	nbpages int,
	util varchar(20),
);

Create trigger delete_utiliser
on Utiliser
after delete
as insert into histo_utiliser select current_user, * from deleted ;



Create trigger insert_imp
on Imprimante
instead of insert
as 
	declare @bureau char(12), @code char(6), @nb int
	select @bureau=NomImprimante, @code=CodeImprimante from inserted
if(select count(*) from imprimante where NomImprimante = (select NomImprimante from inserted)) = 0
	begin
		raiserror ('Imprimante %s de code %s déjà dans la base', 16, 10, @bureau, @code)
	end
else
	begin
	--faire l'update
		insert into imprimante values (@code, @bureau)
	end	

	
	
	
	
Create trigger update_date
on utiliser
after insert
as 	
	if (select datepart(hh,dateheure) from inserted) >= '18'
		begin
			update utiliser
			set dateheure = (datepart(hh,dateheure) - datepart(hh,dateheure) + dateadd(hour,8,dateheure) + dateadd(day,1,dateheure))
		end;	
		
		
Create trigger update_date
on utiliser
after insert
as 	
	declare @newdate datetime;
	declare @code char(6);
	declare @util char(4);
	declare @date datetime;
	declare @dateheure datetime;
	
	set @newdate= (select dateadd(day,1,@date));
	set @code = (select CodeImprimante from inserted);
	set @util = (select CodeUtilisateur from inserted);
	set @date = (select dateheure from inserted);
	set @dateheure = datepart(hour,@date) - datepart(hour,@date) + dateadd(hour,8,@date)

	if (select datepart(hh,dateheure) from inserted) >= '18'
		begin
			update utiliser
			set dateheure = @newdate
			where CodeImprimante = @code
			and CodeUtilisateur = @util
			and @dateheure = @date
		end;

		