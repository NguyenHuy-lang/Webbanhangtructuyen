package com.example.Controller;

import com.example.DAO.implDAO;
import com.example.Model.Users;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;






@WebServlet(name = "modifiedUserServlet", value = "/modifiedUserServlet")
public class modifiedUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Users current = (Users) request.getSession().getAttribute("user");
        request.setCharacterEncoding("UTF-8");
        String token_csrf = request.getParameter("token_csrf");
        HttpSession session = request.getSession();
        String token = (String) session.getAttribute("token_csrf");
        if(token_csrf == null || !token_csrf.equals(token)){
            System.out.println("Hãy cẩn thận, có kẻ muốn tấn công vào dữ liệu cá nhân của bạn");
        } else {
            Users user = new Users(current.getId(),
                    request.getParameter("tendaydu"),
                    request.getParameter("tentaikhoan"),
                    request.getParameter("email"),
                    request.getParameter("sdt"),
                    request.getParameter("matkhau"),
                    request.getParameter("gioitinh"),
                    "user"
            );


            implDAO impl = new implDAO();
            try {
                impl.ModifedUser(user);
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user", user);
                response.sendRedirect("shop-grid.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        response.sendRedirect("shop-grid.jsp");




    }
}


//@WebServlet(name = "modifiedUserServlet", value = "/modifiedUserServlet")
//public class modifiedUserServlet extends HttpServlet {
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        Users current = (Users) request.getSession().getAttribute("user");
//        request.setCharacterEncoding("UTF-8");
//        System.out.println("this is servlet");
//        String id = request.getParameter("id");
//        System.out.println(id);
//        if(id == null){
//            System.out.println("co nguoi dang hack");
//            response.sendRedirect("shop-grid.jsp");
//        } else {
//            Users user = new Users(current.getId(),
//                    request.getParameter("tendaydu"),
//                    request.getParameter("tentaikhoan"),
//                    request.getParameter("email"),
//                    request.getParameter("sdt"),
//                    request.getParameter("matkhau"),
//                    request.getParameter("gioitinh"),
//                    "user"
//            );
//
//
//            implDAO impl = new implDAO();
//            try {
//                impl.ModifedUser(user);
//                request.getSession().removeAttribute("user");
//                request.getSession().setAttribute("user", user);
//                response.sendRedirect("shop-grid.jsp");
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//
//    }
//}



