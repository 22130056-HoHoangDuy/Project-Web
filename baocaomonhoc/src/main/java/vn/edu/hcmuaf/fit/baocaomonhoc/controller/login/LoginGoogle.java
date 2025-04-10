package vn.edu.hcmuaf.fit.baocaomonhoc.controller.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login.GooglePojo;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login.GoogleUtils;

import java.io.IOException;

@WebServlet("/loginGoogle")
public class LoginGoogle extends HttpServlet {


        private static final long serialVersionUID = 1L;
        public LoginGoogle() {
            super();
        }
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            String code = request.getParameter("code");
            if (code == null || code.isEmpty()) {
                RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                dis.forward(request, response);
            } else {
                String accessToken = GoogleUtils.getToken(code);
                GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
                request.getSession().setAttribute("id", googlePojo.getId());
                request.getSession().setAttribute("name", googlePojo.getName());
                request.getSession().setAttribute("email", googlePojo.getEmail());
                System.out.println("User logged in: " + googlePojo.getName() + " - " + googlePojo.getEmail());
                RequestDispatcher dis = request.getRequestDispatcher("product.jsp");
                dis.forward(request, response);
            }
        }
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            doGet(request, response);
        }
}
