
document.getElementById('partido').value = "";

function changeInput(){
	var candidato = document.getElementById('candidato').value;
		document.getElementById('partido').value = "";

	if(candidato)
	{
		if(candidato === "") candidato = "0";
		document.getElementById('voto').value = candidato;
		document.getElementById('imgCandidato').src = './votacao/images/' + candidato + '.png';

		if (candidato === "12") {document.getElementById('partido').value = "PDT";}
		if (candidato === "13") {document.getElementById('partido').value = "PT";}
		if (candidato === "17") {document.getElementById('partido').value = "PSL";}
		if (candidato === "19") {document.getElementById('partido').value = "PV";}
	}
}

function corrige(){
	document.getElementById('candidato').value = '';
}

function vote(){
	var value = document.getElementById('candidato').value;
	document.getElementById('voto').value = value ? value : "0";
}