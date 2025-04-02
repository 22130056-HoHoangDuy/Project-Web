package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Cart {
    private Map<Integer, CartProduct> carts = new HashMap<Integer, CartProduct>();

    public Map<Integer, CartProduct> getCarts() {
        return carts;
    }

    public boolean add(CartProduct cartProduct) {
        if (carts.containsKey(cartProduct.getProductId())) {
            return update(cartProduct.getProductId(), carts.get(cartProduct.getProductId()).getQuantity() + 1);
        }
        carts.put(cartProduct.getProductId(), cartProduct);
        return true;
    }

    public boolean addCart(Products product) {
        if (carts.containsKey(product.getProductId())) {
            return update(product.getProductId(), carts.get(product.getProductId()).getQuantity() + 1);
        }
        carts.put(product.getProductId(), convert(product));
        return true;
    }


    public boolean update(int productId, int quantity) {
        if (!carts.containsKey(productId)) {
            return false;
        }
        CartProduct cartProduct = carts.get(productId);
        if (quantity < 1) {
            return false;
        }
        cartProduct.setQuantity(quantity);
        carts.put(productId, cartProduct);
        return true;
    }

    public boolean remove(int productId) {
        return carts.remove(productId) != null;
    }

    public List<CartProduct> getList() {
        return new ArrayList<>(carts.values());
    }

    public int getTotalQuantity() {
        AtomicInteger i = new AtomicInteger();
        carts.values().forEach(cartProduct -> i.addAndGet(cartProduct.getQuantity()));
        return i.get();
    }

    public Double getTotalPrice() {
        AtomicReference<Double> sum = new AtomicReference<>(0.0);
        carts.values().forEach(cartProduct -> sum.updateAndGet(v -> (double) (v + (cartProduct.getQuantity() * cartProduct.getUnitPrice()))));
        return sum.get();
    }

    private CartProduct convert(Products product) {
        CartProduct cartProduct = new CartProduct();
        cartProduct.setProductId(product.getProductId());
        cartProduct.setProductName(product.getProductName());
        cartProduct.setUnitPrice(product.getUnitPrice());
        cartProduct.setProductImage(product.getProductImage());
        cartProduct.setProductStatus(product.getProductStatus());
        cartProduct.setBrandId(product.getBrandId());
        cartProduct.setCategoryId(product.getCategoryId());
        cartProduct.setWarehouseId(product.getWarehouseId());
        cartProduct.setQuantity(1);
        return cartProduct;
    }

}
