window.addEventListener('load', function() {
	//objects to click (header for each event)
	var eventheads = document.getElementsByClassName('winners__eventhead');

	//objects whose view will be changed (all the individual placers)
	var medalists = document.querySelectorAll('ol.winners__list')

	for (var i = medalists.length - 1; i >= 0; i--) {
		medalists[i].style.height = "0px";
	}

	function toggleview(x) {
		if (medalists[x].style.height == "0px") {
			medalists[x].style.height = 'auto';
		}
		else {
			medalists[x].style.height = '0px';
		}
	}	

	//for (var i = eventheads.length - 1; i >= 0; i--) {

		eventheads[0].addEventListener('mouseup', function(){})
		eventheads[1].addEventListener('mouseup', function(){})
		eventheads[2].addEventListener('mouseup', function(){})
		eventheads[3].addEventListener('mouseup', function(){})
	//}

});