<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<style>
.required {
	color: red;
}
.nurse-image {
   background-image: url("images/m10.jpg");
   background-color: #cccccc;
   height: 1200px;
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
	<div><br><br><h2 align="center" class="table table-striped">Patient Registration</h2></br></br></div>
	<form action="InsertPatientData" method="get">
		<div class="container">
			<div class="form-group">
			
				<label for="Patient Id">Patient Id:</label><span class="required">*</span> <input type="text"
					class="form-control" name="Patient_Id"
					placeholder="Enter Patient Id" required="required">
					
			</div>
			<div class="from-group">
				<label for="First Name">First Name:</label><span class="required">*</span>
				<input type="text" class="form-control" name="First_Name"
					placeholder="Enter First Name" required="required">
			</div>
			<div class="form-group">
				<label for="Last Name">Last Name:</label><span class="required">*</span>
				<input type="text" class="form-control" name="Last_Name"
					placeholder="Enter last Name" required="required">
			</div>
			<div class="form-group">
				<label for="Age">Age:</label><span class="required">*</span> <input
					type="number" class="form-control" name="Age"
					placeholder="Enter Age" required="required">
			</div>
			<div class="form-group">
				<label for="Gender">Gender:</label><span class="required">*</span>
				<div class="dropdown">
					<select class="form-control" id="Gender" name="Gender"  required="required">
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
					<label for="Contact Number">Contact Number:</label><span
						class="required">*</span> <input type="number"
						class="form-control" name="Contact_Number"
						placeholder="Enter Contact Number" required="required">
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
					<label for="Address Line 1">Address Line 1:</label><span
						class="required">*</span> <input type="text" class="form-control"
						name="Address_Line1" placeholder="Enter Address" required="required">
				</div>
				<div class="from-group">
					<label for="Address_Line2">Address Line 2:</label><span
						class="required">*</span> <input type="text" class="form-control"
						name="Address_Line2" placeholder="Enter Address" required="required">
				</div>
				<div class="from-group">
					<label for="City">City:</label><span class="required">*</span> <input
						type="text" class="form-control" name="City"
						placeholder="Enter City Name" required="required">
				</div>
				<div class="from-group">
					<label for="State">State:</label><span class="required">*</span> <input
						type="text" class="form-control" name="State"
						placeholder="Enter State Name" required="required">
				</div>
				<div class="from-group">
					<label for="ZipCode">Zipcode:</label><span class="required">*</span> <input
						type="text" class="form-control" name="zipcode"
						placeholder="Enter ZipCode" required="required">
				</div>
				
			</div>
			<div align="center">
				
				<button type="submit" 
					class="btn btn-success">Submit</button>
				
			</div>

		</div>
	</form>

</body>
</html>