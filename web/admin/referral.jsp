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
    <title>Referral Code | easyNaukri4u</title>
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
                                        <h2><b>Referral Code</b></h2>
                                    </div>
                                </div>  
                            </div>
                        </div>
                            <form action="backend_page/referral_code.jsp">
                                <div class="col-md-5" style="float: left;">
                                    <input class="form-control" type="text" name="employee_name" placeholder="Employee Name" required=""/>
                                </div>
                                <div class="col-md-5" style="float: left;">
                                    <input class="form-control" type="text" name="referral_code" placeholder="Referral Code" required=""/>
                                </div>
                                <div class="col-md-2" style="float: left;">
                                    <button class="btn btn-success">Add</button>
                                </div>
                            </form>
                        <table align="center" cellpadding="5" cellspacing="5" border="1">          
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="main-card mb-3 card">
                                        <div class="table-responsive">
                                            <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                                <tr style="background-color: #e4e7fa;">
                                                    <td><b><center>Sr. No.</center></b></td>
                                                    <td><b><center>Employee Name</center></b></td>
                                                    <td><b><center>Referral Code</center></b></td>
                                                    <td colspan="2"><b><center>Action</center></b></td>
                                                </tr>
                                                <%
                                                    String query = "select * from referral_code";
                                                    DbManager db = new DbManager();
                                                    ResultSet rs = db.selectQuery(query);
                                                    ResultSet rb = db.selectQuery(query) ;
                                                    int i = 1, n = 0;
                                                    while(rs.next()){
                                                        n++;
                                                    }
                                                    if( n>=1){
                                                        while(rb.next()== true){
                                                %>
                                                <tr>
                                                    <td><center><%= i%>.</center></td>
                                                    <td><center><%= rb.getString("employee_name")%></center></td>
                                                    <td><center><%= rb.getString("referral_code")%></center></td>
                                                    <td>
                                                        <form action="update_referral_page.jsp" method="post">
                                                            <input type="hidden" name="code_id" value="<%= rb.getString("code_id")%>">
                                                            <input type="submit" class="btn btn-primary btn-sm" value="Manage"/>
                                                        </form>
                                                    </td>
                                                    <td>
                                                        <form action="delete.jsp" method="post">
                                                            <input type="hidden" name="page" value="referral_page"/>
                                                            <input type="hidden" name="code_id" value="<%= rb.getString("code_id")%>">
                                                            <button onclick="return confirm('Are you sure want to Delete Code ?');" value="Delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                                <%
                                                            i++;
                                                        }
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
            <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
    }
%>

