<!doctype html>
<%@page import="com.monocept.model.Account"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Dash Board</title>

</head>

<body>
<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="https://cdn.cdnlogo.com/logos/k/86/key-bank.svg" alt=""
				width="30" height="24" class="d-inline-block align-text-top">
				Banking App
			</a>
			
			<a style="text-align:margin-left; color: white;" ><h3>Hello <% Account user = (Account)session.getAttribute("user"); out.println(user.getName());%></h3></a>
			<a href="logout" class="btn btn-primary" role="button" name="txn">Logout</a>
		</div>
	</nav>
<div style="padding: 4%">
	<h1 class="display-1">Welcome to DashBoard</h1>

	<a href="transaction" class="btn btn-primary" role="button" name="txn">Transaction</a>
	<br>

	<br>
	<a href="passbook" class="btn btn-primary" role="button" name="passbook">Passbook</a>
	
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
<body>
	<style>
body {
	background-image:
		url('https://images.unsplash.com/photo-1579621970588-a35d0e7ab9b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	
}
</style>
</body>
</html>
