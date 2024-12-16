<%@page import="newpackage.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

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
    <title>Registered User | easyNaukri4u</title>
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
                                    <div><h2 align="center"><font><strong>Registered Users</strong></font></h2>
                                    </div>
                                </div></div>
                        </div>
                        <table align="center" cellpadding="5" cellspacing="5" border="1">
                        <tr>

                        </tr>           
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr style="background-color: #ead500;">
                                                <td width="400px"><b><center>Sr. No.</center></b></td>
                                                <td width="400px"><b><center>Name</center></b></td>
                                                <td width="400px"><b><center>Contact No</center></b></td>
                                                <td width="400px"><b><center>Email</center></b></td>
                                                <td width="400px"><b><center>Action</center></b></td>
                                            </tr>

                                            </thead>
                                            <%
                                                DbManager db = new DbManager();
                                                String sql ="SELECT * FROM register";
                                                ResultSet rs = db.selectQuery(sql);
                                                int i =1;
                                                while(rs.next()){
                                                    String register_id = rs.getString("register_id");
                                            %>
                                            <form method="post" action="delete.jsp">
                                                <input type="hidden" name="page" value="user"/>
                                                <input type="hidden" name="register_id" value="<%=rs.getString("register_id")%>"/>
                                                <tbody>
                                                    <tr>
                                                        <td ><center><%=i %>.</center></td>
                                                        <td ><center><%=rs.getString("name") %></center></td>    
                                                        <td ><center><%=rs.getString("Contact_No") %></center></td>
                                                        <td ><center><%=rs.getString("email") %></center></td>
                                                        <td class="text-center">
<!--                                                    <input onclick="myFunction()" type="submit" value="Delete" class="btn btn-danger btn-sm" >-->
                                                        <button onclick="return confirm('Are you sure want to Delete registered user permanently ?');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </form>
                                            <% 
                                                i++;
                                                }
                                            %>
                                        </table>
                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                        </table></div>
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

