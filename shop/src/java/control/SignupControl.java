/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name="SignupControl", urlPatterns={"/signup"})
public class SignupControl extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String re_pass = request.getParameter("repass");
        DAO dao = new DAO();
        
        if (!password.equals(re_pass)){
            request.setAttribute("error", "Confirm password incorrect. Try again");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
        else if (dao.checkUsernameExisted(username)){
            request.setAttribute("error", "Username existed. Try again");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
        else {
            dao.signup(username, password);
            
            response.sendRedirect("home");
        }
        
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
