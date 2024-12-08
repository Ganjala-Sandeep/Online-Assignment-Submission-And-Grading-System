<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>Admin Login</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background-image: url('images/adminhome.jpg'); /* Ensure correct image path */
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .container {
            width: 30%;
            min-width: 320px;
            padding: 25px;
            border-radius: 12px;
            background-color: rgba(240, 230, 255, 0.95); /* Light purple background */
            box-shadow: 0px 8px 20px rgba(106, 13, 173, 0.4); /* Soft purple shadow */
        }

        h3 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
            font-size: 24px;
            color: #6a0dad; /* Vibrant purple header text */
        }

        label {
            font-weight: bold;
            color: #6a0dad; /* Purple for labels */
        }

        .form-control {
            border: 1px solid #6a0dad; /* Subtle purple border */
            border-radius: 5px; /* Rounded input fields */
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-custom {
            width: 100%;
            margin-top: 15px;
            padding: 14px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            background-color: #6a0dad; /* Vibrant purple button */
            color: white;
            border: none;
            box-shadow: 0px 4px 10px rgba(106, 13, 173, 0.5); /* Soft purple glow */
            transition: background-color 0.3s, box-shadow 0.3s; /* Smooth hover effect */
        }

        .btn-custom:hover {
            background-color: #8a2be2; /* Lighter purple on hover */
            box-shadow: 0px 6px 15px rgba(138, 43, 226, 0.6); /* Enhanced glow on hover */
        }

        .btn-dashboard {
            display: block;
            width: 100%;
            margin-top: 20px;
            text-align: center;
            color: white;
            background-color: #6a0dad; /* Vibrant purple button */
            padding: 14px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
            box-shadow: 0px 4px 10px rgba(106, 13, 173, 0.5); /* Soft purple glow */
            transition: background-color 0.3s, box-shadow 0.3s; /* Smooth hover effect */
        }

        .btn-dashboard:hover {
            background-color: #8a2be2; /* Lighter purple on hover */
            box-shadow: 0px 6px 15px rgba(138, 43, 226, 0.6); /* Enhanced glow on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 90%; /* Expand width for smaller screens */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Admin Login</h3>
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label for="ausername">Enter Username</label>
                <input type="text" class="form-control" name="ausername" id="ausername" placeholder="Username" required />
            </div>
            <div class="form-group">
                <label for="apassword">Enter Password</label>
                <input type="password" name="apassword" class="form-control" id="apassword" placeholder="Password" required />
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-custom">Login</button>
            </div>
            <div class="form-group">
                <a href="mainnavbar.jsp" class="btn-dashboard">Back to Dashboard</a>
            </div>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
