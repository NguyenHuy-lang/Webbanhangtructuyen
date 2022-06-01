package com.example.Controller.delete;

import com.example.DAO.implDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteAcount", value = "/deleteaccount")
public class deleteAcount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        implDAO impl = new implDAO();
        try {
            impl.deleteAccount(Integer.parseInt(id));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("listUserServlet");

    }


}
