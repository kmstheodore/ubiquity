import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification"
export default class extends Controller {
  connect() {
    // You can add any initialization code here if needed
  }

  requestPermission() {
    console.log("requesting permission");
    Notification.requestPermission().then((permission) => {
      if (permission === "granted") {
        new Notification("Hi There");
      }
    });
  }
}
