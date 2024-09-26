<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Order Form</title>
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
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }
    .form-container h2 {
        margin-bottom: 20px;
        color: #333;
        font-weight: bold;
    }
    label{
    font-weight:bold;
    }
    .form-container label {
        display: block;
        text-align: left;
        margin: 10px 0 5px;
        color: #333;
    }
    .form-container input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
    }
    .form-container input[type="submit"] {
        background-color: #ff7e5f;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .form-container input[type="submit"]:hover {
        background-color: #ff6347;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Food Order Form</h2>
        <form:form action="saveFoodOrder" modelAttribute="foodOrderObj">
            <label for="name">Enter Name:</label>
            <form:input path="name" id="name"/>
            <label for="mobilenumber">Enter Mobile Number:</label>
            <form:input path="mobilenumber" id="mobilenumber"/>
            <label for="address">Enter Address:</label>
            <form:input path="address" id="address"/>
            <input type="submit" value="Submit">
        </form:form>
    </div>
</body>
</html>
