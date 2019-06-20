<%@page import="java.io.PrintWriter"%>
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
	background-image: url("images/m6.jpg");
	background-color: #cccccc;
	height: 1000px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Form</title>
</head>
<body>
	<div class="nurse-image">
	<jsp:include page="include.jsp" /> 
		<%
			//int id = 0;
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patienttracker", "root", "root");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from medicine where Id=" + id);
				if (rs.next()) {
		%>
		<form action='UpdateMedicine'>
			<h1 align="center">Update detail of Specified Id</h1>
			<table border='1' align='center' class="table table-striped">
				<tr>
					<th>S No</th>
					<th>Table Column</th>
					<th>Column value</th>
				</tr>
				<tr>
					<td>1.</td>
					<td>Id</td>
					<td><input type='text' name='id' value='<%=rs.getInt(1)%>'
						readonly='readonly'></td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Description</td>
					<td><input type='text' name='desc'
						value=' <%=rs.getString(2)%>'></td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Purpose</td>
					<td><input type='text' name='purpose'
						value='<%=rs.getString(3)%>'></td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Manufacturing Company</td>
					<td><input type='text' name='mancomp'
						value='<%=rs.getString(4)%>'></td>
				</tr>
				<tr>
					<td>5.</td>
					<td>Dosage</td>
					<td><input type='text' name='dosage' value='<%=rs.getInt(5)%>'>
					</td>
				</tr>
				<tr>
					<td>6.</td>
					<td>Prescription</td>
					<td><select class="form-control" name="presc" id="presc">
							<option>A</option>
							<option>C</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>7.</td>
					<td>Amount</td>
					<td><input type='text' name='amount' value='<%=rs.getInt(7)%>'>
					</td>
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