<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            text-align: center;
            margin-top: 100px;
        }
        h1 {
            color: #333;
        }
        .message {
            color: green;
            font-size: 18px;
            margin-bottom: 20px;
        }
        form {
            display: inline-block;
            text-align: left;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px #aaa;
        }
        input[type="text"], input[type="submit"] {
            margin-bottom: 10px;
            padding: 10px;
            width: 100%;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
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
    <div class="container">
        <% String msg = (String) request.getAttribute("msg");
        if (msg != null) { %>
        <div class="message"><%= msg %></div>
        <% } %>
        <h1>Login of Employee</h1>
        <form action="login">
            <input type="text" placeholder="Enter emp id" name="id">
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
