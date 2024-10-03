<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Car info</title>
</head>
<body>
	<header style="background-color: blue; height: 30px"></header>
	<h4>Employee info Page!!!</h4>
	<hr>
	<div class="container">
		<div class="form-group" style="width: 50%">
			<form action="carInfo" method="post">
				<label><b>Employee Name:</b></label> <input type="text"
					class="form-control" name="name"> <br>
					<label><b>Email:</b></label> <input type="text"
					class="form-control" name="email"> <br> 
				  <label><b>CellNo:</b></label> <input type="text"
					class="form-control" name="cellno" /> <br> 
					<label><b>Address:</b></label>
				<input type="url" class="form-control" name="address" />

				<button type="submit" class="btn btn-primary mt-2">Save a
					Data!</button>
			</form>
		</div>
		<hr>
	</div>
</body>
</html>