import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "content", "map", "btnlist", "btnmap"]

  connect(){

    console.log(this.btnmapTarget);
  }

  disable() {
    console.log(this.btnlistTarget);
    this.contentTarget.classList.toggle("display-none")
    this.mapTarget.classList.toggle("hidden")
    this.btnlistTarget.classList.toggle("display-none")
    this.btnmapTarget.classList.toggle("display-none")
  }

  garageChoice(event) {
    event.preventDefault();

    console.log(this.element)
    this.element.submit();
  }

}
