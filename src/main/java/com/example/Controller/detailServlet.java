package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "detailServlet", value = "/detailproduct")
public class detailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=UTF-8");
        implDAO impl = new implDAO();
        String id = request.getParameter("id");
        try {
            product p = impl.getProduct(id);
            if(p != null){
                request.setAttribute("product", p);
                request.getRequestDispatcher("shop-details.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
