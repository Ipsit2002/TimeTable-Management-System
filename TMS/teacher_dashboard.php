<?php
    session_start(); // Ensure session starts at the top
    $con = mysqli_connect("localhost", "root", "", "timetable");

    if ($_SESSION['name'] == '') {
        header("location:index.php");
    }
?>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" type="text/css" href="./css/foot.css" />
    <style>
        /* Resetting default styles */
        body, html {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background setup */
        body {
            background-image: url('bck.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        #header {
            width: 100%;
            height: 60px;
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            position: fixed;
            top: 0;
            z-index: 10;
            font-size: 18px;
        }

        #left_side {
            width: 15%;
            height: 80%;
            position: fixed;
            top: 80px;
            left: 20px;
            padding: 20px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        }

        #left_side form {
            display: flex;
            flex-direction: column;
        }

        .select {
            width: 100%;
            height: 40px;
            margin: 10px 0;
            font-size: 16px;
            padding: 10px;
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .select:hover {
            background-color: #2980b9;
        }

        #right_side {
            width: 70%;
            margin-left: 20%;
            margin-top: 100px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        #top_span {
            width: 100%;
            text-align: center;
            margin-top: 60px;
            color: #3498db;
            font-weight: bold;
            font-size: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2ecc71;
        }

        .error-message {
            color: #e74c3c;
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div id="header">
        <center>Timetable Management System &nbsp;&nbsp; | &nbsp;&nbsp; Email: <?php echo $_SESSION['email']; ?> &nbsp;&nbsp; | &nbsp;&nbsp; Name: <?php echo $_SESSION['name']; ?> &nbsp;&nbsp;
        <a href="logout.php?logout=true" style="color: #ff6b6b;">Logout</a></center>
    </div>

    <span id="top_span"><marquee><strong>Welcome To The Timetable Management System</strong></marquee></span>

    <div id="left_side">
        <form action="" method="post">
            <input type="submit" class="select" name="show_detail" value="View Profile">
            <input type="submit" class="select" name="edit_detail" value="Update Profile">
            <input type="submit" class="select" name="view_table" value="View Timetable">
        </form>
    </div>

    <div id="right_side">
        <div id="demo">
            <?php
                if (isset($_POST['view_table'])) {
                    header("location:view_table.php");
                }

                if (isset($_POST['show_detail'])) {
                    $query = "SELECT * FROM teacher WHERE email = '$_SESSION[email]'";
                    $query_run = mysqli_query($con, $query);
                    while ($row = mysqli_fetch_assoc($query_run)) {
                        echo '<table>';
                        echo '<tr><td><b>Name:</b></td><td><input type="text" value="' . $row['name'] . '" readonly></td></tr>';
                        echo '<tr><td><b>ID:</b></td><td><input type="text" value="' . $row['t_id'] . '" readonly></td></tr>';
                        echo '<tr><td><b>Email:</b></td><td><input type="text" value="' . $row['email'] . '" readonly></td></tr>';
                        echo '<tr><td><b>Password:</b></td><td><input type="password" value="' . $row['password'] . '" readonly></td></tr>';
                        echo '</table>';
                    }
                }

                if (isset($_POST['edit_detail'])) {
                    $query = "SELECT * FROM teacher WHERE email = '$_SESSION[email]'";
                    $query_run = mysqli_query($con, $query);
                    while ($row = mysqli_fetch_assoc($query_run)) {
                        echo '<form action="edit_teacher.php" method="post">';
                        echo '<table>';
                        echo '<tr><td><b>Name:</b></td><td><input type="text" value="' . $row['name'] . '" readonly></td></tr>';
                        echo '<tr><td><b>ID:</b></td><td><input type="text" name="t_id" value="' . $row['t_id'] . '" readonly></td></tr>';
                        echo '<tr><td><b>Email:</b></td><td><input type="text" name="email" value="' . $row['email'] . '"></td></tr>';
                        echo '<tr><td><b>Password:</b></td><td><input type="password" name="password" value="' . $row['password'] . '"></td></tr>';
                        echo '<tr><td></td><td><input type="submit" name="update" value="Save"></td></tr>';
                        echo '</table>';
                        echo '</form>';
                    }
                }
            ?>
        </div>
    </div>
    <?php include "./components/footer.php" ?>
</body>
</html>
