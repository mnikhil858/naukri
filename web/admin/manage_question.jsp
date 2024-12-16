<%@page import="java.sql.ResultSet"%>
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
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>View Question | easyNaukri4u</title>
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
                                    <div><h2><b>View Question</b></h2>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <table align="center" cellpadding="5" cellspacing="5" border="1">          
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                                <tr style="background-color: #ead500;">
                                                    <td><b><center>Sr. No.</center></b></td>
                                                    <td><b><center>Exam Name</center></b></td>
                                                    <td><b><center>Added Questions</center></b></td>
                                                    <td><b><center>Action</center></b></td>  
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
                                                    <td><center><%= i %>.</center></td>
                                                    <td><center><%=rs.getString("exam_title") %></center></td>
                                        <%
                                            String examid = rs.getString("exam_id");
                                            String s1 = "select * from exam_question_tbl where exam_id = '"+examid+"'";
                                            ResultSet ra = db.selectQuery(s1);
                                            int a = 0;
                                            while(ra.next())
                                                {
                                                    a++;
                                                }
                                        %>
                                                    <td><b><center><%= a%></center></b></td>
                                                    <form action="display_questions.jsp" method="post">
                                                    <td><center>
                                                        <input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
                                                        <input type="submit" class="btn btn-outline-success btn-sm" value="View Question"/>
                                                        </center>
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
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
 }
%>

