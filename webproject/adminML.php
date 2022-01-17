<?php session_start();
if(!isset($_SESSION['username'])){
    echo "you are logged out";
    header('location:loginAndregistration.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="data:image/png;base64,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" rel="icon" type="image/x-icon">
    <title>adminML</title>
    <style> 
        input[type=text] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        }
        textarea {
            width: 100%;
            height: 150px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="slidebar.css">
    <?php include "adminNavbar.php";
    ?>
</head>
<body style="background-color:#D0E0EC; ">
<div style="text-align: center;">
            
    <form action="#" method="post">
        <label class="form-label" >Content Name:</label> <br>
        <input style="background-color:#E5FEF1;" type="text" id="typeText"  name="contentName" class="form-control" /><br><br>
        <label class="form-label" >Content:</label> <br>
        <textarea style="background-color:#E5FEF1;" class="form-control" id="textAreaExample" rows="10" name="content"></textarea><br>
        <input type="submit" onclick="myFunction()"> 
    </form>
    <!-- <form action="#">
        <label for="">Delete content.</label>
    </form> -->
        
        <?php
            $connect = mysqli_connect('localhost', 'root');
            mysqli_select_db($connect, 'project');

            if(isset($_POST['contentName']) ) {
            
                $contentName = $_POST['contentName'];
                $content = $_POST['content'];
                
                if($contentName!=null && $content!=null){
                    $connect = mysqli_connect('localhost', 'root');
                    mysqli_select_db($connect, 'project');

                    $query = "INSERT INTO content_info( course_name, content_name, content) VALUES ('ml', '$contentName', '$content')";
                    mysqli_query($connect, $query);
                    ?>
                    <script>
                        function myFunction() {
                            alert("successful!!");
                        }
                    </script>
                    <?php
                }
            }

        ?>
        <br>
    <form action="#" method="post">
        <p><b>Want to delete Content?</b></p>
        <label class="form-label" >Content Name:</label> <br>
        <input style="background-color:#E5FEF1;" type="text" id="typeText1"  name="deleteContentName" class="form-control" /><br><br>
        <input type="submit" > 
    </form>
    <?php
        $connect = mysqli_connect('localhost', 'root');
        mysqli_select_db($connect, 'project');

        if(isset($_POST['deleteContentName'])){
            $delContentName = $_POST['deleteContentName'];
            if($delContentName != null){
                $query = "DELETE FROM content_info WHERE content_name = '$delContentName' and course_name='ml'";
                $result = mysqli_query($connect,$query);
            }

        }
    ?>
    <br>
        
        <br>
        <a href="ml.php"> <h5>Want to see the change? </h5> </a> 
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>