package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditServlet", value = "/editOrDelete")
public class editOrDeleteProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String type = request.getParameter("type");
        System.out.println(type);
        if(type.equals("delete") ){
            String id = request.getParameter("idDelete");
            System.out.println("id" + id);
            implDAO impl = new implDAO();
            try {
                impl.deleteProduct(Integer.parseInt(id));
                response.sendRedirect("shop-grid.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {

            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("idDelete");
            String name = request.getParameter("tensp");
            String price = request.getParameter("giasp");
            String link = request.getParameter("anhsp");
            String mota = request.getParameter("motasp");
            String xuatxu = request.getParameter("xuatxusp");
            String label = request.getParameter("nhansp");
            String number = request.getParameter("soluongsp");
            productCart p = new productCart(Integer.parseInt(id), name, Integer.parseInt(price), link,
                    mota, xuatxu, Integer.parseInt(number), label);
            implDAO impl = new implDAO();
            try {
                impl.EditProduct(p);
                response.sendRedirect("shop-grid.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}
