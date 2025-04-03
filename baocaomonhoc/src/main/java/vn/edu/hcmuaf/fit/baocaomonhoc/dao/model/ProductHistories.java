package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class ProductHistories {
    private int productHistoryId;
    private int productId;
    private String proHistoryName;
    private double proHistoryPrice;
    private String proHistoryDescription;
    private int proHistoryIdBrand;
    private int proHistoryIdCategory;
    private int proHistoryIdWarehouse;
    private String proHistoryImage;

    public ProductHistories() {
    }

    public ProductHistories(int productHistoryId, int productId, String proHistoryName, double proHistoryPrice, String proHistoryDescription, int proHistoryIdBrand, int proHistoryIdCategory, int proHistoryIdWarehouse, String proHistoryImage) {
        this.productHistoryId = productHistoryId;
        this.productId = productId;
        this.proHistoryName = proHistoryName;
        this.proHistoryPrice = proHistoryPrice;
        this.proHistoryDescription = proHistoryDescription;
        this.proHistoryIdBrand = proHistoryIdBrand;
        this.proHistoryIdCategory = proHistoryIdCategory;
        this.proHistoryIdWarehouse = proHistoryIdWarehouse;
        this.proHistoryImage = proHistoryImage;
    }

    public int getProductHistoryId() {
        return productHistoryId;
    }

    public void setProductHistoryId(int productHistoryId) {
        this.productHistoryId = productHistoryId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProHistoryName() {
        return proHistoryName;
    }

    public void setProHistoryName(String proHistoryName) {
        this.proHistoryName = proHistoryName;
    }

    public double getProHistoryPrice() {
        return proHistoryPrice;
    }

    public void setProHistoryPrice(double proHistoryPrice) {
        this.proHistoryPrice = proHistoryPrice;
    }

    public String getProHistoryDescription() {
        return proHistoryDescription;
    }

    public void setProHistoryDescription(String proHistoryDescription) {
        this.proHistoryDescription = proHistoryDescription;
    }

    public int getProHistoryIdBrand() {
        return proHistoryIdBrand;
    }

    public void setProHistoryIdBrand(int proHistoryIdBrand) {
        this.proHistoryIdBrand = proHistoryIdBrand;
    }

    public int getProHistoryIdCategory() {
        return proHistoryIdCategory;
    }

    public void setProHistoryIdCategory(int proHistoryIdCategory) {
        this.proHistoryIdCategory = proHistoryIdCategory;
    }

    public int getProHistoryIdWarehouse() {
        return proHistoryIdWarehouse;
    }

    public void setProHistoryIdWarehouse(int proHistoryIdWarehouse) {
        this.proHistoryIdWarehouse = proHistoryIdWarehouse;
    }

    public String getProHistoryImage() {
        return proHistoryImage;
    }

    public void setProHistoryImage(String proHistoryImage) {
        this.proHistoryImage = proHistoryImage;
    }

    @Override
    public String toString() {
        return "ProductHistories{" +
                "productHistoryId=" + productHistoryId +
                ", productId=" + productId +
                ", proHistoryName='" + proHistoryName + '\'' +
                ", proHistoryPrice=" + proHistoryPrice +
                ", proHistoryDescription='" + proHistoryDescription + '\'' +
                ", proHistoryIdBrand=" + proHistoryIdBrand +
                ", proHistoryIdCategory=" + proHistoryIdCategory +
                ", proHistoryIdWarehouse=" + proHistoryIdWarehouse +
                ", proHistoryImage='" + proHistoryImage + '\'' +
                '}';
    }
}
