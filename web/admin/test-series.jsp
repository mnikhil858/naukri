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
    <style>
        .content {
          padding: 0 18px;
          display: none;
          overflow: hidden;
        }
    </style>
</head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <%@include file="header.jsp" %>
        <div class="app-main">
            <%@include file="sidebar.jsp" %>
            <%
                String exam_id = request.getParameter("exam_id");
                String sql = "select * from exam where exam_id = '"+exam_id+"'";
                String s1 = "select * from test_series where exam_id = '"+exam_id+"'";
                DbManager db = new DbManager();
                ResultSet rs = db.selectQuery(sql);
                ResultSet rc = db.selectQuery(s1);
                int a = 0;
                while(rc.next()){
                    a++;
                }
                while(rs.next()){
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
                                    <div>
                                        <h2><b><%= rs.getString("exam_title")%></b></h2>
                                        <div class="page-title-subheading">
                                            Test Series
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>    
                            </div>
                        </div>
                            <button class="collapsible btn btn-primary" style="float: right;">Add Test Series</button>
                            <div class="content col-md-8">
                                <form action="backend_page/extra-test-series-code.jsp" action="post">
                                    <table class="table table-borderless table-responsive">
                                        <tr>
                                            <td><b>Number of Test Series:</b> <input type="hidden" name="exam_id" value="<%= exam_id%>"/></td>
                                            <td><input type="number" class="form-control" name="extra_test_series" min="1" required=""/></td>
                                            <td><button class="btn btn-danger">Submit</button></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        <%
                            if(a>=1){
                        %>
                        <table align="center" cellpadding="5" cellspacing="5" border="1">          
                        <div class="row">
                            <div class="col-md-12">
                                    <div class="table-responsive">
                                            <table class="align-middle table table-striped table-hover table-responsive">
                                                <thead>
                                                    <tr style="background-color: #ead500;">
                                                        <td><b><center>Sr. No.</center></b></td>
                                                        <td><b><center>Test Series</center></b></td>
                                                        <td><b><center>Present Questions</center></b></td>
                                                        <td colspan="2"><b><center>Action</center></b></td> 
                                                    </tr>
                                                </thead>
                                                <%
                                                    String query ="SELECT * FROM test_series where exam_id = '"+exam_id+"'";
                                                    ResultSet ra = db.selectQuery(query);
                                                    int i = 1;
                                                    while(ra.next()){
                                                        String sq = "select * from exam_question_tbl where exam_id = '"+exam_id+"' and test_series = '"+ra.getString("test_series_id")+"'";
                                                        ResultSet rb = db.selectQuery(sq);
                                                        int b = 0;
                                                        while(rb.next()){
                                                            b++;
                                                        }
                                                %>

                                                <tbody>
                                                    <tr>
                                                        <td><center><%= i%>.</center></td>
                                                        <td><center>Test Series <%= i%></center></td>
                                                        <td><center><%= b%></center></td>
                                                        <td>
                                                            <center>
                                                                <form action="display_questions.jsp" method="post">
                                                                    <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                                                                    <input type="hidden" name="test_series_id" value="<%= ra.getString("test_series_id")%>"/>
                                                                    <button class="btn btn-success">View Question</button>
                                                                </form>
                                                            </center>
                                                        </td>
                                                        <td>
                                                            <form action="delete.jsp" method="post">
                                                                <input type="hidden" name="page" value="test_series"/>
                                                                <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                                                                <input type="hidden" name="test_series_id" value="<%= ra.getString("test_series_id")%>"/>
                                                                <button onclick="return confirm('Are you sure want to Test Series ? If you will delete this Test Series then all questions will be deleted related to this Test Series.');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                            </form>
                                                        </td>
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
                </table>
                    <%
                            }
                            else{
                    %>
                    <h4 class="text-primary">No Testseries Found...</h4>
                    <%
                            }
                    %>
                    </div>
            </div>
        </div>
    </div>
<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
      coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.display === "block") {
          content.style.display = "none";
        } else {
          content.style.display = "block";
        }
      });
    }
</script>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></script>
</body>
</html>
<%
 }
%>



