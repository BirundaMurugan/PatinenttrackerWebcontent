<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.bean.Clerk"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.nurse-image {
	background-image: url("images/clerk12.jpg");
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
<meta charset="utf-8">
  

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Clerk By Id</title>
</head>
<body>
<div class="nurse-image">
<jsp:include page="include.jsp" /> 
		<div>
		<br>
		<br>
       <h3 align="center" class="table table-striped">Select Clerk Id to view detail</h3>
       </br>
       </br>
       </div>
       <form action="DisplayClerkById">
       <div class="form-group" align="center">
       <label for="clerkid"></label>
       <%
              ArrayList clerkList= (ArrayList)request.getAttribute("clerkList");
       %>
      <div class="col-sm-2" align="center">
       <select class="form-control" name="clerkid">
       <%
              for(int i =0;i<clerkList.size();i++)
              {
                      Clerk c = (Clerk) clerkList.get(i);
       %>
       <option value="<%=c.getClerkId()%>"><%=c.getClerkId()%></option>
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