package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.DetailBill;
import com.example.Model.detailProductOfBill;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "boughtProduct", value = "/boughtProduct")
public class statisticBoughtProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String bill_id = request.getParameter("id_bill");
        implDAO impl = new implDAO();

        try {
            ArrayList<detailProductOfBill> p = impl.getProductOfBill(bill_id);
            System.out.println("bill_id" + bill_id);
            if(p==null){
                System.out.println("toang");
            }
            for(productCart pt : p){
                System.out.println(pt.toString());
            }
            request.setAttribute("BoughtProduct", p);
            request.getRequestDispatcher("statisticProduct.jsp").forward(request,response);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
