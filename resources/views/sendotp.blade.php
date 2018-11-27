<!DOCTYPE html>
<html lang="en">
<head>
    <title>
        Firebase Phone Number Auth
    </title>
</head>
<body>
<form method="post" action="/verification">
    @csrf
    <input type="text" id="verificationcode" name="verificationcode" value="<?php if (isset($otp)) echo $otp;?>">
    <input type="text" id="message" name="" value="message">
    <input type="submit" value="Submit" id="otp">
</form>
<p>2,</p>
<form method="post" action="/responseotp">
    @csrf
    <input type="text" name="confirmationResult" id="confirmationResult">
    <input type="submit" value="Submit" id="sendotp">
</form>
<button style="background: none; border: none" id="recaptcha-container"></button>
<script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
<script>
    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyAcYyLkQdofHGirvzBYuj9guG6PuwFJ528",
        authDomain: "calender-3d4ae.firebaseapp.com",
        databaseURL: "https://calender-3d4ae.firebaseio.com",
        projectId: "calender-3d4ae",
        storageBucket: "calender-3d4ae.appspot.com",
        messagingSenderId: "31507023742"
    };
    firebase.initializeApp(config);
</script>
<script type="text/javascript">
        <?php if(isset($otp)){ ?>
    var confirmationResult = JSON.parse(<?php echo $confirmationResult; ?>);
    window.confirmationResult = confirmationResult;
    a(confirmationResult);
    window.confirmationResult.confirm(document.getElementById("verificationcode").value)
        .then(function (result) {
            console.log(result);
            document.getElementById("message").value = 1;
        }, function (error) {
            document.getElementById("message").value = 0;
        });
    $("#otp").trigger("click");
    <?php }?>
        <?php if(isset($phone)){ ?>
        window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
        'size': 'invisible',
        'callback': function (response) {
            onSignInSubmit();
        }
    });
    firebase.auth().signInWithPhoneNumber("<?php echo $phone;?>", window.recaptchaVerifier)
        .then(function (confirmationResult) {
            document.getElementById("confirmationResult").value = JSON.stringify(confirmationResult);
            window.confirmationResult = confirmationResult;
            a(confirmationResult);
        });
    $("#sendotp").trigger("click");
    <?php }?>
</script>
</body>
</html>