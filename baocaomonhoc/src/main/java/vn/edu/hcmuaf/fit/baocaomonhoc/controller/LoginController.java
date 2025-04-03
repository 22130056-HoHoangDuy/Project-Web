package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.UserDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;

import java.io.IOException;

@WebServlet(value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserDao userDao = new UserDao();
        Users users = userDao.checkLogin(username, password);
        if (users != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", users);
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            req.setAttribute("error", "Đăng nhập không thành công");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
