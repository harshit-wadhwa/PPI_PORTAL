<%@ page import="java.sql.* "%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="com.ppi.impl.RecordsIMPL" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico"/>
 <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
    </head>
    <body background="images/e.jpg">
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PPI PORTAL</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="student.jsp">Home</a></li>
      
    </ul>
      
      <ul class="nav navbar-nav navbar-right">
     <li><a href="#"><%=session.getAttribute("user").toString().toUpperCase()%></a></li>
      <li><a href="../logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
    </ul>
    
  </div>
</nav>
       
      
       <div id="sidebar_collapse" style="background-color: lightblue;margin-top: 100px"  class="col-sm-3 col-lg-2 sidebar collapse in">
            <div style="margin-left: 0px">
                <h3 class="text-left" style="color: #555D50;">Dashboard</h3>
            </div>

            <ul class="nav menu" style="margin-top: 10px">
             
                <li id="score"><a href="../PDFGenerator"><span class="glyphicon glyphicon-book"></span> Your Score</a></li>
                <li id="cv"><a href="../DownloadCV"><span class="glyphicon glyphicon-file"></span> Download CV Format</a></li>
                <%if(RecordsIMPL.getAssess(session.getAttribute("user").toString())==1){ %>
                
                <li id="pdf"><a href="../PDF_SelfSheet"><span class="glyphicon glyphicon-comment"></span> Self-Assessment PDF</a></li>
                <%} else{
                %>
                <li id="self_assess"><a href="selfAssess.jsp"><span class="glyphicon glyphicon-comment"></span> Self-Assessment Form</a></li>
                <%} %>
                <li id="feedback"><a href="feedback.jsp"><span class="glyphicon glyphicon-comment"></span> Feedback Form</a></li>
             
            </ul>
        </div>
        <!-- Sidebar ends -->
        
        
        <div class="row">
            <div class="col-sm-4 col-lg-8">     
             <form class="form-horizontal" role="form" action="feedback.jsp" method="post">
                <table class="table" style="margin-left: 15px; width:110%">
                            <thead>
                                <tr class="info">
                                    <th>S.No.<th>
                                    <th>Questions<th>
                                     <th>Yes<th>
                                    <th>No<th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                <tr class="success">
                                    <td>1<td>
                                    <td>Do you think the PPI activity by external expert was helpful for upcoming placement?<td>
                                    <td><input type="radio"  name="r1" value="1"> Yes<br><td> 
                                    <td><input type="radio"  name="r1" value="0"> No<br><td>
                                </tr>
                                <tr class="success">
                                    <td>2<td>
                                    <td>Did this PPI gives you access to clear placement in future?<td>
                                  <td><input type="radio" name="r2" value="1"> Yes<br><td> 
                                    <td><input type="radio" name="r2" value="0"> No<br><td>
                                </tr>
                                <tr class="success">
                                    <td>3<td>
                                    <td>Have you got clarity about the interview process?<td>
                                   <td><input type="radio" name="r3" value="1"> Yes<br><td> 
                                    <td><input type="radio" name="r3" value="0"> No<br><td>
                                </tr>
                                <tr class="success">
                                    <td>4<td>
                                    <td>Would you like the PPI to be a continued process in the upcoming semester through external experts?<td>
                                   <td><input type="radio" name="r4" value="1"> Yes<br><td> 
                                    <td><input type="radio" name="r4" value="0"> No<br><td>
                                </tr>
                                <tr class="success">
                                    <td>5<td>
                                    <td> Do you think the PPI Feedback would be helpful for you to carry out the placement?<td>
                                   <td><input type="radio" name="r5" value="1"> Yes<br><td> 
                                    <td><input type="radio" name="r5" value="0"> No<br><td>
                                </tr>
                                <tr class="success">
                                    <td>6<td>
                                    <td> What was the standard of the interviewer?<td>
                                   <td><input type="radio" name="r6" value="1">Good<br><td> 
                                    <td><input type="radio" name="r6" value="0"> Bad<br><td>
                                </tr>
                                <tr class="success">
                                    <td>7<td>
                                    <td>Overall rating of PPI<td>
                                   <td><input type="radio" name="r7" value="1">Good<br><td> 
                                    <td><input type="radio" name="r7" value="0">Bad<br><td>
                                </tr>
    
                      
                               
                            </tbody>
                        </table>
         <div style="margin-left: 100px"> 
                                  <input type="submit" name="submit"  value="submit">
                 </div>
           
                         </form>                    
                    </div>
        </div>
    </body>
</html>
<%
String r1="",r2="",r3="",r4="",r5="",r6="",r7="";
if(request.getParameter("submit")!=null)
   {
       if(request.getParameter("submit").equals("submit"))
       {
 r1 = request.getParameter("r1");
 r2 = request.getParameter("r2");
 r3 = request.getParameter("r3");
 r4 = request.getParameter("r4");
 r5 = request.getParameter("r5");
 r6 = request.getParameter("r6");
 r7 = request.getParameter("r7");
 
 
 
 
int r11=0,r12=0,r13=0,r14=0,r15=0,r16=0,r17=0;

r11=Integer.parseInt(r1);

r12=Integer.parseInt(r2);
r13=Integer.parseInt(r3);
r14=Integer.parseInt(r4);
r15=Integer.parseInt(r5);
r16=Integer.parseInt(r6);
r17=Integer.parseInt(r7);

 try{
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver class loaded");
       }
       catch(Exception e)
       {
          System.out.println(e); 
       }
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi","root","pass");
           System.out.println("Connection object created");
       
         
       String id= session.getAttribute( "Name" ).toString();
                PreparedStatement ps;
               ps=con.prepareStatement("insert into feedback values(?,?,?,?,?,?,?,?)");
           ps.setString(1,id);
           ps.setInt(2,r11);
           ps.setInt(3,r12);
           ps.setInt(4,r13);
           ps.setInt(5,r14);
           ps.setInt(6,r15);
           ps.setInt(7,r16);
           ps.setInt(8,r17);
           ps.executeUpdate();
             
          
       con.close();
       response.sendRedirect("feedback.jsp");
 
       }
   }

      
%>