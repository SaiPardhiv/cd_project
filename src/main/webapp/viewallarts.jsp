<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Artworks</title>
    <style>
        #myTableContainer {
            width: 90%;
            margin: auto;
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        #myTable {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
            background-color: #ffffff;
        }

        #myTable th, #myTable td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #dddddd;
        }

        #myTable th {
            background-color: black;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        #myTable tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        #myTable tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        #myTable tr:hover {
            background-color: #d1e7dd;
        }

        #myInput {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
    </style>

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[2]; // Filter by the 'Title' column
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
</head>

<body>

<%@ include file="artistnavbar.jsp" %>

<h3 align="center"><u>View All Artworks</u></h3>

<br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Artwork Title">

<table align="center" border="2" id="myTable">

    <tr class="header">
        <th>Artwork ID</th>
        <th>Artist</th>
        <th>Title</th>
        <th>Year Created</th>
        <th>Dimensions</th>
        <th>Price</th>
        <th>Status</th>
        
        <th>Image</th>
    </tr>

    <c:forEach items="${artlist}" var="artwork">
        <tr>
            <td><c:out value="${artwork.artworkId}"></c:out></td>
            <td><c:out value="${artwork.artist}"></c:out></td>
            <td><c:out value="${artwork.title}"></c:out></td>
            <td><c:out value="${artwork.yearCreated}"></c:out></td>
            <td><c:out value="${artwork.dimensions}"></c:out></td>
            <td><c:out value="${artwork.price}"></c:out></td>
            <td><c:out value="${artwork.status}"></c:out></td>
            
            <td>
                <!-- Assuming the 'artimage' field is an image URL or can be rendered as an image -->
                <img src="displayartimage?id=${artwork.artworkId}" width="20%" height="20%">
            </td>
        </tr>
    </c:forEach>

</table>

</body>

</html>
