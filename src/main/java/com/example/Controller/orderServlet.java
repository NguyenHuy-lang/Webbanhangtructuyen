package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Bill;
import com.example.Model.DetailBill;
import com.example.Model.Users;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

@WebServlet(name = "orderServlet", value = "/order")
public class orderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        Users user = (Users) request.getSession().getAttribute("user");
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Calendar cal = Calendar.getInstance();
//        System.out.println(cal.toString());
        Bill bill = new Bill(user.getId(), firstName, lastName, phone, email, address, dateFormat.format(cal.getTime()) , user.getId());
        cal.add(Calendar.HOUR_OF_DAY, 1);
        bill.setNgay_nhan(dateFormat.format(cal.getTime()));
        implDAO impl = new implDAO();
        int idBill = -1;
        try {
            impl.insertBill(bill);
            idBill = impl.getIdBill(bill.getNgay_dat());
            System.out.println(idBill);

            ArrayList<productCart> listCart = (ArrayList<productCart>) request.getSession().getAttribute("listCart");
            System.out.println(listCart.size());
            for(productCart p : listCart){
                DetailBill dt = new DetailBill();
                dt.setSo_luong(p.getSo_luong());
                dt.setProduct_ma(p.getMa());
                dt.setBill_id(idBill);
                dt.setGia(p.getGia());

                impl.insertDetailBill(dt);
            }
            request.getSession().removeAttribute("listCart");
            System.out.println("done");
            response.sendRedirect("shop-grid.jsp");


        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("loi");
        }






    }

}
