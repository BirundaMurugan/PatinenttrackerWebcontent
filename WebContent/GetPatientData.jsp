<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/images3.jfif");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<title>Update Patient Data</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
	<%
String patientId = null;
patientId = request.getParameter("Patient_Id");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patienttracker", "root", "root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from patient where PatientId=" + patientId);
	if (rs.next()) {%>
	
	<form action='UpdatePatientData'>
		<table border='1' align='center' class="table table-striped">
			<tr>
				<th>S No</th>
				<th>Table Column</th>
				<th>Column value</th>
			</tr>
			<tr>
				<td><b>1.</b></td>
				<td><b>Patient Id</b></td>
				<td><input type='text' name='Patient_Id'
					value='<%= rs.getString(1)%>' readonly='readonly'></td>
			</tr>
			<tr>
				<td><b>2.</b></td>
				<td><b>First Name</b></td>
				<td><input type='text' name='First_Name' value='<%=rs.getString(2) %>'></td>
			</tr>
			<tr>
				<td><b>3.</b></td>
				<td><b>Last Name</b></td>
				<td><input type='text' name='Last_Name' value='<%=rs.getString(3) %>'></td>
			</tr>
			<tr>
				<td><b>4.</b></td>
				<td><b>Age</b></td>
				<td><input type='text' name='Age' value='<%=rs.getInt(4)%>'></td>
			</tr>
			<tr>
				<td><b>5.</b></td>
				<td><b>Gender</b></td>
				<td><div class="dropdown">
				<div class="col-sm-2" align="center">
					<select class="form-control" id="Gender" name="Gender">
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>
				</div></td>
			</tr>
			<tr>
				<td><b>6.</b></td>
				<td><b>DOB</b></td>
				<td><input type='text' name='DOB' value='<%=rs.getString(6)%>'></td>
			</tr>
			<tr>
				<td><b>7.</b></td>
				<td><b>Contact NO</b></td>
				<td><input type='text' name='Contact_Number' value='<%=rs.getString(7)%>'></td>
			</tr>
			<tr>
				<td><b>8.</b></td>
				<td><b>AltContact NO</b></td>
				<td><input type='text' name='Alt_No' value='<%=rs.getString(8)%>'></td>
			</tr>
			<tr>
				<td><b>9.</b></td>
				<td><b>Email Id</b></td>
				<td><input type='text' name='Email_Id' value='<%=rs.getString(9)%>'></td>
			</tr>
			<tr>
				<td><b>10.</b></td>
				<td><b>Address Line1</b></td>
				<td><input type='text' name='Address_Line1' value='<%=rs.getString(10)%>'></td>
			</tr>
			<tr>
				<td><b>11.</b></td>
				<td><b>Address Line2</b></td>
				<td><input type='text' name='Address_Line2' value='<%=rs.getString(11)%>'></td>
			</tr>
			<tr>
				<td><b>12.</b></td>
				<td><b>City</b></td>
				<td><input type='text' name='City' value='<%=rs.getString(12)%>'></td>
			</tr>
			<tr>
				<td><b>13.</b></td>
				<td><b>State</b></td>
				<td><input type='text' name='State'	value='<%=rs.getString(13)%>'></td>
			</tr>
			<tr>
				<td><b>14.</b></td>
				<td><b>ZipCode</b></td>
				<td><input type='text' name='zipcode' value='<%=rs.getLong(14)%>'></td>
			</tr>
			<tr>
				<td></td>
				<td align='center'><input type='reset' value='Clear Data'></td>
				<td align='center'><input type='submit' value='Update Data'></td>
			</tr>
		</table>
	</form>
	<% } } catch (Exception e) { e.printStackTrace(); } %>
	</div>
</body>
</html>