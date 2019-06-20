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
   background-image: url("images/m5.jpg");
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
<div><br><br><h2 align="center" class="table table-striped">Medicine Registration</h2></br></br></div>
<form action="InsertMedicine" method="post">
       <div class="container">
       
    
    <div class="form-group">
    <label for="desc"><b>Medicine Description</b></label>
        <span class="required">*</span>
    <input type="desc" class="form-control" name="desc" id="desc" placeholder="Enter Medicine Description" required="required">

    </div>
    
     <div class="form-group">
    <label for="purpose"><b>Purpose</b></label>
     <span class="required">*</span>
   <input type="purpose" class="form-control" name="purpose" id="purpose" placeholder="Enter Purpose" required="required">
  
    </div>
    
     <div class="form-group">
    <label for="mancomp"><b>Manufacturing Company</b></label>
      <span class="required">*</span>
   <input type="mancomp" class="form-control" name="mancomp" id="mancomp" placeholder="Enter Manufacturing Company" required="required">

    </div>
       
       <div class="form-group">
       <label for="dosage"><b>Dosage</b></label>
       <span class="required">*</span>
    <input type="dosage" class="form-control" name="dosage" id="dosage" placeholder="Enter Dosage" required="required">
    
    </div>
    
     <div class="form-group">
    <label for="presc"><b>Prescribed For</b></label>
      <span class="required">*</span>
      <div class="dropdown">
      <select class="form-control" name="presc" id="presc" required="required">
      <option>A</option>
      <option>C</option>
      </select>
      </div>

  
    </div>
    
     <div class="form-group">
    <label for="amount"><b>Amount</b></label>
        <span class="required">*</span>
    <input type="amount" class="form-control" name="amount" id="amount" placeholder="Enter Cost" required="required">   

     </div>
    </div>
    
    <div class="buttons" align="center">
    <button type="submit" formaction="InsertMedicine" class="btn btn-warning" >Submit</button>
    </div>
    </form>
  </div>
</body>
</html>