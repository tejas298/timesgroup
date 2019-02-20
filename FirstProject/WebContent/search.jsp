<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" href="CSS/common.css">
<link rel="stylesheet" href="CSS/search.css">
<link href="https://fonts.googleapis.com/css?family=Fahkwang|Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
  </script>
  
  <script>
  $(document).ready(function(){
  
  $("#submit").on('click',function(){
	  var sap = document.getElementById('sap').value;
	  var nameUser = document.getElementById('username').value;
	  var mail = document.getElementById('mailid').value;
	  var table = document.getElementById('table').value;
	  
	  //alert("details : sap "+sap+" /,name "+nameUser+" /,mail "+mail+" /,table "+table);
	  $('.searchResult').load("inter/searchController.jsp?sap="+sap+"&name="+nameUser+"&mail="+mail+"&table="+table);
  });
  
  });
  </script>
</head>
<body>
<div class="mainSearch">
<div class="mainSearchFirst">
<h2>Search User</h2>
<table>
<tr>
<td>SAP ID : </td>
<td>
<input type="text" name="sap" id="sap">
</td>
</tr>
<tr>
<td>Name : </td>
<td><input type="text" name="username" id="username"></td>
</tr>
<td>Email ID : </td>
<td><input type="text" name="mailid" id="mailid"></td>
<tr>
<td>Table :</td>
<td> 
<select name="table" id="table">
<option>timesgroupemployee</option>
<option>newjoinee</option>
<option>29</option>
</select> </td>
</tr>
<tr>
<td colspan=2 class="submit"><input type="submit" value="Search" name="" id="submit"></td>
</tr>
</table>
</div>
<div class="searchResult"></div>
</div>
</body>
</html>