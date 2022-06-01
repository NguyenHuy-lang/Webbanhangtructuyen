package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet(name = "inc-decServlet", value = "/inc-decServlet")
public class incdecServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        String quantity = request.getParameter("quantity");
        ArrayList<productCart> listCart = (ArrayList<productCart>) request.getSession().getAttribute("listCart");

        if(action.equals("inc")){
            Integer pos = has(listCart, Integer.parseInt(id));
            if(pos >= 0) listCart.get(pos).setSo_luong(listCart.get(pos).getSo_luong() + 1);
        } else if(action.equals("dec")){
            Integer pos = has(listCart, Integer.parseInt(id));
            if(pos >= 0) listCart.get(pos).setSo_luong(listCart.get(pos).getSo_luong() - 1);
        }

        request.getSession().removeAttribute("listCart");
        request.getSession().setAttribute("listCart", listCart);
        response.sendRedirect("shoping-cart.jsp");
    }
    public Integer has(ArrayList<productCart>listCart, int id){
        for(int i = 0; i < listCart.size(); i++){
            if(listCart.get(i).getMa() == id) {
                return i;
            }
        }
        return -1;
    }

}
