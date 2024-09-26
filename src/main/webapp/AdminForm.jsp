<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin Registration Form</title>
    <style>
      body {
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
        font-family: Arial, sans-serif; /* Added a generic font family */
      }

      form {
       background: radial-gradient(
          circle,
          rgba(238, 174, 202, 1) 0%,
          rgba(148, 187, 233, 1) 100%
        );
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        border: 1px solid #ccc;
        width: 300px; /* Adjusted width for better responsiveness */
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

      input[type="text"],
      input[type="password"],
      input[type="email"] {
        text-align: center;
        display: block;
        font-size: 16px;
        margin: 10px auto; /* Centered input fields with margin */
        padding: 10px;
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box; /* Ensure padding and border are included in width */
      }

      input[type="submit"] {
        background-color: #4caf50; 
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        display: block;
        margin: 0 auto; /* Centered submit button */
      }

      input[type="submit"]:hover {
        background-color: #45a049; 
      }

      h1 {
        text-align: center;
        color: #333; /* Darker text color */
      }
      
      .error {
            color: red;
        }	
    </style>
  </head>
  <body>
  	<div class="heading">
      <span class="typing-text">ONLINE FOOD DELIVERY SYSTEM</span>
    </div>
    <div class="parent">
    <form id="myForm" action="saveadmin" method="post">
      <h1>Admin Registration Form</h1>
      <label for="name">Enter name:</label>
      <input type="text" id="name" name="name" required />	
      

      <label for="email">Enter email:</label>
      <input type="email" id="email" name="email" required />
      <span id="emailError" class="error"></span>
        <br />	

      <label for="password">Enter password:</label>
      <input type="password" id="password" name="password" required />
      <span id="passwordError" class="error"></span>
        <br />

      <input type="submit" value="Submit" />
    </form>
    </div>
     <script>
        document.getElementById('myForm').addEventListener('submit', function(event) {
            let isValid = true;

            // Email validation
            const email = document.getElementById('email').value;
            const emailError = document.getElementById('emailError');
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                emailError.textContent = 'Please enter a valid email address.';
                isValid = false;
            } else {
                emailError.textContent = '';
            }

            // Password validation
            const password = document.getElementById('password').value;
            const passwordError = document.getElementById('passwordError');
            if (password.length <= 5) {
                passwordError.textContent = 'Password must be greater than 5 characters.';
                isValid = false;
            } else {
                passwordError.textContent = '';
            }

            if (!isValid) {
                event.preventDefault(); // Prevent form submission if validation fails
            }
        });
    </script>
  </body>
</html>
