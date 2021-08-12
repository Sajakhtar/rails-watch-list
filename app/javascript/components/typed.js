import Typed from 'typed.js';

const typed = () => {
  const options = {
    strings: ['Classis', 'Action', 'Indie', 'Comedy', 'Adventure'],
    typeSpeed: 100,
    startDelay: 500,
    loop: true
  };

  const typed = new Typed('.typed', options);

}

export { typed }
