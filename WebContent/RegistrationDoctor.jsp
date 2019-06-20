

<%@page import="com.cts.bean.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
	background-image: url("images/m11.jpg");
	background-color: #cccccc;
	height: 1000px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Details</title>
</head>
<body>
<div class=nurse-image>
<jsp:include page="include.jsp" />
<%
			ArrayList<Doctor> doctorList = (ArrayList<Doctor>) request.getAttribute("DoctorList");
           // out.println ("Size "+doctorList.size());
		%>

<div><br><br><h2 align="center" class="table table-striped">Doctor Details</h2></br></br></div>
		<table border="1"  class="table table-striped">
			<tr>
				<th>Doctor_Id</th>
				<th>First_Name</th>
				<th>Last_Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Date_Of_Birth</th>
				<th>Contact_No</th>
				<th>Alternate_Contact_No</th>
				<th>Email_Id</th>
				<th>Address_Line1</th>
				<th>Address_Line2</th>
				<th>City</th>
				<th>State</th>
				<th>ZipCode</th>
				<th>Degree</th>
				<th>Speciality</th>
				<th>Work_Hours</th>
				<th>Hospital_Name</th>
				<th>Change</th>

			</tr>

			<%
				for (int i = 0; i < doctorList.size(); i++) {
					Doctor d = (Doctor) doctorList.get(i);
			%>
			<tr>
				<td><%=d.getDoctor_Id()%></td>
				<td><%=d.getFirst_Name()%></td>
				<td><%=d.getLast_Name()%></td>
				<td><%=d.getAge()%></td>
				<td><%=d.getGender()%></td>
				<td><%=d.getDate_Of_Birth()%></td>
				<td><%=d.getContact_No()%></td>
				<td><%=d.getAlternate_Contact_No()%></td>
				<td><%=d.getEmail_Id()%></td>
				<td><%=d.getAddress_Line1()%></td>
				<td><%=d.getAddress_Line2()%></td>
				<td><%=d.getCity()%></td>
				<td><%=d.getState()%></td>
				<td><%=d.getZip_Code()%></td>
				<td><%=d.getDegree()%></td>
				<td><%=d.getSpeciality()%></td>
				<td><%=d.getWork_Hours()%></td>
				<td><%=d.getHospital_Name()%></td>
				<td><a href='DoctorForm.jsp?Doctor_Id=<%=d.getDoctor_Id()%>'  class="btn btn-warning" role="button">Edit</a>
				 <a href='DeleteDoctorData?Doctor_Id=<%=d.getDoctor_Id()%>'  class="btn btn-primary" role="button">Delete</a></td>
			</tr>
			<%
				}
			%>
		</table>
		</div>
</body>
</html>