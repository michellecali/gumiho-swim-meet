window.addEventListener('load', function() {
	//objects to click (header for each event)
	var eventheads = document.getElementsByClassName('winners__eventhead');

	//objects whose view will be changed (all the individual placers)
	var medalists = document.querySelectorAll('ol.winners__list')

	for (var i = medalists.length - 1; i >= 0; i--) {
		medalists[i].style.height = "0px";
	}

	//function to change views (from 0px height to full height)
	//var toggleview = function() {
	//	//debugger;

	//	for (var i = medalists.length - 1; i >= 0; i--) {
	//		if (medalists[i].style.height == "0px") {
	//			medalists[i].style.height = 'auto';
	//		}
	//		else {
	//			medalists[i].style.height = '0px';
	//		}
	//	}


	for (var i = eventheads.length - 1; i >= 0; i--) {
		eventheads[i].addEventListener('mouseup', function() {
			for (var i = medalists.length - 1; i >= 0; i--) {
				if (medalists[i].style.height == "0px") {
					medalists[i].style.height = 'auto';
				}
				else {
					medalists[i].style.height = '0px';
				}
			}
		})
	}

});