package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.OrderDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductSpecificationDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductReviewDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.ProductReviews;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.ProductSpecification;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "/product")
public class ProductController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pid = Integer.parseInt(req.getParameter("pid"));
        ProductDao dao = new ProductDao();
        ProductSpecificationDao specDao = new ProductSpecificationDao();
        ProductReviewDao reviewDao = new ProductReviewDao();

        Products product = dao.getById(pid);
        List<ProductSpecification> specs = specDao.getByProductId(pid);
        List<ProductReviews> reviews = reviewDao.getByProductId(pid);
        int commentNumber = reviews.size();

        req.setAttribute("p", product);
        req.setAttribute("specs", specs);
        req.setAttribute("reviews", reviews);
        req.setAttribute("comnumber", commentNumber);
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String comment = request.getParameter("contentRating");
//        String email = request.getParameter("email_contact");
//        String name = request.getParameter("fullname");
//        int proId = Integer.parseInt(request.getParameter("proId"));
//        int rating = Integer.parseInt(request.getParameter("rating"));
//        LocalDateTime now = LocalDateTime.now();
//
//        ProductReviews productReview = new ProductReviews(proId, name, email, rating, comment, now);
//
//        ProductReviewDao dao = new ProductReviewDao();
//        dao.insert(productReview);
    }
}