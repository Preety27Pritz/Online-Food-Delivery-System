<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Hotel Homepage</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css"
      integrity="sha512-ioRJH7yXnyX+7fXTQEKPULWkMn3CqMcapK0NNtCN8q//sW7ZeVFcbMJ9RvX99TwDg6P8rAH2IqUSt2TLab4Xmw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <style>
      body {
        margin: 0;
        background-image: url("https://img.freepik.com/premium-photo/top-view-burger-with-ingredients-yellow-with-copy-space-design-advertising-fast-food-banner_742418-16952.jpg");
        background-repeat: no-repeat;
        background-size: cover;
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
      .parent {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      .main {
        width: 320px;
        height: 370px;
        background: rgba(224, 126, 38, 0.1);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        border-radius: 8px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        overflow: hidden; /* Ensure box-shadow doesn't overflow */
      }
      a {
        text-decoration: none;
        text-align: center;
        display: block;
        font-size: 25px;
        margin: 12px 0;
        padding: 10px 20px;
        width: 180px;
        border-radius: 8px;
        color: #fff;
        background: linear-gradient(to right, #9d50bb, #6e48aa);
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        transition: transform 0.2s ease, background-color 0.2s ease,
          box-shadow 0.2s ease;
      }
      a:hover {
        background: linear-gradient(to right, #43cea2, #185a9d);
        transform: translateY(-2px);
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
      }
      h1 {
        font-weight: bold;
        margin-bottom: 40px;
        color: black;
        text-align: center;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        transition: transform 0.2s ease, text-shadow 0.2s ease;
      }
      h1:hover {
        transform: scale(1.05);
        text-shadow: 0 4px 6px rgba(0, 0, 0, 0.4);
      }
      .icon {
        font-size: 48px;
        margin-bottom: 20px;
        color: black;
        transition: transform 0.3s ease;
      }
      .icon:hover {
        transform: rotate(360deg);
      }
    </style>
  </head>
  <body>
    <div class="heading">
      <span class="typing-text">ONLINE FOOD DELIVERY SYSTEM</span>
    </div>
    <div class="parent">
      <div class="main">
        <i class="fas fa-crown icon"></i>
        <h1>Hotel Homepage</h1>
        <a href="addhotel"><i class="fas fa-user-plus"></i>Register</a>
        <a href="HotelLogin.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
        <h2>${message}</h2>
      </div>
    </div>
  </body>
</html>
