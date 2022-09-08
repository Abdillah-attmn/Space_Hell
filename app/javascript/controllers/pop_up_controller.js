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
      alert("That's correct!");
    } else {
      alert("That's wrong!");
    }
  }
}
