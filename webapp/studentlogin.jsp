<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Student Login</title>
    <style>
        /* Add background image to the body */
        body {
            background-image: url('images/studentreg.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
        }
        
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 8px;
            background-color: rgba(255, 255, 255, 0.8); /* White background with transparency */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        
        h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .btn-custom {
            width: 100%;
            margin-top: 10px;
        }
        
        label {
            font-weight: bold;
        }
        
        .btn-dashboard {
            width: 100%;
            margin-top: 15px;
            color: white;
            background-color: #5a6268;
            text-align: center;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
        }
        
        .btn-dashboard:hover {
            background-color: #6c757d;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Student Login Form</h3>
    <form method="post" action="checkstudentlogin">
        <div class="form-group">
            <label for="email">Enter Email</label>
            <input type="text" class="form-control" name="cemail" id="email" placeholder="Email" required />
        </div>
        
        <div class="form-group">
            <label for="password">Enter Password</label>
            <input type="password" name="cpassword" class="form-control" id="password" placeholder="Password" required />
        </div>
        
        <button type="submit" class="btn btn-success btn-custom">Login</button>
        <button type="reset" class="btn btn-warning btn-custom">Clear</button>
        
        <!-- Back to Dashboard button -->
        <a href="mainnavbar.jsp" class="btn-dashboard">Back to Dashboard</a>
    </form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
