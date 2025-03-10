package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.util.List;

public class ProductDao {
    Jdbi jdbi;

    public ProductDao() {
        jdbi = DBConnect.get();
    }

    public ProductDao(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<Products> getAll() {
        return jdbi.withHandle(handle -> handle.createQuery("select * from products").mapToBean(Products.class).list());
    }

    public Products getById(int id) {
        String sql = "select * from products where productId = :id";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("id", id).mapToBean(Products.class).findOne().orElse(null));
    }

    public List<Products> getByCategoryId(int categoryId) {
        String sql = "select * from products where categoryId = :categoryId";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("categoryId", categoryId).mapToBean(Products.class).list());
    }

    public List<Products> getByCategoryPID(int categoryPId) {
        String sql = "SELECT * FROM products WHERE categoryId IN " +
                "(SELECT categoryId FROM categories WHERE categoryParentId = :categoryPId)" +
                "ORDER BY unitPrice DESC LIMIT 10";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("categoryPId", categoryPId).mapToBean(Products.class).list());
    }

    public boolean insert(Products product) {
        String sql = "INSERT INTO products (productName, unitPrice, productDescription, productImage,productStatus,brandId,categoryId,warehouseId)" +
                "VALUES (:name,:price,:dest,:img,:status,:brandId,:categoryId,:warehouseId)";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("name", product.getProductName())
                        .bind("price", product.getUnitPrice())
                        .bind("dest", product.getProductDescription())
                        .bind("img", product.getProductImage())
                        .bind("status", product.getProductStatus())
                        .bind("brandId", product.getProductId())
                        .bind("categoryId", product.getCategoryId())
                        .bind("warehouseId", product.getWarehouseId())
                        .execute() > 0
        );
    }

    public boolean update(Products product) {
        String sql = "UPDATE products" +
                "SET productName = :name," +
                "unitPrice = :price," +
                "productDescription = :dest," +
                "productImage = :img," +
                "productStatus = :statu," +
                "brandId = :bid," +
                "categoryId = :cid," +
                "warehouseId = :wid" +
                "WHERE productId = :id";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("id", product.getProductId())
                        .bind("name", product.getProductName())
                        .bind("price", product.getUnitPrice())
                        .bind("dest", product.getProductDescription())
                        .bind("img", product.getProductImage())
                        .bind("statu", product.getProductStatus())
                        .bind("bid", product.getBrandId())
                        .bind("cid", product.getCategoryId())
                        .bind("wid", product.getWarehouseId()).execute() > 0
        );
    }

    public boolean delete(int id) {
        String sql = "DELETE FROM products WHERE productId = :id";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql).bind("id", id).execute()>0);
    }

    public static void main(String[] args) {
        ProductDao productDao = new ProductDao();
        List<Products> products = productDao.getByCategoryPID(5);
        for (Products product : products) {
            System.out.println(product);
        }
    }
}
