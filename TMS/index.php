\<?php
include("connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            background: linear-gradient(to right, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.5)), url(img6.jpg);
            background-size: cover;
            background-attachment: fixed;
            margin: 0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
            overflow: hidden;
        }
        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        h1 {
            margin-bottom: 20px;
            font-size: 2.5em;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8);
        }
        .form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .form input {
            padding: 15px;
            font-size: 1.2em;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease;
        }
        .form input.admin {
            background-color: #007bff;
            color: white;
        }
        .form input.teacher {
            background-color: #28a745;
            color: white;
        }
        .form input.student {
            background-color: #ffc107;
            color: black;
        }
        .form input:hover {
            transform: translateY(-5px) scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }
        .form input:active {
            transform: translateY(0);
            box-shadow: none;
        }
        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 10px 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Timetable Management System</h1>
        <form class="form" action="" method="POST">
            <input type="submit" name="admin_login" value="Admin Login" class="admin">
            <input type="submit" name="teacher_login" value="Teacher Login" class="teacher">
            <input type="submit" name="student_login" value="Student Login" class="student">
        </form>
    </div>
    <?php
        if (isset($_POST['admin_login'])) {
            header("Location: admin_login.php");
        }
        if (isset($_POST['teacher_login'])) {
            header("Location: teacher_login.php");
        }
        if (isset($_POST['student_login'])) {
            header("Location: student_login.php");
        }
    ?>
    <div class="footer">
        <p>A Project by Ipsitneel Chaudhuri</p>
    </div>
</body>
</html>