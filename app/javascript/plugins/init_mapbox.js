import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });

    fitMapToMarkers(map, markers);
  }
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

export { initMapbox };


// // [...]
// if (mapElement) {
//   // [...]
//   map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
// }

// import mapboxgl from 'mapbox-gl';const mapElement = document.getElementById('map');const buildMap = () => {
//  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//  return new mapboxgl.Map({
//    container: 'map',
//    style: 'mapbox://styles/mapbox/streets-v8'
//  });
// };const addMarkersToMap = (map, markers) => {
//  markers.forEach((marker) => {
//    new mapboxgl.Marker()
//      .setLngLat([ marker.lng, marker.lat ])
//      .addTo(map);
//  });
// };const fitMapToMarkers = (map, markers) => {
//  const bounds = new mapboxgl.LngLatBounds();
//  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
// };const initMapbox = () => {
//  if (mapElement) {
//    const map = buildMap();
//    const markers = JSON.parse(mapElement.dataset.markers);
//    addMarkersToMap(map, markers);
//    fitMapToMarkers(map, markers);
//  }
// };export { initMapbox };
