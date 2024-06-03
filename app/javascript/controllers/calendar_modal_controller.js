import { Controller } from "@hotwired/stimulus";
import "jquery";

export default class extends Controller {
  static targets = ["dateTimeInput", "modal"];

  showModal() {
    // const hour = event.target.textContent.split(":")[1];
    // const day = event.target.textContent.split(":")[0];
    console.log(event.target.textContent);
    this.modalTarget.open();
    //$("callModal").modal("toggle");

    // Set the formatted date value to the datetime input target
    //this.datetimeInputTarget.value = formattedDate;
  }
}