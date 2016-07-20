window.addEventListener('load', function() {
	//objects to click (header for each event)
	var event200BS = document.getElementById('head_100BS');

	//objects whose view will be changed (all the individual placers)
	var medalists200BS = document.getElementById('list_100BS')

	//function to change views (from 0px height to full height)
	var toggleview = function() {
		//debugger;
		//objects to click (header for each event)
		if (medalists200BS.style.height === "0px") {
			medalists200BS.style.height = 'auto';
		}
		else {
			medalists200BS.style.height = '0px';
		}
		event200BS.removeEventListener('mousedown', toggleview);
	};

	event200BS.addEventListener('mousedown', toggleview) //without this it won't fire the first time, gets removed by function
	event200BS.addEventListener('mouseup', toggleview)

});