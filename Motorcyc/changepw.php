<?php

    session_start();

        $servername = "localhost";
        $username = "root"; //Default XAMPP's username
        $password = ""; //Default XAMPP's password
        $dbname = "Motorcyc";

        //Connect to database for XAMPP
        $conn = new mysqli($servername, $username, $password, $dbname);
    
        if($conn->connect_error){
            die("Can't connect to database");
        }

        if(isset($_SESSION["tradnum"])) {
            $tdfromlogin = $_SESSION["tradnum"];
        }

        if (isset($_POST['submit'])) {
            $Password = md5($_POST['password']);
            $Confirm_Password = md5($_POST['confirm_password']);
            
            if ($Password == $Confirm_Password) {
                $sql = "UPDATE `member` SET `Password` = '$Confirm_Password' WHERE `TradingNum` = '$tdfromlogin'";

                mysqli_query($conn, $sql);
                $error = false;
                
            } else {
                $error = true;
                $error_message = "Password could matching !";
            }
        }

?>

<html>

    <head>
    <title>Motorcyc</title>
    <link rel="icon" href="logo/icon.png" type="image/png" sizes="16x16">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    </head>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        var check = function() {
            if (document.getElementById('password').value ==
                document.getElementById('confirm_password').value) {
                document.getElementById('message').style.color = 'green';
                document.getElementById('message').innerHTML = 'matching';
            } else {
                document.getElementById('message').style.color = 'red';
                document.getElementById('message').innerHTML = 'not matching';
            }
        }
    </script>

        <style>
            @import url(https://fonts.googleapis.com/css?family=Lily+Script+One);
    
    body {
        margin-top:40px;
        font-family:arial,tahoma,sans-serif;
        font-size:12px;
        font-weight:normal;
        direction:ltr;
        background:white;
    }
    
    form {
        margin:10% auto 0 auto;
        padding:30px;
        width:400px;
        height:auto;
        overflow:hidden;
        background:while;
        border-radius:10px;
    }
    
    form label {
        font-size:14px;
        color:darkgray;
        cursor:pointer;
    }
    
    form label,
    form input {
        float:left;
    }
    
    form input {
        margin:5px 0;
        padding:10px 10px;
        outline:none;
        border:1px solid #bbb;
        border-radius:20px;
        display:inline-block;
        -webkit-box-sizing:border-box;
           -moz-box-sizing:border-box;
                box-sizing:border-box;
        -webkit-transition:0.2s ease all;
           -moz-transition:0.2s ease all;
            -ms-transition:0.2s ease all;
             -o-transition:0.2s ease all;
                transition:0.2s ease all;
    }

    }
    
    form input[type="password"]:focus {
        border-color:cornflowerblue;
    }
    
    input[type=submit] {
        padding:15px;
        width:100%;
        background:#ee0a0a;
        border:none;
        color:white;
        cursor:pointer;
        text: center;
        
        -webkit-transition:0.2s ease all;
           -moz-transition:0.2s ease all;
            -ms-transition:0.2s ease all;
             -o-transition:0.2s ease all;
                transition:0.2s ease all;
    }
    
    input[type=submit]:hover {
        opacity:0.8;
    }
    
    input[type="submit"]:active {
        opacity:0.4;
    }
    
    .forgot,
    .register {
        float:left;
        clear:left;
        color:cornflowerblue;
        text-decoration:none;
    }
    
    .forgot:hover,
    .register:hover {
        color:darkgray;
    }

    img {
        display: block;
        margin-left: auto;
        margin-right: auto;
        animation: bounce 1s;
    }

   a {
        color: black;
    }

    a:hover {
        color: rgb(196, 24, 24);
    }

    .previous {
        color: black;
        margin-top: -30px;
        margin-left: -20px;
    }

    center{
        animation: bounce 1s;
    }

    @keyframes bounce {
    0% {
        transform: translateY(-250px);
        opacity: 0;
        }
    }

    @keyframes bounce1 {
    0% {
        opacity: 0;
    }
    30% {
        transform: translateY(-100px);
        opacity: 0;
        }
    }

    @keyframes bounce2 {
    0% {
        opacity: 0;
    }
    45% {
        transform: translateY(-50px);
        opacity: 0;
        }
    }

    @keyframes bounce3 {
    0% {
        opacity: 0;
    }
    60% {
        transform: translateY(-20px);
        opacity: 0;
        }
    }

    @keyframes bounce4 {
    0% {
        opacity: 0;
    }
    75% {
        transform: translateY(-20px);
        opacity: 0;
        }
    }
        </style>

    </head>
    <body>
    <br><br>
    &emsp;&emsp;<a href="index.php"><i class="fas fa-chevron-left fa-4x"></i></a>

    <form method="post" action="" class="pure-form">
    
        <b style="font-size: 17px;">
          Change Password
        </b>

        <input name="password" style="width: 100%;" id="password" type="password" placeholder="New Password"/>
        <input type="password" style="width: 100%;" name="confirm_password" id="confirm_password" placeholder="Confirm New Password" onchange="check()"/> 
        <label >Password is : <span id='message'></span> </label>

        <input  type="submit" name="submit" value="Change Password" />
        
    </form>
    <script>
        <?php if($error) { ?>
            swal("Error", "<?php echo $error_message; ?>", "error");
        <?php } ?>

        <?php if(!$error) { ?>
            swal({
                text: "Your account has been password changed",
                icon: "success"
            }).then(function() {
                window.location = "setting.php";
            });
        <?php } ?>
    </script>
</body>
</html>