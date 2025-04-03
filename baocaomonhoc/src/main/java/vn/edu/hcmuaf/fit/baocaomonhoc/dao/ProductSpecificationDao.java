package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.ProductSpecification;

import java.util.List;

public class ProductSpecificationDao {
    Jdbi jdbi;

    public ProductSpecificationDao() {
        jdbi = DBConnect.get();
    }

    public ProductSpecificationDao(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public List<ProductSpecification> getAll() {
        return jdbi.withHandle(handle -> handle.createQuery("select * from product_specifications").mapToBean(ProductSpecification.class).list());
    }

    public List<ProductSpecification> getByProductId(int pid) {
//        Statement statement = DBConnect.get();
//        ResultSet resultSet = null;
//        ArrayList<ProductSpecification> specifications = new ArrayList<>();
//        String sql = "select * from product_specifications where productId = " + pid;
//        try {
//            resultSet = statement.executeQuery(sql);
//            while (resultSet.next()) {
//                specifications.add(new ProductSpecification(
//                        resultSet.getInt(1),
//                        resultSet.getString(2),
//                        resultSet.getString(3),
//                        resultSet.getInt(4)
//                ));
//            }
//            return specifications;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return specifications;
        String sql = "select * from product_specifications where productId = :productId";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("productId", pid).mapToBean(ProductSpecification.class).list());
    }

    public static void main(String[] args) {
        ProductSpecificationDao dao = new ProductSpecificationDao();
        List<ProductSpecification> specifications = dao.getByProductId(5);
        for (ProductSpecification specification : specifications) {
            System.out.println(specification);
        }
    }
}
