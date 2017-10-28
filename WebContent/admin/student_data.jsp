<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STUDENT LIST</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico"/>
 <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
   <style type="text/css">
  span.a{
  margin-left:10%;
  color:green;
  font-weight:bold;
  font-sikariyeze:18px;
  }</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PPI PORTAL</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin_home.jsp">Home</a></li>
    </ul>
      
      <ul class="nav navbar-nav navbar-right">
     <li><a href="#"><%= session.getAttribute("user").toString().toUpperCase()%></a></li>
      <li><a href="../logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
    </ul>
    
  </div>
</nav>
      
      
         <!-- Sidebar -->
             
        <div id="sidebar_collapse" style="background-color: lightblue;margin-top: 100px"  class="col-sm-3 col-lg-2 sidebar collapse in">
            <div style="margin-left: 0px">
                <h3 class="text-left" style="color: #555D50;">Dashboard</h3>
            </div>

            <ul class="nav menu" style="margin-top: 10px">
            <li id="upload"><a href="Upload.jsp"><span class="glyphicon glyphicon-book"></span> Upload Student List</a></li>
               <li id="upload"><a href="UploadExpert.jsp"><span class="glyphicon glyphicon-book"></span> Upload Expert List</a></li>
             <li id="addExpert"><a href="AddRoles.jsp"><span class="glyphicon glyphicon-book"></span> Add Expert/Student</a></li>
                 <li id="student"><a href="student_data.jsp"><span class="glyphicon glyphicon-book"></span> View Student Data</a></li>          
              <li id="expert"><a href="expert_data.jsp"><span class="glyphicon glyphicon-book"></span>View Expert Data</a></li>
              <li id="expert"><a href="Assign_ppi.jsp"><span class="glyphicon glyphicon-book"></span>Assign PPI</a></li>
          <li id="expert"><a href="assigned_students.jsp"><span class="glyphicon glyphicon-book"></span>View Assigned Students</a></li>
      <li id="expert"><a href="Analysis.jsp"><span class="glyphicon glyphicon-book"></span>Analysis of Students</a></li>
            </ul>
        </div>
        <!-- Sidebar ends --> 

<jsp:useBean id="StudDao" class="com.ppi.impl.RecordsIMPL"></jsp:useBean>
	<%
		request.setAttribute("Students", StudDao.getStudents());
	%>
	
	 <div class="col-sm-2 col-lg-8">
	
<!-- 	<div class="container content"> -->
<!-- 	<div class="row"> -->
<!-- 	<div class="col-md-12 transbox"> -->
	
	<table class="table">
		 <thead>
                    <tr class="info">
                        <th> Student Id</th>
                        <th> Student Name</th>
                        <th> PPI Assigned </th>
                    </tr>
            </thead>
            <tbody>
	
		<c:forEach items="${Students}" var="student">
			<tr class="info">
				<td>${student.roll}</td>
				<td>${student.name}</td>
				<td><c:if test="${student.assign==1}"> <span class='a'><%out.print("&#10004"); %></span></c:if>
					<c:if test="${student.assign==0}"></c:if>
				</td>
			</tr>
		</c:forEach>
		  </tbody>
	</table>
	</div>
<!-- 	</div> -->
	
<!-- 	</div> -->
	

</body>
</html>