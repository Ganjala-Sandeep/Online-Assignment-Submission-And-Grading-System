<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f3e5f5; /* Light lavender background */
            font-family: Arial, sans-serif;
        }
        h3 {
            color: #6a1b9a; /* Deep purple */
            margin-top: 20px;
            font-weight: bold;
            text-align: center;
        }
        .table-container {
            max-width: 80%;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table {
            margin-top: 20px;
            width: 100%;
            border-radius: 8px;
            overflow: hidden;
        }
        th {
            background-color: #6a1b9a; /* Deep purple for table headers */
            color: white;
            text-align: center;
            padding: 10px;
        }
        td {
            text-align: center;
            padding: 10px;
            color: #333;
        }
        .btn-dashboard {
            display: inline-block;
            margin: 20px auto;
            background-color: #4a148c; /* Dark purple */
            color: white;
            padding: 10px 20px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .btn-dashboard:hover {
            background-color: #7b1fa2; /* Lighter purple on hover */
        }
    </style>
</head>
<body>

<div class="table-container">
    <a href="/adminhome.jsp" class="btn-dashboard">Back to Dashboard</a>

    <h3>View All Students</h3>
    <table align="center" border="2" class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>PROGRAM</th>
            <th>BRANCH</th>
            <th>EMAIL</th>
        </tr>
        <c:forEach items="${students}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.program}"/></td>
                <td><c:out value="${student.branch}"/></td>
                <td><c:out value="${student.email}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
