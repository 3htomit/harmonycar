import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "content", "map", "btnlist", "btnmap"]

<<<<<<< HEAD
=======
  connect(){

    console.log(this.btnmapTarget);
  }

>>>>>>> 9d922c74ae42ddb2a1f359a5810593246cd673f6
  disable() {
    console.log(this.btnlistTarget);
    this.contentTarget.classList.toggle("display-none")
    this.mapTarget.classList.toggle("hidden")
    this.btnlistTarget.classList.toggle("display-none")
    this.btnmapTarget.classList.toggle("display-none")
  }

  garageChoice(event) {
    event.preventDefault();

<<<<<<< HEAD

    console.log("hello");
=======
    console.log(this.element)
>>>>>>> 9d922c74ae42ddb2a1f359a5810593246cd673f6
    this.element.submit();
  }

}
