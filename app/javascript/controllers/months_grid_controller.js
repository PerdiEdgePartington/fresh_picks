import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  const months = document.querySelectorAll('.clickable');

  const toggleActiveClass = (event) => {
    event.currentTarget.classList.toggle('active');
  };

  const toggleActiveOnClick = (month) => {
    month.addEventListener('click', toggleActiveClass);
  };

  months.forEach(toggleActiveOnClick);

  }
}
