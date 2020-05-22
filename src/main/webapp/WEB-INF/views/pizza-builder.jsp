<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Builder</title>
</head>
<body>
	<h1>Build Your Own Pizza</h1>
	<form action = "/order-confirmation">
		<label for="size">Size</label>
		<select id="size" name = "size">
		  <option value="Small">Small</option>
		  <option value="Medium">Medium</option>
		  <option value="Large">Large</option>
		</select>
		<br><br>
		<label>How many toppings?</label>
		<input type="number" name="toppings" min= "0" max="10" required/>
		<br><br>
		<ul>
			<c:forEach var="topping" items="${toppings}">
			<li><c:out value="${topping}"/></li>
			</c:forEach>
		
		
		
		</ul>
		<input type="checkbox" id="glutenfree" name="glutenfree" value="true">
		<label for="glutenfree">Gluten-Free Crust? ($2.00 extra)</label><br><br>
		<label>Special Instructions (Optional)</label>
		<br>
		<textarea rows = "5" cols = "60" name = "specialinstructions"></textarea>
		<br><br>
		<button>Calculate Price</button>
		<a href ="/index" >Never mind</a>
	</form>
	

</body>
</html>