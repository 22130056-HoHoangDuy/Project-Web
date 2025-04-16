package vn.edu.hcmuaf.fit.baocaomonhoc.controller.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.FacebookUser;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.login.RestFB;

import java.io.IOException;

@WebServlet("/loginFacebook")
public class LoginFacebook extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LoginFacebook() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = RestFB.getToken(code);
            FacebookUser fbUser = RestFB.getUserInfo(accessToken);
            request.setAttribute("id", fbUser.getId());
            request.setAttribute("name", fbUser.getName());
            RequestDispatcher dis = request.getRequestDispatcher("product.jsp");
            dis.forward(request, response);
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
