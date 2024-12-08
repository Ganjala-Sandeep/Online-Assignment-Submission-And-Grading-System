<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>Student Assignment Grading System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #333;
            margin: 0;
            padding: 0;
        }

        nav {
            background-color: #3b5998; /* Dark blue navbar */
            color: white;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #2d4373; /* Darker blue on hover */
            transform: scale(1.05); /* Slightly enlarge the link on hover */
        }

        .container {
            margin: 50px auto;
            text-align: center;
        }

        .options {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .option {
            text-align: center;
            cursor: pointer;
        }

        .option img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .option img:hover {
            transform: scale(1.1); /* Slight zoom effect */
        }

        .option h3 {
            margin-top: 10px;
            color: #3b5998;
        }

        .content {
            display: none;
            margin-top: 30px;
        }

        .content a {
            display: inline-block;
            margin: 10px;
            padding: 15px 25px;
            background-color: #3b5998;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .content a:hover {
            background-color: #2d4373;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <ul>
            <li><a href="/" class="nav-link">Home</a></li>
        </ul>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <h2 class="page-title">Student Assignment Grading System</h2>
        <div class="options">
            <!-- Student Option -->
            <div class="option" id="student-option">
                <img src="images/student.jpg" alt="Student">
                <h3>Student</h3>
            </div>
            <!-- Admin Option -->
            <div class="option" id="admin-option">
                <img src="images/admin.jpg" alt="Admin">
                <h3>Admin</h3>
            </div>
        </div>

        <!-- Student Content -->
        <div class="content" id="student-content">
            <a href="studentreg">Student Registration</a>
            <a href="studentlogin">Student Login</a>
        </div>

        <!-- Admin Content -->
        <div class="content" id="admin-content">
            <a href="adminlogin">Admin Login</a>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            // Show Student Content
            $("#student-option").click(function() {
                $("#admin-content").hide();
                $("#student-content").fadeIn();
            });

            // Show Admin Content
            $("#admin-option").click(function() {
                $("#student-content").hide();
                $("#admin-content").fadeIn();
            });
        });
    </script>
</body>
</html>
