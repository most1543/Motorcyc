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

    if(isset($_POST['username'])&&$_POST['password']){

        $user = $_POST['username'];
        $pwd = md5($_POST['password']);
        
        $stmt = $conn->prepare("SELECT * FROM member WHERE Username = ? AND Password = ?");

        $stmt->bind_param('ss',$user,$pwd);

        $stmt->execute();

        $result = $stmt->get_result();

        if($uid = $result->fetch_assoc()){

            $_SESSION["uid"] = $uid['Username'];
            $_SESSION["tradnum"] = $uid['TradingNum'];
            $_SESSION["Fname"] = $uid['Fname'];
            $_SESSION["Lname"] = $uid['Lname'];
            header('Location: index.php');

        } else {
           $error = true;
           $error_message = "Wrong Username or Password";
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

        <style>
            @import url(https://fonts.googleapis.com/css?family=Lily+Script+One);
    
    body {
        margin:0;
        font-family:arial,tahoma,sans-serif;
        font-size:12px;
        font-weight:normal;
        direction:ltr;
        background:white;
    }

    a {
        color: black;
    }

    a:hover {
        color: rgb(196, 24, 24);
    }
    
    form {
        margin:10% auto 0 auto;
        padding:30px;
        width:400px;
        height:auto;
        overflow:hidden;
        background:white;
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
        clear:both;
    }
    
    form input {
        margin:15px 0;
        padding:15px 10px;
        width:100%;
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
    
    form input[type=text]:focus,
    form input[type="password"]:focus {
        border-color:cornflowerblue;
    }
    
    input[type=submit] {
        padding:15px 182px;
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

    input[type="submit"], center{
        animation: bounce3 2.5s;
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
        width: 50%;
        animation: bounce 1s;
    }

    input[type="text"]{
        animation: bounce1 1.5s;
    }

    input[type="password"]{
        animation: bounce2 2s;
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

        </style>
    </head>
<body>
    <br><br>
    &emsp;&emsp;<a href="index.php"><i class="fas fa-chevron-left fa-4x"></i></a>
    <form method="post" action="Login.php">

        <img class="responsive-img" style="width: 350px;" src="logo/title.gif" />
        
        <input type="text" name="username" placeholder="Username" autocomplete="off" required />
      
        <input type="password" name="password" placeholder="Password" autocomplete="off" required />

        <input type="submit" name="submit" value="Log In" />
        
        <center>
            Don't have an account ? <a style="color: cornflowerblue;" href="register.php">Sign Up</a>
        </center>
        
    </form>

    <script>
        <?php if($error) { ?>
            swal("Error", "<?php echo $error_message; ?>", "error");
        <?php } ?>
    </script>
</body>
</html>