const staticCacheName = 'site-static';

const assets = [
  '/',
  'styles/style.css',
  'styles/auth.css',
  'styles/cookie.css',
  '/socket.io/socket.io.js',
  'scripts/index.js',
  'scripts/login.js',
  'scripts/register.js',
  'images/favicon.png',
  'images/icons/icon-72x72.png',
  'images/icons/icon-96x96.png',
  'images/icons/icon-128x128.png',
  'images/icons/icon-144x144.png',
  'images/icons/icon-152x152.png',
  'images/icons/icon-192x192.png',
  'images/icons/icon-384x384.png',
  'images/icons/icon-512x512.png',
];
 
// install event      
self.addEventListener('install', function(evt) {
  // console.log('service worker installed');
  evt.waitUntil(
    caches.open(staticCacheName, {}).then((cache) => {
      // console.log('caching shell assets...');
      cache.addAll(assets);
      self.skipWaiting();
    })
  );
});

self.addEventListener('activate', function(event) {
  event.waitUntil(
    caches.keys().then(function(cacheNames) {
      return Promise.all(
        cacheNames.filter(function(cacheName) {
          // Return true if you want to remove this cache, 
          // but remember that caches are shared across
          // the whole origin
        }).map(function(cacheName) {
          return caches.delete(cacheName);
        })
      );
    })
  );
});

// fetch event              
self.addEventListener('fetch', evt => {
  evt.respondWith(
    caches.match(evt.request).then(cacheRes => {
      return cacheRes || fetch(evt.request);
    })
  );
});