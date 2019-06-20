
<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.bean.Billdetails"%>
<%@page import="com.cts.bean.Bill"%>
<%@page import="java.util.List"%>
<%@page import="com.cts.Dao.BillDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Collect Your Bill </title>
  <meta charset="utf-8">
 
  <style>
.hero-image {
	background-image: url("images/BackgroundImage.jpg");
	background-color: #cccccc;
	height: 1300px;
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
			<h1><center>Your Bill</center></h1>
		</div>
	</div>
	<form action="index.html">
				<%
				String patientName=request.getAttribute("patientName").toString();
				String DoctorName=request.getAttribute("doctorname").toString();
				List<Billdetails> billdetails=(ArrayList<Billdetails>)request.getAttribute("billdetails");
				int sum=0;
				%>
				
				 
		<h3><b>Patient Name:<%=patientName %></b></h3>
		<h3><b>Doctor Name:<%=DoctorName %></b></h3>
		<table border='1' align='center' class="table table-striped" >
		<tr>
		    <th>Medicine Id</th>
			<th>Medicine Name</th>
			<th>Cost</th>
			<th>Quantity</th>
			<th>Total Amount</th>
			
		</tr>
		<%for(Billdetails bd:billdetails)
			{
			
			sum=sum+bd.getTotal();
			
			%>
			<tr><th><%=bd.getMedicineId()%></th><th><%=bd.getMedicineName()%></th><th><%=bd.getAmount()%></th><th><%=bd.getQuantity() %></th><th><%=bd.getTotal()%></th></tr>
			<%} %>
		    <tr><th></th><th></th><th></th><th>Total :</th><th><%=sum %></th></tr>
			</table>	
			
				 </div>
				
				</div>
				</div>
				</form>
</body>
</html>