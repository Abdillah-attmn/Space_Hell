import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color-answers"
export default class extends Controller {
  connect() {
    console.log('connected')
  }

  color(event) {
    event.preventDefault();
    const link = event.currentTarget.attributes.href.value;
    console.log(link);
    const correct = event.currentTarget.dataset.correct;
    console.log(correct);

    if (correct == 'true') {
      event.currentTarget.classList.add('text-success');
    } else {
      event.currentTarget.classList.add('text-danger');
    }

    location.assign(link);
  }
}
