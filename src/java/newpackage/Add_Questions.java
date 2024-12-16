/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package newpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Dell
 */
@WebServlet(name = "Add_Questions", urlPatterns = {"/Add_Questions"})
@MultipartConfig(maxFileSize = 16777215)//16mb
public class Add_Questions extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Add_Questions</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Add_Questions at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    PrintWriter out;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        String exam_id = request.getParameter("exam_id");
        int test_series_id = Integer.parseInt(request.getParameter("test_series_id"));
        Part part = request.getPart("image1");
        Part part1 = request.getPart("image_option1");
        Part part2 = request.getPart("image_option2");
        Part part3 = request.getPart("image_option3");
        Part part4 = request.getPart("image_option4");
        
        String question = request.getParameter("question");
        String choice_A = request.getParameter("choice_A");
        String choice_B = request.getParameter("choice_B");
        String choice_C = request.getParameter("choice_C");
        String choice_D = request.getParameter("choice_D");
        String correctAnswer = request.getParameter("correctAnswer");
        
        String value = request.getParameter("value");
        String question_id = request.getParameter("question_id");
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser", "root", "");
                PreparedStatement ps = null;
                if(value.equals("Update")){
                    ps = con.prepareStatement("update exam_question_tbl set exam_question = '"+question+"', exam_ch1= '"+choice_A+"', exam_ch2= '"+choice_B+"', exam_ch3='"+choice_C+"', exam_ch4='"+choice_D+"', image1 = ?, image_option1= ?, image_option2= ?, image_option3= ?, image_option4 =?, exam_answer= '"+correctAnswer+"' where question_id = '"+question_id+"'");
                }
                else{
                    ps = con.prepareStatement("insert into exam_question_tbl (exam_id, exam_question, exam_ch1, exam_ch2, exam_ch3, exam_ch4, image1,  image_option1, image_option2, image_option3, image_option4, exam_answer, test_series) values('"+exam_id+"', '"+question+"', '"+choice_A+"', '"+choice_B+"', '"+choice_C+"', '"+choice_D+"', ?, ?, ?, ?, ?, '"+correctAnswer+"', '"+test_series_id+"')");
                }
                InputStream is = part.getInputStream();
                InputStream is1 = part1.getInputStream();
                InputStream is2 = part2.getInputStream();
                InputStream is3 = part3.getInputStream();
                InputStream is4 = part4.getInputStream();
                
                ps.setBlob(1, is);
                ps.setBlob(2, is1);
                ps.setBlob(3, is2);
                ps.setBlob(4, is3);
                ps.setBlob(5, is4);
                result = ps.executeUpdate();
                if (result > 0) {
                    String examID = exam_id;
                    response.sendRedirect("admin/display_questions.jsp?exam_id="+examID+"&test_series_id=" +test_series_id);
                } else {
                    String examID = exam_id;
                    response.sendRedirect("admin/display_questions.jsp?exam_id="+examID+"&test_series_id="+test_series_id);
                }
            } catch (Exception e) {
                out.println(e);
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
