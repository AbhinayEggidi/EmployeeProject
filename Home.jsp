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
        a {
            text-decoration: none;
        }
        input[type="button"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        input[type="button"]:hover {
            background-color: #0056b3;
        }
        .message {
            color: #green;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Home JSP File</h1>
        <a href="Register.jsp"><input type="button" value="Register"></a>
        <br>
        <a href="DisplayInfo.jsp"><h1>Display Information by Department</h1></a>
        
        <%
        String ename = (String) request.getAttribute("name");
        String message = (String) request.getAttribute("msg");
        if (ename != null && message != null) {
        %>
        <div class="message"><%= message %></div>
        <h1>Welcome <%= ename %></h1>
        <a href="Login.jsp"><input type="button" value="Login"></a>
        <% } %>
    </div>
</body>
</html>
