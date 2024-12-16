<%@page import="newpackage.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
 if( session.getAttribute("emailid")==null)
 {
     response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manage Exam | easyNaukri4u</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../assets/css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <%@include file="header.jsp" %>
        <div class="app-main">
            <%@include file="sidebar.jsp" %>
            <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div>
                                        <h2><b>Manage Exam</b></h2>
                                    </div>
                                </div>    
                            </div>
                        </div>
                        <table align="center" cellpadding="5" cellspacing="5" border="1">          
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="table-responsive">
                                        <table class="align-middle table table-striped table-hover table-responsive">
                                            <thead>
                                                <tr style="background-color: #ead500;">
                                                    <td><b><center>Sr. No.</center></b></td>
                                                    <td><b><center>Exam Name</center></b></td>
                                                    <td><b><center>Total Marks</center></b></td>
                                                    <td><b><center>Marks per Question</center></b></td>
                                                    <td><b><center>Negative Marks</center></b></td>
                                                    <td><b><center>Total Time</center></b></td>
                                                    <td><b><center>Total Question</center></b></td>
                                                    <td><b><center>Total Test Series</center></b></td>
                                                    <td><b><center>Free Test Series</center></b></td>
                                                    <td><b><center>Availability</center></b></td>
                                                    <td><b><center>Price</center></b></td>
                                                    <td colspan="3"><b><center>Action</center></b></td>  
                                                </tr>
                                            </thead>
                                            <%
                                                DbManager db = new DbManager();
                                                String sql ="SELECT * FROM exam";
                                                ResultSet rs = db.selectQuery(sql);
                                                int i =1;
                                                while(rs.next())
                                                {
                                            %>
                                            
                                            <tbody>
                                                <tr>
                                                    <td ><center><%= i %>.</center></td>
                                                    <td ><center><%=rs.getString("exam_title") %></center></td>
                                                    <td ><center><%=rs.getInt("total_marks") %></center></td>
                                                    <td ><center><%=rs.getFloat("marks_perquestion") %></center></td>
                                                    <td ><center><%=rs.getString("negative_marking") %></center></td>
                                                    <td ><center><%=rs.getString("time_limt") %></center></td> 
                                                    <td ><center><%=rs.getInt("question_limit") %></center></td>
                                                    <td ><center><%=rs.getInt("test_series") %></center></td>
                                                    <td ><center><%=rs.getInt("free_test_series") %></center></td>
                                                    <td >
                                                        <center>
                                                            <%
                                                                if(rs.getString("available").equals("P")){
                                                            %>
                                                            Paid
                                                            <%
                                                                }
                                                                else{
                                                            %>
                                                            Free
                                                            <%
                                                                }
                                                            %>
                                                        </center>
                                                    </td>
                                                    <td ><center>&#8377. <%=rs.getFloat("cost") %></center></td>
                                                    <td>
                                                        <form action="test-series.jsp" method="post">
                                                            <center><input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
                                                                <button class="btn btn-success"><i class="fa fa-eye" aria-hidden="true"></i></button></center>
    <!--                                                        <input type="submit" class="btn btn-success btn-sm" value="Add Question"/>-->
                                                        </form>
                                                    </td>
                                                    <form method="post" action="update_exam.jsp">
                                                    <td class="text-center">
                                                        <input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
                                                        <button class="btn btn-primary" alt="Update"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                                    </td>
                                                    </form>
                                                    <form action="delete.jsp" method="post">
                                                    <td>
                                                        <input type="hidden" name="page" value="exam_delete"/>
                                                        <input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
<!--                                                    <input type="submit" class="btn btn-danger btn-sm" value="Delete"/>-->
                                                        <button onclick="return confirm('Are you sure want to Delete Exam ? If you will delete this exam then all questions will be deleted related to this exam.');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                    </td>
                                                    </form>   
                                                </tr>
                                            </tbody>

                                            <% 
                                                i++;
                                                } 
                                            %>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                </table>  
                    </div>
            </div>
        </div>
    </div>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></script>
</body>
</html>
<%
 }
%>



