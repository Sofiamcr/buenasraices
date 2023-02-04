import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}


// let carousel = document.querySelector('.carousel');
// let left = document.querySelector('.left');
// let right = document.querySelector('.right');
// let item = document.querySelector('.item');
// (function () {
//    right.addEventListener('click', function (e) {
//       carousel.scrollLeft += item.clientWidth;
//    });
//    left.addEventListener('click', function () {
//       carousel.scrollLeft -= item.clientWidth;
//    });
//https://dev.to/kevinkh89/carousel-with-little-to-zero-javascript-using-flexbox-and-overflow-37il
