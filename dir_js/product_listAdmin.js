document.addEventListener('DOMContentLoaded', function () {
    // Toggle sidebar collapse
    const menuArrows = document.querySelectorAll('.menu-arrow');
    menuArrows.forEach(menuArrow => {
        menuArrow.addEventListener('click', function () {
            const collapseElement = this.nextElementSibling;
            if (collapseElement) {
                collapseElement.classList.toggle('collapse');
            }
        });
    });

    // Select/Deselect All checkboxes
    const selectAllCheckbox = document.getElementById('customCheck1');
    const itemCheckboxes = document.querySelectorAll('tbody input[type="checkbox"]');

    selectAllCheckbox.addEventListener('change', function () {
        const isChecked = this.checked;
        itemCheckboxes.forEach(checkbox => {
            checkbox.checked = isChecked;
        });
    });

    // Delete button confirmation
    const deleteButtons = document.querySelectorAll('.btn-soft-danger');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function (e) {
            if (!confirm('Bạn có chắc chắn muốn xóa sản phẩm này?')) {
                e.preventDefault();
            }
        });
    });
});
document.addEventListener('DOMContentLoaded', function () {
    // Nút xem chi tiết
    const viewButtons = document.querySelectorAll('.btn-view');
    viewButtons.forEach(button => {
        button.addEventListener('click', function () {
            const productId = this.getAttribute('data-product-id');
            alert(`Xem thông tin sản phẩm: ${productId}`);
            // Thực hiện thêm các thao tác, ví dụ:
            // Hiển thị modal hoặc tải dữ liệu chi tiết từ server
        });
    });

    // Nút xóa sản phẩm
    const deleteButtons = document.querySelectorAll('.btn-delete');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function () {
            const productId = this.getAttribute('data-product-id');
            if (confirm(`Bạn có chắc chắn muốn xóa sản phẩm ID ${productId}?`)) {
                // Thực hiện thao tác xóa (API call hoặc xóa DOM)
                alert(`Sản phẩm ${productId} đã được xóa.`);
            }
        });
    });
});

