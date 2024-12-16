<%-- 
    Document   : logout
    Created on : 8 Sep, 2021, 1:24:07 AM
    Author     : Dell
--%>

<%
    
    session.invalidate();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='login.jsp'");
            }
        </script>
    </head>
    <body onload="logout()">
        
    </body>
</html>
