<%@page import="newpackage.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
    String email =  request.getParameter("email");
    String password = request.getParameter("password");
    DbManager db = new DbManager();
    String query = "select * from register where email='"+email+"' and password='"+password+"'";
    ResultSet rs = db.selectQuery(query);
    if(rs.next()){
        String user_type = rs.getString("user_type");
        String emailid = rs.getString("email");
        if(user_type.equals("admin"))
        {
            session.setAttribute("emailid", emailid);
            response.sendRedirect("admin/admin_dashboard.jsp");    
        }
        else if(user_type.equals("student"))
        {
            String register_id = rs.getString("register_id");
            session.setAttribute("emailid", emailid);
            session.setAttribute("register_id", register_id);
            response.sendRedirect("user/user_dashboard.jsp");
        }
    }
    else{
        out.print("<script>alert('Username & Password are incorrect');window.location.href='login.jsp'</script>");
    }
    
//        String email = request.getParameter("email");   
//        String password = request.getParameter("password");
//        DbManager db = new DbManager();
//        String s1 = "select * from register where email='"+email+"' and password='"+password+"'";
//        ResultSet rs = db.selectQuery(s1);
//        
//        if(rs.next()==true)
//        {
//             String user = rs.getString("email");
//             String pass = rs.getString("password");
//              String user_type = rs.getString("user_type");
//                if(user_type.equals("student"))
//                {
//                    if(email.equals(user) && password.equals(pass))
//                 {
//                     response.sendRedirect("user/user_dashboard.jsp");
//                 }
//                    else
//                    {
//                        out.print("<script>alert('User email and password are incorrect');window.location.href='index.html'</script>");
//                    }
//                    
//                }
//                else
//                {
//                 if(email.equals(user) && password.equals(pass))
//                    {
//                     out.print("<script>window.location.href='admin/admin_dashboard.jsp'</script>");
//                    }
//                    else
//                    {
//                        out.print("<script>alert('Admin email and password are incorrect');window.location.href='index.html'</script>");
//                    }
//                 }
//            }
//            else{
//                out.print("<script>alert('Email and password are incorrect');window.location.href='index.html'</script>");
//            }         
%>