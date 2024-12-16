<%@page import="newpackage.DbManager"%>
<%
    String vacancy_name = request.getParameter("vacancy_name");
    String link = request.getParameter("link");
    String admit_card_id = request.getParameter("admit_card_id");
    String query = "update admit_card set vacancy_name= '"+vacancy_name+"', link = '"+ link+"' where admit_card_id = '"+admit_card_id+"'";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Admit Card Updated');window.location.href='../admit_card.jsp'</script>");
    }
    else{
        out.print("<script>alert('Admit Card Not Updated');window.location.href='../admit_card.jsp'</script>");
    }
%>