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
    <title>Add Questions | easyNaukri4u</title>
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
                        
<%
             int examid = Integer.parseInt(request.getParameter("examid"));
             int test_series_id = Integer.parseInt(request.getParameter("test_series_id"));
             String query = "select * from exam where exam_Id ='"+examid+"'";
             DbManager db = new DbManager();
             ResultSet rs = db.selectQuery(query);
             while(rs.next())
             {
//              int id = Integer.parseInt(request.getParameter("exam_id"));
             
         %>
         
     <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Question for <%= rs.getString("exam_title")%></h5>
      </div>
      <form class="refreshFrm" action="../Add_Questions" method="post" enctype="multipart/form-data">
      <div class="modal-body">
        <div class="col-md-12">
            <div class="form-group">
                <input type="hidden" name="exam_id" value="<%= rs.getString("exam_id")%>"/>
                <input type="hidden" name="test_series_id" value="<%= test_series_id%>"/>
                <input type="hidden" name="value" value=""/>
                <label><b>Question</b></label>
                <textarea name="question" class="form-control"></textarea><br/>
                <input type="file" name="image1" class="form-control-file" accept="image/*"/>
            </div>
              <hr style="border-color: red;">
            <fieldset>
            <div class="form-group">
                <label><b>Option A</b></label>
                <textarea name="choice_A" class="form-control"></textarea><br/>
                <input type="file" name="image_option1" class="form-control-file" accept="image/*"/>
            </div>
              <hr style="border-color: red;">

            <div class="form-group">
                <label><b>Option B</b></label>
                <textarea name="choice_B" class="form-control"></textarea><br/>
                <input type="file" name="image_option2" class="form-control-file" accept="image/*"/>
            </div>
              <hr style="border-color: red;">

            <div class="form-group">
                <label><b>Option C</b></label>
                <textarea name="choice_C" class="form-control"></textarea><br/>
                <input type="file" name="image_option3" class="form-control-file" accept="image/*"/>
            </div>
              <hr style="border-color: red;">

            <div class="form-group">
                <label><b>Option D</b></label>
                <textarea name="choice_D" class="form-control"></textarea><br/>
                <input type="file" name="image_option4" class="form-control-file" accept="image/*"/>
            </div>
              <hr style="border-color: red;">

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
          </fieldset>
        </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary form-control">Add Now</button>
      </div>
        </form>
    </div>
              <%
            }
        %>
                    </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
 }
%>