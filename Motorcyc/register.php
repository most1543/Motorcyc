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

    if (isset($_POST['submit'])) {
            
        $Firstname = $_POST['firstname'];
        $Lastname = $_POST['lastname'];
        $Nickname = $_POST['nickname'];
        $Birthday = $_POST['birthday'];
        $CitizenID = $_POST['citizenID'];
        $Gender = $_POST['gender'];
        $Nationality = $_POST['nationality'];
        $No = $_POST['addno'];
        $District = $_POST['district'];
        $Province = $_POST['province'];
        $Post = $_POST['post'];
        $Phone = $_POST['phone'];
        $Email = $_POST['e-mail'];
        $Username = $_POST['username'];
        $Password = md5($_POST['password']);
        $Confirm_Password = md5($_POST['confirm_password']);

        $check = "SELECT * FROM member";
        $check2 = mysqli_query ($conn, $check);
        $num = mysqli_affected_rows($conn) + 1;

        if ($Password == $Confirm_Password) {
            $sql = "INSERT INTO member (TradingNum, Email, Phone, AddNo, AddDistrict, AddProvince, ZipCode, Fname, Nname, Lname
            , Nationality, Bday, Gender, CitizenID, Username, Password)
            VALUES('$num', '$Email', '$Phone', '$No', '$District', '$Province', '$Post', '$Firstname', '$Nickname', '$Lastname'
            , '$Nationality', '$Birthday', '$Gender', '$CitizenID', '$Username', '$Password')";

            mysqli_query ($conn, $sql);
            $error = false;
            
            } else {
                $error = true;
                $error_message = "Password could matching !";
            }

        $conn->close();

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
        margin-top:-140px;
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
        margin:15px 0;
        padding:15px 10px;
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

    form input[type=date]{
      padding: 13px 10px;
    }

    form input[type="date"]:before {
      content: attr(placeholder) !important;
      color: #aaa;
      margin-right: 0.5em;
    }

    form input[type="date"]:focus:before,
    form input[type="date"]:valid:before {
      content: "";
    }
    
    form input[type=text]:focus,
    form input[type="password"]:focus {
        border-color:cornflowerblue;
    }
    
    input[type=submit] {
        padding:15px 177px;
        width:auto;
        background:#ee0a0a;
        border:none;
        color:white;
        cursor:pointer;
        display: flex;
        text-align: center;
        
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

    <form method="post" action="" class="pure-form">
    <a href="login.php"><i class="fas fa-chevron-left fa-4x"></i></a>

        <img class="responsive-img" style="width: 350px;" src="logo/title.gif" />

        <center>
          <hr style="display: inline-block; height:2px; color:black; background-color: black; width: 37%;">
          <b style="font-size: 24.5px;">Sign Up</b>
          <hr style="display: inline-block; height:2px; color:black; background-color: black; width: 37%;">
        </center>
        
        <input type="text" style="width: 49.5%; animation: bounce 1s;" name="firstname" placeholder="Firstname" autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="text" style="width: 49.5%; animation: bounce 1s;" name="lastname" placeholder="Lastname" autocomplete="off" required />

        <input type="text" style="width: 40%; animation: bounce 1s;" name="nickname" placeholder="Nickname" autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="date" style="width: 59%; animation: bounce 1s;" name="birthday" placeholder="Birthday" autocomplete="off" required />

        <input type="text" maxlength="13" style="width: 65%; animation: bounce 1s;" name="citizenID" placeholder="CitizenID" autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="text" style="width: 34%; animation: bounce 1s;" name="gender" placeholder="Gender" list="Gender List" autocomplete="off" required />
            <datalist id="Gender List">
              <option value="Male">
              <option value="Female">
              <option value="LGBT">
            </datalist>

        <input type="text" style="width: 100%; animation: bounce 1s;" name="nationality" placeholder="Nationality" autocomplete="off" required />

        <div><b style="font-size: 17px; animation: bounce1 2.5s;">
          Address
        </b></div>

        <input type="text" style="width: 30%; animation: bounce1 1.5s;" name="addno" placeholder="No." autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="text" style="width: 69%; animation: bounce1 1.5s;" name="district" placeholder="District" autocomplete="off" required />

        <input type="text" style="width: 65%; animation: bounce1 1.5s;" name="province" placeholder="Province" autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="text" maxlength="5" style="width: 34%; animation: bounce1 1.5s;" name="post" placeholder="Post" autocomplete="off" required />

        <div><b style="font-size: 17px; animation: bounce2 2.5s;">
          Contact
        </b></div>

        <input type="text" maxlength="10" style="width: 49.5%; animation: bounce2 2s;" name="phone" placeholder="Phone" autocomplete="off" required />
            <label>&nbsp;</label>
        <input type="email" style="width: 49.5%; animation: bounce2 2s;" name="e-mail" placeholder="E-mail" autocomplete="off" required />

        <div><b style="font-size: 17px; animation: bounce3 2.5s;">
          Username&Password
        </b></div>

        <input type="text" style="width: 49.5%; animation: bounce3 2.5s;" name="username" placeholder="Username" autocomplete="off" required />
            <label>&nbsp;</label>

        <input name="password" style="width: 49.5%; animation: bounce3 2.5s;" id="password" type="password" placeholder="Password"/>

        <input type="password" style="width: 100%; animation: bounce3 2.5s;" name="confirm_password" id="confirm_password" placeholder="Confirm Password" onchange="check()"/> 
        
        <label style="animation: bounce3 2.5s;">Password is : <span id='message'></span> </label>

        <input style="animation: bounce3 2.5s;" type="submit" name="submit" value="Sign Up" />
        
    </form>

    <script>
        <?php if($error) { ?>
            swal("Error", "<?php echo $error_message; ?>", "error");
        <?php } ?>

        <?php if(!$error) { ?>
            swal({
                text: "Your account has been created",
                icon: "success"
            }).then(function() {
                window.location = "Login.php";
            });
        <?php } ?>
    </script>
</body>
</html>