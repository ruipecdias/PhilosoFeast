import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="priceupdate"
export default class extends Controller {
  static targets = ["totalPrice"]
  connect() {
    this.pricePerHour = parseInt(this.totalPriceTarget.innerText)
    // console.log(pricePerHour)
    // const newPrice = this.totalPriceTarget.innerText = 90
    //   var  = <%= @philosopher.price_per_hour.to_json %>;
    //   var lengthInput = document.getElementById("length_input");
    //   var totalPriceDisplay = document.getElementById("total_price");
  }

  newPrice(event) {
    const duration = parseInt(event.target.value)
    var totalPrice = this.pricePerHour * duration
    this.totalPriceTarget.innerText = totalPrice
  //     var totalPrice = pricePerHour * length;
    //     totalPriceDisplay.textContent = totalPrice

  }
}

// document.addEventListener("DOMContentLoaded", function() {
//   var pricePerHour = <%= @philosopher.price_per_hour.to_json %>;
//   var lengthInput = document.getElementById("length_input");
//   var totalPriceDisplay = document.getElementById("total_price");

//   lengthInput.addEventListener("change", function() {
//   });
// });
