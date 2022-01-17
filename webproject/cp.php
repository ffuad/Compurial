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
    <title>cp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="slidebar.css">
    <?php
    if($_SESSION['user'] == 1){
        include "navbar.php";
    }
    else if($_SESSION['admin'] == 1){
      include "adminNavbar.php";
    }
    ?>
</head>
<body style="background-image: url('img/backgrnd1.jpg'); background-size: 100%;">
<?php
      $connect = mysqli_connect('localhost', 'root');
      mysqli_select_db($connect, 'project');

      $query = "SELECT * FROM content_info WHERE course_name = 'cp' ";
      $fetchData = mysqli_query($connect, $query);

      while ($row = mysqli_fetch_assoc($fetchData))
      {
        $content_name = $row['content_name'];     
      }

    ?>

<div class="main-menu" style="background-color:powderblue;">
      <ul>
        <h5><a style="text-decoration:none" href="cp.php">Home</a></h5>
        <?php
          $connect = mysqli_connect('localhost', 'root');
          mysqli_select_db($connect, 'project');

          $query = "SELECT * FROM content_info WHERE course_name = 'cp' ";
          $fetchData = mysqli_query($connect, $query);

          while ($row = mysqli_fetch_assoc($fetchData))
          {
            $content_name = $row['content_name'];   
            ?>
            <li class="menu-item"> <a href="cp.php?topic=<?=$content_name; ?>"><?=$content_name; ?></a></li>
            <?php  
          }

        ?>
        <br>
      </ul>
    </div>

    <?php
      $blog = "<h3>Welcome to competitive programming!!</h3>";
      if(isset($_GET['topic']))
      {
        $topic = $_GET['topic'];
        $query = "SELECT * FROM content_info WHERE course_name = 'cp' and content_name= '$topic'";
        $fetchData = mysqli_query($connect, $query);
        
        $row = mysqli_fetch_assoc($fetchData);
        
        $blog = nl2br( $row['content']);

        $cookieName = "cp";
        setcookie($cookieName, $topic, time() + (86400 * 30), "/");
      }
    ?>

    <section class="mainpart">
      <?=$blog;
      ?>
    </section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>