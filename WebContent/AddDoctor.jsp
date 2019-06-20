<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.required{
color:red;
}
.nurse-image {
   background-image: url("images/m7.jpg");
   background-color: #cccccc;
   height: 1600px;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
   position: relative;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



</head>
<body>

<div class="nurse-image">
<jsp:include page="include.jsp" /> 

<div class="container" >

<div><br><br><h2 align="center" class="table table-striped">Doctor Registration</h2></br></br></div>
  <form  action="InsertDoctorData" method="post">


    <div class="form-group">
      <label  for="Doctor_Id">Doctor Id:</label><span class="required">*</span>
        <input type="text" class="form-control" id="Doctor_Id"  name="Doctor_Id"  required="required">
     
    </div>
    <div class="form-group">
      <label for="First_Name">First Name:</label><span class="required">*</span>
              
        <input type="text" class="form-control" id="First_Name"  name="First_Name" required="required">
    
    </div>
    <div class="form-group">
      <label for="Last_Name">Last Name:</label><span class="required">*</span>
              
        <input type="text" class="form-control" id="Last_Name"  name="Last_Name" required="required">
      
    </div>   
    <div class="form-group">
      <label for="Age">Age:</label><span class="required">*</span>
            
        <input type="text" class="form-control" id="Age"  name="Age" required="required">
     
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
      <label for="Date_Of_Birth">Date Of Birth:</label>
                
        <input type="text" class="form-control" id="Date_Of_Birth"  name="Date_Of_Birth" required="required">
      
    </div>
    <div class="form-group">
      <label  for="Contact_No">Contact No:</label><span class="required">*</span>
               
        <input type="text" class="form-control" id="Contact_No"  name="Contact_No" required="required">
      
    </div>
    <div class="form-group">
      <label  for="Alternate_Contact_No">Alternate Contact No:</label>
                
        <input type="text" class="form-control" id="Alternate_Contact_No"  name="Alternate_Contact_No" required="required">
     
    </div>
    <div class="form-group">
      <label for="Email_Id">Email Id:</label><span class="required">*</span>
             
        <input type="text" class="form-control" id="Email_Id"  name="Email_Id" required="required">
     
    </div>
    <div class="form-group">
      <label for="Address_Line1">Address_Line1:</label><span class="required">*</span>
               
        <input type="text" class="form-control" id="Address_Line1"  name="Address_Line1" required="required">
      
    </div>
    <div class="form-group">
      <label  for="Address_Line2">Address Line2:</label>
               
        <input type="text" class="form-control" id="Address_Line2"  name="Address_Line2" required="required">
      
    </div>
   <div class="form-group">
      <label for="City">City:</label><span class="required">*</span>
               
        <input type="text" class="form-control" id="City"  name="City" required="required">
    
    </div>
    <div class="form-group">
      <label  for="State">State:</label><span class="required">*</span>
               
        <input type="text" class="form-control" id="State"  name="State" required="required">
      
    </div>
    <div class="form-group">
      <label  for="Zip_Code">Zip Code:</label><span class="required">*</span>
             
        <input type="text" class="form-control" id="Zip_Code"  name="Zip_Code" required="required">
     
    </div>
    <div class="form-group">
      <label for="Degree">Degree*:</label><span class="required">*</span>
      
        <input type="text" class="form-control" id="Degree"  name="Degree" required="required">
     
    </div>
    <div class="form-group">
      <label for="Speciality">Speciality:</label><span class="required">*</span>
              
        <input type="text" class="form-control" id="Speciality"  name="Speciality" required="required">
      
    </div>
     <div class="form-group">
				<label for="Work_Hours">Work Hours:</label><span class="required">*</span>
				<div class="dropdown">
					<select class="form-control" name="Work_Hours">
    <option value="09:00a.m to 05:00p.m">09:00a.m to 05:00p.m</option>
    <option value="05:00p.m to 01:00a.m">05:00p.m to 01:00a.m</option>
    <option value="01:00a.m to 09:00a.m">01:00a.m to 09:00a.m</option>
    
  </select>
 </div>
	

         <div class="form-group">
      <label  for="Hospital_Name">Hospital/Clinic Name:</label><span class="required">*</span>
             
        <input type="text" class="form-control" id="Hospital_Name"  name="Hospital_Name">
     
    </div>
     <div class="form-group" align="center"> 
        <div class="col-sm-10">
       

         <Input type="submit" class="btn btn-warning" value="Submit"/>

      </div>
    </div>
 </form>
</div>

</body>
</html>