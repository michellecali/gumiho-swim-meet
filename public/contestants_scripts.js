window.addEventListener('load', function(){

	//need to cancel the page reload on form submission
	var form = document.getElementById('entryform');
	form.addEventListener('submit', function(e){

		var entryformParams = new FormData();

		for (var i = 0; i < 3; i++) {
			formDataValues.append(form[i].name, form[i].value);
			debugger;
		}

		debugger;

		e.preventDefault()

		var contestantData = new FormData();

		var contestantRequest = new XMLHttpRequest();

		contestantRequest.open('post', '/swimmers/new');
		contestantRequest.send();


		contestantRequest.addEventListener('load', function(){
			alert('Success!')
			form.reset();
		});

		contestantRequest.addEventListener('error', function(){
			alert('Something went wrong.')
		});

	})


})