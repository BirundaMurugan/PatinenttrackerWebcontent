<%@page import="com.cts.bean.Medicine"%>
<%@page import="com.cts.bean.Doctor"%>
<%@page import="com.cts.bean.Patient"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add More Medicine</title>
<style>
.nurse-image {
	background-image: url("images/BackgroundImage.jpg");
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
	<div class="nurse-image">
	<jsp:include page="include.jsp" /> 
		<div class="container">
			<div class="page-header">
				<h2 align="center">Create your Prescription</h2>
			</div>
		</div>
		<div class="alert alert-success">
			<strong>Success!</strong> Your prescription Submitted !!!! To Add More Medicine Enter Below
		</div>
		<form action="InsertingPrescriptionDetails">
			<br>
			<div class="form-group" align='center'>
				<div class="col-xs-2" align='center'>
					<b class="text-primary">Patient ID:</b><br> <input
						type="number" class="form-control" id="quantity" name="pid"
						value="<%=request.getAttribute("p_id")%>" readonly> <b
						class="text-primary">Doctor ID:</b> <br> <input type="number"
						class="form-control" id="quantity" name="did"
						value="<%=request.getAttribute("d_id")%>" readonly> <b
						class="text-primary">Date:</b> <br> <input type="text"
						class="form-control" id="quantity" name="date"
						value="<%=request.getAttribute("date_")%>" readonly> <b
						class="text-primary">Select Medicine ID:</b> <br> <input
						type="number" class="form-control" id="quantity" name="mid"
						name="mid" required> <b class="text-primary">Quantity:</b>
					<br> <input type="number" class="form-control" id="quantity"
						name="quantity" required> <br> <br>
					<button type="submit" class="btn btn-primary" name="Button1" value="Add Medicine">Add More Medicine Prescription</button>
					</br> </br>
					<button type="submit" class="btn btn-primary" name="Button1" value="Create Bill">Create Bill</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>