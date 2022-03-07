import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "content", "map", "btnlist", "btnmap"]

  connect(){
    // console.log(this.choiceTarget.children);
    // console.log(this.serviceSearchTarget.children.query.value);
  }

  disable() {
    this.contentTarget.classList.toggle("display-none")
    this.mapTarget.classList.toggle("hidden")
    this.btnlistTarget.classList.toggle("display-none")
    this.btnmapTarget.classList.toggle("display-none")
  }

  garageChoice(event) {
    event.preventDefault();


    console.log("hello");
    // console.log(event)

    // console.log(Rails.fire(this.element, 'submit'));
    console.log(this.element)
    this.element.submit();
    // Rails.fire(this.element, 'submit');
  }

}
