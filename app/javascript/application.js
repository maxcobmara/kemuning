<<<<<<< HEAD
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
=======
// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./src/jquery"
import "./src/jquery-ui.min"
import Rails from "@rails/ujs"
>>>>>>> 7f2166d323fd1bd6af36a08d2dffdb337ebca910


<<<<<<< HEAD
import "./src/jquery"
import "./src/jquery-ui.min"
import Rails from "@rails/ujs"




=======
>>>>>>> 7f2166d323fd1bd6af36a08d2dffdb337ebca910
$(function() {
  console.log("Aloo Dunya");
  $('p.replace_by_js').replaceWith("<p>Javascript Enabled!</p>");
  $( "#dialog" ).dialog();
})
Rails.start()
