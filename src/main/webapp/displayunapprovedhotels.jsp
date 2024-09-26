<%@page import="com.jsp.hotelmanagementSystem.entities.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unapproved Hotels</title>
<style>
    body {
        font-family: Arial, sans-serif;
       background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        display: flex;
        flex-direction: column;
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
        max-width: 1000px;
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
    .links {
        margin-top: 20px;
    }
    .links a {
        margin: 0 10px;
        color: #ff7e5f;
        text-decoration: none;
        font-size: 16px;
        transition: color 0.3s ease;
    }
    .links a:hover {
        color: #ff6347;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Unapproved Hotels</h1>
        <%
        List<Hotel> hotels = (List<Hotel>) request.getAttribute("unapprovedhotels");
        if (hotels != null && !hotels.isEmpty()) {
        %>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile Number</th>
                <th>Status</th>
                <th>Approve</th>
            </tr>
            <%
            for (Hotel h : hotels) {
            %>
            <tr>
                <td><%= h.getId() %></td>
                <td><%= h.getName() %></td>
                <td><%= h.getEmail() %></td>
                <td><%= h.getAddress() %></td>
                <td><%= h.getMobilenumber() %></td>
                <td><%= h.getStatus() %></td>
                <td><a href="approvehotel?id=<%= h.getId() %>">Approve</a></td>
            </tr>
            <%
            }
            %>
        </table>
        <%
        } else {
        %>
        <p>No unapproved hotels found.</p>
        <%
        }
        %>
        <div class="links">
            <a href="Adminoptions.jsp">Back to Menu</a>
            <a href="adminlogout">Logout</a>
        </div>
    </div>
</body>
</html>
