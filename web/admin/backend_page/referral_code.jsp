<%@page import="newpackage.DbManager"%>
<%
    String employee_name = request.getParameter("employee_name");
    String referral_code = request.getParameter("referral_code");
    String query = "insert into referral_code (code_id, employee_name, referral_code) values (NULL, '"+employee_name+"', '"+referral_code+"')";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Referral Code Added')</script>");
        response.sendRedirect("../referral.jsp");
    }
    else{
        out.print("<script>alert('Referral Not Code Added')</script>");
        response.sendRedirect("../referral.jsp");
    }
%>