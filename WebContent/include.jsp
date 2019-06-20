<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.menu123
{
  height:100px;

}

</style>
<meta charset="ISO-8859-1">
<title>Patient Tracker and Analysis</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
 
<body>
<div class="menu123">
<form action="Menu1">

    <div class="container">
  <h3 align="center"><b>Patient Management</b></h3>
  <div align="right">
<button type="Submit" class="btn btn-warning btn-lg" align="right"><a href="index.html">Log Out</a></button>
</div> 
  <ul class="nav nav-tabs">
    <li class="active"><a href="index.html">Home</a></li>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="#">Clerk<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="RegistrationClerk.jsp">Register</a></li>
        
        <li><a href="SelectClerkById">Display By id</a></li> 
        <li><a href="ViewClerkData">Display All</a></li>  
      </ul>
   <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="#">Doctor<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="AddDoctor.jsp">Register</a></li>
        <li><a href="SelectDoctorById">Display By id</a></li> 
        <li><a href="ViewDoctorData">Display All</a></li>  
                              
      </ul>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" id="PatientMenu" aria-expanded="true" href="#">Patient<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="PatientRegistration.jsp">Register</a></li>
        <li><a href="SelectPatientDetail">Display By id</a></li> 
        <li><a href="ViewPatientData">Display All</a></li>  
        <li><a href="ReturnPatientListToJSP">Create Prescription and Bill</a></li>                  
      </ul>
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="#">Medicine<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="AddMedicine.jsp">Register</a></li>
         <li><a href="SelectMedicineById">Display By id</a></li> 
        <li><a href="DisplayMedicineDetails">Display All</a></li>  
                              
      </ul>
  </ul>
  <p></p>
  <p></p>
</div>
</form>

    <script>
    
    document.getElementById("PatientMenu").setAttribute("aria-expanded", "true");
    
    </script>
    </div>
</body>
</html> 