<%@page import="com.cts.bean.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/images13.png");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  
<title>Insert title here</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
<div><br><br><h2 align="center" class="table table-striped">Patient Detail of Selected Id</h2></br></br></div>
	
	<table border='1' align='center' class="table table-striped">
		<tr>
			<th>Patient Id</th>
			<th>First name</th>
			<th>Last Name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Dob</th>
			<th>ContactNO</th> 
			<th>Alt ContactNO</th>
			<th>Email ID</th>
			<th>Address Line 1</th>
			<th>Address Line 2</th>
			<th>City</th>
			<th>State</th>
			<th>Zipcode</th>
			
		</tr>
		<%Patient pt=(Patient)request.getAttribute("PatientData"); %>
		<tr>
			<td><%=pt.getPatientId() %></td>
			<td><%=pt.getFirstName()%></td>
			<td><%= pt.getLastName()%></td>
			<td><%=pt.getAge()%></td>
			<td><%=pt.getGender()%></td>
			<td><%=pt.getDob()%></td>
			<td><%=pt.getContactNo()%></td>
			<td><%=pt.getContactNo()%></td>
			<td><%=pt.getEmailID()%></td>
			<td><%=pt.getAddressLine1()%></td>
			<td><%=pt.getAddressLine2() %>
			</td>
			<td><%=pt.getCity() %></td>
			<td><%=pt.getState()%></td>
			<td><%=pt.getZipcode()%></td>
		</tr>
	</table>
	</div>		
</body>
</html>