<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Assignments</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .page-title {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 20px;
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
        .navbar {
            background-color: #6f42c1; /* Purple background */
            margin-bottom: 30px;
        }
        .navbar a {
            color: white; /* White text for navbar links */
            font-size: 16px;
        }
        .navbar a:hover {
            color: #d3c0f1; /* Light purple when hovered */
        }
        .table-bordered th {
            background-color: #6f42c1; /* Purple background for table headers */
            color: white; /* White text in table headers */
        }
        .table-bordered td {
            background-color: #f8f9fa; /* Light gray background for table rows */
        }
        .btn-add {
            background-color: #6f42c1; /* Purple background for buttons */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }
        .btn-add:hover {
            background-color: #5a2c91; /* Darker purple on hover */
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
                <li><a href="/student/assignment">Add Assignment</a></li>
                <li><a href="/student/submissions">View Assignments</a></li>
               
            </ul>
        </div>
    </nav>

    <!-- View Assignments Table -->
    <div class="container">
        <h2 class="page-title">Your Submitted Assignments</h2>
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Assignment name</th>
                <th>File</th>
                <th>Status</th>
                <th>Grade</th>
            </tr>
            <c:forEach items="${submissions}" var="submission">
                <tr>
                    <td><c:out value="${submission.id}"/></td>
                    <td><c:out value="${submission.assignment.assignmentName}"/></td>
                    <td><c:out value="${submission.fileName}"/></td>
                    <td><c:out value="${submission.status}"/></td>
                    <td><c:out value="${submission.grade}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
