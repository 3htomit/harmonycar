import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {

  garageChoice(event) {
    event.preventDefault();

    this.element.submit();
  }

}
