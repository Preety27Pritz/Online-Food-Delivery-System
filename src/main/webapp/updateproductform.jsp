<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product Information</title>
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
    .form-container {
         background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        padding: 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 370px;
        text-align: center;
    }
    .form-container h2 {
        margin-bottom: 1rem;
        color: #333;
    }
    label{
    font-weight:bold;
    }
    .form-container form {
        display: flex;
        flex-direction: column;
    }
    .form-container form input[type="text"],
    .form-container form input[type="number"],
    .form-container form input[readonly] {
        padding: 0.5rem;
        margin-bottom: 1rem;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-container form input[type="submit"] {
        padding: 0.7rem;
        background-color: #6a11cb;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .form-container form input[type="submit"]:hover {
        background-color: #2575fc;
    }
</style>
</head>
<body>
<div class="form-container">
    <h2>Update Product Information</h2>
    <form:form action="updateproductinfo" modelAttribute="existingProductInfo">
        <div>
            <label for="id">Enter ID:</label>
            <form:input path="id" readonly="true" id="id"/> 
        </div>
        <div>
            <label for="name">Enter Name:</label>
            <form:input path="name" id="name"/> 
        </div>
        <div>
            <label for="type">Enter Type:</label>
            <form:input path="type" id="type"/> 
        </div>
        <div>
            <label for="cost">Enter Cost:</label>
            <form:input path="cost" id="cost"/> 
        </div>
        <div>
            <label for="discount">Enter Discount:</label>
            <form:input path="discount" id="discount"/> 
        </div>
        <input type="submit" value="Update">
    </form:form>
</div>
</body>
</html>
