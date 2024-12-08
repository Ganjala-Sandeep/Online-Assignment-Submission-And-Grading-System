<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 900px;
            margin-top: 50px;
        }

        .navbar {
            background-color: #6f42c1; /* Purple background */
        }

        .navbar a {
            color: white !important;
        }

        .navbar a:hover {
            color: #ffd700 !important; /* Gold hover color */
        }

        h1 {
            color: #6f42c1; /* Purple color */
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #6f42c1; /* Purple background for headers */
            color: white;
        }

        td {
            background-color: #f1f1f1;
        }

        form input[type="file"] {
            margin-top: 10px;
        }

        .btn {
            background-color: #6f42c1; /* Purple button */
            color: white;
        }

        .btn:hover {
            background-color: #5a2c91; /* Darker purple on hover */
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/studenthome.jsp">Student Dashboard</a>
        </div>
    </nav>

    <!-- Container -->
    <div class="container">
        <h1>Student Assignments</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Assignment Info</th>
                    <th>Due Date</th>
                    <th>Submission</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${assignments}" var="assignment">
                    <tr>
                        <td><c:out value="${assignment.id}" /></td>
                        <td><c:out value="${assignment.assignmentName}" /></td>
                        <td><c:out value="${assignment.dueDate}" /></td>
                        <td>
                            <form method="post" action="/student/submitassignment" enctype="multipart/form-data">
                                <input type="hidden" name="id" value="${assignment.id}">
                                <input type="file" name="file" required class="form-control" />
                                <input type="submit" value="Upload Assignment" class="btn btn-primary mt-3" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Student Assignment Management System</p>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
