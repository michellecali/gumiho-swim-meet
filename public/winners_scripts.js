window.addEventListener('load', function() {
	//objects to click (header for each event)
	var event100BS = document.getElementById('head_100BS');

	//objects whose view will be changed (all the individual placers)
	var medalists100BS = document.getElementById('list_100BS')

	//function to change views (from 0px height to full height)
	var toggleview = function() {
		//debugger;
		//objects to click (header for each event)
		if (medalists100BS.style.height === "0px") {
			medalists100BS.style.height = 'auto';
			medalists100BS.style.width = 'auto';
		}
		else {
			medalists100BS.style.height = '0px';
		}
		event100BS.removeEventListener('mousedown', toggleview);
	};

	event100BS.addEventListener('mousedown', toggleview) //without this it won't fire the first time, gets removed by function
	event100BS.addEventListener('mouseup', toggleview)

});