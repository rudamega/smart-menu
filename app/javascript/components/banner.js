import Typed from 'typed.js';

const numer = () => {
   new Typed('#ccnum', {
    strings: ["1111-2222-3333-4444"],
    typeSpeed: 90,
  });
};

const setember = () => {
   new Typed('#expmonth', {
    strings: ["September"],
    typeSpeed: 100,
  });
};

const cvv = () => {
   new Typed('#cvv', {
    strings: ["268"],
    typeSpeed: 100,
  });
};


const loadDynamicBannerText = () => {
  new Typed('#cname', {
    strings: ["Ruben Dario Medina Galeano"],
    typeSpeed: 50,
  });
  numer();
  setember();
  cvv();
}

export { loadDynamicBannerText };
