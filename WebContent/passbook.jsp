<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="com.monocept.model.*"
    import="com.monocept.service.*"
    import="java.io.FileWriter"  
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<title>Insert title here</title>
</head>
<body>
		<h2><a href="dashboard">Dashboard</a></h2>
		
		<%
			Account account = (Account)request.getAttribute("user");
			AccountService service = AccountService.getInstance();
			List<Transaction> transactions = service.getTransactions(account.getName());
		
			out.println("<h2>Available balance: "+account.getBalance()+"</h2>");
		%>

		<table class="table table-striped">
		<tr>
			<th>Name</th>
    		<th>Amount</th>
    		<th>Type</th>
    		<th>Time</th>
		</tr>
		
		<%
		
			for(Transaction trn: transactions){
				out.println("<tr><td>"+trn.getName()+"</td> <td>"+trn.getAmount()+"</td> <td>"+trn.getType()+"</td> <td>"+trn.getTime()+"</td> </tr> ");
			}
		%>
		
	</table>
	
	<a href="csv">transaction.csv</a>
</body>
</html>