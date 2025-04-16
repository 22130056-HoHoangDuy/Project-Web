// Dropdown toggle functionality
document.addEventListener('DOMContentLoaded', function () {
    const dropdownToggle = document.querySelector('.dropdown-toggle');  // Sử dụng class thay vì ID
    const dropdownMenu = document.querySelector('.dropdown-menu');  // Sử dụng class thay vì ID

    // Kiểm tra nếu có phần tử
    if (dropdownToggle && dropdownMenu) {
        dropdownToggle.addEventListener('click', function (event) {
            event.stopPropagation();  // Ngừng sự kiện lan truyền
            dropdownMenu.classList.toggle('open');  // Toggle dropdown
        });

        // Chọn mục trong dropdown và cập nhật giá trị
        const dropdownItems = dropdownMenu.getElementsByTagName('li');
        for (let item of dropdownItems) {
            item.addEventListener('click', function () {
                const selectedCategory = document.getElementById('selectedCategory');
                selectedCategory.value = this.getAttribute('data-value');  // Set giá trị đã chọn
                dropdownToggle.innerText = this.innerText;  // Cập nhật tên category cho button
                dropdownMenu.classList.remove('open');  // Đóng menu sau khi chọn
            });
        }

        // Đảm bảo dropdown menu sẽ đóng khi click ngoài menu
        document.addEventListener('click', function (event) {
            if (!dropdownMenu.contains(event.target) && !dropdownToggle.contains(event.target)) {
                dropdownMenu.classList.remove('open');
            }
        });
    }
});
// Khởi tạo Dropzone cho form có ID là 'myAwesomeDropzone'
Dropzone.options.myAwesomeDropzone = {
     url: '/upload',  // Thay đổi URL này thành endpoint của bạn để xử lý việc tải lên ảnh
     paramName: 'file', // Tên file khi gửi lên server
     maxFilesize: 2, // Kích thước tối đa của mỗi file (2MB)
     acceptedFiles: 'image/*', // Cho phép chỉ tải lên ảnh
     dictDefaultMessage: "Kéo và thả hình ảnh vào đây, hoặc nhấp để chọn",
     dictFallbackMessage: "Trình duyệt của bạn không hỗ trợ tính năng này.",
     dictInvalidFileType: "Loại file không hợp lệ. Chỉ cho phép tải lên hình ảnh.",
     dictFileTooBig: "Tệp quá lớn ({{filesize}}MB). Kích thước tối đa là {{maxFilesize}}MB.",
     dictResponseError: "Lỗi tải lên, vui lòng thử lại.",
};

