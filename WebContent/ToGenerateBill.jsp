<%@page import="com.cts.bean.Prescription"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prescription Page</title>
 	<style>
.hero-image {
	background-image: url("images/BillBackground.jpg");
	background-color: #cccccc;
	height: 1000px;
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
			<h2 align="center">Generate Your Bill</h1>
		</div>
	</div>
	<form action="InsertingBill">
			<div class="form-group" align='center'>
				<div class="col-xs-3" align='center'>
							<b class="text-primary">Select Prescription ID:</b><br> <select
					class="form-control" name="presid">
					<%
						ArrayList<Prescription> prescriptionList = (ArrayList<Prescription>) request
								.getAttribute("prescriptionList");
						for (Prescription presObj : prescriptionList) {
							int fid = presObj.getRequestId();
					%>
					<option value="<%=fid%>"><%=fid%></option>
					<%
						}
					%>
					
				</select><br>
						<button type='submit' class="btn btn-info" name="Button1" value="Edit Details" >Edit Details</button><br></br>
						<button type='submit' class="btn btn-info" name="Button1" value="Generate Bill" >Generate Bill</button>
		</div>
		</div>
	</form>
	</div>
</body>
</html>