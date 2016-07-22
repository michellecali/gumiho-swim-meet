window.addEventListener('load', function() {
	//objects to click (header for each event)
	var eventheads = document.getElementsByClassName('winners__eventhead');

	//objects whose view will be changed (all the individual placers)
	var medalists = document.querySelectorAll('ol.winners__list')

	//hides all of the medalists to start
	for (var i = medalists.length - 1; i >= 0; i--) {
		medalists[i].style.height = "0px";
	}

	//total number of events
	var eventnum = eventheads.length;

	//function to generate an event listener on each header
	//
	//x is the position of a header in eventhead and the corresponding list of medalists
	function makeEventListener(x){
		eventheads[x].addEventListener('mouseup', function(){
			//if the list is hidden, it will be displayed
			if (medalists[x].style.height == "0px") {
				medalists[x].style.height = 'auto';
			}
			//if the list is not hidded, clicking on the header will hide it again
			else {
				medalists[x].style.height = '0px';
			}
		})
	}

	//create event listeners for the total number of headers
	for (var i = 0; i < eventnum; i++) {
		makeEventListener(i);
	}

});