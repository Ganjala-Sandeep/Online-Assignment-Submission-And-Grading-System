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
            background-color: #f3e5f5; /* Light lavender background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        .navbar {
            background-color: #6a1b9a; /* Dark purple */
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .navbar a {
            color: #ffffff;
            font-weight: bold;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .navbar a:hover {
            background-color: #7b1fa2;
        }
        .page-title {
            text-align: center;
            color: #6a1b9a;
            font-size: 26px;
            margin-bottom: 20px;
        }
        .table {
            background-color: #ffffff;
            border-radius: 8px;
            margin-top: 20px;
        }
        th, td {
            text-align: center;
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #6a1b9a;
            color: #ffffff;
        }
        td a {
            color: #6a1b9a;
            text-decoration: none;
        }
        td a:hover {
            text-decoration: underline;
        }
        form {
            display: inline-block;
        }
        input[type="text"] {
            padding: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #6a1b9a;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #7b1fa2;
        }
    </style>
</head>
<body>

    <!-- Navigation bar -->
    <div class="navbar">
        <a href="adminhome.jsp">Home</a>
        <a href="/teacher/getAllStudents">View All Students</a>
        <a href="/teacher/assignments">Create Assignment</a>
        <a href="/teacher/review">Review Submissions</a>
       <a href="logout.jsp">Logout</a>

    </div>

    <!-- View Assignments Table -->
    <div class="container">
        <h2 class="page-title">Submitted Assignments to Review</h2>
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Assignment Name</th>
                <th>Student Name</th>
                <th>File</th>
                <th>Download</th>
                <th>Status</th>
                <th>Grade</th>
            </tr>
            <c:forEach items="${submissions}" var="submission">
                <tr>
                    <td><c:out value="${submission.id}"/></td>
                    <td><c:out value="${submission.assignment.assignmentName}"/></td>
                    <td><c:out value="${submission.student.name}"/></td>
                    <td><c:out value="${submission.fileName}"/></td>
                    <td><a href="/teacher/downloadFile/${submission.id}">Download</a></td>
                    <td><c:out value="${submission.status}"/></td>
                    <td>
                        <c:if test="${not empty submission.grade}">
                            <p>${submission.grade}</p>
                        </c:if>
                        <c:if test="${empty submission.grade}">
                            <form method="post" action="/teacher/providegrades">
                                <input type="hidden" name="id" value="${submission.id}">
                                <input type="text" name="grade" placeholder="Enter grade">
                                <input type="submit" value="Done"/>
                            </form>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
