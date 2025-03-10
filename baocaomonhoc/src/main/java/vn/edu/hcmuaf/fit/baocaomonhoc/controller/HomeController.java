package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.CategoryDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Categories;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        CategoryDao categoryDao = new CategoryDao();
        List<Categories> categoriesP = categoryDao.getParent();
        List<Categories> categoriesC = categoryDao.getAll();
        for (Categories c : categoriesP) {
            System.out.println(c.getCategoryId());
            List<Products> products = productDao.getByCategoryPID(c.getCategoryId());
            for (Products p : products) {
                System.out.println("p - " + p.getProductId());
            }
            c.setProducts(products);
        }
        req.setAttribute("childCategories", categoriesC);
        req.setAttribute("parentCategories", categoriesP);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
