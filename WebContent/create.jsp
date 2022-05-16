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
	
<script>
		function validateForm() {
		if ($("#userName").val() == "") {
			alert("Please enter name!");
			return false;
		}
		if ($("#userName").val().length < 3) {
			alert("Name should be atleast three character long!");
			return false;
		} else if ($("#bal").val() == "") {
			alert("Please enter balance!");
			return false;
		} else if ($("#bal").val()<500) {
			alert("Please enter balance atleast 500!");
			return false;
		} else if ($("#pass").val() == "") {
			alert("Please enter password!");
			return false;
		}
	}
</script>

	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js">
	
	</script>
	
	<script type="text/javascript">
	$(document).ready(function() {

		var name = $("#userName");

		name.keyup(function() {
			var nameValue = name.val();
			$.ajax({
				type : 'POST',
				data : {
					name : nameValue
				},
				url : 'home',
				success : function(result) {
					if (result == true) {
						$("#nameError").html("name already taken");
						$("#tick").html("");
					} else {

						$("#nameError").html("");
						if (nameValue >= 100)
							$("#tick").html("&#10004");
						else
							$("#tick").html("");
					}
				}
			});
		});

	});
	
	function validateForm() {
		if ($("#userName").val() == "") {
			alert("Please enter name!");
			return false;
		}
		if ($("#userName").val().length < 3) {
			alert("Name should be atleast three character long!");
			return false;
		} else if ($("#bal").val() == "") {
			alert("Please enter balance!");
			return false;
		} else if ($("#bal").val()<500) {
			alert("Please enter balance atleast 500!");
			return false;
		} else if ($("#pass").val() == "") {
			alert("Please enter password!");
			return false;
		}
	}

</script>
	

<title>Create Account</title>
</head>
<body>
	<h1 class="display-1">Create Account</h1>

	<form onsubmit="return validateForm()" action="create" method="post" style="padding: 5%;">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="userName"
				placeholder="name@example.com" name="userName"> <label for="floatingInput">User Name</label>
				<label for="userName" id="tick" style="color: green"></label><br>
				<p id=nameError style="color: red;"></p>
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
