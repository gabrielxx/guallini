  <style>
  #map {
    height: 100%;
  }
  html, body {
    height: 100%;
    margin: 0;
    padding: 0;
  }
</style>
<div id="map"></div>
<script>
  function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
     center: {lat: -34.3242541, lng: -58.9559645}
    });
  var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var markers = locations.map(function(location, i) {
    return new google.maps.Marker({
      position: location,
      icon:"{{asset('img/ico.png')}}"
    });
  });
  var markerCluster = new MarkerClusterer(map, markers,
    {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
}
var locations = [
{lat: -34.5976139, lng: -58.4656136},
{lat: -34.6131113, lng: -58.5075336}
]
</script>
<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcbneHlaY1TzQNVZmKkB0EmXRx-CSryjY&callback=initMap">
</script>