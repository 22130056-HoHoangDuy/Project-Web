package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

import java.util.ArrayList;
import java.util.List;

public class Categories {
    private int categoryId;
    private String categoryName;
    private int categoryParentId;

    private List<Products> products = new ArrayList<>();

    public List<Products> getProducts() {
        return products;
    }

    public void setProducts(List<Products> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Categories{" +
                "categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                ", categoryParentId=" + categoryParentId +
                '}';
    }

    public Categories() {
    }

    public Categories(int categoryId, String categoryName, int categoryParentId) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categoryParentId = categoryParentId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getCategoryParentId() {
        return categoryParentId;
    }

    public void setCategoryParentId(int categoryParentId) {
        this.categoryParentId = categoryParentId;
    }
}
