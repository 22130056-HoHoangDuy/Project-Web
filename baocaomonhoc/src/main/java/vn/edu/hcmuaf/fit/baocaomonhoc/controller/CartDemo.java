package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;

import java.io.IOException;

@WebServlet("/cart")
public class CartDemo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int quantity = Integer.parseInt(req.getParameter("quantity"));
        double price = Double.parseDouble(req.getParameter("unitPrice"));
        String img = req.getParameter("productImage");
        String productName = req.getParameter("productName");
        double totalPrice = quantity * price;

        req.setAttribute("quantity", quantity);
        req.setAttribute("unitPrice", price);
        req.setAttribute("img", img);
        req.setAttribute("productName", productName);
        req.setAttribute("totalPrice", totalPrice);
        req.getRequestDispatcher("cart.jsp").forward(req, resp);
    }
}
