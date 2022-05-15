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

<title>login</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="https://cdn.cdnlogo.com/logos/k/86/key-bank.svg" alt=""
				width="30" height="24" class="d-inline-block align-text-top">
				Banking App
			</a> <a style="text-align: margin-left; color: white;"></a>
			<a style="color: white;"> hello,  user</a>>
			<a href="logoutcon" class="btn btn-primary" role="button" name="txn">Logout</a>
		</div>
	</nav>
	<h3 class="display-1">Transection Portal</h3>
	<form action="transaction" method="post" style="padding: 5%;">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="amount"
				placeholder="name@example.com" name="amount"> <label
				for="floatingInput">Enter Amount</label> <br> <input
				type="checkbox" name="myCheckbox" value="deposite"
				onclick="selectOnlyThis(this)" /> Deposite <br> <input
				type="checkbox" name="myCheckbox" value="withdraw"
				onclick="selectOnlyThis(this)" /> Withdraw

		</div>

		<input type="submit" value="Submit">
	</form>

	<script>
		function selectOnlyThis(id) {
			var myCheckbox = document.getElementsByName("myCheckbox");
			Array.prototype.forEach.call(myCheckbox, function(el) {
				el.checked = false;
			});
			id.checked = true;
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>
