<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Login</title>
    
    <link rel="stylesheet" href="css/Login.css">
    <style type="text/css">
        
        body {
            background-image: url('teacher.jpg'); 
            background-size: cover;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Teacher Login</h2>
        <form action="" method="post" class="box">
            <input type="email" name="email" required placeholder="Email">
            <input type="password" name="password" required placeholder="Password">

            <div class="button-group">
                <input type="submit" name="submit" value="Login">
                <input type="button" value="Go Back" onClick="javascript:history.back()">
            </div>
        </form>

        <?php
        session_start();
        if (isset($_POST['submit'])) {
    
            $connection = mysqli_connect("localhost", "root", "");
            $db = mysqli_select_db($connection, "timetable");
            $query = "SELECT * FROM teacher WHERE email = '$_POST[email]'";
            $query_run = mysqli_query($connection, $query);

        
            $userFound = false;
            while ($row = mysqli_fetch_assoc($query_run)) {
                if ($row['email'] == $_POST['email']) {
                    $userFound = true;
                    if ($row['password'] == $_POST['password']) {
                        $_SESSION['name'] = $row['name'];
                        $_SESSION['email'] = $row['email'];
                        header("location:teacher_dashboard.php");
                        exit();
                    } else {
                        echo '<div class="error-message">Incorrect Password!</div>';
                    }
                }
            }
            if (!$userFound) {
                echo '<div class="error-message">Email not found!</div>';
            }
        }
        ?>
    </div>
</body>
</html>
