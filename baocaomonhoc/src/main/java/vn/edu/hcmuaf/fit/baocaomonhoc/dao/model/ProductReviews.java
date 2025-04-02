package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

import java.time.LocalDateTime;

public class ProductReviews {
    private int reviewId;
    private int productId;
    private String customerName;
    private String customerEmail;
    private int rating;
    private String comment;
    private LocalDateTime createdAt;

    public ProductReviews() {
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public ProductReviews(int reviewId, int productId, String customerName, String customerEmail, int rating, String comment, LocalDateTime createdAt) {
        this.reviewId = reviewId;
        this.productId = productId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.rating = rating;
        this.comment = comment;
        this.createdAt = createdAt;
    }
    public ProductReviews(int productId, String customerName, String customerEmail, int rating, String comment, LocalDateTime createdAt) {
        this.productId = productId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.rating = rating;
        this.comment = comment;
        this.createdAt = createdAt;
    }
    //    public ProductReviews(int reviewId, int productId, String customerName, String customerEmail, int rating, String comment, Date createdAt) {
//        this.reviewId = reviewId;
//        this.productId = productId;
//        this.customerName = customerName;
//        this.customerEmail = customerEmail;
//        this.rating = rating;
//        this.comment = comment;
//        this.createdAt = createdAt;
//    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

//    public Date getCreatedAt() {
//        return createdAt;
//    }
//
//    public void setCreatedAt(Date createdAt) {
//        this.createdAt = createdAt;

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
//    }

    @Override
    public String toString() {
        return "ProductReviews{" +
                "reviewId=" + reviewId +
                ", productId=" + productId +
                ", customerName='" + customerName + '\'' +
                ", customerEmail='" + customerEmail + '\'' +
                ", rating=" + rating +
                ", comment='" + comment + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
}
