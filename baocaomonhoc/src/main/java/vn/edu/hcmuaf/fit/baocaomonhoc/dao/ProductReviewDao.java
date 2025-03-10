package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.ProductReviews;

import java.time.LocalDateTime;
import java.util.List;

public class ProductReviewDao {
    Jdbi jdbi;

    public ProductReviewDao() {
        jdbi = DBConnect.get();
    }

    public ProductReviewDao(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<ProductReviews> getByProductId(int productId) {
        String sql = "SELECT * FROM product_reviews WHERE productId = :productId ORDER BY createdAt DESC LIMIT 3";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("productId", productId).mapToBean(ProductReviews.class).list());
    }

    public boolean insert(ProductReviews productReviews) {
        String sql = "INSERT INTO product_reviews (productId, customerName, customerEmail, rating, comment, createdAt) VALUES (" +
                ":productId, :customerName, :customerEmail, :rating, :comment, :createdAt)";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql).bind("productId", productReviews.getProductId())
                        .bind("customerName", productReviews.getCustomerName())
                        .bind("customerEmail", productReviews.getCustomerEmail())
                        .bind("rating", productReviews.getRating())
                        .bind("comment", productReviews.getComment())
                        .bind("createdAt", productReviews.getCreatedAt())
                        .execute() > 0
        );
    }

    public static void main(String[] args) {
        ProductReviewDao productReviewDao = new ProductReviewDao();
//        List<ProductReviews> list = productReviewDao.getByProductId(10);
//        for (ProductReviews productReviews : list) {
//            System.out.println(productReviews);
//        }
        LocalDateTime now = LocalDateTime.now();
        ProductReviews productReviews = new ProductReviews(0, 10, "lethanhhai", "lethanhhai@gmail.com", 5, "i love product", now);
        System.out.println(productReviewDao.insert(productReviews));
    }
}