package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.CategoryDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Categories;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;
import vn.edu.hcmuaf.fit.baocaomonhoc.services.ProductServices;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/category")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            CategoryDao dao = new CategoryDao();
            ProductDao productDao = new ProductDao();

            int categoryId = Integer.parseInt(req.getParameter("cid"));
            Categories categories = dao.getById(categoryId);//danh muc cha
            List<Categories> categoriesList = dao.getByParentId(categoryId);//ds damh muc con
            List<Products> products = new ArrayList<>();

            if (categories.getCategoryParentId() == 0) {//neu la danh muc cha -> giu nguyen hanh dong

            } else {// neu la danh muc con thi them chinh ban than no vao subcate
                categoriesList.add(categories);
            }

            if (categoriesList.isEmpty()) {
                products = productDao.getByCategoryId(categoryId);
            } else {
                for (Categories c : categoriesList) {
                    products.addAll(productDao.getByCategoryId(c.getCategoryId()));
                }
            }

            for (Categories c : categoriesList) {
                System.out.println(c);
            }

            for (Products p : products) {
                System.out.println(p);
            }

            req.setAttribute("pcate", categories);
            req.setAttribute("subcate", categoriesList);
            req.setAttribute("products", products);
            req.getRequestDispatcher("/category.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
