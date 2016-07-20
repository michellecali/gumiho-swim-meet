window.addEventListener('load', function() {
	//objects to click (header for each event)
	var event100BS = document.getElementById('100BS');

	//objects whose view will be changed (all the individual placers)
	var gold100BS = document.getElementsByClassName('winners__listitem--gold');
	var silver100BS = document.getElementsByClassName('winners__listitem--silver');
	var bronze100BS = document.getElementsByClassName('winners__listitem--bronze');

	//function to change views (from 0%height to full height)
	var toggleview = function() {
		//objects to click (header for each event)
		var event100BS = document.getElementById('100BS');

		//objects whose view will be changed (all the individual placers)
		var gold100BS = document.getElementsByClassName('winners__listitem--gold');
		var silver100BS = document.getElementsByClassName('winners__listitem--silver');
		var bronze100BS = document.getElementsByClassName('winners__listitem--bronze');

		if (gold100BS[0].style.height == "0px") {
			gold100BS[0].style.height = 'auto';
			silver100BS[0].style.height = 'auto';
			bronze100BS[0].style.height = 'auto';
		}
		else {
			gold100BS[0].style.height = '0px';
			silver100BS[0].style.height = '0px';
			bronze100BS[0].style.height = '0px';
		}
		event100BS.removeEventListener('mousedown', toggleview);
	};
	event100BS.addEventListener('mousedown', toggleview) //without this it won't fire the first time, gets removed by function
	event100BS.addEventListener('mouseup', toggleview)

});