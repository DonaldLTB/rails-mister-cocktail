import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Choose your cocktail", "CHOOSE", "or you will be terminated!"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };
