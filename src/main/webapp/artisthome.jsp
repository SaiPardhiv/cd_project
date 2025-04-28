<%@page import="com.klef.jfsd.springboot.model.Artist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Artist e = (Artist) session.getAttribute("artist");  
if (e == null) {
    response.sendRedirect("artistsessionfail");    
    return;
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artist Home</title>
<style>
    body {
        margin: 0;
        padding: 0;
        justify-content: center;
        align-items: center;
        height: 100vh;
        box-sizing: border-box;
        background-color: #f5f5f5;
    }

    .container {
        width: 30vw;
        height: 15vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
        background-color: #fff;
    }

    .container:hover {
        transform: scale(1.03); /* Zoom in on hover */
    }

    /* Adding space below the navbar */
    .main-content {
        margin-top: 250px;
        margin-left: 500px; /* Adjust this value to match the height of your navbar */
    }
</style>
</head>
<body>

<%@include file="artistnavbar.jsp" %>

<div class="main-content">
    <div class="container">
        <p>Welcome, <%= e.getEmail() %>!</p>
    </div>
</div>

</body>
</html>
