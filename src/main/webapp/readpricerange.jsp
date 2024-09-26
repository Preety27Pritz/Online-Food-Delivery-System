<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Products Between Price Range</title>
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
        width: 350px;
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
    .form-container form label {
        margin-bottom: 0.5rem;
        color: #333;
    }
    .form-container form input[type="number"] {
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
    <h2>Fetch Products Between Price Range</h2>
    <form action="fetchproductsbetweenpricerange">
        <div>
            <label for="minprice">Enter Min Price:</label>
            <input type="number" name="minprice" id="minprice" /> 
        </div>
        <div>
            <label for="maxprice">Enter Max Price:</label>
            <input type="number" name="maxprice" id="maxprice" /> 
        </div>
        <input type="submit" value="Fetch Products">
    </form>
</div>
</body>
</html>
