package vn.edu.hcmuaf.fit.baocaomonhoc.dao.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class DBConnect {

    private final static String url = "jdbc:mysql://" + DBProperties.host() + ":" + DBProperties.port() + "/" + DBProperties.dbname() + "?" + DBProperties.option();
    static Jdbi jdbi;

    public  static  Jdbi get(){
        if(jdbi == null){makeConnect();}
        return jdbi;
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL(url);
        dataSource.setUser(DBProperties.username());
        dataSource.setPassword(DBProperties.password());

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException e) {
        }
        jdbi = Jdbi.create(dataSource);
        System.out.println("DB Username: " + DBProperties.username());
        System.out.println("DB Password: " + DBProperties.password());

    }

    public static void main(String[] args) {
        /*
        Jdbi jdbi = get();
        List<Products> productsList = jdbi.withHandle(handle -> {
            return handle.createQuery("SELECT * FROM Product")
                    .mapToBean(Products.class)
                    .list();
        });
        for (Products product : productsList) {
            System.out.println(product);

        }
         */
        try {
            // Kiểm tra kết nối
            Jdbi jdbi = get();
            if (jdbi != null) {
                System.out.println("Kết nối thành công!");

                // Truy vấn danh sách sản phẩm
                List<Products> productsList = jdbi.withHandle(handle ->
                        handle.createQuery("SELECT * FROM products")
                                .mapToBean(Products.class)
                                .list()
                );

                if (productsList.isEmpty()) {
                    System.out.println("Không có sản phẩm nào trong database!");
                } else {
                    for (Products product : productsList) {
                        System.out.println(product);
                    }
                }
            } else {
                System.out.println("Kết nối thất bại!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
