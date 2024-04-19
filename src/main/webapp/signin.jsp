<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .signin-box {
        width: 300px;
        padding: 20px;
        background-image: url("pomimage.jpg");
        background-size: cover;
        background-position: center;
        border-radius: 10px;
        box-shadow: 33px 23px 20px rgba(0, 0, 0, 0.1);
    }
    
    h2 {
        text-align: center;
    }
    
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background-color: #4285f4;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>

<body>

<div class="signin-box">
    <h2>Sign In</h2>
   <form action="signinservelt" method="post">
   <label for="username">Username:</label>
    <input type="text" name="username" placeholder="Enter your username">
       <label for="password">Password:</label>
    <input type="password" name="password" placeholder="Enter your password">
    <input type="submit" value="Sign In">
    </form>
    <p><a href="index.html"> Back to Home</a></p>  
</div>
</body>
</html>
