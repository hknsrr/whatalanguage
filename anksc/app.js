if ('serviceWorker' in navigator) {
  navigator.serviceWorker.register('sw.js')
    .then(reg => {
      console.log('Hi!');
      reg.update();
    })
    .catch(err => {
      // console.log('service worker not registered', err);
    })
}