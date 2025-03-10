document.addEventListener('DOMContentLoaded', function () {
    initDropdown();
    initDropzone();
});

function initDropdown() {
    const dropdownToggle = document.querySelector('.dropdown-toggle');
    const dropdownMenu = document.querySelector('.dropdown-menu');

    if (!dropdownToggle || !dropdownMenu) return;

    dropdownToggle.addEventListener('click', function (event) {
        event.stopPropagation();
        dropdownMenu.classList.toggle('open');
    });

    const dropdownItems = dropdownMenu.querySelectorAll('li');
    dropdownItems.forEach(item => {
        item.addEventListener('click', function () {
            const selectedCategory = document.getElementById('selectedCategory');
            selectedCategory.value = this.getAttribute('data-value');
            dropdownToggle.innerText = this.innerText;
            dropdownMenu.classList.remove('open');
        });
    });

    document.addEventListener('click', function (event) {
        if (!dropdownMenu.contains(event.target) && !dropdownToggle.contains(event.target)) {
            dropdownMenu.classList.remove('open');
        }
    });
}

function initDropzone() {
    Dropzone.options.myAwesomeDropzone = {
        url: '/upload',
        paramName: 'file',
        maxFilesize: 2,
        acceptedFiles: 'image/*',
        thumbnailWidth: 150,
        thumbnailHeight: 150,
        previewTemplate: `
            <div class="dz-preview dz-file-preview">
                <div class="dz-image">
                    <img data-dz-thumbnail />
                </div>
                <div class="dz-details">
                    <div class="dz-filename"><span data-dz-name></span></div>
                    <div class="dz-size" data-dz-size></div>
                </div>
                <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>
                <div class="dz-error-message"><span data-dz-errormessage></span></div>
            </div>
        `,
        dictDefaultMessage: "Kéo và thả hình ảnh vào đây, hoặc nhấp để chọn",
        dictFileTooBig: "Tệp quá lớn ({{filesize}}MB). Kích thước tối đa là {{maxFilesize}}MB.",
        init: function () {
            this.on("success", function (file, response) {
                alert("Tải lên thành công!");
            });
        },
    };
}
document.getElementById('createProductForm').addEventListener('submit', function (event) {
    const productName = document.getElementById('productName').value.trim();
    const category = document.getElementById('selectedCategory').value.trim();

    if (!productName || !category) {
        alert("Vui lòng nhập đầy đủ thông tin!");
        event.preventDefault(); // Ngăn form gửi đi
    }
});
