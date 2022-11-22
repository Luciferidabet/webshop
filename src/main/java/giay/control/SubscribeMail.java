/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package giay.control;

import java.io.IOException;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import giay.dao.DAO;
import giay.entity.Category;
import giay.entity.Product;
import giay.util.MailUtilLocal;

/**
 *
 * @author ADMIN
 */

@WebServlet(name = "SubscribeMail", urlPatterns = {"/subscribe"})
public class SubscribeMail extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.jsp";
        
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        
        DAO dao = new DAO();
        List<Product> list = dao.getAllProducts();
        List<Product> listP1 = dao.getProductByCate1("1");
        List<Product> listP2 = dao.getProductByCate2("2");
        List<Product> listP3 = dao.getProductByCate3("3");
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("ListP", list);
        request.setAttribute("ListP1", listP1);
        request.setAttribute("ListP2", listP2);
        request.setAttribute("ListP3", listP3);
        request.setAttribute("ListC", listC);
        
        //Email
        String from = "bakerymagicshop25@gmail.com";
        String subject = "Welcome to our Magic Shop";
        //Subscribe
        String subscribeEmail = request.getParameter("subscribeEmail");
        String toSubscribe = subscribeEmail;
        String bodySubscrise = "Dear " + toSubscribe + ", \n\n"
                    + "Thank you for using our bakery service – Magic Shop Bakery.\n"
                    + "We are make sure to send you announcements about new products and promotions.\n"
                    + "We look forward to your visit.\n"
                    + "Have a great day and thanks again!\n\n" 
                    + "Yours sincerely.";

        Boolean bodyIsHTML = false;
        
        try {
                MailUtilLocal.SendMail(toSubscribe, from, subject, bodySubscrise, bodyIsHTML);
            } catch (MessagingException e) {
                System.out.println("Unable to send your email");
                System.out.println(e);
            }
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
