<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 4/4/2025
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm</title>
    <link href="css/admin/addEditProduct.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Thêm Sản Phẩm Mới</h1>
    <form action="${pageContext.request.contextPath}/addProduct" method="POST" enctype="multipart/form-data">
        <label for="productId">Mã Sản Phẩm:</label>
        <input type="text" id="productId" name="productId" required>

        <label for="productName">Tên Sản Phẩm:</label>
        <input type="text" id="productName" name="productName" required>

        <label for="unitPrice">Giá:</label>
        <input type="number" id="unitPrice" name="unitPrice" required>

        <label for="productDescription">Mô Tả:</label>
        <textarea id="productDescription" name="productDescription" required></textarea>

        <label for="productImage">Hình Ảnh:</label>
        <input type="file" id="productImage" name="productImage" accept="image/*" required>

        <label for="productStatus">Trạng Thái:</label>
        <select id="productStatus" name="productStatus" required>
            <option value="available">Còn Hàng</option>
            <option value="out_of_stock">Hết Hàng</option>
        </select>

        <label for="brandId">Mã Thương Hiệu:</label>
        <input type="text" id="brandId" name="brandId" required>

        <label for="categoryId">Mã Danh Mục:</label>
        <input type="text" id="categoryId" name="categoryId" required>

        <label for="wareHouseId">Mã Kho:</label>
        <input type="text" id="wareHouseId" name="wareHouseId" required>

        <button type="submit">Thêm Sản Phẩm</button>
    </form>

</div>
</body>
</html>
