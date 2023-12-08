<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
 <style type="text/css">
table.center{
margin-left : auto ;
margin-right: auto

}
    input[type=text] ,[type=email] ,[type=password] ,[type=date]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
button{
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover ,button:hover{
  background-color: #45a049;
}
</style> 
</head>
<body>
<header><h1 align="center">VACCINATION CENTER LOGIN | WELCOME</h1></header>
<hr>
<form action="dashboard" method="post">

<h2 align="center"><b>Login</b></h2>
	<table class="center">
	   
		<tbody>
			<tr>
				<td><label for="email">Email:</label></td>
				<td><input type="email" name="email" placeholder="email" ><br></td>
			</tr>
			<tr>
			    <td><label for="password">Enter Password:</label></td>
				<td><input type="password" name= "password" placeholder="Enter Password"><br></td>
			    
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td></td><td><input type="submit" value="LOGIN" /></td>
			</tr>
		</tfoot>
	</table>
	
</form>

<div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>

<div align="center">
<form action="register">
	<button>REGISTER</button>
</form>
</div>
</body>
</html>