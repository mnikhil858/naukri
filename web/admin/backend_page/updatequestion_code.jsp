<%@page import="newpackage.DbManager"%>
<%
    String question_id = request.getParameter("question_id");
    String exam_id = request.getParameter("exam_id");
    String exam_question = request.getParameter("exam_question");
    String exam_ch1 = request.getParameter("exam_ch1");
    String exam_ch2 = request.getParameter("exam_ch2");
    String exam_ch3 = request.getParameter("exam_ch3");
    String exam_ch4 = request.getParameter("exam_ch4");
    String exam_answer = request.getParameter("exam_answer");
    DbManager db = new DbManager();
    String query = "update exam_question_tbl set exam_question= '"+exam_question+"', exam_ch1= '"+exam_ch1+"', exam_ch2= '"+ exam_ch2+"', exam_ch3= '"+ exam_ch3+"', exam_ch4= '"+exam_ch4+"', exam_answer= '"+exam_answer+"' where question_id = '"+question_id+"'";
    if(db.executeNonQuery(query)){
//        out.print("<script> alert('Question Updated');</script>");
//        response.sendRedirect("../question_list.jsp?exam_id ='"+exam_id+"'");
        %>
            <html>
                <head>
                    <script>
                        function redirectPage()
                            {
                                alert("Question Updated");
                                var url = '<%= response.encodeURL("../question_list.jsp?exam_id="+ exam_id) %>';
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
        out.print("<script>alert('Question Not Updated');</script>");
    }
%>