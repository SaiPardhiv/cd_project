<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="C" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Login</title>
    <style>
        /* General styling for body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Styling for the registration container */
        .container {
            height: 60vh;
            width: 50vw;
            margin: 50px auto;
            border: 2px solid WhiteSmoke;
            border-radius: 10px;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            background-image: url('https://e0.pxfuel.com/wallpapers/836/212/desktop-wallpaper-firewatch-from-ps4-theme.jpg'); /* Background image */
            background-size: cover; /* Ensure the image covers the whole container */
            background-position: center center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent repeating the image */
        }

       
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 60%;
            height: 70%;
            background-color: rgba(255, 255, 255, 0.6); /* Semi-transparent background for form */
            padding: 20px;
            border-radius: 10px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: black
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
        }

        /* Styling for form inputs */
        .form-container input[type="text"], .form-container input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Button styling */
        .form-container input[type="submit"], .form-container input[type="reset"] {
            background-color: #333;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 45%;
            margin-top: 10px;
        }

        .form-container input[type="submit"]:hover, .form-container input[type="reset"]:hover {
            background-color: #555;
        }

        /* Footer link styling */
        .footer-message {
            text-align: center;
            margin-top: 20px;
            height: 20%;
            background-color: rgba(255, 255, 255, 0.0);
        }

        .footer-message a {
            color: #007bff;
            text-decoration: none;
        }

        .footer-message a:hover {
            text-decoration: underline;
        }

        /* Right-side image */
        .container .image-container {
            flex: 1;
            display: none;
        }

        .container .image-container img {
            width: 100%;
            object-fit: cover;
            object-position: left;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <!-- Login form container -->
    <div class="container">
        <div class="form-container">
            <h2>Artist Login</h2><BR/>
            <form method="post" action="checkartistlogin">
                <label for="ausername">Enter username:</label>
                <input type="text" id="ausername" name="ausername" required/>

                <label for="apwd">Enter Password:</label>
                <input type="password" id="apwd" name="apwd" required/>

                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </form>

            <div class="footer-message">
                <p>Don't have an account? <a href="artistreg" class="link-info">Register here</a></p>
            </div>

            <h3 align="center"><span style="color: red;"><C:out value="${message}" /></span><br/></h3>
        </div>

        <!-- Right-side image section (if needed for responsive design) -->
        <div class="image-container">
            <img
                src="https://specials-images.forbesimg.com/imageserve/6022d2600897af9201e981f2/960x0.jpg?fit=scale"
                alt="Login"
            />
        </div>
    </div>
</body>
</html>
