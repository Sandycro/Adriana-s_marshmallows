import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Spoil yourself with some lovely treats! 🤩 😍"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
