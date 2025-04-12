package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.UserDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;
import vn.edu.hcmuaf.fit.baocaomonhoc.util.EmailSender;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/forgot-password")
public class ForgotPassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("forgot-password.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");

        // Kiểm tra xem email có hợp lệ không và tồn tại trong cơ sở dữ liệu
        UserDao userDao = new UserDao();
        Users user = userDao.findUserByEmail(email);

        if (user != null) {
            // Tạo OTP và gửi qua email
            String otp = generateOTP();  // Tạo mã OTP
            sendOtpToEmail(email, otp);  // Gửi OTP qua email

            // Thiết lập thời gian hết hạn cho OTP (2 phút)
            long expiryTime = System.currentTimeMillis() + 120000; // 120,000ms = 2 phút
            req.getSession().setAttribute("otp", otp);
            req.getSession().setAttribute("otpExpiry", expiryTime);
            req.getSession().setAttribute("email", email);

            // Thông báo thành công
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.println("<p style='color: green;'>Mã OTP đã được gửi đến email của bạn. Thời gian hiệu lực là 2 phút.</p>");
        } else {
            req.setAttribute("errorMessage", "Email không tồn tại trong hệ thống!");
            req.getRequestDispatcher("forgot-password.jsp").forward(req, resp);
        }
    }

    // Tạo OTP 6 chữ số
    private String generateOTP() {
        return String.valueOf((int)(Math.random() * 900000) + 100000);  // OTP 6 chữ số
    }

    // Gửi OTP qua email
    private void sendOtpToEmail(String email, String otp) {
        // Gửi email OTP (sử dụng thư viện EmailSender)
        String subject = "Mã OTP Quên Mật Khẩu";
        String message = "Mã OTP của bạn là: " + otp + "\nMã OTP có hiệu lực trong 2 phút.";

        EmailSender.sendEmail(email, subject, message);
    }
}
