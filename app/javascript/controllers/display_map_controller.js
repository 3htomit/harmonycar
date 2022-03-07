import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content", "map", "btnlist", "btnmap", "garage" ]

  disable() {
    this.contentTarget.classList.toggle("display-none")
    this.mapTarget.classList.toggle("hidden")
    this.btnlistTarget.classList.toggle("display-none")
    this.btnmapTarget.classList.toggle("display-none")
  }
}
