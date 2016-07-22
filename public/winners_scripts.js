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

		eventheads[0].addEventListener('mouseup', function(){
			if (medalists[0].style.height == "0px") {
				medalists[0].style.height = 'auto';
			}
			else {
				medalists[0].style.height = '0px';
			}
		})
		eventheads[1].addEventListener('mouseup', function(){
			if (medalists[1].style.height == "0px") {
				medalists[1].style.height = 'auto';
			}
			else {
				medalists[1].style.height = '0px';
			}
		})
		eventheads[2].addEventListener('mouseup', function(){
			if (medalists[2].style.height == "0px") {
				medalists[2].style.height = 'auto';
			}
			else {
				medalists[2].style.height = '0px';
			}
		})
		eventheads[3].addEventListener('mouseup', function(){
			if (medalists[3].style.height == "0px") {
				medalists[3].style.height = 'auto';
			}
			else {
				medalists[3].style.height = '0px';
			}
		})
		eventheads[4].addEventListener('mouseup', function(){
			if (medalists[4].style.height == "0px") {
				medalists[4].style.height = 'auto';
			}
			else {
				medalists[4].style.height = '0px';
			}
		})

});