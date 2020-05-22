<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave a review</title>
</head>
<body>
<h1>Leave a review</h1>
<form action="/review-confirmation">
	<label>Your name:</label>
	<input type="text" name="name" required/>
	<br><br>
	<label>Comment</label>
	<br>
	<textarea rows = "5" cols = "60" name = "comment" minlength = "5" required></textarea>
	<br><br>
	<input type="radio" id="5" value="5" name ="rating" required>
	<label for="5">5 (best) -</label>
	<input type="radio" id="4" value="4" name ="rating">
	<label for="4">4 -</label>
	<input type="radio" id="3" value="3" name ="rating">
	<label for="3">3 -</label>
	<input type="radio" id="2" value="2" name ="rating">
	<label for="2">2 -</label>
	<input type="radio" id="1" value="1" name ="rating">
	<label for="1">1 (worst)</label>
	<br><br>
	<input type="submit"/>
	<a href ="/" >Never mind</a>
	
	
</form>

</body>
</html>