package com.example.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "logoutServlet", value = "/logout")
public class logoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(PrintWriter out = response.getWriter()){
            if(request.getSession().getAttribute("user") != null){
                request.getSession().removeAttribute("user");
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("shoping-cart.jsp");
            }
        }
    }

}
