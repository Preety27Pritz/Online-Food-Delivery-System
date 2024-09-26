<%@page import="com.jsp.hotelmanagementSystem.entities.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unblocked Hotels</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        align-items: center;
        flex-direction: column;
        height: 100vh;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 80%;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }
    th, td {
        padding: 15px;
        text-align: center;
        border: 1px solid #ddd;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    a {
        text-decoration: none;
        color: #4CAF50;
        font-weight: bold;
    }
    a:hover {
        color: #45a049;
    }
</style>
</head>
<body>
<h1>Unblocked Hotels</h1>
<% List<Hotel> hotels = (List<Hotel>) request.getAttribute("unblockhotels"); %>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Mobile Number</th>
        <th>Status</th>
        <th>Block</th>
    </tr>
    <% if (hotels != null) { 
           for (Hotel hotel : hotels) { %>
        <tr>
            <td><%= hotel.getId() %></td>
            <td><%= hotel.getName() %></td>
            <td><%= hotel.getEmail() %></td>
            <td><%= hotel.getPassword() %></td>
            <td><%= hotel.getMobilenumber() %></td>
            <td><%= hotel.getStatus() %></td>
            <td><a href="blockhotel?id=<%= hotel.getId() %>">Block</a></td>
        </tr>
    <%   } 
       } %>
</table>
</body>
</html>
