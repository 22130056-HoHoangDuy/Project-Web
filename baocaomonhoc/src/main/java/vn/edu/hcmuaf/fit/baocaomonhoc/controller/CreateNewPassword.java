package vn.edu.hcmuaf.fit.baocaomonhoc.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.CategoryDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.UserDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Categories;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;
import vn.edu.hcmuaf.fit.baocaomonhoc.services.ProductServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/create-new-password")
public class CreateNewPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String otp = req.getParameter("otp");
        String newPassword = req.getParameter("password");
        String confirmPassword = req.getParameter("confirm-password");
        String email = (String) req.getSession().getAttribute("email");
        String sessionOtp = (String) req.getSession().getAttribute("otp");
        long otpExpiry = (long) req.getSession().getAttribute("otpExpiry");

        // Kiểm tra OTP và thời gian hết hạn
        if (otp.equals(sessionOtp) && System.currentTimeMillis() < otpExpiry) {
            if (newPassword.equals(confirmPassword)) {
                // Cập nhật mật khẩu
                UserDao userDao = new UserDao();
                userDao.updateUserPassword(email, newPassword);

                resp.setContentType("text/html;charset=UTF-8");
                PrintWriter out = resp.getWriter();
                out.println("<p style='color: green;'>Mật khẩu đã được cập nhật thành công.</p>");
            } else {
                resp.setContentType("text/html;charset=UTF-8");
                PrintWriter out = resp.getWriter();
                out.println("<p style='color: red;'>Mật khẩu xác nhận không khớp!</p>");
            }
        } else {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.println("<p style='color: red;'>OTP không hợp lệ hoặc đã hết hạn!</p>");
        }
    }
}

