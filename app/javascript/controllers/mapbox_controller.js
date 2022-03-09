import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  // static targets = [ "garage" ]
  static values = {
    apiKey: String,
    markers: Array
  }


  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    // console.log(this.element.dataset.mapboxMarkersValue)
    // console.log(this.element.dataset.mapboxMarkersValue)

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [-1.5486930522518172, 47.21069643932113],
      // center: [this.element.markers[0].lng, this.element.markers[0].lat],
      zoom: 12
    })

    this.#addMarkersToMap()
  }


  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      // console.log(marker)
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      const customMarker = document.createElement("i")
      console.log(customMarker);
      customMarker.className = "fa-2x fas fa-warehouse"
      customMarker.style.color = "#BB853A"


      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

}
