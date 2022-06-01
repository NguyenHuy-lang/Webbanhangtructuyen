package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "importServlet", value = "/import")
public class importServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String link = request.getParameter("link");
        String mota = request.getParameter("mota");
        String xuatxu = request.getParameter("xuatxu");
        String label = request.getParameter("label");
        String number = request.getParameter("number");
        productCart p = new productCart(1, name, Integer.parseInt(price), link,
                mota, xuatxu, Integer.parseInt(number), label);
        implDAO impl = new implDAO();
        try {
            impl.insertProduct(p);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
