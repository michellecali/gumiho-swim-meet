window.addEventListener('load', function(){

	//need to cancel the page reload on form submission
	var form = document.querySelector('form');
	form.addEventListener('submit', function(e){

		var entryformParams = new FormData(form);

		e.preventDefault()

		var contestantRequest = new XMLHttpRequest();

		contestantRequest.open('post', '/swimmers/new');
		contestantRequest.send(entryformParams);


		contestantRequest.addEventListener('load', function(){
			alert('Success!')
			form.reset();
		});

		contestantRequest.addEventListener('error', function(){
			alert('Something went wrong.')
		});

	})


})