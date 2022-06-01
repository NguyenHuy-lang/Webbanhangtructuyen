package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "classificationServlet", value = "/classification")
public class classificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        implDAO impl = new implDAO();
        String label = request.getParameter("label");
        ArrayList<productCart> answer = impl.classificationProduct(label);
        System.out.println(label);
        if(answer != null){
            request.setAttribute("classify", answer);
            request.getRequestDispatcher("classification.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
        }

    }
}
