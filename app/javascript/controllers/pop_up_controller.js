import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pop-up"
export default class extends Controller {
  static targets = ['screen']
  connect() {
    console.log('display')
  }

  display(event){
    event.preventDefault();
    const correct = event.currentTarget.dataset.correct;
    console.log(correct);


    if (correct == 'true') {
      alert("that's correct!");
    } else {
      alert("that's wrong!");
    }
  }
}
