package vn.edu.hcmuaf.fit.baocaomonhoc.controller.cart;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Cart;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.CartProduct;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.io.IOException;

@WebServlet("/add-cart")
public class Add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int pid = Integer.parseInt(req.getParameter("productId"));
//        String productName = req.getParameter("productName");
//        double price = Double.parseDouble(req.getParameter("unitPrice"));
//        int quantity = Integer.parseInt(req.getParameter("quantity"));
//        String productImage = req.getParameter("productImage");
//        int productStatus = Integer.parseInt(req.getParameter("productStatus"));
//
//        CartProduct cartProduct = new CartProduct(pid, productName, price, productImage, quantity, productStatus);
//        HttpSession session = req.getSession(true);
//        Cart cart = (Cart) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new Cart();
//        }
//        cart.add(cartProduct);
//
//        session.setAttribute("cart", cart);
//        resp.sendRedirect("/cart");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
