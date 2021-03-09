// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../components/init_autocomplete';
import { initAutocomplete_2 } from '../components/init_autocomplete';
import { initSelect2 } from '../components/init_select';
import { initFlatpickr } from "../components/flatpickr";
import { initMapbox } from '../components/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  initAutocomplete()
  // initSelect2()
  initFlatpickr()
  initAutocomplete_2()
  initMapbox()
});