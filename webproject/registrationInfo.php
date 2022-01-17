<?php
session_start();
$_SESSION['admin'] = 0;
$_SESSION['user'] = 1;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>saveinfo</title>
</head>
<body>
    
    <?php
        if(isset($_POST['fullname'])){
            $fullname = $_POST['fullname'];
            $username = $_POST['usrname'];
            $email = $_POST['email'];
            $pass = $_POST['pass'];

            $connect = mysqli_connect('localhost', 'root');
            mysqli_select_db($connect, 'project');
            // $query = "INSERT INTO registration_info(fullname, username, email, password) VALUES ('$fullname', '$username', '$email', '$pass')";
            // mysqli_query($connect, $query);

            $que = "SELECT * FROM registration_info WHERE username ='$username' ";
            $check = mysqli_query($connect, $que);
            $count = mysqli_num_rows($check);
            print_r( $count);

            if($count == 0){
                $query = "INSERT INTO registration_info(fullname, username, email, password) VALUES ('$fullname', '$username', '$email', '$pass')";
                mysqli_query($connect, $query);
                ?>
                    <script>
                        location.replace("Home.php");
                    </script>
                <?php
            }
            else{
                ?>
                    <script>
                        location.replace("loginAndregistration.php");
                    </script>
                <?php
                echo "Your already have an account";
            }
        }
        
    ?>

    

</body>
</html>