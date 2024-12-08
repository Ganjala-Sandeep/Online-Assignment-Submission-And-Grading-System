<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff; /* Light blue background */
        color: #333;
        margin: 0;
        padding: 0;
    }

    nav {
        background-color: #3b5998; /* Dark blue navbar */
        color: white;
        padding: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
    }

    nav ul {
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        gap: 20px;
        justify-content: center;
    }

    nav ul li {
        display: inline;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
        padding: 10px 15px;
        font-weight: bold;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    nav ul li a:hover {
        background-color: #2d4373; /* Darker blue on hover */
        transform: scale(1.05); /* Slightly enlarge the link on hover */
    }

    h1 {
        color: #2d4373; /* Dark blue heading */
        text-align: center;
    }

    p {
        color: #555;
        font-size: 1.1em;
        line-height: 1.6;
        text-align: center;
    }

    .image-container {
        text-align: center;
        margin: 20px 0;
    }

    .image-container img {
        width: 80%; /* Adjust the image size */
        max-width: 600px;
        border-radius: 8px;
    }
</style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <ul>
            <li><a href="mainnavbar.jsp">Home</a></li>
        </ul>
    </nav>

    <!-- Page Content -->
    <div style="padding: 20px;">
        <h1>Welcome to the Home Page</h1>
        <p>Online Assignment Submission and Grading System.</p>

        <!-- Image Section -->
        <div class="image-container">
            <img src="images/home.jpg" alt="Assignment Image"> <!-- Replace with your image URL -->
        </div>
    </div>
</body>
</html>
