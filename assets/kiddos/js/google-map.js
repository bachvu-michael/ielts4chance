
var google;

function init() {

    var mapElement = document.getElementById('map');

    var myLatlng = new google.maps.LatLng(mapElement.dataset.lat ||10.7994154,mapElement.dataset.long||106.7116815);
	var mapOptions = {
	zoom: parseFloat(mapElement.dataset.zoom) || 15,
	center: myLatlng
	}
	var map = new google.maps.Map(mapElement, mapOptions);

	var marker = new google.maps.Marker({
		position: myLatlng,
		title:"Hello World!",
		icon: '/assets/kiddos/images/loc.png'
	});

// To add the marker to the map, call setMap();
	marker.setMap(map);
}
google.maps.event.addDomListener(window, 'load', init);
