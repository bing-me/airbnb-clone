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

/* <input class="form-select mx-1 date required" min="2023-04-21" max="2030-12-31" value="2023-04-21" type="date" name="booking[start_date]" id="booking_start_date"></input>
<input class="form-select mx-1 date required" min="2023-04-21" max="2030-12-31" value="2023-04-21" type="date" name="booking[end_date]" id="booking_end_date"></input> */
