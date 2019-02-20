<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/common.css">
<link rel="stylesheet" href="CSS/search.css">
<link href="https://fonts.googleapis.com/css?family=Fahkwang|Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
	  	$(".data").load("search.jsp");
	  	
	  	$(".searchNav").click(function(){
	  		$(".data").html('');
	  		$(".data").load("search.jsp");
	  	});
	  	
	  	$(".mapNav").click(function(){
	  		$(".data").html('');
	  		$(".data").load("map.jsp");
	  	});
	  	
	  	$(".mmclNav").click(function(){
	  		$(".data").html('');
	  		$(".data").load("mmcl.jsp");
	  	});
	  	
	  	$(".fourthNav").click(function(){
	  		$(".data").html('');
	  		$(".data").load("fourthstep.jsp");
	  	});
	  	
	  	
	  });
  
  
  </script>
</head>


<body>
<h1>Timesgroup Tool</h1>
	<nav>
		<ul class="nav-ul">
			<li class="searchNav">Search User</li>
			<li class="mapNav">Approver Mapping</li>
			<li class="mmclNav">MMCL</li>
			<li class="fourthNav">4th step</li>
		</ul>
	</nav>
	
	<div class="data"></div>
</body>
</html>