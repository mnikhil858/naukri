<%@page import="newpackage.DbManager"%>
<%
    String employee_name = request.getParameter("employee_name");
    String referral_code = request.getParameter("referral_code");
    String code_id = request.getParameter("code_id");
    String query = "update referral_code set employee_name= '"+employee_name+"', referral_code = '"+ referral_code+"' where code_id = '"+ code_id+"'";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Details Updated');window.location.href='../referral.jsp'</script>");
    }
    else{
        out.print("<script>alert('Details Not Updated');window.location.href='../referral.jsp'</script>");
    }
%>