<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<% 
String sap = request.getParameter("sap");
String name = request.getParameter("name");
String mail = request.getParameter("mail");
String table = request.getParameter("table");
%>


SAP id : <%= sap %><br>
Name : <%= name %><br>
Email id : <%= mail %><br>
Table : <%= table %><br>


<%
if(table.equals("timesgroupemployee")){
	out.println("Query executed");
}
%>
</div>
</body>
</html>