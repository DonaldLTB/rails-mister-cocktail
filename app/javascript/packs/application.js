// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import 'bootstrap';
import { loadDynamicBannerText } from '../components/banner';
import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {
  if (document.querySelector("#banner-typed-text")) {
    loadDynamicBannerText();
  }
  if (document.querySelector(".select2")) {
    initSelect2();
  }
  // initUpdateNavbarOnScroll();
});


