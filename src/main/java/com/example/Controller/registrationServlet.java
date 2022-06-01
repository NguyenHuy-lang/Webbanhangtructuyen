package com.example.Controller;

import com.example.DAO.implDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "registrationServlet", value = "/registration")
public class registrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String ten_day_du = request.getParameter("fullName");
        String ten_tai_khoan = request.getParameter("username");
        String email = request.getParameter("email");
        String sdt = request.getParameter("phone");
        String mat_khau = request.getParameter("password");
        String gioi_tinh = request.getParameter("gender");
        response.setContentType("text/html");
        implDAO impl = new implDAO();
        try {
            impl.insertUser(ten_day_du, ten_tai_khoan, email, sdt, mat_khau, gioi_tinh);
            response.sendRedirect("login.jsp");
        } catch (SQLException e) {
            response.sendRedirect("registration.jsp");
            e.printStackTrace();
        }
    }
}
