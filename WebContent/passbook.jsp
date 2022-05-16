<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="com.monocept.model.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h2><a href="home">Home</a></h2>

		<table class="table table-striped">
		<tr>
			<th>Name</th>
    		<th>Amount</th>
    		<th>Type</th>
    		<th>Time</th>
		</tr>
		
		<%
			List<Transaction> transactions = (List)request.getAttribute("transactions");
		
			for(Transaction trn: transactions){
				out.println("<tr><td>"+trn.getName()+"</td> <td>"+trn.getAmount()+"</td> <td>"+trn.getType()+"</td> <td>"+trn.getTime()+"</td> </tr> ");
			}
		%>
		
	</table>
</body>
</html>