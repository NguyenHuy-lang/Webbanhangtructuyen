package com.example.Controller.delete;

import com.example.DAO.implDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteBill", value = "/deleteBill")
public class deleteBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id_bill");
        implDAO impl = new implDAO();
        try {
            impl.deleteBill(Integer.parseInt(id));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("shop-grid.jsp");

    }

}
