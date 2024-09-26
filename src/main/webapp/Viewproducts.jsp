<%@ page import="com.jsp.hotelmanagementSystem.entities.Product"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        color: #333;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 0;
        padding: 20px;
    }
    table {
        width: 80%;
        margin: 20px 0;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #ff7e5f;
        color: #fff;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    a {
        text-decoration: none;
        color: #6a11cb;
        transition: color 0.3s ease;
    }
    a:hover {
        color: #2575fc;
    }
    .options {
        margin-top: 20px;
    }
    .options a {
        background-color: #6a11cb;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        margin: 0 10px;
        transition: background-color 0.3s ease;
    }
    .options a:hover {
        background-color: #2575fc;
    }
</style>
</head>
<body>
<% List<Product> products = (List<Product>) request.getAttribute("products"); %>
<h1>Product List</h1>
<table cellPadding="20px" border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Type</th>
        <th>Cost</th>
        <th>Discount</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    
    <% for(Product p : products) { %>
    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getType() %></td>
        <td><%= p.getCost() %></td>
        <td><%= p.getDiscount() %></td>
        <td><a href="updateproduct?id=<%= p.getId() %>">Update</a></td>
        <td><a href="delete?id=<%= p.getId() %>">Delete</a></td>
    </tr>
    <% } %>
</table>
<div class="options">
    <a href="Hoteloptions.jsp">Back to Options</a>
    <a href="hotellogout">Logout</a>
</div>
</body>
</html>
