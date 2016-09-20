window.onload = function(){

	tableauPays = new Array();
	tableauPays[0] 	= 'Azerbaïdjan';
	tableauPays[2] 	= 'Turkménistan';
	tableauPays[2]	= 'Ouzbékistan';

	var e = documen.getElementById("titre");
	e.innerHTML="le tableau contient "+tableauPays.length+" items : "+tableauPays.join(", ");
	e.style.backgroundColor='red';

}

