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
    <title>Vacancy Result | easyNaukri4u</title>
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
                                        <h2><b>Vacancy Result</b></h2>
                                    </div>
                                </div>  
                            </div>
                        </div>
                            <form action="backend_page/vacany_result_code.jsp">
                                <div class="col-md-5" style="float: left;">
                                    <input class="form-control" type="text" name="vacancy_name" placeholder="Exam Name" required=""/>
                                </div>
                                <div class="col-md-5" style="float: left;">
                                    <input class="form-control" type="text" name="link" placeholder="Result Link" required=""/>
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
                                            <%
                                                String query = "select * from vacancy_result ORDER BY result_id DESC";
                                                DbManager db = new DbManager();
                                                ResultSet rs = db.selectQuery(query) ;
                                                ResultSet rb = db.selectQuery(query) ;
                                                int i = 1, n=0;
                                                while(rs.next()){
                                                    n++;
                                                }
                                                if(n>0){
                                            %>
                                            <thead>
                                                <tr style="background-color: #ead500;">
                                                    <td><b><center>Sr. No.</center></b></td>
                                                    <td><b><center>Exam Name</center></b></td>
                                                    <td><b><center>Link</center></b></td>
                                                    <td colspan="2"><b><center>Action</center></b></td>
                                                </tr>
                                            </thead>
                                            <%
                                                while(rb.next()== true){
                                            %>
                                            
                                            <tbody>
                                                <tr>
                                                    <td><center><%= i %>.</center></td>
                                                    <td><center><%= rb.getString("vacancy_name")%></center></td>
                                                    <td><center><a href="<%= rb.getString("link")%>" target="_blank"><%= rb.getString("link")%></a></center></td>
                                                    <form method="post" action="update_result.jsp">
                                                    <td class="text-center">
                                                        <input type="hidden" name="result_id" value="<%= rb.getString("result_id")%>">
                                                        <input type="submit" class="btn btn-primary btn-sm" value="Manage"/>
                                                    </td>
                                                    </form>
                                                    <form action="delete.jsp" method="post">
                                                    <td>
                                                        <input type="hidden" name="page" value="result_delete"/>
                                                        <input type="hidden" name="result_id" value="<%= rb.getString("result_id")%>">
                                                        <button onclick="return confirm('Are you sure want to Delete Result ?');" value="Delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                                    </td>
                                                    </form>   
                                                </tr>
                                            </tbody>

                                            <%
                                                    i++;
                                                }
                                                }
                                                else{
                                            %>
                                            <center><h4><b>No Results Founds</b></h4></center>
                                            <%
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

