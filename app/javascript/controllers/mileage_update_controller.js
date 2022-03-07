import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tile", "info", "form", "formContainer"]

  connect() {
  }

  displayForm() {
    this.tileTarget.classList.add('d-none');
    this.formContainerTarget.classList.remove('d-none');
  }

  hideForm() {
    this.formContainerTarget.classList.add('d-none');
    this.tileTarget.classList.remove('d-none');
  }

  submit(event) {
    event.preventDefault();
    const url = this.formTarget.action
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': 'text/plain' },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.infoTarget.outerHTML = data;
        this.tileTarget.classList.remove('d-none')
        this.formContainerTarget.classList.add('d-none');
      })
  }
}
