<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<%
    String exam_id = request.getParameter("exam_id");
    String question = request.getParameter("question");
    String choice_A = request.getParameter("choice_A");
    String choice_B = request.getParameter("choice_B");
    String choice_C = request.getParameter("choice_C");
    String choice_D = request.getParameter("choice_D");
    String correctAnswer = request.getParameter("correctAnswer");
    DbManager db = new DbManager();
    String query ="insert into exam_question_tbl values ('"+exam_id+"', NULL, '"+question+"', '"+choice_A+"', '"+choice_B+"', '"+ choice_C+"', '"+choice_D+"', '"+ correctAnswer+"')";
    if(db.executeNonQuery(query)){
        %>
        <html>
                <head>
                    <script>
                        function redirectPage()
                            {
                                alert("Question Added");
                                var url = '<%= response.encodeURL("../display_questions.jsp?exam_id="+ exam_id) %>';
                                window.location.href = url;
                            }
                    </script>
                </head>
                <body onload="redirectPage()">
                    
                </body>
            </html>
    <%
    }
    else{
        out.print("<script>alert('Question Not Added'); window.location.href='../display_questions.jsp'</script>");
    }
%>