package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "addProductServlet", value = "/addProductServlet")
public class addProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("tensp");
        String price = request.getParameter("giasp");
        String link = request.getParameter("anhsp");
        String mota = request.getParameter("motasp");
        String xuatxu = request.getParameter("xuatxusp");
        String label = request.getParameter("nhansp");
        String number = request.getParameter("soluongsp");
        productCart p = new productCart(1, name, Integer.parseInt(price), link,
                mota, xuatxu, Integer.parseInt(number), label);
        implDAO impl = new implDAO();
        try {
            impl.insertProduct(p);
            response.sendRedirect("shop-grid.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
