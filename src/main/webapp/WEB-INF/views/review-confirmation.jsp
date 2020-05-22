<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Confirmation</title>
</head>
<body>
	<p>${name}</p><br>
	<p><c:out value = "${comment}" default = "no comment"/></p><br>
	<p>${rating}</p><br>
	<a href = "/index">Back to the Homepage</a>

</body>
</html>