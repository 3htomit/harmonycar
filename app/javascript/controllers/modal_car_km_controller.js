import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "mileage", "newMileage" ]

  // connect() {
  //   console.log("salut");
  //   console.log(this.newMileageTarget);
  // }


  // update(event) {
  //   console.log(this.newMileageTarget.value);
  //   console.log(this.newMileageTarget.action);

  //   event.preventDefault()
  //   // const url = this.newMileageTarget.action
  //   // const url = car_mileages_path

  //   fetch(url, {
  //     method: "PATCH",
  //     headers: { "Accept": "text/plain" },
  //     body: new FormData(this.newMileageTarget.value)
  //   })
  //     .then(response => response.text())
  //     .then((data) => {
  //       console.log(data)
  //     })


  // }

}
