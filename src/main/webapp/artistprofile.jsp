<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artist Profile</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(120deg, #f6d365, #fda085);
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .navbar {
        display: flex;
        justify-content: center;
        background-color: #333;
        padding: 10px 0;
        border-bottom: 3px solid #fda085;
        width: 100%;
        
        top: 0;
        z-index: 1000;
    }

    .navbar a {
        color: white;
        padding: 14px 20px;
        text-decoration: none;
        text-align: center;
        font-size: 1.1rem;
        transition: background-color 0.3s, transform 0.2s;
        margin: 0 10px;
    }

    .navbar a:hover {
        background-color: #fda085;
        color: #333;
        transform: scale(1.1);
        border-radius: 5px;
    }

    .content {
        margin-top: 150px; /* Adjust based on navbar height */
        width: 80%;
        max-width: 1200px;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
        padding: 20px;
        font-size: 2rem;
        font-weight: bold;
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    p {
        color: #666;
        font-size: 1.1rem;
        margin: 10px 0;
    }

    a {
        display: inline-block;
        margin: 10px 0;
        padding: 10px 20px;
        background-color: #333;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s, transform 0.2s;
    }

    a:hover {
        background-color: #fda085;
        color: #333;
        transform: scale(1.05);
    }
</style>
</head>
<body>
<%@include file="artistnavbar.jsp" %>
    <div class="content">
        <h1>Artist Profile</h1>
        <p>Username: ${artist.username}</p>
        <p>Email: ${artist.email}</p>
        <p>Contact: ${artist.contact}</p>
        <p>Age: ${artist.age}</p>
        <p>Gender: ${artist.gender}</p>
        <p>Experience: ${artist.experience} years</p>
        <p>Status: ${artist.status}</p>
        <a href="updateartist">Update Profile</a>
        <a href="artistlogout">Logout</a>
    </div>
</body>
</html>
