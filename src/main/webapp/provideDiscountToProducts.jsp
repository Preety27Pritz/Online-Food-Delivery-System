<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Discount Update</title>
<style>
    body {
         display: flex;
        background-color: #f0f8ff; 
        justify-content: center;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .form-container {
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }
    .form-container h1 {
        margin-bottom: 20px;
        color: #333;
    }
    .form-container input[type="number"],
    .form-container input[type="submit"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    .form-container input[type="submit"] {
        background-color: #6a11cb;
        color: white;
        border: none;
        cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
        background-color: #2575fc;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h1>Update Discount</h1>
        <form action="addDiscount" method="get">
            <input type="number" name="discount" placeholder="Enter additional discount" required="required">
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
