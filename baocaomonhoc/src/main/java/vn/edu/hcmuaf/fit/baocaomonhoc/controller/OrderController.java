package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.OrderDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Orders;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.io.IOException;
import java.util.List;

@WebServlet("/orderListAdmin")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDao orderDao = new OrderDao();
        List<Orders> list = orderDao.getAllOrders();
        request.setAttribute("orders", list);
        request.getRequestDispatcher("order_list_Admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}