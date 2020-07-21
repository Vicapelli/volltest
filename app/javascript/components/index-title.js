import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#index-title', {
    strings: ["Nossos aparelhos cadastrados!"],
    showCursor: false,
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };