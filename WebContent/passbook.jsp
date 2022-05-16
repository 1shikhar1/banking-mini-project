<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="com.monocept.model.*"
    import="com.monocept.service.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h2><a href="dashboard">Dashboard</a></h2>
		
		<%
			Account account = (Account)request.getAttribute("user");
		
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
			AccountService service = AccountService.getInstance();
			
			List<Transaction> transactions = service.getTransactions(account.getName());
		
			for(Transaction trn: transactions){
				out.println("<tr><td>"+trn.getName()+"</td> <td>"+trn.getAmount()+"</td> <td>"+trn.getType()+"</td> <td>"+trn.getTime()+"</td> </tr> ");
			}
		%>
		
	</table>
</body>
</html>