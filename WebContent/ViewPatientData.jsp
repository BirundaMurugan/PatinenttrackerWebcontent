<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cts.bean.Patient"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
<style>
.nurse-image {
   background-image: url("images/innovation1.jpg");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
</style>

<body>
 
    <div class="nurse-image">
<jsp:include page="include.jsp" />    
	<%
		ArrayList patients = (ArrayList) request.getAttribute("PatientData");%>
	
	
	<div><br><br><h2 align="center" class="table table-striped">Patient Details</h2></br></br></div>
	
	<table border='1' align='center' class="table table-striped" >
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
			<th>Changes</th>
		</tr>
		
		<%for (int i = 0; i < patients.size(); i++) { 
			Patient pt = (Patient) patients.get(i);
			%>

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
			<td> <%=pt.getAddressLine2() %>
			</td>
			<td><%=pt.getCity() %></td>
			<td><%=pt.getState()%></td>
			<td><%=pt.getZipcode()%></td>
			<td>
			<a href='GetPatientData.jsp?Patient_Id=<%=pt.getPatientId()%>' class="btn btn-warning" role="button">Edit</a> <a href='DeletePatientData?Patient_Id=<%=pt.getPatientId()%>' class="btn btn-primary" role="button" >Delete</a>
			</td>
		</tr>
		<%} %>
	</table>
	

	</div>
	
</body>
</html>