<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Customer Dashboard</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css"
      integrity="sha512-ioRJH7yXnyX+7fXTQEKPULWkMn3CqMcapK0NNtCN8q//sW7ZeVFcbMJ9RvX99TwDg6P8rAH2IqUSt2TLab4Xmw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <style>
         body {
                  font-family: Arial, sans-serif;
                  background-image: url("https://plus.unsplash.com/premium_photo-1664298894960-205f1f7af9ea?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
                  background-size: cover;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  margin: 0;
                  padding: 0;
                }
                .navbar {
              background-color: #333;
              overflow: hidden;
              text-align: end;
              padding: 10px 0;
            }
            .navbar a {
              display: inline-block;
              color: #f2f2f2;
              text-align: center;
              padding: 12px 20px;
              text-decoration: none;
              font-size: 18px;
              position: relative;
              transition: all 0.3s ease;
            }
            .navbar a::before {
              content: '';
              position: absolute;
              top: 0;
              left: 0;
              right: 0;
              bottom: 0;
              background-color: rgba(255, 255, 255, 0.1);
              z-index: -1;
              transition: opacity 0.3s, transform 0.3s;
              transform: scaleX(0);
              transform-origin: left;
            }
            .navbar a:hover::before {
              transform: scaleX(1);
              opacity: 1;
            }
            .navbar a:hover {
                color: #007bff; /* New hover color */
                    transform: scale(1.1); /* Scale up by 10% on hover */
                    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            }
                .container {
                  padding: 20px;
                  text-align: center;
                  color: #fff;
                  background-color: rgba(0, 0, 0, 0.5);
                  margin: 150px auto;
                  max-width: 600px;
                  border-radius: 10px;
                }
                h1 {
        font-size: 40px;
        font-family: Arial, sans-serif;
        color: white;
        position: relative; /* Required for z-index to work */
        display: inline-block; /* Ensures animation applies correctly */
        animation: welcome-animation 5s linear; /* Adjust duration as needed */
      }
      @keyframes welcome-animation {
        0% {
          transform: translateZ(0) rotateY(0);
        }
        50% {
          transform: translateZ(50px) rotateY(180deg);
        }
        100% {
          transform: translateZ(0) rotateY(360deg);
        }
      }
            .navbar img {
                  float: left;
                  height: 50px; /* Adjust height as needed */
                  margin: 5px 10px; /* Adjust margins as needed */
                }
                footer {
                  background-color: #333;
                  color: #f2f2f2;
                  text-align: center;
                  padding: 10px 0;
                  position: fixed;
                  bottom: 0;
                  width: 100%;
                }
                footer .social-icons {
                  margin-top: 10px;
                }
                footer .social-icons a {
                  color: rgb(148, 148, 247);
                  margin: 0 10px;
                  font-size: 30px;
                  transition: color 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease; /* Add transitions */
                 text-decoration: none; /
                }
                footer .social-icons a:hover {
                    color: #007bff; /* New hover color */
                    transform: scale(1.1); /* Scale up by 10% on hover */
                    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
                }
    </style>
  </head>
  <body>
    <%
    Integer customer_id=(Integer) session.getAttribute("customerinfo");
    if(customer_id!=null){
%>
    <div class="navbar">
      <img
        src="https://4.imimg.com/data4/EG/NU/MY-14280368/hotel-management-system.gif"
        alt="Hotel Management Logo"
      />
      <a href="readhotelname.jsp"> View items by hotel </a>
      <a href="fetchallproducts"> Buy items </a>
      <a href="readpricerange.jsp">View items between price range</a>
    </div>
    <div class="container">
      <h1>Welcome to the Customer Dashboard</h1>
      <p>This is your centralized hub for managing hotels.</p>
      <h1>${message}</h1>
    </div>
    <% }else{%>
    <div class="container">
      <h1><a href="CustomerLogin.jsp">Please Login First</a></h1>
    </div>
    <%} %>
    <footer>
      <p>&copy; 2024 Your Company. All rights reserved.</p>
      <div class="social-icons">
        <a href="#" target="_blank" title="Follow us on Facebook"
          ><i class="fab fa-facebook"></i
        ></a>
        <a href="#" target="_blank" title="Follow us on Twitter"
          ><i class="fab fa-twitter"></i
        ></a>
        <a href="#" target="_blank" title="Follow us on Instagram"
          ><i class="fab fa-instagram"></i
        ></a>
        <a href="#" target="_blank" title="Follow us on LinkedIn"
          ><i class="fab fa-linkedin"></i
        ></a>
      </div>
    </footer>
  </body>
</html>
