<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- Head - Layout Document Start  -->
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
    .wrapper {
        margin-top: 56px;
    }
</style>
<title>Bug Management</title>
</head>
<body class="text-monospace">

	
<!-- Navigation Start  -->

<nav>
	
	<div class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a href="#" class="navbar-brand">Bug Management</a>
			
		</div>
		
	</div>
</nav>

<!-- Navigation End  -->


<div class="wrapper d-flex">

	<div class="bg-dark w-25 text-light">
		<div>
			Sidebar
		</div>


<!-- Sidebar End -->

		</div>


<div class="w-75 bg-light shadow border border-dark">

	<div class="container">
		<div class="row justify-content-around">
		<div class="col-sm-4 card m-3 shadow rounded align-items-center">
			
			<form class="form-group m-2" method="post" action="login">
				<input class="form-control m-2 p-2 shadow rounded" type="text" name="username" placeholder="Enter Username">
				<input class="form-control m-2 p-2 shadow rounded" type="password" name="password" placeholder="Enter Password">
				
				<input class="btn btn-dark shadow border rounded m-2"type="submit" value="Login"> 
			</form>
		</div>
		
			<div class="col-sm-4 card m-4 shadow rounded">
			<form class="form-group m-2" method="post" action="register">
				<input class="form-control m-2 p-2 shadow rounded" type="text" name="username" placeholder="Enter Username">
				<input class="form-control m-2 p-2 shadow rounded" type="password" name="password" placeholder="Enter Password">
				<select class="form-control m-2 p-2 shadow rounded"  name="userType">
					<option value="Admin">Admin</option>
					<option value="User">User</option>
				</select>
			
				<button class="btn btn-dark btn-block shadow border rounded mt-2">Register</button>
			</form>
		</div>
		
		
		</div>
	
	</div>

	

<!-- Main Body Start -->








<!-- Main Body  End -->
</div>









</div>


<!-- Head - Layout Document End  -->


<!-- CDN JS -->
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>