<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.bean.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/m16.jpg");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Medicine Details</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" />    
	<%
		ArrayList medicine = (ArrayList) request.getAttribute("MedicineDetails");
	%>
	

	<div><br><br><h2 align="center" class="table table-striped">Medicine Details</h2></br></br></div>

	<table border='1' align="center" class="table table-striped">
		<tr>
			<th>Medicine Id</th>
			<th>Description</th>
			<th>Purpose</th>
			<th>Manufacturing Company</th>
			<th>Dosage</th>
			<th>Prescription</th>
			<th>Amount</th>
			<th>Action</th>
		</tr>
		<%
			for (int i = 0; i < medicine.size(); i++) {
				Medicine m = (Medicine) medicine.get(i);
		%>
		<tr> 
			<td><%=m.getId()%></td>
			<td><%=m.getDescription()%></td>
			<td><%=m.getPurpose()%></td>
			<td><%=m.getManufacturingCompany()%></td>
			<td><%=m.getDosage()%></td>
			<td><%=m.getPrescription()%></td>
			<td><%=m.getAmount()%></td>
			<td><a href='MedicineForm.jsp?id=<%=m.getId()%>' class="btn btn-warning" role="button">Edit</a> <a href='DeleteMedicine?id=<%=m.getId()%>' class="btn btn-primary" role="button">Delete</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</div>	
</body>
</html>