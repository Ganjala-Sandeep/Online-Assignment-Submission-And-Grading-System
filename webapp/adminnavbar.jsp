<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<title>JFSD</title>
<style>
    body {
        background-color: #f3e5f5; /* Light lavender background */
        font-family: Arial, sans-serif;
    }
    h2 {
        color: #6a1b9a; /* Deep purple */
        margin: 20px 0;
        font-weight: bold;
    }
    .navbar {
        display: flex;
        justify-content: center;
        background-color: #4a148c; /* Dark purple */
        padding: 15px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }
    .navbar a {
        color: #ffffff; /* White text */
        font-weight: bold;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    .navbar a:hover {
        background-color: #7b1fa2; /* Medium purple on hover */
        color: #ffffff;
    }
</style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Spring Boot Demo SDP Project</h2>
        <div class="navbar">
            <a href="adminhome.jsp">Home</a>
            <a href="/teacher/getAllStudents">View All Students</a>
            <a href="/teacher/assignments">Create Assignment</a>
            <a href="/teacher/review">Review submissions</a>
            <a href="adminlogin.jsp">Logout</a>
        </div>
    </div>
</body>
</html>
