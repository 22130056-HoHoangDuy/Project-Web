package vn.edu.hcmuaf.fit.baocaomonhoc.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Users;

public class UserDao {

    Jdbi jdbi;

    public UserDao() {
        jdbi = DBConnect.get();
    }

    public Users findUserName(String username) {
        return jdbi.withHandle(handle ->
                handle.createQuery("select * from users where userName=:username")
                        .bind("username", username)
                        .mapToBean(Users.class)
                        .findFirst().orElse(null)
        );
    }

    public Users checkLogin(String username, String password) {
        return jdbi.withHandle(handle ->
                handle.createQuery("select * from users where userName=:username and password=:password")
                        .bind("username", username)
                        .bind("password", password)
                        .mapToBean(Users.class)
                        .findFirst().orElse(null)
        );
    }

    public boolean insertUser(String username, String password, int role) {
        String sql = "insert into users (userName,password, role) values (:username,:password, :role)";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("username", username)
                        .bind("password", password)
                        .bind("role", role)
                        .execute() > 0
        );
    }

    public boolean updateUser(String username, String password) {
        String sql = "update users set password=:password where userName=:username";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("password", password)
                        .bind("username", username)
                        .execute() > 0);
    }

    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        boolean users = userDao.updateUser("Lê Thanh Hải", "22130000");
        System.out.println(users);
    }
    public Users findUserByEmail(String email) {
        return jdbi.withHandle(handle ->
                handle.createQuery("SELECT * FROM users WHERE email = :email")
                        .bind("email", email)
                        .mapToBean(Users.class)
                        .findFirst()
                        .orElse(null)  // Trả về null nếu không tìm thấy người dùng
        );
    }

    public boolean updateUserPassword(String email, String newPassword) {
        String sql = "UPDATE users SET password = :password WHERE email = :email";
        return jdbi.withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("email", email)
                        .bind("password", newPassword)
                        .execute() > 0);
    }
    
}
