<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f1f4f9;
            font-family: 'Arial', sans-serif;
            color: #333;
        }
        .navbar {
            background-color: #6f42c1; /* Purple background */
            border-radius: 0;
            margin-bottom: 50px;
        }
        .navbar a {
            color: white !important;
            font-size: 18px;
        }
        .navbar a:hover {
            color: #ffd700 !important; /* Gold color for hover */
        }
        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }
        .page-title {
            text-align: center;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 25px;
            color: #6f42c1; /* Purple color */
        }
        .table {
            width: 100%;
            margin-top: 30px;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
            padding: 12px;
        }
        .status-pending {
            background-color: #f39c12;
            color: white;
            padding: 6px 12px;
            border-radius: 4px;
        }
        .status-completed {
            background-color: #27ae60;
            color: white;
            padding: 6px 12px;
            border-radius: 4px;
        }
        .btn {
            width: 100%;
            margin-top: 20px;
        }
        .btn-add {
            width: auto;
            margin-bottom: 20px;
            background-color: #6f42c1; /* Purple button */
            color: white;
            border-radius: 5px;
        }
        .btn-add:hover {
            background-color: #5a2c91; /* Darker purple on hover */
        }
        .card {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 30px;
        }
        .card-header {
            background-color: #6f42c1; /* Purple header */
            color: white;
            font-weight: bold;
            font-size: 18px;
            padding: 10px;
        }
        .card-body {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Student Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/student/assignment?studentId=${sessionScope.studentId}">Submit Assignment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/student/submissions?studentId=${sessionScope.studentId}">View Assignments</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main content -->
    <div class="container">
        <h2 class="page-title">Welcome to Your Dashboard!</h2>

        <div class="card">
            <div class="card-header">
                Latest Updates
            </div>
            <div class="card-body">
                <p>You can add assignments, check your submissions, track the status, and view your grades from here.</p>
            </div>
        </div>

    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
