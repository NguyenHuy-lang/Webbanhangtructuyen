package com.example.Controller;

import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "checkoutServlet", value = "/checkout")
public class checkoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        ArrayList<productCart> listCart = (ArrayList<productCart>) request.getSession().getAttribute("listCart");
        int total = 0;
        for (productCart pc : listCart) {
            total += pc.getSo_luong() * pc.getGia();
        }
        System.out.println(total);
        request.getSession().setAttribute("listCart", listCart);
        request.setAttribute("total", total);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
