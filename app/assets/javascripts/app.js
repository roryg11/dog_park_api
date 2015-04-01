$(document).ready(function(){
  L.mapbox.accessToken = 'pk.eyJ1IjoiZGF5eW51aGhoIiwiYSI6IlNrUWlXd0kifQ.PkwjuKO6Clksu2OGIoePeA';
 $("#map").load(mapBox());

 function mapBox(){
   var map = L.mapbox.map('map', 'examples.map-i86nkdio').setView(["28.5764949", "-81.3272504"], 9);
   $.ajax('/geojson').done(function(data){
      L.mapbox.featureLayer.setGeoJSON(data).addTo(map);
   });
 }
})
