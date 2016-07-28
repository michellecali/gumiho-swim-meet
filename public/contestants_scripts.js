window.addEventListener('load', function(){

	//need to cancel the page reload on form submission
	var form = document.getElementById('entryform');
	form.addEventListener('submit', function(e){

		e.preventDefault()

		var contestantRequest = new XMLHttpRequest();

		contestantRequest.open('POST', '/swimmers/new');
		contestantRequest.send();

		contestantRequest.addEventListener('load', function(){
			alert('Success!')
			form.reset();
		})

		contestantRequest.addEventListener('abort', function(){
			alert('Something went wrong')
		})

	})


})