<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2; /* Light gray background color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        background-color: #e0e9f0; /* Blue-gray background color */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
        max-width: 400px;
        width: 100%;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table.center {
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    input[type=text], input[type=email], input[type=password], input[type=date] {
        width: calc(100% - 24px);
        padding: 12px;
        margin: 8px 0;
        display: block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=submit], button {
        width: calc(100% - 24px);
        background-color: #ff8c00; /* Orange button color */
        color: white;
        padding: 14px 0;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        display: block;
    }
    input[type=submit]:hover, button:hover {
        background-color: #e67300; /* Darker shade of orange on hover */
    }
    span.error-message {
        color: red;
        display: block;
        text-align: center;
    }
    button {
        background-color: #ff8c00; /* Orange button color */
    }
</style>
</head>
<body>
<div class="login-container">
    <h1>VACCINATION CENTER LOGIN | WELCOME</h1>
    <hr>
    <form action="dashboard" method="post">
        <h2 align="center"><b>Login</b></h2>
        <table class="center">
            <tbody>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="email" name="email" placeholder="email"></td>
                </tr>
                <tr>
                    <td><label for="password">Enter Password:</label></td>
                    <td><input type="password" name="password" placeholder="Enter Password"></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td><input type="submit" value="LOGIN" /></td>
                </tr>
            </tfoot>
        </table>
    </form>
    <div class="error-message" align="center">
        <span class="error-message">
            <%-- This is where your error message will be displayed --%>
        </span>
    </div>
    <div align="center">
        <form action="register">
            <button>REGISTER</button>
        </form>
    </div>
</div>
</body>
</html>
