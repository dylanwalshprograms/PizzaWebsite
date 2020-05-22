<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Pizza For You and Me</title>
</head>
<body>
<h1>Welcome to Krusty Krab's Pizza</h1>
<h2>Specialty Pizzas</h2>
<div>
	<ul>
	 <c:forEach var = "pizza" items = "${pizzas}">
		  <li>
			  <c:url var="specialtypizza" value = "/pizza1">
		      <c:param name="name" value="${pizza.name}"/>
		      <c:param name="price" value="${pizza.price}"/>
			  </c:url>                    
			  <a href="${specialtypizza}"><c:out value="${pizza.name}"/></a>
		  </li>
	  </c:forEach>
	</ul>
</div>
<div>
	<h2>Custom Pizza</h2>
	<a href = "/pizza-builder">Build Your Own!</a>
</div>
<div>
	<h2>Leave a Review</h2>
	<a href = "/leave-review">Click here to leave a review.</a>
</div>



</body>
</html>