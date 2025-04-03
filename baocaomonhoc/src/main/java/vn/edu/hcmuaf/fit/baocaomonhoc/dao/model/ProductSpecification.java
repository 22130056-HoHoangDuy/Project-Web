package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class ProductSpecification {
    private int specificationId;
    private String specificationName;
    private String specificationValue;
    private int productId;

    public ProductSpecification() {
    }

    public ProductSpecification(int specificationId, String specificationName, String specificationValue, int productId) {
        this.specificationId = specificationId;
        this.specificationName = specificationName;
        this.specificationValue = specificationValue;
        this.productId = productId;
    }

    public int getSpecificationId() {
        return specificationId;
    }

    public void setSpecificationId(int specificationId) {
        this.specificationId = specificationId;
    }

    public String getSpecificationName() {
        return specificationName;
    }

    public void setSpecificationName(String specificationName) {
        this.specificationName = specificationName;
    }

    public String getSpecificationValue() {
        return specificationValue;
    }

    public void setSpecificationValue(String specificationValue) {
        this.specificationValue = specificationValue;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "ProductSpecification{" +
                "specificationId=" + specificationId +
                ", specificationName='" + specificationName + '\'' +
                ", specificationValue='" + specificationValue + '\'' +
                ", productId=" + productId +
                '}';
    }
}
