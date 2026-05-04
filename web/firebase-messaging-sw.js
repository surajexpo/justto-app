importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts(
  "https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js"
);

firebase.initializeApp({
  apiKey: "AIzaSyCskl4gb67u8zlgzEQLQHcf0TOkaEQj6l0",
  authDomain: "justto-45779.firebaseapp.com",
  projectId: "justto-45779",
  storageBucket: "justto-45779.firebasestorage.app",
  messagingSenderId: "932231614342",
  appId: "1:932231614342:web:36ea0b0483738cfe71e607",
  measurementId: "G-SZ2TJ3844T",
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function (payload) {
  const promiseChain = clients
    .matchAll({
      type: "window",
      includeUncontrolled: true,
    })
    .then((windowClients) => {
      for (let i = 0; i < windowClients.length; i++) {
        const windowClient = windowClients[i];
        windowClient.postMessage(payload);
      }
    })
    .then(() => {
      const title = payload.notification.title;
      const options = {
        body: payload.notification.score,
      };
      return registration.showNotification(title, options);
    });
  return promiseChain;
});
self.addEventListener("notificationclick", function (event) {
  console.log("notification received: ", event);
});
