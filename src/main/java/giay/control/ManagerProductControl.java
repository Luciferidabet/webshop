/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giay.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import giay.dao.DAO;
import giay.entity.Account;
import giay.entity.Category;
import giay.entity.Product;

/**
 *
 * @author khanh
 */
@WebServlet(name = "ManagerProductControl", urlPatterns = {"/ManagerProductControl"})
public class ManagerProductControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        
        DAO dao = new DAO();
        
        List<Product> list = dao.getAllProducts();
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("listP", list);
        request.setAttribute("ListC", listC);
        
        request.getRequestDispatcher("manager_product.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    

}

