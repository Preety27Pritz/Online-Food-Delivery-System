<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Your Title Here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        color: #fff;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    h1 {
        font-size: 3em;
        margin: 0.5em;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    a {
        font-size: 1.5em;
        color: #fff;
        text-decoration: none;
        background-color: rgba(0, 0, 0, 0.2);
        padding: 0.5em 1em;
        border-radius: 5px;
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        transition: background-color 0.3s, box-shadow 0.3s;
    }
    a:hover {
        background-color: rgba(0, 0, 0, 0.4);
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
    }
</style>
</head>
<body>
    <h1>${message}</h1>
    <a href="HotelHomepage.jsp">Back to home page</a>
</body>
</html>
