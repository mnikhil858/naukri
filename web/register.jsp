 <%@page import="newpackage.DbManager"%>
<%@ page import ="java.sql.*" %>
<%
    
        
        String name = request.getParameter("name");
        String Contact_No = request.getParameter("Contact_No");
        String email = request.getParameter("email");
        String usertype = "student";
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        DbManager db = new DbManager();
        String s2 = "select * from register where email ='"+email+"'";
        
        ResultSet rs = db.selectQuery(s2);
        
                        
			if (rs.next()==true)
                        {
					String useremail = rs.getString("email");
					if(useremail.equals(email))
                                        {
						out.print("<script>alert('Mail ID already exist');window.location.href='login.jsp'</script>");
                                                
					}
                                        
			}
                        
            else
            {
                String s1 = "insert into register values(NULL,'"+name+"','"+Contact_No+"','"+email+"','"+password+"','"+usertype+"')";
                if(db.executeNonQuery(s1))
                {
                    out.print("<script>alert('Registration successfull');window.location.href='login.jsp'</script>");
                }
                else{
                    out.print("<script>alert('Registration not successful');window.location.href='login.jsp'</script>");
                }
                
            }
             
   
          
              
          
%>