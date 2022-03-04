import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content", "map" ]

  disable() {
    this.contentTarget.classList.toggle("display-none")
    this.mapTarget.classList.toggle("hidden")
  }
}
