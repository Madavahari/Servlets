<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .register-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1>Registration</h1>
        <form action="register" method="post">
            <label>SID</label>
            <input type="text" name="sid" placeholder="Enter SID"><br>

            <label>Name</label>
            <input type="text" name="name" placeholder="Enter name"><br>

            <label>Email</label>
            <input type="text" name="email" placeholder="Enter email"><br>

            <label>Phone</label>
            <input type="text" name="phoneNo" placeholder="Enter phone number"><br>

            <label>Username</label>
            <input type="text" name="username" placeholder="Enter username"><br>

            <label>Password</label>
            <input type="text" name="password" placeholder="Enter password"><br>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
