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
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    input {
        padding: 10px;
        width: 300px;
        margin: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #ffffff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<center>
<h1> Registetration </h1>
 
	 <div class="container">
    <h1>Register Employee</h1>
    <form action="register">
        <input type="text" placeholder="Enter name" name="ename">
        <input type="text" placeholder="Enter dept no" name="deptno">
        <input type="text" placeholder="Enter salary" name="sal">
        <input type="text" placeholder="Enter id" name="empid">
        <input type="submit" value="Register">
    </form>
</div>
 
</center>
</body>
</html>