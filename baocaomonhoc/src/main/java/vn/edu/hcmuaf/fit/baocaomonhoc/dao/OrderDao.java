package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Orders;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.ProductReviews;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    public List<Orders> getAllOrders() { //Lay ra danh sach tat ca don hang
//        Statement statement = DBConnect.get();
//        ResultSet resultSet = null;
        ArrayList<Orders> orders = new ArrayList<>();
//        String sql = "select * from orders";
//        try {
//            resultSet = statement.executeQuery(sql);
//            while (resultSet.next()) {
//                orders.add(new Orders(
//                        resultSet.getInt(1),
//                        resultSet.getDate(2),
//                        resultSet.getString(3),
//                        resultSet.getDouble(4),
//                        resultSet.getString(5),
//                        resultSet.getString(6),
//                        resultSet.getString(7),
//                        resultSet.getInt(8)
//                ));
//            }
//            return orders;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        return orders;
    }


    public Orders getOrderByID(int id) { //Lay ra don hang voi id
//        Statement statement = DBConnect.get();
//        ResultSet resultSet = null;
//        String sql = "select * from orders where id = " + id;
//        try {
//            resultSet = statement.executeQuery(sql);
//            while (resultSet.next()) {
//                return new Orders(
//                        resultSet.getInt(1),
//                        resultSet.getDate(2),
//                        resultSet.getString(3),
//                        resultSet.getDouble(4),
//                        resultSet.getString(5),
//                        resultSet.getString(6),
//                        resultSet.getString(7),
//                        resultSet.getInt(8)
//                );
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        return null;
    }


    public static void main(String[] args) {
        OrderDao orderDao = new OrderDao();
        List<Orders> orders = orderDao.getAllOrders();
        for (Orders ord : orders) {
            System.out.println(ord);
        }
    }


}
