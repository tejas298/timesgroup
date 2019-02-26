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

	$('#cancel').attr('disabled','disabled').css('opacity','0.3');
	$('#save').attr('disabled','disabled').css('opacity','0.3');	
	$('.dataCh').attr('disabled','disabled').css('background-color','#cccccc');
	
	$('#edit').click(function(){
		$('#cancel').removeAttr('disabled').css('opacity','1');
		$('#save').removeAttr('disabled').css('opacity','1');
		$('.dataCh').removeAttr('disabled').css('background-color','#ffffff');
		$('#edit').attr('disabled','disabled').css('opacity','0.3');
	});
	
	$('#save').click(function(){

		var state =  document.getElementById("save").getAttribute("disabled");
		if(state !== "disabled"){
		$('#edit').removeAttr('disabled').css('opacity','1');
		$('#cancel').attr('disabled','disabled').css('opacity','0.3');
		$('#save').attr('disabled','disabled').css('opacity','0.3');
		
		$('.dataCh').attr('disabled','disabled').css('background-color','#cccccc');
		
		var elements = document.getElementsByClassName("dataCh");
		var temp="String is ";
		for(var i=0, len = elements.length; i<len;i++){
			var semp = elements[i].value;
			temp =  temp + semp;
		}
		alert(temp);
		console.log(temp);
		}
	});
	
	$('#cancel').click(function(){
		
		var state =  document.getElementById("cancel").getAttribute("disabled");
		if(state !== "disabled"){
		$('#edit').removeAttr('disabled').css('opacity','1');
		$('#cancel').attr('disabled','disabled').css('opacity','0.3');
		$('#save').attr('disabled','disabled').css('opacity','0.3');
		
		$('.dataCh').attr('disabled','disabled').css('background-color','#cccccc');
		
		var elements = document.getElementsByClassName("dataCh");
		var temp="String is ";
		for(var i=0, len = elements.length; i<len;i++){
			var semp = elements[i].defaultValue;
			temp =  temp + semp;
			elements[i].value =  semp;
		}
		alert(temp);
		console.log(temp);
		}
	});
		});
</script>
</head>
<body>
<div class="main_fourthstep">
<div class="fourthMain">
<div class="mainChild"><label>SAP No. </label><input type="text" name="sap" id="sap" ></div>
<div class="mainChild"><label>Email id: </label><input type="text" name="email"></div>
<div class="mainChild"><label>Reg Id : </label><input type="text" name="regid"></div>
<div class="mainChild"><input type="submit" value="Search" id="submit"></div>
</div>

<div class="fourthResult">
<table>
<tr>
<td colspan="7">newJoinee</td>
</tr>
<tr>
<th>col</th>
<th>col</th>
<th>col</th>
<th>col</th>
<th>col</th>
<th>col</th>
<th>Action</th>
</tr>
<tr>
<td><input type="text" value="1" class="dataCh"></td>
<td><input type="text" value="2" class="dataCh"></td>
<td><input type="text" value="3" class="dataCh"></td>
<td><input type="text" value="4" class="dataCh"></td>
<td><input type="text" value="5" class="dataCh"></td>
<td><input type="text" value="6" class="dataCh"></td>
<td style="width:20%;">
<img src="images\edit.png" id="edit"/>
<img src="images\cancel.png" id="cancel"/>
<img src="images\save.png" id="save"/>
</td>
</tr>
</table>
</div>

</div>
</body>
</html>