import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "rating", "ratingOne", "ratingTwo", "ratingThree", "ratingFour", "ratingFive" ]

  connect() {
    const rating = Number(this.ratingTarget.textContent)

    if (rating < 2 ) {
      this.ratingOneTarget.classList.remove("display-none")
    }else if (rating < 3){
      this.ratingOneTarget.classList.remove("display-none")
      this.ratingTwoTarget.classList.remove("display-none")
    }else if (rating < 4){
      this.ratingOneTarget.classList.remove("display-none")
      this.ratingTwoTarget.classList.remove("display-none")
      this.ratingThreeTarget.classList.remove("display-none")
    }else if (rating < 5){
      this.ratingOneTarget.classList.remove("display-none")
      this.ratingTwoTarget.classList.remove("display-none")
      this.ratingThreeTarget.classList.remove("display-none")
      this.ratingFourTarget.classList.remove("display-none")
    }else {
      this.ratingOneTarget.classList.remove("display-none")
      this.ratingTwoTarget.classList.remove("display-none")
      this.ratingThreeTarget.classList.remove("display-none")
      this.ratingFourTarget.classList.remove("display-none")
      this.ratingFiveTarget.classList.remove("display-none")
    };

  }
}
