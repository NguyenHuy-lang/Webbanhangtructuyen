package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
       String token = (String) session.getAttribute("token_csrf");
        if (null == token) {
          token = UUID.randomUUID().toString();
           session.setAttribute("token_csrf", token);
        }

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String EMAIL = request.getParameter("email");
        String PASSWORD = request.getParameter("pass");
        implDAO impl = new implDAO();
        System.out.println(EMAIL);
        System.out.println(PASSWORD);
        request.getSession().setAttribute("sumcart",0);
        try {
            Users user = impl.getUsers(EMAIL, PASSWORD);
            if(user != null){
                request.getSession().setAttribute("user", user);
                response.sendRedirect("shop-grid.jsp");

            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
