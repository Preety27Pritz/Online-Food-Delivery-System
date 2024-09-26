<%@page import="com.jsp.hotelmanagementSystem.entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>
    body {
        font-family: Arial, sans-serif;
      	background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
         background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 800px;
        width: 100%;
    }
    h1 {
        color: #333;
        font-weight: bold;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 15px;
        text-align: left;
    }
    th {
        background-color: #ff7e5f;
        color: white;
        border-bottom: 2px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ffefd5;
    }
    td a {
        color: #ff7e5f;
        text-decoration: none;
    }
    td a:hover {
        text-decoration: underline;
    }
    button {
        background-color: #ff7e5f;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    button a {
        color: white;
        text-decoration: none;
    }
    button:hover {
        background-color: #ff6347;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Product List</h1>
        <%
        List<Product> products = (List<Product>) request.getAttribute("productsList");
        if (products != null && !products.isEmpty()) {
        %>
        <table>
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Cost</th>
                <th>Add</th>
            </tr>
            <%
            for (Product product : products) {
            %>
            <tr>
                <td><%= product.getName() %></td>
                <td><%= product.getType() %></td>
                <td><%= product.getCost() %></td>
                <td><a href="additem?id=<%= product.getId() %>">Add</a></td>
            </tr>
            <%
            }
            %>
        </table>
        <button><a href="viewaddeditemstocustomer.jsp">Proceed to Buy</a></button>
        <%
        } else {
        %>
        <p>No items found.</p>
        <%
        }
        %>
    </div>
</body>
</html>
