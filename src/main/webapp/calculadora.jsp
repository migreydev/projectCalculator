<%@ page import="calculadora.Calculadora" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Calculator</title>
	
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
		<style>
		
			.divTextArea {
				background-color: #f0f0f0;
	            padding: 8px;
	            border: 1px solid #0A0A0A;
	            border-radius: 10px;
			}
			
			.pantalla textarea {
			    border: none;
			    background-color: #FFE6B5;
			    border: 1px solid #0A0A0A;
			}
			
		
			fieldset {
			 	border: 1px solid #ccc;
				padding: 5px;
				margin-bottom: 10px;
				
			}
			
			form {
				position: absolute;
				width: 400px;
				height: 440px;
				background-color: #D0CBCB;
				border: 1px solid #949090;		
				border-radius: 10px;
			}
			
			.container {
				width: 30%;
				height: 30%;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    height: 100vh; 
			}
			
			p {
				font-size: 10px;
			}
			
			.buttonVerde {
				border: 2px solid #07FF3D;
				display: inline-block;
				border-radius: 10px;
			}
			
			.buttonRojo {
				border: 2px solid #FF0000;
				display: inline-block;
				border-radius: 10px;
			}
			
			.buttonAmarillo {
				border: 2px solid #FFEA00;
				display: inline-block;
				border-radius: 10px;
			}

		</style>
	</head>
	<body>
		<h1 align="center">Calculator</h1>
		
		<%
			String number = request.getParameter("number");
			String operator = request.getParameter("operator");
			String result = request.getParameter("result");
			String calculate = request.getParameter("calculate");
			
			if(result ==null){
				result="";
			}
			
			
			if(number != null && !number.isEmpty()){
				if(result.isEmpty()){
					result += number;
				}else{
					result += operator + number;
				}
			}
			
			
			if(request.getParameter("delete") != null){
				result="";
			}
			
			if(request.getParameter("calculate")!=null){
				result += "=" + Calculadora.calcularTextArea(result);

			}
			
		%>
		<div class="container">
			<form action="calculadora.jsp" method="get">
		        <fieldset>
		        <div class="divTextArea">
		         	<div class="pantalla">
		            	<textarea class="form-control" type="text" name="result" placeholder="Viewing area" rows=1><%= result %></textarea><br>
		            	<p>Calculator</p>
		            </div>
				</div>
					
					<br>
		            <label><b>Enter a number: </b></label><br>
		            <input type="number" step="any" name="number" placeholder="Number"> 
		
		            <br><br>
		            <div class="buttonAmarillo">
		            	<button type="submit" name="addNumber" class="btn btn-warning">Add Number</button>
					</div><br>
					
					<br>
		            <label><b>Operator </b></label>
		            <select name="operator"><br>
		            	<option selected></option>
		                <option value="+">+</option>
		                <option value="-">-</option>
		            </select><br><br>
					
					<br>
					<div class="buttonVerde">
		            	<button type="submit" name="calculate" class="btn btn-success">Calculate</button>
		            </div>
		            <div class="buttonRojo">
		            	<button	type="submit" name="delete" class="btn btn-danger">Delete</button>
		            </div>
		        </fieldset>
		    </form>
	    </div>
	</body>
</html>