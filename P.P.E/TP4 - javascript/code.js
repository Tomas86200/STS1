//Jeu des Pays

//Ecriture du titre
document.getElementById("titre").innerHTML = '<p>Jeu des pays-stan</p>';

//Tableau des pays
tableauPays = new Array();
tableauPays[1] = 'Azerbaïdjan';
tableauPays[2] = 'Turkménistan';
tableauPays[3] = 'Ouzbékistan';
tableauPays[4] = 'Afghanistan';
tableauPays[5] = 'Pakistan';
tableauPays[6] = 'Tadjikistan';
tableauPays[7] = 'Kirghizistan';

//fonction Valider
function fonctionValider()
{
	//boucle sur les listes
	for (var i=1; i<=7; i++)
	{
		//récupération de l'index, puis de la valeur choisie
		var indexChoisi = document.forms["listes"].elements["listes"+i].selectedIndex;
		var paysChoisi = document.forms["listes"].elements["listes"+i].option[indexChoisi].value;
		//teste si la liste i affiche le bon pays
		if(paysChosi == tableauxPays[i])
		{
			//changement de style de l'élément numero i
			document.getElementById("numero"+i).style.backgroundColor='#0066CC';
		} else 
		{
			document.getElementById("numero"+i).style.backgroundColor='#FFFFFF';
		}
	}	
}
// fonction Reset
function fonctionReset(){
	//boucle sur les listes
	for (var i=1; i<=7; i++)
	{
		//affichage première valeur
		document.forms["listes"].elements["listes"+i].selectedIndex = 0;
		document.getElementById("numero"+i).style.backgroundColor='#FFFFFF';
	}
}