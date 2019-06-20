<%@page import="com.cts.bean.Patient"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/m8.png");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
.btn.btn-success
{
  left : 100px;
  top : 300px;
  position: absolute;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
	<div>
		<br>
		<br>
       <h3 align="center" class="table table-striped">Select Patient Id to view detail</h3>
       </br>
       </br>
       </div>
       
	<form action="DisplayPatientById">
		<div class="form-group" align="center">

			<label for="Patient_Id"><b></b></label>
			<%
				ArrayList patients = (ArrayList) request.getAttribute("PatientData");
			%>
			<div class="col-sm-2" align="center">
			<select class='form-control' name='Patient_Id'>
				<%
					for (int i = 0; i < patients.size(); i++) {
						Patient pt = (Patient) patients.get(i);
				%>
				<option value="<%=pt.getPatientId()%>"><%=pt.getPatientId()%></a></option>
				<%
					}
				%>
			</select>
			</div>
			
			<div align="left">
				
				<button type="submit" class="btn btn-success">Submit</button>
		</div>
			
			
		</div>
	</form>
</div>
</body>
</html>