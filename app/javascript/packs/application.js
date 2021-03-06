// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import { barRating }  from 'components/bar_rating';
import 'jquery-bar-rating/dist/themes/css-stars.css'
import { aos } from 'components/aos';
import { typed } from 'components/typed';

Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  barRating()
  aos()
  typed()
});
