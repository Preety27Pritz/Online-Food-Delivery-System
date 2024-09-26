<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration Form</title>
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
    .form-container {
         background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 350px;
    }
    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .form-container label {
        display: block;
        margin-bottom: 8px;
        color: #555;
    }
    .form-container input[type="text"],
    .form-container input[type="email"],
    .form-container input[type="password"],
    .form-container input[type="number"],
    .form-container input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .form-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
        background-color: #218838;
    }
    .error {
        color: red;
        font-size: 0.9em;
    }
</style>
</head>
<body>
	<div class="heading">
      <span class="typing-text">ONLINE FOOD DELIVERY SYSTEM</span>
    </div>
    <div class="parent">
    <div class="form-container">
        <h2>Customer Registration Form</h2>
        <form id="myForm" action="savecustomer" method="post">
        <label for="name">Enter Customer Name:</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Enter Email:</label>
        <input type="email" name="email" id="email" required>
        <span id="emailError" class="error"></span>
            <br />

        <label for="password">Enter Password:</label>
        <input type="password" name="password" id="password" required>
        <span id="passwordError" class="error"></span>
            <br />

        <label for="mobilenumber">Enter Mobile No:</label>
        <input type="number" name="mobilenumber" id="mobilenumber" required>
        <span id="mobileNumberError" class="error"></span>
            <br />

        <label for="address">Enter Address:</label>
        <input type="text" name="address" id="address" required>

        <input type="submit" value="Register">
    </form>
    </div>
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
            if (password.length < 6) {
                passwordError.textContent = 'Password must be at least 6 characters long.';
                isValid = false;
            } else {
                passwordError.textContent = '';
            }

            // Mobile number validation
            const mobileNumber = document.getElementById('mobilenumber').value;
            const mobileNumberError = document.getElementById('mobileNumberError');
            const mobileNumberPattern = /^[0-9]{10}$/;
            if (!mobileNumberPattern.test(mobileNumber)) {
                mobileNumberError.textContent = 'Please enter a valid 10-digit mobile number.';
                isValid = false;
            } else {
                mobileNumberError.textContent = '';
            }

            if (!isValid) {
                event.preventDefault(); // Prevent form submission if validation fails
            }
        });
    </script>
</body>
</html>
