<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.bean.Clerk"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
	background-image: url("images/m7.jpg");
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
<title>Clerk Registration</title>
</head>
<body>
	<div class=nurse-image>
	<jsp:include page="include.jsp" /> 
		<%
			ArrayList clerkList = (ArrayList) request.getAttribute("ClerkList");
		%>

<div><br><br><h2 align="center" class="table table-striped">Clerk Details</h2></br></br></div>
		<table border="1" class="table table-striped">
			<tr>
				<th>clerkId</th>
				<th>First_Name</th>
				<th>Last_Name</th>
				<th>Age</th>
				<th>DOB</th>
				<th>Contact_No</th>
				<th>Alternate_Contact_No</th>
				<th>Email_id</th>
				<th>Address_Line1</th>
				<th>Address_Line2</th>
				<th>City</th>
				<th>State</th>
				<th>ZipCode</th>
				<th>Change</th>

			</tr>

			<%
				for (int i = 0; i < clerkList.size(); i++) {
					Clerk c = (Clerk) clerkList.get(i);
			%>
			<tr>
				<td><b><%=c.getClerkId()%></b></td>
				<td><%=c.getFirst_Name()%></td>
				<td><%=c.getLast_Name()%></td>
				<td><%=c.getAge()%></td>
				<td><%=c.getDOB()%></td>
				<td><%=c.getContact_No()%></td>
				<td><%=c.getAlt_Contact_No()%></td>
				<td><%=c.getEmail_id()%></td>
				<td><%=c.getAddress_Line1()%></td>
				<td><%=c.getAddress_line2()%></td>
				<td><%=c.getCity()%></td>
				<td><%=c.getState()%></td>
				<td><%=c.getZipCode()%></td>
				<td><a href='ClerkForm.jsp?clerkId=<%=c.getClerkId()%>' class="btn btn-warning" role="button">Edit</a>
				<a href='DeleteClerkData?clerkId=<%=c.getClerkId()%>' class="btn btn-primary" role="button" >Delete</a>
			</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>