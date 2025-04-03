package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class Products {
    private int productId;
    private String productName;
    private double unitPrice;
    private String productDescription;
    private String productImage;
    private int productStatus;
    private int brandId;
    private int categoryId;
    private int warehouseId;

    @Override
    public String toString() {
        return "Products{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", unitPrice=" + unitPrice +
                ", productImage='" + productImage + '\'' +
                ", productStatus=" + productStatus +
                ", brandId=" + brandId +
                ", categoryId=" + categoryId +
                ", warehouseId=" + warehouseId +
                '}';
    }

    public Products(int productId, String productName, double unitPrice, String productDescription, String productImage, int productStatus, int brandId, int categoryId, int warehouseId) {
        this.productId = productId;
        this.productName = productName;
        this.unitPrice = unitPrice;
        this.productDescription = productDescription;
        this.productImage = productImage;
        this.productStatus = productStatus;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.warehouseId = warehouseId;
    }

    public Products() {
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public String getProductImage() {
        return productImage;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public int getBrandId() {
        return brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public int getWarehouseId() {
        return warehouseId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }
}
