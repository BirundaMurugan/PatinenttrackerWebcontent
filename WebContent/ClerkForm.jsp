<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style >
.nurse-image {
	background-image: url("images/hero-hospital-unit-clerk.jpg");
	background-color: #cccccc;
	height: 1000px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	
}


</style>
<meta charset="utf-8">
  

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updated Details</title>
</head>
<body>
	<div class="nurse-image">
	<jsp:include page="include.jsp" /> 
	<h1 align="center" class="table table-striped">Update Details</h1>
		<%
			int id = 0;
			id = Integer.parseInt(request.getParameter("clerkId"));
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patienttracker", "root",
						"root");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from clerk where clerkId=" + id);
				if (rs.next()) {
		%>
		<form action='UpdateClerkData'>
			<table border='1' align='center' bgcolor="#00FF00" class="table table-striped">
				<tr>
					<th>S No</th>
					<th>Table Column</th>
					<th>Column value</th>
				</tr>
				<tr>
					<td>1.</td>
					<td>clerkId</td>
					<td><input type='text' name='clerkId'
						value='<%=rs.getInt(1)%>' readonly='readonly'></td>
				</tr>
				<tr>
					<td>2.</td>
					<td>First_Name</td>
					<td><input type='text' name='First_Name'
						value=' <%=rs.getString(2)%>'></td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Last_Name</td>
					<td><input type='text' name='Last_Name'
						value='<%=rs.getString(3)%>'></td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Age</td>
					<td><input type='text' name='Age' value='<%=rs.getInt(4)%>'>
					</td>
				</tr>
				<tr>
					<td>5.</td>
					<td>Gender</td>
					<td>
					<div class="col-sm-2" align="center">
						<select name="Gender" style="width: 150px">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
					</select></td>
					</div>
				</tr>
				<tr>
					<td>6.</td>
					<td>DOB</td>
					<td><input type='text' name='DOB' value='<%=rs.getString(6)%>'>
					</td>
				</tr>
				<tr>
					<td>7.</td>
					<td>Contact_No</td>
					<td><input type='text' name='Contact_No'
						value='<%=rs.getLong(7)%>'></td>
				</tr>
				<tr>
					<td>8.</td>
					<td>Alt_Contact_No</td>
					<td><input type='text' name='Alt_Contact_No'
						value='<%=rs.getLong(8)%>'></td>
				</tr>
				<tr>
					<td>9.</td>
					<td>Email_id</td>
					<td><input type='text' name='Email_id'
						value='<%=rs.getString(9)%>'></td>
				</tr>
				<tr>
					<td>10.</td>
					<td>Address_Line1</td>
					<td><input type='text' name='Address_Line1'
						value='<%=rs.getString(10)%>'></td>
				</tr>
				<tr>
					<td>11.</td>
					<td>Address_Line2</td>
					<td><input type='text' name='Address_Line2'
						value='<%=rs.getString(11)%>'></td>
				</tr>
				<tr>
					<td>12.</td>
					<td>City</td>
					<td><input type='text' name='City'
						value='<%=rs.getString(12)%>'></td>
				</tr>
				<tr>
					<td>13.</td>
					<td>State</td>
					<td><input type='text' name='State'
						value='<%=rs.getString(13)%>'></td>
				</tr>
				<tr>
					<td>14.</td>
					<td>ZipCode</td>
					<td><input type='text' name='ZipCode'
						value='<%=rs.getInt(14)%>'></td>
				</tr>

				<tr>
					<td>Action</td>
					<td align='center'><input type='reset' value='Clear Data'></td>
					<td align='center'><input type='submit' value='Update Data'></td>
				</tr>
			</table>
		</form>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

	</div>
</body>
</html>