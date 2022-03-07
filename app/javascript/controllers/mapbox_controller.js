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
      center: [-1.5589640269987237, 47.21059198203169],
      // center: [this.element.markers[0].lng, this.element.markers[0].lat],
      zoom: 13
    })

    this.#addMarkersToMap()
    // this.#fitMapToMarkers()

    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }))
  }


  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      // console.log(marker)
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // const customMarker = document.createElement("div")
      // customMarker.className = "marker"
      // customMarker.style.backgroundImage = `url('${marker.image_url}')`
      // customMarker.style.backgroundSize = "contain"
      // customMarker.style.width = "25px"
      // customMarker.style.height = "25px"

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  // #fitMapToMarkers() {
  //   // const bounds = new mapboxgl.LngLatBounds()
  //   const bounds = new mapboxgl.LngLatBounds([
  //     [-1.5589640269987237, 47.21059198203169],  // Coin Sud-Ouest
  //     [-1.5535566936247003, 47.21763770553449]    // Coin Nord-Est
  //   ]);

  //   // this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
  //   this.map.fitBounds(bounds, {duration: 0} )
  // }
}
