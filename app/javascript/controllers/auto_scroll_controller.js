import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="auto-scroll"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log(this.buttonTarget);
    this.buttonTarget.scrollIntoView();
  }

  scroll() {
    // this.buttonTarget.scrollIntoView();
  }
}
