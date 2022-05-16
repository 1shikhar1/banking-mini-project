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

<title>Create Account</title>
</head>
<body>
	<h1 class="display-1">Create Account</h1>
	<form action="create" method="post" style="padding: 5%;">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="userName"
				placeholder="name@example.com" name="userName"> <label for="floatingInput">User Name</label>
		</div>
		<div class="form-floating">
			<input type="text" class="form-control" id="bal"
				placeholder="text" name="bal"> <label for="floatingPassword">Enter balance </label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="pass"
				placeholder="Password" name="pass"> <label for="floatingPassword">Create Password</label>
		</div>
		<br>
		<br>
		 <input type="submit" value="Submit">
	</form>
</body>
</html>
