<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    .container {
        text-align: center;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    h1 {
        margin-top: 0;
    }
    .button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        border: none;
        background-color: #007bff;
        color: #ffffff;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
    }
    .button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
 <div class="container">
    <h1>Welcome to Employee Portal</h1>
    <p>Manage your employees efficiently.</p>
    <a class="button" href="Register.jsp">Register</a>
    <a class="button" href="Login.jsp">Login</a>
</div>
 
 
</body>
</html>