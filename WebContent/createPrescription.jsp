<%@page import="com.cts.bean.Medicine"%>
<%@page import="com.cts.bean.Doctor"%>
<%@page import="com.cts.bean.Patient"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prescription Page</title>

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
		<form action="InsertingPrescriptionDetails">
			<br>
			<div class="form-group" align='center'>
				<div class="col-xs-3" align='center'>
					<b class="text-primary">Select Patient ID:</b><br> <select
						class="form-control"  name="pid" >
						<%
							ArrayList<Patient> patientList = (ArrayList<Patient>) request.getAttribute("patientList");
							for (Patient patientObj : patientList) {
								 String fname=null;
								 if (patientObj != null)
								  fname = patientObj.getPatientId(); 
						%>
						<option value="<%=fname%>"><%=fname%></option>
						<%
							}
						%>
					</select> <b class="text-primary">Select Doctor ID:</b><br> <select
						class="form-control"  name="did" >
						<%
							ArrayList<Doctor> DoctorList = (ArrayList<Doctor>) request.getAttribute("doctorList");
							for (Doctor doctorObj : DoctorList) {
								String fname = ""+doctorObj.getDoctor_Id();
						%>
						<option value="<%=fname%>"><%=fname%></option>
						<%
							}
						%>
					</select> <b class="text-primary">Select Request Date:</b> <br> <input
						type="date" class="form-control" name="date" > <b
						class="text-primary">Select Medicine ID:</b><br> <select
						class="form-control" id="mid" name="mid" >
						<%
							ArrayList<Medicine> MedicineList = (ArrayList<Medicine>) request.getAttribute("medicineList");
							for (Medicine medicineListObj : MedicineList) {
								int id = medicineListObj.getId();
						%>
						<option value="<%=id%>"><%=id%></option>
						<%
							}
						%>
					</select><b class="text-primary">Quantity:</b><br> <input type="number"
						class="form-control" name="quantity" > <br> <br>
					<button type="submit" class="btn btn-info" name="Button1" value="Add Medicine">Add More Medicine</button>
					</br> </br>
					<button type="submit" class="btn btn-primary" name="Button1" value="Create Bill">Create Bill</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>