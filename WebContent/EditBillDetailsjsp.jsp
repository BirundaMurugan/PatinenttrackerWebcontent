<%@page import="com.cts.bean.Bill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Here</title>

	<style>
.hero-image {
	background-image: url("images/BillBackground.jpg");
	background-color: #cccccc;
	height: 1000px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
<div class="hero-image">
<jsp:include page="include.jsp" /> 
	<div class="container">
		<div class="page-header">
			<h1>Generate Your Bill</h1>
		</div>
	</div>
			<%
			Bill bill  = (Bill)request.getAttribute("billObj");
			%>
			<form action='UpdataForm'><table border='1' align='center'><tr><th>SL NO</th><th>Table Column</th><th>Column Value</th></tr>
				<tr><td>1.</td><td>Bill Id :</td><td><input type='number' name='bid' value='<%=bill.getBill_id()%>'readonly='readonly'></td></tr>
				<tr><td>2.</td><td>Patient Id</td><td><input type='text' name='pid' value='<%=bill.getPatient_id()%>'></td></tr>
				<tr><td>3.</td><td>Doctor Id</td><td><input type='text' name='did' value='<%=bill.getDoctor_id()%>'></td></tr>
				<tr><td>4.</td><td>Date</td><td><input type='number' name='date' value='<%=bill.getBill_date()%>'></td></tr>
				<tr><td>4.</td><td>Medicine Id</td><td><input type='number' name='mid' value='<%=bill.getMedicine_id()%>'></td></tr>
				<tr><td>4.</td><td>quantity</td><td><input type='number' name='quantity' value='<%=bill.getQuantity()%>'></td></tr>
				<tr><td>4.</td><td>Amount</td><td><input type='number' name='amount' value='<%=bill.getAmount()%>'></td></tr>
				<tr><td></td><td align='center'><input type='reset' value='clear'></td><td align='center'><input type='submit' value='submit'></td>
	</div>
</body>
</html>