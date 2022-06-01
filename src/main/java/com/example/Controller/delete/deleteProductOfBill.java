package com.example.Controller.delete;

import com.example.DAO.implDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteProductOfBill", value = "/deleteProductOfBill")
public class deleteProductOfBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bill_id = request.getParameter("bill_id");
        String product_id = request.getParameter("product_id");

        implDAO impl = new implDAO();
        try {
            impl.deleteDetailBill(Integer.parseInt(bill_id), Integer.parseInt(product_id));
            System.out.println("transaction thành công");
            response.sendRedirect("shop-grid.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
