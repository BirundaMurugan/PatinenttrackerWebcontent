<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.required {
	color: red;
}
.nurse-image {
   background-image: url("images/m12.jpg");
   background-color: #cccccc;
   height: 1000px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" />  
	<div><br><br><h2 align="center" class="table table-striped">Admin Registration</h2></br></br></div>
	<form action="InsertAdminData" method="get">
		<div class="container">
			<div class="form-group">
				<label for="Admin Id">User Id:</label> <input type="text"
					class="form-control" name="Admin_Id" placeholder="Enter Admin Id" required="required">
			</div>
			<div class="from-group">
				<label for="First Name">First Name:</label><span class="required">*</span>
				<input type="text" class="form-control" name="First_Name"
					placeholder="Enter First Name" required="required">
			</div>
			<div class="form-group">
				<label for="Last Name">Last Name:</label><span class="required">*</span>
				<input type="text" class="form-control" name="Last_name"
					placeholder="Enter last Name" required="required">
			</div>
			<div class="form-group">
				<label for="Age">Age:</label><span class="required">*</span> <input
					type="number" class="form-control" name="Age"
					placeholder="Enter Age" required="required">
			</div>
			<div class="form-group">
				<label for="Gender">Gender:</label><span class="required">*</span>
				<div class="dropdown" required="required">

					<select class="form-control" id="Gender" name="Gender" required="required">
						<option>Male</option>
						<option>Female</option>
					</select>

				</div>
				<div class="from-group">
					<label for="DOB">DOB:</label><span class="required">*</span> <input
						type="text" class="form-control" name="DOB"
						placeholder="Enter Date Of Birth" required="required">
				</div>
				<div class="from-group">
					<label for="Contact Number">Contact No:</label><span
						class="required">*</span> <input type="number"
						class="form-control" name="Contact_Number"
						placeholder="Enter Contact Number">
				</div>
				<div class="from-group">
					<label for="Alt No">AlterNate Contact No:</label> <input
						type="number" class="form-control" name="Alt_No"
						placeholder="Enter Alternate Number" required="required">
				</div>
				<div class="from-group">
					<label for="Email Id">Email Id:</label><span class="required">*</span>
					<input type="text" class="form-control" name="Email_Id"
						placeholder="Enter Email Id" required="required">
				</div>
				<div class="from-group">
					<label for="Password">Password:</label><span class="required">*</span>
					<input type="password" class="form-control" name="Password"
						placeholder="Enter Password" required="required">
				</div>
				
			</div>
			<div align="center">
				<button type="submit" formaction="InsertAdminData" class="btn btn-success">Submit</button>
			</div>

		</div>
	</form>
	</div>
</body>
</html>