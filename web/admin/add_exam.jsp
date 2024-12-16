<%@page import="newpackage.DbManager"%>
<!doctype html>
<%
 if( session.getAttribute("emailid")==null)
 {
     response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<html lang="en">
    <%@ page import ="java.sql.*" %>
    <%@ page import="java.io.*" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Exam | easyNaukri4u</title>
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
                                        <h2><b>Add Exams</b></h2>
                                    </div>
                                </div></div>
                        </div> 
                        <form  id="addExamFrm" method="post" action="backend_page/addexam_code.jsp">
    <input type="hidden" name="examid">
     <div class="modal-content"> 
      <div class="modal-body">
            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                      <label><b>Exam Name</b></label>
                    <input type="text" name="exam_name" class="form-control" required="">
                  </div>

                    <div class="form-group">
                        <label><b>Total Marks</b></label>
                        <input type="text" name="total_marks" class="form-control" required="">
                    </div>

                    <div class="form-group">
                        <label><b>Marks per Question</b></label>
                        <input type="text" name="marks_perquestion" class="form-control" required="">
                    </div>

                  <div class="form-group">
                      <label><b>Negative Marking</b></label>
                    <input type="text" name="negative_marks" class="form-control" required="">
                  </div>
                    <div class="form-group">
                        <label><b>Availability</b></label><br/>
                        <input type="radio" name="available" value="F" required="">&nbsp;&nbsp;Free&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="available" value="P" required="">&nbsp;&nbsp;Paid
                    </div>
                </div>
                  <div class="col-md-6">
                      <div class="form-group">
                      <label><b>Total Time (in minutes)</b></label>
                    <input type="text" name="total_time" class="form-control" required="">
                  </div>

                  <div class="form-group">
                      <label><b>Total Questions</b></label>
                    <input type="text" name="total_questions" class="form-control" required="">
                  </div>

                    <div class="form-group">
                        <label><b>Total Test Series</b></label>
                    <input type="text" name="test_series" class="form-control" required="">
                  </div>
                    <div class="form-group">
                        <label><b>Number of Free Test Series</b></label>
                    <input type="number" name="free_test_series" class="form-control" required="">
                  </div>
                      <div class="form-group">
                          <label><b>Price (in rupees)</b></label>
                          <input type="text" name="cost" class="form-control" required=""/>
                      </div>
                  </div>
              </div>
        </div>
     </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary form-control">Add Now</button>
      </div>
    </div>
   </form>
                      </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script>
</body>
</html>
<%
 }
%>