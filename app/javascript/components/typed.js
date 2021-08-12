import Typed from 'typed.js';

const typed = () => {
  const options = {
    strings: ['Classics', 'Action', 'Indie', 'Comedy', 'Adventure'],
    typeSpeed: 150,
    startDelay: 500,
    loop: true
  };

  const typed = new Typed('.typed', options);

}

export { typed }
