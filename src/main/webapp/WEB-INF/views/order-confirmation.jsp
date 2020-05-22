<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmation</title>
<link href="/style.css" rel="stylesheet" />
</head>
<body>
	<p>${size}</p>
	<p>${toppings}</p>
	<p>${glutenfree}</p>
	<p><c:out value = "${specialinstructions}" default = "no special instructions"/></p>
	<p>${price}</p>
	
	<c:set var = "price" value = "${freeDelivery}" />
      <c:if test = "${price > 15}">
         <p class = "delivery">Your order qualifies for free delivery!<p>
      </c:if>
	<a href ="/pizza-builder" >Build another pizza</a><br>
	
	<a href ="/index" >Back to Homepage</a>

</body>
</html>