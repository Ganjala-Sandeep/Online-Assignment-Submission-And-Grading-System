<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Student Registration</title>
<style>
    body {
        background-image: url('images/studentreg.jpg'); /* Replace with the correct path to your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        height: 100vh; /* Ensures the background image covers the whole page */
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.8); /* White background with some transparency */
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
    }
</style>
</head>
<body>
    <div class="container">
        <h3 class="form-title">Student Registration Form</h3>
        <form method="post" action="insertstudent" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-3">Enter ID:</label>
                <div class="col-sm-9">
                    <input type="text" name="cid" class="form-control" required/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Name:</label>
                <div class="col-sm-9">
                    <input type="text" name="cname" class="form-control" required/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Gender:</label>
                <div class="col-sm-9">
                    <label class="radio-inline"><input type="radio" name="cgender" value="MALE" required/> Male</label>
                    <label class="radio-inline"><input type="radio" name="cgender" value="FEMALE" required/> Female</label>
                    <label class="radio-inline"><input type="radio" name="cgender" value="OTHERS" required/> Others</label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Program:</label>
                <div class="col-sm-9">
                    <select name="cprogram" class="form-control" required>
                        <option value="">--Select Program--</option>
                        <option value="BSc">BSc</option>
                        <option value="BTech">BTech</option>
                        <option value="MSc">MSc</option>
                        <option value="MTech">MTech</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Select Branch:</label>
                <div class="col-sm-9">
                    <select name="cbranch" class="form-control" required>
                        <option value="">--Select Branch--</option>
                        <option value="CSE">Computer Science Engineering (CSE)</option>
                        <option value="ECE">Electronics and Communication Engineering (ECE)</option>
                        <option value="EEE">Electrical and Electronics Engineering (EEE)</option>
                        <option value="ME">Mechanical Engineering (ME)</option>
                        <option value="CE">Civil Engineering (CE)</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Email:</label>
                <div class="col-sm-9">
                    <input type="email" name="cemail" class="form-control" required/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Enter Password:</label>
                <div class="col-sm-9">
                    <input type="password" name="cpassword" class="form-control" required/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <input type="submit" value="Register" class="btn btn-success"/>
                    <input type="reset" value="Clear" class="btn btn-default"/>
                    <a href="mainnavbar.jsp" class="btn btn-primary">Back to Dashboard</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
