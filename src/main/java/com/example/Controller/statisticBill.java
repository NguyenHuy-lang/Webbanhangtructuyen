package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Bill;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "statisticBill", value = "/statisticBill")
public class statisticBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("idUser");
        implDAO impl = new implDAO();
        ArrayList<Bill> listBill = new ArrayList<>();
        System.out.println("idUser " + id );
        try {
            listBill = impl.getBillWithId(id);
//            li
            request.setAttribute("listBill", listBill);
            request.getRequestDispatcher("statisticBill.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("statisticBill.jsp");
    }

}
