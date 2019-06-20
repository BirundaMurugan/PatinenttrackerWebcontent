<%@page import="com.cts.bean.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/m7.jfif");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
<div><br><br><h2 align="center" class="table table-striped">Medicine Detail of Selected Id</h2></br></br></div>
	<table border='1' align="center" class="table table-striped">
		<tr>
			<th>Medicine Id</th>
			<th>Description</th>
			<th>Purpose</th>
			<th>Manufacturing Company</th>
			<th>Dosage</th>
			<th>Prescription</th>
			<th>Amount</th>
		</tr>
		<%
			Medicine m = (Medicine)request.getAttribute("MedicineDetails");
		%>
		<tr>
			<td><%=m.getId()%></td>
			<td><%=m.getDescription()%></td>
			<td><%=m.getPurpose()%></td>
			<td><%=m.getManufacturingCompany()%></td>
			<td><%=m.getDosage()%></td>
			<td><%=m.getPrescription()%></td>
			<td><%=m.getAmount()%></td>
		</tr>
		</table>
</div>	
</body>
</html>