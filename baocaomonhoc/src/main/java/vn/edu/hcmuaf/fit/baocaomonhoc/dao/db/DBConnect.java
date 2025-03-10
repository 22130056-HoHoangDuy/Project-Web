package vn.edu.hcmuaf.fit.baocaomonhoc.dao.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

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
    }

    public static void main(String[] args) {
        Jdbi jdbi = get();
        List<Products> productsList = jdbi.withHandle(handle -> {
            return handle.createQuery("select * from products").mapToBean(Products.class).list();
        });
        for (Products products : productsList) {
            System.out.println(products);
        }
    }
}
