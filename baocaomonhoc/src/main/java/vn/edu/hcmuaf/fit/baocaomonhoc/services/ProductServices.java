package vn.edu.hcmuaf.fit.baocaomonhoc.services;

import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.util.List;

public class ProductServices {
    static ProductDao productDao = new ProductDao();

    public List<Products> getAll(){
        System.out.println("dang ket noi csdl");
        return productDao.getAll();
    }

    public static void main(String[] args) {
        ProductServices service = new ProductServices();
        List<Products> products = service.getAll();
        for(Products p : products){
            System.out.println(p);
        }
    }

//    public Products getDetail(String in){
//        try{
//            int id = Integer.parseInt(in);
//            return productDao.getById(id);
//        } catch (NumberFormatException e) {
//            return null;
//        }
//    }
}
