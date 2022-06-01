package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "searchProductServlet", value = "/searchProductServlet")
public class searchProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("keyword");
        System.out.println("keyword " + name);
        implDAO impl = new implDAO();
        try {
            ArrayList<productCart> ans = impl.getProductByName(name);
            request.setAttribute("classifyByName", ans);
            request.getRequestDispatcher("classifyByName.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("shop-grid.jsp");
        }

    }
}
