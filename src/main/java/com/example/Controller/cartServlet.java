package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Users;
import com.example.Model.product;
import com.example.Model.productCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "cartServlet", value = "/cart")
public class cartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        if(request.getSession().getAttribute("listCart") == null){
            ArrayList<productCart> listCart = new ArrayList<>();
            request.getSession().setAttribute("listCart", listCart);
            String id = (String) request.getParameter("id");
            implDAO impl = new implDAO();
            try {
                product p = impl.getProduct(id);
                productCart pc = new productCart(p.getMa(), p.getTen(), p.getGia(), p.getAnh(), p.chi_tiet(), p.getXuat_xu(), 1, "hoaqua");
                listCart.add(pc);
                request.getSession().removeAttribute("listCart");
                request.getSession().setAttribute("listCart", listCart);
//                System.out.println("kich thuoc gio hang hien tai : "+listCart.size());
//                for(productCart pp : listCart) System.out.println(pp.toString());
                int s = sum(listCart);
                request.getSession().setAttribute("sumcart", s);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else {
            ArrayList<productCart> listCart = (ArrayList<productCart>) request.getSession().getAttribute("listCart");
            String id = request.getParameter("id");
            implDAO impl = new implDAO();
            try {
                productCart p = impl.getProduct(id);
                productCart pc = new productCart(p.getMa(), p.getTen(), p.getGia(), p.getAnh(), p.chi_tiet(), p.getXuat_xu(), 0, "hoaqua");
                pc.setSo_luong(has(listCart, pc) + 1);
                int index = idx(listCart, p);
                if(index < listCart.size()){
                    listCart.remove(index);
                }
                listCart.add(pc);
                request.getSession().removeAttribute("listCart");
                request.getSession().setAttribute("listCart", listCart);
//                System.out.println("kich thuoc gio hang hien tai : "+listCart.size());
//                for(productCart pp : listCart) System.out.println(pp.toString());
                int s = sum(listCart);
                request.getSession().setAttribute("sumcart", s);

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        response.sendRedirect("shop-grid.jsp");

    }

    public Integer has(ArrayList<productCart>listCart, productCart target){
        for(productCart p : listCart){
            if(p.getMa() == target.getMa()) {
                return p.getSo_luong();
            }
        }
        return 0;
    }
    public Integer idx(ArrayList<productCart>listCart, productCart target){
        for(int i = 0; i < listCart.size(); i++){
            if(listCart.get(i).getMa() == target.getMa()) {
                return i;
            }
        }
        return listCart.size() + 10;
    }
    public Integer sum(ArrayList<productCart>list){
        int s = 0;
        for(productCart p : list){
            s += p.getSo_luong() * p.getGia();
        }
        return s;
    }
}
