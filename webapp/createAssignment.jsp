<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Create Assignment</title>
        <style>
            /* Custom styles for create assignment page */
            body {
                background-color: #f3e5f5;
                font-family: Arial, sans-serif;
            }

            h2 {
                color: #6a1b9a;
                margin: 20px 0;
                font-weight: bold;
            }

            .navbar {
                display: flex;
                justify-content: center;
                background-color: #4a148c;
                padding: 15px;
                border-radius: 8px;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
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
                color: #ffffff;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h2 class="text-center">Create Assignment</h2>
            <div class="navbar">
                <a href="/adminhome">Home</a>
                <a href="/teacher/getAllStudents">View All Students</a>
                <a>Create Assignment</a>
                <a href="/teacher/review">Review submissions</a>
                <a href="/adminlogin">Logout</a>
            </div>
            <form action="/teacher/assignments" method="post">
                <div class="form-group">
                    <label for="assignmentName">Assignment Name:</label>
                    <input type="text" class="form-control" id="assignmentName" name="assignmentName" required>
                </div>
                <div class="form-group">
                    <label for="dueDate">Due Date:</label>
                    <input type="date" class="form-control" id="dueDate" name="dueDate" required>
                </div>
                <button type="submit" class="btn btn-primary">Create Assignment</button>
            </form>

            <div class="table-container">
                <h3>Assignments</h3>
                <table align="center" border="2" class="table table-striped">
                    <tr>
                        <th>ID</th>
                        <th>Assignment Info</th>
                        <th>Due date</th>
                    </tr>
                    <c:forEach items="${assignments}" var="assignment">
                        <tr>
                            <td><c:out value="${assignment.id}"/></td>
                            <td><c:out value=" ${assignment.assignmentName}"/></td>
                            <td><c:out value="${assignment.dueDate}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

        </div>
    </body>

    </html>