	
	//carregar foto do partido
	var $partido_text = document.getElementById('partido'),
	$partido_view = document.getElementById('p_view');

	$partido_text.addEventListener('blur', function(){
		var img = document.createElement('img');
		img.src = '../Eleicao/img/partido/' + this.value + '.png';

		$partido_view.innerHTML = '';
		$partido_view.appendChild(img);
	});

	//carregar foto do candidato
	var $candidato_text = document.getElementById('candidato'),
	$candidato_view = document.getElementById('c_view');

	$candidato_text.addEventListener('blur', function(){
		var img = document.createElement('img');
		img.src = '../Eleicao/img/candidato/' + this.value + '.png';

		$candidato_view.innerHTML = '';
		$candidato_view.appendChild(img);
	});