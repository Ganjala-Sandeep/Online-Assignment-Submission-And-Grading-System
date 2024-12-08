<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Grades</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .page-title {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #5a67d8;
        }
    </style>
</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Student Dashboard</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="addAssignment.jsp">Add Assignment</a></li>
                <li><a href="viewallassignments.jsp">View Assignments</a></li>
                <li><a href="viewStatus.jsp">View Status</a></li>
                <li><a href="viewGrades.jsp">View Grades</a></li>
            </ul>
        </div>
    </nav>

    <!-- View Grades -->
    <div class="container">
        <h2 class="page-title">Your Grades</h2>
        <p>Assignment 1: A</p>
        <p>Assignment 2: B+</p>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
