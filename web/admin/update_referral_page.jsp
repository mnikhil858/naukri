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
    <title>Update Referral Code | easyNaukri4u</title>
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
                int code_id = Integer.parseInt(request.getParameter("code_id"));
                String sql ="SELECT * FROM referral_code where code_id='"+code_id+"'";
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
                                    <div><h2><b>Update referral details</b></h2>
                                    </div>
                                </div>
                                    
                            </div>
                        </div> 
</table> 

<div class="app-main__outer" style="margin-left: -290px;">
        <div class="app-main__inner">       

            <div class="col-md-16">
            <div id="refreshData" >
            <div class="row" >
                <div class="col-md-6">
                      <div class="main-card mb-3 card">
                          <div class="card-body">
                              <form method="post" id="updateExamFrm" action="backend_page/update_referral_page_code.jsp">
                              <div class="form-group">
                                  <label><b>Employee Name</b></label>
                                <input type="hidden" name="code_id" value="<%=rs.getString("code_id") %>">
                                <input type="text" name="employee_name" class="form-control" required="" value="<%=rs.getString("employee_name") %>">
                              </div>  

                              <div class="form-group">
                                  <label><b>Referral Code</b></label>
                                <input type="text" name="referral_code" class="form-control" required="" value="<%=rs.getString("referral_code") %>">
                              </div>
                              <input type="submit" class="btn btn-primary btn-sm" value="Update"/>
                               <br>
                           </form>                           
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
<script src="../assets/js/main_1.js" type="text/javascript"></script></script>
</body>
</html>
<%
 }
%>