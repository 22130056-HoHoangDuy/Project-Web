package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Categories;

import java.util.List;

public class CategoryDao {
    Jdbi jdbi;

    public CategoryDao(Jdbi jdbi) {
        this.jdbi = jdbi;
    }

    public CategoryDao() {
        this.jdbi = DBConnect.get();
    }

    //lay ra tat ca category
    public List<Categories> getAll() {
        return jdbi.withHandle(handle -> handle.createQuery("select * from categories").mapToBean(Categories.class).list());
    }

    //lay category by id
    public Categories getById(int id) {
        String sql = "select * from categories where categoryId = :id";
        return jdbi.withHandle(handle -> handle.createQuery(sql).bind("id", id).mapToBean(Categories.class).findOne().orElse(null));
    }

    //lay ra category thuoc pid
    public List<Categories> getByParentId(int parentId) {
        return jdbi.withHandle(handle -> handle.createQuery("select * from categories where categoryParentId = " + parentId).mapToBean(Categories.class).list());
    }

    public List<Categories> getParent() {
        return jdbi.withHandle(handle -> handle.createQuery("select * from categories where categoryParentId is null").mapToBean(Categories.class).list());
    }

    public static void main(String[] args) {
        CategoryDao dao = new CategoryDao();
//        List<Categories> categories = dao.getParent();
//        for (Categories c : categories) {
//            System.out.println(c);
//        }
        System.out.println(dao.getById(1));
    }
}
