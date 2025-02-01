<?php
    session_start();
    include("connection.php"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="css/Login.css">
    <style type="text/css">
        body {
            background-image: url('stud.jpg');
            background-size: cover;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Login</h2>
        <form action="" method="post" class="box" enctype="multipart/form-data">
            <input type="email" name="email" required placeholder="Email">
            <input type="password" name="password" required placeholder="Password">
            <div class="button-group">
                <input type="submit" name="submit" value="Login">
                <input type="button" value="Go Back" onClick="javascript:history.back()">
            </div>
        </form>

        <?php
            if (isset($_POST['submit'])) {
                $connection = mysqli_connect("localhost", "root", "");

                if (!$connection) {
                    die("Database connection failed: " . mysqli_connect_error());
                }

                $db = mysqli_select_db($connection, "timetable");
                $email = mysqli_real_escape_string($connection, $_POST['email']);
                $password = mysqli_real_escape_string($connection, $_POST['password']);
                $query = "SELECT * FROM student WHERE email = '$email'";
                $query_run = mysqli_query($connection, $query);
                $userFound = false;

                if ($query_run && mysqli_num_rows($query_run) > 0) {
                    $row = mysqli_fetch_assoc($query_run);
                    $userFound = true;

                    if ($row['password'] === $password) {
                        $_SESSION['name'] = $row['name'];
                        $_SESSION['email'] = $row['email'];
                        header("location: student_dashboard.php");
                        exit();
                    } else {
                        echo '<div class="error-message">Incorrect Password!</div>';
                    }
                }

                if (!$userFound) {
                    echo '<div class="error-message">Email not found!</div>';
                }

                mysqli_close($connection);
            }
        ?>
    </div>
</body>
</html>
