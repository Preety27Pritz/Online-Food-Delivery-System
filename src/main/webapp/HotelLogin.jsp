<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Hotel Login Form</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-image: radial-gradient(
            circle at 20% 100%,
            rgba(184, 184, 184, 0.1) 0%,
            rgba(184, 184, 184, 0.1) 33%,
            rgba(96, 96, 96, 0.1) 33%,
            rgba(96, 96, 96, 0.1) 66%,
            rgba(7, 7, 7, 0.1) 66%,
            rgba(7, 7, 7, 0.1) 99%
          ),
          linear-gradient(40deg, #040a22, #162561, #202e64, #6f7aa6);
        margin: 0;
      }
      .parent {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      .heading {
        display: flex;
        justify-content: center;
        font-size: 40px;
        margin-top: 20px;
        color: white;
        font-family: "Times New Roman", Times, serif;
      }
      .typing-text {
        display: inline-block;
        font-size: 40px;
        font-weight: bold;
        color: white;
        overflow: hidden; /* Ensures the text is not visible outside the container */
        white-space: nowrap; /* Ensures text stays in one line */
        animation: typing 10s steps(30, end), blink-caret 0.5s step-end infinite;
      }

      @keyframes typing {
        from {
          width: 0;
        }
        to {
          width: 50%;
        }
      }

      @keyframes blink-caret {
        from,
        to {
          border-right-color: transparent;
        }
        50% {
          border-right-color: #333;
        }
      }
      .container {
        background: radial-gradient(
          circle,
          rgba(238, 174, 202, 1) 0%,
          rgba(148, 187, 233, 1) 100%
        );
        padding: 20px 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
      }
      h1 {
        text-align: center;
        color: #333;
      }
      form {
        display: flex;
        flex-direction: column;
      }
      label {
        margin-bottom: 5px;
        font-weight: bold;
      }
      input[type="email"],
      input[type="password"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
      }
      input[type="submit"] {
        background: #28a745;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
      }
      input[type="submit"]:hover {
        background: #218838;
      }
    </style>
  </head>
  <body>
    <div class="heading">
      <span class="typing-text">ONLINE FOOD DELIVERY SYSTEM</span>
    </div>
    <div class="parent">
      <div class="container">
        <h1>${message}</h1>
        <h1>Hotel Login Form</h1>
        <form action="hotelloginvalidation" method="post">
          <label for="email">Enter Email:</label>
          <input type="email" id="email" name="email" required />

          <label for="password">Enter Password:</label>
          <input type="password" id="password" name="password" required />

          <input type="submit" value="Login" />
        </form>
      </div>
    </div>
  </body>
</html>
