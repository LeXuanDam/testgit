<head>
    <link rel="manifest" href="manifest.json" />
</head>
<script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
<script>
    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyA_6xCFVkXIOHdxSQkHaNU9Tm9f7_68Z2I",
        authDomain: "fuji-e24a2.firebaseapp.com",
        databaseURL: "https://fuji-e24a2.firebaseio.com",
        projectId: "fuji-e24a2",
        storageBucket: "fuji-e24a2.appspot.com",
        messagingSenderId: "47689100308"
    };
    firebase.initializeApp(config);

    const messaging = firebase.messaging();
    messaging.requestPermission().then(function() {
        console.log('Notification permission granted.');
        // TODO(developer): Retrieve an Instance ID token for use with FCM.
        // ...
    }).catch(function(err) {
        console.log('Unable to get permission to notify.', err);
    });

    messaging.getToken().then(function(currentToken) {
        if (currentToken) {
            console.log(currentToken);
        } else {
            // Show permission request.
            console.log('No Instance ID token available. Request permission to generate one.');
            // Show permission UI.
            // updateUIForPushPermissionRequired();
            // setTokenSentToServer(false);
        }
    }).catch(function(err) {
        console.log('An error occurred while retrieving token. ', err);
//   showToken('Error retrieving Instance ID token. ', err);
//   setTokenSentToServer(false);
    });

    messaging.onMessage(function(payload) {
        console.log("ưtf");
        console.log('Message received. ', payload);
        console.log("ưtf123");

        // ...
    });
    console.log('Message 123');
</script>