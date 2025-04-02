package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/admin/welcome")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        Users user = (Users) session.getAttribute("user");
        if (user == null || user.getRole() < 1) {
            resp.sendRedirect("../login");
            return;
        }
        req.getRequestDispatcher("dashboardAdmin.jsp").forward(req, resp);
    }
}
