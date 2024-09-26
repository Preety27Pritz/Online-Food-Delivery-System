<%@page import="com.jsp.hotelmanagementSystem.entities.FoodOrder"%>
<%@page import="com.jsp.hotelmanagementSystem.entities.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Bill Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
		background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .info {
        margin-bottom: 20px;
    }
    .info h1 {
        font-size: 28px;
        color: #333;
        margin-bottom: 10px;
    }
    .info h2 {
        font-size: 18px;
        color: #555;
        margin-bottom: 5px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #ff7e5f;
        color: #333;
    }
    .total {
        margin-top: 20px;
        font-size: 20px;
        font-weight: bold;
        color: #333;
    }
</style>
</head>
<body>
<div class="container">
    <div class="info">
        <% 
            FoodOrder foodorder = (FoodOrder) request.getAttribute("foodOrderInfo"); 
            if (foodorder != null) {
        %>
        <h1>Order Summary</h1>
        <h2>Ordered for: <%= foodorder.getName() %></h2>
        <h2>Mobile Number: <%= foodorder.getMobilenumber()%></h2>
        <h2>Address: <%= foodorder.getAddress() %></h2>
        <% 
            } else {
        %>
        <h2>No food order information available.</h2>
        <% 
            }
            List<Item> items = (List<Item>) session.getAttribute("itemslist");
            if (items != null && !items.isEmpty()) {
        %>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Cost</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <% for(Item i : items) { %>
                <tr>
                    <td><%= i.getName() %></td>
                    <td><%= i.getType() %></td>
                    <td><%= i.getCost() %></td>
                    <td><%= i.getQuantity() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% 
            } else {
        %>
        <h2>No items found.</h2>
        <% 
            }
            if (foodorder != null) {
        %>
        <div class="total">
            Total Cost: <%= foodorder.getTotalprice()%>
        </div>
        <% 
            }
        %>
    </div>
</div>
</body>
</html>