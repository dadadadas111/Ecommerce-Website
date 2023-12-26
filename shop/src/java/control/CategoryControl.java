/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name="CategoryControl", urlPatterns={"/category"})
public class CategoryControl extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // 1. get cid
        String cid = request.getParameter("cid");
        System.out.println(cid);
        // 2. get data from db
        DAO dao = new DAO();
        List<Product> list = dao.getProductByCategory(cid);
        List<Category> listC = dao.getAllCategory();
        Product newP = dao.getNewProduct();
                
        // 3. set attribute to listP in Home.jsp
        request.setAttribute("listP", list);
        request.setAttribute("listC", listC);
        request.setAttribute("newP", newP);
        request.setAttribute("cateID", cid);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
