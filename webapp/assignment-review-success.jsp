<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Reviewed Successfully</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1a202c; /* Dark grayish blue background */
            color: #e0e7ff; /* Light lavender text color */
            text-align: center;
            padding: 20px;
        }
        h2 {
            color: #a78bfa; /* Soft purple heading */
            font-size: 26px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            margin: 10px 0;
            color: #c4b5fd; /* Light purple text */
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            text-decoration: none;
            background-color: #7c3aed; /* Bold purple button */
            color: #f8f9fa; /* White text for contrast */
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        a:hover {
            background-color: #5b21b6; /* Darker purple on hover */
            transform: scale(1.05); /* Slight zoom on hover */
        }
    </style>
</head>
<body>
    <h2>Assignment Reviewed Successfully!</h2>
    <p><strong>Assignment File Name:</strong> ${assignment.fileName}</p>
    <p><strong>Reviewed By:</strong> ${assignment.reviewedBy}</p>
    <p><strong>Status:</strong> ${assignment.status}</p>
    <a href="/assignments/review/${assignment.id}">Review Another Assignment</a>
</body>
</html>
