<%@page import="com.cts.bean.Medicine"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.nurse-image {
   background-image: url("images/m7.jfif");
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

<title>Select Medicine By Id</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
	   <div>
		<br>
		<br>
       <h3 align="center" class="table table-striped">Select Medicine Id to view detail</h3>
       </br>
       </br>
       </div>
	<form action="DisplayMedicineById">
	<div class="form-group" align="center">
	<label for="id"></label>
	<%
		ArrayList medicine= (ArrayList)request.getAttribute("MedicineDetails");
	%>
	<div class="col-sm-2" align="center">
	<select class="form-control" name="id">
	<%
		for(int i =0;i<medicine.size();i++)
		{
			Medicine m = (Medicine) medicine.get(i);
	%>
	<option value="<%= m.getId()%>"><%=m.getId() %></option>
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