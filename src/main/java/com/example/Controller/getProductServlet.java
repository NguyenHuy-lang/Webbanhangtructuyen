package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "getProductServlet", value = "/getProductServlet")
public class getProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setCharacterEncoding("UTF-8");

        implDAO impl = new implDAO();
        try {
            productCart p = impl.getProduct(id);
            request.setAttribute("product", p);
            request.getRequestDispatcher("editProduct.jsp").forward(request,response);

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("shop-grid.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
