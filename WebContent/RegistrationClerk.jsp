<!DOCTYPE html>
<html lang="en">

<head>
<style>
.required {
	color: red;
}
.nurse-image {
	background-image: url("images/m8.png");
	background-color: #cccccc;
	height: 1350px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
<title>Clerk Registration</title>
<meta charset="utf-8">

</head>
<body>
	<div class="nurse-image">
		<jsp:include page="include.jsp" />
		<div><br><br><h2 align="center" class="table table-striped">Clerk Registration</h2></br></br></div>
		<div class="container">

			<form  action="InsertClerkData">
				<div class="form-group">
					<label for="clerkId">clerkId:</label> <span class="required">*</span><input type="text"
						class="form-control" id="clerkId" name="clerkId" required="required">

				</div>

				
					<div class="form-group">
						<label for="First_Name">First_Name:</label> <span class="required">*</span><input type="text"
							class="form-control" id="First_Name" name="First_Name" required="required">

					</div>
					<div class="form-group">
						<label for="Last_Name">Last_Name:</label><span class="required">*</span> <input type="text"
							class="form-control" id="Last_Name" name="Last_Name" required="required">

					</div>
					<div class="form-group">
						<label for="Age">Age:</label><span class="required">*</span> <input type="text"
							class="form-control" id="Age" name="Age" required="required">

					</div>
					<div class="form-group">
						<label for="Gender">Gender:</label><span class="required">*</span>
						<div class="dropdown">
							<select class="form-control" id="Gender" name="Gender" required="required">
								<option>Male</option>
								<option>Female</option>
							</select>

						</div>

						<div class="form-group">
							<label for="DOB">DOB:</label> <input type="text"
								class="form-control" id="DOB" name="DOB" required="required">

						</div>
						<div class="form-group">
							<label for="Contact_NO">Contact_No:</label><span class="required">*</span> <input type="text"
								class="form-control" id="Contact_No" name="Contact_No" required="required">

						</div>
						<div class="form-group">
							<label for="ALt_Contact_NO">Alt_Contact_No:</label> <input
								type="text" class="form-control" id="Alt_Contact_No"
								name="Alt_Contact_No" required="required">

						</div>
						<div class="form-group">
							<label for="Email_id">Email_id:</label><span class="required">*</span> <input type="text"
								class="form-control" id="Email_id" name="Email_id" required="required">

						</div>
						<div class="form-group">
							<label for="Address_Line1">Address_Line1:</label><span class="required">*</span> <input
								type="text" class="form-control" id="Address_Line1"
								name="Address_Line1" required="required">

						</div>
						<div class="form-group">
							<label for="Address_Line2">Address_Line2:</label> <span class="required">*</span><input
								type="text" class="form-control" id="Address_Line2"
								name="Address_Line2" required="required">

						</div>
						<div class="form-group">
							<label for="City">City:</label> <span class="required">*</span><input type="text"
								class="form-control" id="City" name="City" required="required">

						</div>

						<div class="form-group">
							<label for="State">State:</label> <span class="required">*</span><input type="text"
								class="form-control" id="State" name="State" required="required">

						</div>
						<div class="form-group">
							<label for="Zip_Code">ZipCode:</label> <span class="required">*</span><input type="text"
								class="form-control" id="ZipCode" name="ZipCode" required="required">

						</div>
						<div class="form-group" align="center">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" formaction="InsertClerkData"
									class="btn btn-warning">Submit</button>
							</div>
						</div>
				</form>
		</div>
	</div>
</body>
</html>

