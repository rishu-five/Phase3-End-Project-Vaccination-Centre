<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <style type="text/css">
        table.container {
            margin-left: auto;
            margin-right: auto;
            width: 80%;
            max-width: 600px; /* Set a maximum width for larger screens */
        }
        input[type=text], [type=email], [type=password], [type=date] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: block; /* Display inputs as block elements */
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            width: 100%;
            background-color: #ff8c00;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #e67300;
        }
        /* Media query for smaller screens */
        @media screen and (max-width: 600px) {
            table.container {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form action="insert" method="post">
        <h2 align="center"><b>REGISTRATION</b></h2>
        <table class="container">
            <tbody>
                <tr>
                    <td><label for="name">NAME:</label></td>
                    <td><input name="name" placeholder="Your Name" type="text"></td>
                </tr>
                <tr>
                    <td><label for="email">EMAIL:</label></td>
                    <td><input type="email" name="email" placeholder="email"></td>
                </tr>
                <tr>
                    <td><label for="password">PASSWORD:</label></td>
                    <td><input type="password" name="password" placeholder="Enter Password"></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </tfoot>
        </table>
    </form>
    <div class="error-message" align="center">
        <c:if test="${not empty message}">
            <span style="color: red;">${message}</span>
        </c:if>
    </div>
</body>
</html>
