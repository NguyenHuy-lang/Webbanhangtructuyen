package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ListUserServlet", value = "/listUserServlet")
public class ListUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        implDAO impl = new implDAO();
        try {
            ArrayList<Users> listUser = impl.getAllUsers();
            request.setAttribute("listUser", listUser);
            request.getRequestDispatcher("statisticsUser.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
