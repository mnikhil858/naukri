<%@page import="newpackage.DbManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Update Exam | easyNaukri4u</title>
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
            <%
                DbManager db = new DbManager();
                int exam_id = Integer.parseInt(request.getParameter("exam_id"));
                String sql ="SELECT * FROM exam where exam_id='"+exam_id+"'";
                ResultSet rs = db.selectQuery(sql);
                while(rs.next())
                {
                                                    
            %>
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div><h2><b><%= rs.getString("exam_title")%></b></h2>
                                        <div class="page-title-subheading">Exam Information for <%= rs.getString("exam_title")%>
                                        </div>
                                    </div>
                                </div>
                                    
                            </div>
                        </div> 

<div class="app-main__outer" style="margin-left: -290px;">
        <div class="app-main__inner">       

            <div class="col-md-16">
            <div id="refreshData" >
            <div class="row" >
                  <div class="col-md-6">
                      <div class="main-card mb-3 card">
                          <div class="card-body">
                              <form method="post" id="updateExamFrm" action="backend_page/updateexam_details.jsp">
                              <div class="form-group">
                                  <label><b>Exam Name</b></label>
                                <input type="hidden" name="examid" value="<%=rs.getString("exam_id") %>">
                                <input type="" name="examtitle" class="form-control" required="" value="<%=rs.getString("exam_title") %>">
                              </div>  

                              <div class="form-group">
                                  <label><b>Total Marks</b></label>
                                <input type="number" name="totalmarks" class="form-control" required="" value="<%=rs.getString("total_marks") %>">
                              </div>  

                              <div class="form-group">
                                  <label><b>Total Time (in Minutes)</b></label>
                                <input type="number" name="timelimit" class="form-control" required="" value="<%=rs.getString("time_limt") %>">
                              </div>
                              
                              <div class="form-group">
                                    <label><b>Number of Free Test Series</b></label>
                                <input type="number" name="free_test_series" class="form-control" value="<%= rs.getString("free_test_series")%>" required="">
                              </div>
                              
                              <div class="form-group">
                                    <label><b>Availability</b></label>
                                    <select name="available" class="form-control">
                                        <option value="">--Select--</option>
                                        <option value="P">Paid</option>
                                        <option value="F">Free</option>
                                    </select>
                              </div>
                          </div>
                      </div>
                   
                  </div>
                
                  <div class="col-md-6">
                        <div class="main-card mb-3 card">
                          <div class="card-body">
                              <div class="form-group">
                                  <label><b>Total Questions</b></label>
                                <input type="number" name="examQuestDipLimit" class="form-control" value="<%=rs.getString("question_limit") %>"> 
                              </div>
                              <div class="form-group">
                                  <label><b>Marks Per Question</b></label>
                                <input type="text" name="marks_perquestion" class="form-control" value="<%=rs.getString("marks_perquestion") %>"> 
                              </div>
                              <div class="form-group">
                                  <label><b>Negative Marking</b></label>
                                <input type="text" name="negative_marking" class="form-control" value="<%=rs.getString("negative_marking") %>"> 
                              </div>
                              <div class="form-group">
                                  <label><b>Price (in rupees)</b></label>
                                <input type="text" name="cost" class="form-control" value="<%=rs.getString("cost") %>"> 
                              </div>
                              <input type="submit" class="btn btn-primary btn-sm form-control" value="Update"/>
                          </form>
                            <%
                                }
                            %>
                        
                      </div>
                  </div>
              </div>  
            </div> 
        </div>

            </div>
               
            </div>
      
       </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>
<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></script>
</body>
</html>
<%
 }
%>