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
        $Fname = $_SESSION["Fname"];
        $Lname = $_SESSION["Lname"];
    }

    //Send Product
    if(isset($_POST["add_to_cart"]))  
    {  
        if(isset($_SESSION["tradnum"])) {

            $check = "SELECT * FROM member";
            $check2 = mysqli_query ($conn, $check);
            $num = mysqli_affected_rows($conn) + 1;

            $code = $_POST["code"];
            $date = $_POST["date"];
            $insert = "INSERT INTO `buy` (`TradingNum`, `PCode`, `ReceiptNum`, `Date`, `Cash`, `Online`) VALUES ('$tdfromlogin', '$code', '$num', '$date', 'T', 'F')";
            mysqli_query ($conn, $insert);
            $error = false;
        } else {
            $error = true; 
        }
    }
    
?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="https://static.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
    <meta name="apple-mobile-web-app-title" content="CodePen">
    <link href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
    <link href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
        color="#111">
    <title>Motorcyc</title>
    <link rel="icon" href="logo/icon.png" type="image/png" sizes="16x16">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- CSS Code in <style>.....</style>-->
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #dddddd;
            color: #000;
            font-size: 14px;
            line-height: 1.5;
        }

        a {
            color: #262626;
            text-decoration: none;
        }

        ul {
            list-style: none;
        }

        .container {
            margin: auto;
        }
        
        /* Search */
        input {
            outline: none;
        }
        input[type=search] {
            -webkit-appearance: textfield;
            -webkit-box-sizing: content-box;
            font-family: inherit;
            font-size: 80%;
            
        }

        input[type=search] {
            background: #ededed url(https://static.tumblr.com/ftv85bp/MIXmud4tx/search-icon.png) no-repeat 9px center;
            border: solid 1px #ccc;
            padding: 5px 10px 5px 32px;
            width: 70px;
            
            -webkit-border-radius: 10em;
            -moz-border-radius: 10em;
            border-radius: 10em;
            
            -webkit-transition: all .5s;
            -moz-transition: all .5s;
            transition: all .5s;
        }
        input[type=search]:focus {
            width: 150%;
            background-color: #fff;
            border-color: #f55656;
            
            -webkit-box-shadow: 0 0 5px rgba(109,207,246,.5);
            -moz-box-shadow: 0 0 5px rgba(109,207,246,.5);
            box-shadow: 0 0 5px rgba(109,207,246,.5);
        }
        
        input:-moz-placeholder {
            color: #999;
        }
        input::-webkit-input-placeholder {
            color: #999;
        }

        /* Nav */
        .main-nav {
            display: flex;
            background:white;
            align-items: center;
            justify-content: space-between;
            height: 60px;
            padding: 20px 0;
            font-size: 13px;
            margin-bottom: 20px;
        }

        .main-nav .logo {
            margin-left: 25px;
            width: 110px;
        }

        .main-nav ul {
            display:flex;
        }

        .main-nav ul li {
            padding: 0 10px;
        }

        .main-nav ul li a {
            padding-bottom: 2px;
        }

        .main-nav ul li a:hover {
            border-bottom: 2px solid #262626;
        }

        .main-nav ul.main-menu {
            flex: 1;
            margin-left: 20px;
        }

        .menu-btn {
            cursor: pointer;
            position: absolute;
            top: 20px;
            right: 30px;
            z-index: 2;
            display: none;
        }

        .btn {
            cursor: pointer;
            display: inline-block;
            border: 0;
            font-weight: bold;
            padding: 5px 20px;
            background: #00ac1d;
            color: #fff;
            font-size: 15px;
        }

        .btn:hover {
            opacity: 0.9;
        }

        /* Xbox */
        .xbox {
            display:flex;
            height: 125px;
            background: white;
            margin-bottom: 20px;
            align-items: center;
            margin: auto;
            max-width: 800px;
            width: 95%;
            border-radius: 1em;
            box-shadow: 6px 6px 0 rgba(0,0,0,0.3);
        }

        .xbox .image {
            padding: 10px 0 10px 10px;
            width: 140px;
            height: 120px;
        }

        .xbox .content { 
            margin-left: 20px;
        } 

        .xbox .content p h2{
            margin: 0 0 20px;
        }

        @media(max-width: 800px) {
            .menu-btn {
                display: block;
            }

            .menu-btn:hover {
                opacity: 0.5;
            }

            .main-nav ul.right-menu {
                margin-right: 50px;
            }

            .main-nav ul.main-menu {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                background: #f2f2f2;
                width: 50%;
                height: 100%;
                border-right: #ccc 1px solid;
                opacity: 0.9;
                padding: 30px;
                transform: translateX(-500px);
                transition: transform 0.5s ease-in-out;
            }

            .main-nav ul.main-menu li {
                padding: 10px;
                border-bottom: #ccc solid 1px;
                font-size: 14px;
            }

            .main-nav ul.main-menu li:last-child {
                border-bottom: 0;
            }

            .main-nav ul.main-menu.show {
                transform: translateX(-20px);
            }

            .xbox .content p {
                display: none;
            }

            .xbox .content h2 {
                margin-bottom: 20px;
            }
        }
    </style>

    <script>
        window.console = window.console || function (t) { };
    </script>
    <script>
        if (document.location.search.match(/type=embed/gi)) {
            window.parent.postMessage("resize", "*");
        }
    </script>
</head>

<body translate="no">
    <!-- Menu bar for mobile views -->
    <div class="menu-btn">
        <i class="fas fa-bars fa-2x"></i>
    </div>

    <div class="container">
        <!-- Navigation bar -->
        <nav class="main-nav">
            <img src="logo/title.gif" alt="Motorcyc" class="logo" >
            <ul class="main-menu"> <!--Link //Edit-->
                <li><a href="index.php">Home</a></li>
                <li><a href="cart.php">Your Cart</a></li>
                <li><a href="setting.php">Setting</a></li>
                <!-- Search box-->
                <form method="get" action="search.php"><input type="search" name="search" placeholder="Search"></form>
                        
                
            </ul>
            <ul class="right-menu"><!-- link to Login //Edit -->
                <li>
                <span class="navbar-text">
                    <?php if(!isset($_SESSION["uid"])) { ?>
                        <a class="nav-link" href="login.php">Login&nbsp;&nbsp;<i class="fas fa-user-circle fa-2x"></i></a>
                    <?php } else {
                                echo $Fname?> <?php echo $Lname?>  |
                        <a class="nav-link" href="logout.php">Logout</a>
                    <?php } ?>
                </span>
                    
                        
                </li>
            </ul>
        </nav>
        <!-- End Navigation bar -->

        <!-- Query Database to Show products -->
        <?php
            if(isset($_GET['search'])) {
                $textsearch = $_GET['search'];
                $query = "SELECT Product.* ,Picture.* FROM Picture LEFT JOIN Product ON Picture.PCode = Product.Code WHERE Pname_Eng LIKE '%$textsearch%'";
                $result = mysqli_query($conn, $query);
                if(mysqli_num_rows($result) > 0)  
                {  
                     while($row = mysqli_fetch_array($result))  
                     {  
        ?>

        <section class="xbox" >
            <a href="pinfo.php?varname=<?php echo $row['Code'] ?>" name="pinfo"><img src="Ppic/<?php echo $row['Picture'];?>" class='image'/></a>    
            <form class='content' method="post" action="index.php">
                <h2><?php echo $row['Pname_Eng'];?></h2>
                <p><?php echo $row['Pname_Thai'];?></p>
                <input type="hidden" name="code" value="<?php echo $row["Code"]; ?>" />
                <input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />
                <input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-danger" value="+ Add to Cart"/> &nbsp;<?php echo $row['Price'];?> THB
            </form>
        </section><br>

        <?php
                    }
                } else { ?>
                    <br><br><center><h2>No matching products found.</h2></center>
        <?php   }
            }   
        ?> <!-- End Query Database -->
        
    </div>
    <!-- Javascript Code in <script>.....</script>-->
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
    <script id="rendered-js">
        document.querySelector('.menu-btn').addEventListener('click', () => document.querySelector('.main-menu').classList.toggle('show'));
    </script>

    <script>
    <?php if($error) { ?>
        swal("Login","You must log in before choosing a product.","warning")
        .then(function() {
            window.location = "login.php";
        });
    <?php } ?>

    <?php if(!$error) { ?>
        swal("Add to card :)"," ","success", {
            buttons: false,
            timer: 1000,
        });
    <?php } ?>
    </script>
    

</body>
</html>