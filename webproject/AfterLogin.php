
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
        $connect = mysqli_connect('localhost', 'root');
        mysqli_select_db($connect, 'project');
        
        if(isset($_POST['login'])){
            $loginUsrname = $_POST['loginUsrname'];
            $loginPass = $_POST['loginPass'];
        
            $check = "SELECT * FROM registration_info WHERE username = '$loginUsrname' ";
            
            $result = mysqli_query($connect,$check);

            $count = mysqli_num_rows($result);

            
            if($count){
                $emailPass = mysqli_fetch_assoc($result);
                $dbPass = $emailPass['password'];

                $_SESSION['username'] = $emailPass['username'];
                
                if($dbPass == $loginPass)
                {
                    echo "login success";
                    ?>
                    <script>
                        location.replace("Home.php");
                    </script>
                    <?php
                }

                else {
                    $wrongPass = 1;
                }
            }
            else {
                $wrongUser = 1;
            }
        }
    ?>

</body>
</html>