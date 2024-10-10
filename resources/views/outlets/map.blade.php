@extends('layouts.admin')

@section('content')
<head>
	<script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.2/dist/leaflet.css" />

 <style>
  #map { 
  widh: 50px;
  height: 600px; }
 </style>
 
 </head>
  <body>

    <?php echo json_encode($geoJSONdata); ?>
   <div id="map"></div>
 <script>
 
var map = L.map('map').
setView([-24.2549, -65.2133], 
14);
 
L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
    maxZoom: 18
}).addTo(map);

L.control.scale().addTo(map);
L.marker([41.66, -4.71], {draggable: true}).addTo(map);
axios.get('{{ route('api.outlets.index') }}')
    .then(function (response) {
        console.log(response.data);
        L.geoJSON(response.data, {
            pointToLayer: function(geoJsonPoint, latlng) {
                return L.marker(latlng);
            }
        })
        .bindPopup(function (layer) {
            return layer.feature.properties.map_popup_content;
        }).addTo(map);
    })
    .catch(function (error) {
        console.log(error);
    });
    var theMarker;

map.on('click', function(e) {
    let latitude = e.latlng.lat.toString().substring(0, 15);
    let longitude = e.latlng.lng.toString().substring(0, 15);

    if (theMarker != undefined) {
        map.removeLayer(theMarker);
    };

    var popupContent = "Tu locacion : " + latitude + ", " + longitude + ".";
    popupContent += '<br><a href="{{ route('outlets.create') }}?latitude=' + latitude + '&longitude=' + longitude + '">Add new outlet here</a>';

    theMarker = L.marker([latitude, longitude]).addTo(map);
    theMarker.bindPopup(popupContent)
    .openPopup();
});
 </script>
 @endsection