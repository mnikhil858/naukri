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
    <title>Dashboard | easyNaukri4u</title>
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
                                        <i class="fa fa-user-o icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div>ADMIN Dashboard
                                        <div class="page-title-subheading">Welcome to Admin Dashboard.
                                        </div>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <%
                            DbManager db = new DbManager();
                            String query = "select * from exam";
                            String query1 = "select * from register";
                            ResultSet rs = db.selectQuery(query);
                            ResultSet ra = db.selectQuery(query1);
                            int i = 0;
                            int a = 0;
                            while(rs.next())
                            {
                                i++;
                            }
                            while(ra.next()){
                                a++;
                            }
                        %>
                        <div class="row">
                                <div class="col-md-6 col-xl-4">
                                    <a href="manage_exam.jsp">
                                    <div class="card mb-3 widget-content bg-sunny-morning">
                                        <div class="widget-content-wrapper text-white">
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Total Exam</div>
                                                <div class="widget-subheading"></div>
                                            </div>
                                            <div class="widget-content-right">
                                                        <div class="widget-numbers text-white"><%= i%><span>
                                                    </span></div>
                                            </div>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                            <div class="col-md-6 col-xl-4">
                                <a href="user_details.jsp">
                                <div class="card mb-3 widget-content bg-primary">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Total Users</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white">
                                                <span><%= a%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <a href="#">
                                <div class="card mb-3 widget-content bg-amy-crisp">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Jobs</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white">
                                                <span><%= a%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                            
                            <div class="col-md-6 col-xl-4">
                                <a href="#">
                                <div class="card mb-3 widget-content bg-night-sky">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Result</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white">
                                                <span><%= a%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                                            
                            <div class="col-md-6 col-xl-4">
                                <a href="#">
                                <div class="card mb-3 widget-content bg-slick-carbon">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Admit Card</div>
                                            <div class="widget-subheading"></div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white">
                                                <span><%= a%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                            
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

