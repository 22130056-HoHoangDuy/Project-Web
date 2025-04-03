package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class CartProduct {
    private int productId;
    private String productName;
    private double unitPrice;
    private Integer productDescription;
    private String productImage;
    private int productStatus;
    private Integer brandId;
    private Integer categoryId;
    private Integer warehouseId;
    private int quantity;

    @Override
    public String toString() {
        return "CartProduct{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", unitPrice=" + unitPrice +
                ", productImage='" + productImage + '\'' +
                ", productStatus=" + productStatus +
                ", brandId=" + brandId +
                ", categoryId=" + categoryId +
                ", warehouseId=" + warehouseId +
                ", quantity=" + quantity +
                '}';
    }

    public CartProduct(int productId, String productName, double unitPrice, String productImage, int productStatus, int quantity) {
        this.productId = productId;
        this.productName = productName;
        this.unitPrice = unitPrice;
        this.productImage = productImage;
        this.productStatus = productStatus;
        this.quantity = quantity;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public CartProduct() {
    }

    public CartProduct(int productId, String productName, double unitPrice, Integer productDescription, String productImage, int productStatus, Integer brandId, Integer categoryId, Integer warehouseId, int quantity) {
        this.productId = productId;
        this.productName = productName;
        this.unitPrice = unitPrice;
        this.productDescription = productDescription;
        this.productImage = productImage;
        this.productStatus = productStatus;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.warehouseId = warehouseId;
        this.quantity = quantity;
    }
}
