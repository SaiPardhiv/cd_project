<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Artwork</title>
</head>
<body>
<%@include file="artistnavbar.jsp" %>
    <h1>Insert New Artwork</h1>
    <form action="insertart" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="artist">Artist:</label>
        <input type="text" id="artist" name="artist" required><br><br>
        
        <label for="yearCreated">Year Created:</label>
        <input type="number" id="yearCreated" name="yearCreated" required><br><br>
        
        <label for="dimensions">Dimensions:</label>
        <input type="text" id="dimensions" name="dimensions" required><br><br>
        
        <label for="price">Price:</label>
        <input type="number" step="0.01" id="price" name="price" required><br><br>
        
        <label for="status">Status:</label>
        <input type="text" id="status" name="status" ><br><br>
        
        <label for="artimage">Upload Image:</label>
        <input type="file" id="artimage" name="artimage" required><br><br>
        
        <input type="submit" value="Insert Artwork">
    </form>
</body>
</html>
