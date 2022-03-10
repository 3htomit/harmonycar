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

      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      const customMarker = document.createElement("i")

      customMarker.className = "fa-2x fas fa-map-pin"
      customMarker.style.color = "#294C65"


      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

}
