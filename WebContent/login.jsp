<!doctype html>
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
	
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js">
	
	</script>
	
	<script>
		function validateForm() {
		if ($("#userName").val() == "") {
			alert("Please enter name!");
			return false;
		} else if ($("#pass").val()== "") {
			alert("Please enter password!");
			return false;
		}
	}
</script>

<title>login</title>
</head>
<body>
	<h1 class="display-1">Login here</h1>
	<form onsubmit="return validateForm()" action="login" method="post" style="padding: 5%;">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="userName"
				placeholder="name@example.com" name="userName"> <label for="floatingInput">User Name</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="pass"
				placeholder="Password" name="pass"> <label for="floatingPassword">Password</label>
		</div>
		<br>
		<br>
		 <input type="submit" value="Submit">
	</form>

	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>
