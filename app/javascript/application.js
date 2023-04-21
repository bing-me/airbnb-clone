// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

document.getElementById("out").addEventListener("focus", function() {
  this.setAttribute("min", document.getElementById("in").value);
});

document.getElementById("booking_end_date").addEventListener("focus", function() {
  this.setAttribute("min", document.getElementById("booking_start_date").value);
});
