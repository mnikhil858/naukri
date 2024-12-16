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
    <title>Latest Job | easyNaukri4u</title>
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
                                    <div><h2><b>Latest Jobs</b></h2>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <form action="add_latest_job.jsp">
                            <button class="btn" style="background-color: #e4bb02;"><b>Add Latest Job</b></button>
                        </form>
                        <div class="row" style="margin-top: 20px;">
                            <table align="center" cellpadding="5" cellspacing="5" border="1">          
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                                <tr style="background-color: #ead500;">
                                                    <td><b><center>Sr. No.</center></b></td>
                                                    <td><b><center>Job Name</center></b></td>
                                                    <td colspan="3"><b><center>Action</center></b></td>  
                                                </tr>
                                            </thead>
                                            <%
                                                DbManager db = new DbManager();
                                                String sql ="SELECT * FROM latest_job_details";
                                                ResultSet rs = db.selectQuery(sql);
                                                int i =1;
                                                while(rs.next())
                                                {
                                            %>
                                            
                                            <tbody>
                                                <tr>
                                                    <td><center><%= i %>.</center></td>
                                                    <td><center><%=rs.getString("post_name") %></center></td>
                                            <td>
                                                <center>
                                                    <form action="manage_latest_job.jsp" method="post">
                                                        <input type="hidden" name="latest_job_id" value="<%=rs.getString("latest_job_id")%>">
                                                        <input type="submit" class="btn btn-primary" value="Manage"/>
                                                    </form>
                                                </center>
                                            </td>
                                            <td>
                                                <center>
                                                    <form action="view_latest_job.jsp" method="post">
                                                        <input type="hidden" name="latest_job_id" value="<%=rs.getString("latest_job_id")%>">
                                                        <button class="btn btn-success"><i class="fa fa-eye"></i></button>
                                                    </form>
                                                </center>
                                            </td>
                                            <td>
                                            <center>
                                                <form action="delete.jsp" method="post">
                                                        <input type="hidden" name="page" value="latest_job_page"/>
                                                        <input type="hidden" name="latest_job_id" value="<%=rs.getString("latest_job_id")%>">
                                                        <button onclick="return confirm('Are you sure want to Delete Job ?');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                    </form>
                                            </center>
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

