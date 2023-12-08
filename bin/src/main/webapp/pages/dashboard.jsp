<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style type="text/css">
body{
	padding:0;
	margin:0;
	
}
ul{
	margin:0;
	padding:0;
}

li{

	display:inline-block;
	padding: 0 20px 0 20px;
}
        table {
            border-collapse: collapse;
            margin-bottom: 20px;
            width:80%;
	        margin:auto;
	        overflow:hidden;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 20px;
            text-align:center
            
        }
  button , a{
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 8px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
}
button:hover , a:hover{
  width: 100%;
  background-color: #45a049;
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
  width: 30%;
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
h1{
	margin-top:10px;
	font-size:55px;
	margin-bottom:10px;
}

.view-edit-delete {
  white-space: nowrap;
}
</style>
</head>
<body>

<div align="right">
       <% String userid = (String) session.getAttribute("userid");%>
       <p align="Right">User Name:<span style="color:#FF0066"> <%= userid %></span><p>
       <a href="<c:url value='/admin/logout' />">logout</a>
</div>

                  <h1 align="center">VACCINATION CENTER | WELCOME</h1>

<hr><br>
    <div class="link-container">
            <ul>             
                <li><a href="<c:url value='/admin/citizen/viewCitizen' />?userid=${userid}">Citizens</a></li>
                <li><a href="<c:url value='/admin/vaccination/viewCenterList' />?userid=${userid}">Vaccination Centers</a></li>         
           </ul>
     </div><br>
</body>
</html>