package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.UserDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;

import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserDao userDao = new UserDao();
        Users users = userDao.findUserName(username);
        if (users != null) {
            req.setAttribute("error", "Tài khoản đã tồn tại");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            if (userDao.insertUser(username, password, 0)) {
                req.setAttribute("error", "Đăng kí thành công");
                resp.sendRedirect(req.getContextPath() + "/login");
            } else {
                req.setAttribute("error", "Đăng kí không thành công");
                req.getRequestDispatcher("register.jsp").forward(req, resp);
            }

        }
    }
}
