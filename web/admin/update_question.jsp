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
    <title>Update Question | easyNaukri4u</title>
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
                int question_id = Integer.parseInt(request.getParameter("question_id"));
                int exam_id = Integer.parseInt(request.getParameter("exam_id"));
                String sql ="SELECT * FROM exam_question_tbl where question_id='"+question_id+"'";
                String s1 = "select * from exam where exam_id ='"+exam_id+"'";
                ResultSet rs = db.selectQuery(sql);
                ResultSet ra = db.selectQuery(s1);
                while(ra.next()){
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
                                    <div><h2><b>Update Question</b></h2>
                                        <div class="page-title-subheading">Question of <%= ra.getString("exam_title")%> exam
                                        </div>
                                    </div>
                                </div>
                                    
                            </div>
                        </div> 
</table> 
                    <%
                                    }
                    %>
<div class="app-main__outer" style="margin-left: -290px;">
        <div class="app-main__inner">       

            <div class="col-md-16">
            <div id="refreshData" >
            <div class="row" >
                  <div class="col-md-12">
                      <form method="post" id="updateExamFrm" action="../Add_Questions" enctype="multipart/form-data">
                    <%
                        while(rs.next())
                                    {
                    %>
                      <div class="main-card mb-3 card">
                          <div class="card-body">
                              <input type="hidden" name="question_id" value="<%= question_id%>"/>
                              <input type="hidden" name="value" value="Update"/>
                              <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                              <div class="form-group">
                                  <label><b>Question</b></label>
                                  <textarea name="question" class="form-control"><%=rs.getString("exam_question")%></textarea><br/>
                                  <input type="file" class="form-control-file" name="image1" accept="image/*"/>
                              </div>  
                                  <hr style="border-color: red;"/>
                              <div class="form-group">
                                  <label><b>Option A</b></label>
                                    <input type="text" name="choice_A" class="form-control" value="<%=rs.getString("exam_ch1") %>"><br/>
                                    <input type="file" class="form-control-file" name="image_option1" accept="image/*"/>
                              </div>  
                                    <hr style="border-color: red;"/>
                                    
                              <div class="form-group">
                                  <label><b>Option B</b></label>
                                <input type="text" name="choice_B" class="form-control" value="<%=rs.getString("exam_ch2") %>"><br/>
                                <input type="file" class="form-control-file" name="image_option2" accept="image/*"/>
                              </div>
                                    <hr style="border-color: red;"/>
                                    
                              <div class="form-group">
                                  <label><b>Option C</b></label>
                                <input type="text" name="choice_C" class="form-control" value="<%=rs.getString("exam_ch3") %>"><br/>
                                <input type="file" class="form-control-file" name="image_option3" accept="image/*"/>
                              </div>
                                    <hr style="border-color: red;"/>
                                    
                              <div class="form-group">
                                  <label><b>Option D</b></label>
                                <input type="text" name="choice_D" class="form-control" value="<%=rs.getString("exam_ch4") %>"><br/>
                                <input type="file" class="form-control-file" name="image_option4" accept="image/*"/>
                              </div>
                                    <hr style="border-color: red;"/>
                                    
                                <div class="form-group">
                                    <label><b>Correct Answer</b></label>
                                    <select class="form-control" name="correctAnswer" required="">
                                        <option value="">--Select--</option>
                                        <option value="A">A</option> 
                                        <option value="B">B</option> 
                                        <option value="C">C</option> 
                                        <option value="D">D</option> 
                                    </select>
                                 </div>
                              <input type="submit" class="btn btn-primary btn-sm" value="Update"/>
                          </div>
                      </div>
                   
                  </div>
                <%
                    }
                %>  
            </div> 
        </div>

            </div>
               
            </div>
      
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