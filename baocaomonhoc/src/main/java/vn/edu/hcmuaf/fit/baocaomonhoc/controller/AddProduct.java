package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.ProductDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Products;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@MultipartConfig
@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {
    private ProductDao productDao;

    @Override
    public void init() throws ServletException {
        // Khởi tạo ProductDao
        productDao = new ProductDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin từ form
        String productName = request.getParameter("productName");
        double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
        String productDescription = request.getParameter("productDescription");
        String productStatus = request.getParameter("productStatus");
        int brandId = Integer.parseInt(request.getParameter("brandId"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int warehouseId = Integer.parseInt(request.getParameter("wareHouseId"));

        // Lấy hình ảnh từ form
        Part filePart = request.getPart("productImage");
        String productImage = null;

        if (filePart != null && filePart.getSize() > 0) {
            // Lấy tên file và lưu hình ảnh vào thư mục "uploads"
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadDir = getServletContext().getRealPath("/") + "uploads/";
            File uploadDirectory = new File(uploadDir);
            if (!uploadDirectory.exists()) uploadDirectory.mkdir();

            String filePath = uploadDir + fileName;
            filePart.write(filePath);
            productImage = "uploads/" + fileName; // Lưu đường dẫn hình ảnh vào cơ sở dữ liệu
        }

        // Tạo đối tượng Product
        Products newProduct = new Products(0, productName, unitPrice, productDescription, productImage,
                productStatus.equals("available") ? 1 : 0, brandId, categoryId, warehouseId);

        try {
            // Sử dụng ProductDao để thêm sản phẩm vào cơ sở dữ liệu
            productDao.insert(newProduct);

            // Redirect đến trang danh sách sản phẩm hoặc trang thành công
            response.sendRedirect("widgets.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Lỗi khi thêm sản phẩm: " + e.getMessage());
        }
    }
}
