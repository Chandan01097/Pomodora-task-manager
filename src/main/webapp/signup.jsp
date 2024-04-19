<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("signup1.jpg");
            background-size: cover;
            background-position: center;
        }
        
        .signup-box {
            width: 300px;
            padding: 20px;
            background-image: url("pomimage.jpg");
            background-size: cover;
            background-position: center;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            text-align: center;
            color: #fff;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
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
    <form action="MyServlet" method="post">
        <div class="signup-box">
            <h2>Sign Up</h2>
            <label for="name">Name:</label>
            <input type="text" id="name" name="userinput" placeholder="Enter your name" required>
            
            <label for="gender">Gender:</label>
            <select id="gender" name="userinput2" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            <label for="email">Email:</label>
            <input type="email" id="email" name="userinput4" placeholder="Enter your email" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="userinput5" placeholder="Enter your password" pattern=".{8,}" required>
            <input type="submit" name="userinput6" value="Sign Up">
        </div>
    </form>
</body>
</html>
