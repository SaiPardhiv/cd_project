<%@page import="com.klef.jfsd.springboot.model.Artist"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
Artist a = (Artist)session.getAttribute("artist");
if(a==null)
{
	response.sendRedirect("artistlogin"); 
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Artist</title>
</head>
<body>
<%@include file="artistnavbar.jsp" %>
    <h2>Update Artist Information</h2>
    <form action="update" method="post">
        <table>
            <tr>
                <td><label for="username">Username:</label></td>
                <td><input type="text" id="username" name="username" value="<%= a.getUsername() %>" readonly required></td>
            </tr>
            <tr>
                <td><label for="contact">Contact:</label></td>
                <td><input type="text" id="contact" name="contact" value="<%= a.getContact() %>"  required></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" value="<%= a.getEmail() %>" readonly required></td>
            </tr>
            <tr>
                <td><label for="age">Age:</label></td>
                <td><input type="number" id="age" name="age" value="<%= a.getAge() %>"  required></td>
            </tr>
            <tr>
                <td><label for="experience">Experience (in years):</label></td>
                <td><input type="number" id="experience" name="experience" value="<%= a.getExperience() %>"  required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" value="<%= a.getPassword() %>"  required></td>
            </tr>
            <tr>
                <td><label for="status">Status:</label></td>
                <td><input type="text" id="status" name="status" value="<%= a.getStatus() %>"  required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <button type="submit">Update Artist</button>
                </td>
            </tr>
        </table>
    </form>

    <c:if test="${not empty message}">
        <p>${message}</p>
    </c:if>
</body>
</html>
