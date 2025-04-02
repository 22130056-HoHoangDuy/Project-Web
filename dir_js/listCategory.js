document.addEventListener("DOMContentLoaded", function () {
    // Ẩn tất cả nội dung và chỉ hiển thị mặc định 'medical'
    function setupDefaultSection() {
        const contentSections = document.querySelectorAll('.content-section');
        const defaultSection = document.getElementById('medical');
        if (contentSections) {
            contentSections.forEach(section => section.style.display = 'none');
        }
        if (defaultSection) {
            defaultSection.style.display = 'block';
        }
    }

    // Hiển thị/ẩn dropdown menu và chuyển danh mục
    function setupDropdownNavigation() {
        const dropdown = document.querySelector('.dropdown');
        const dropdownBtn = document.querySelector('.dropdown-btn');
        const links = document.querySelectorAll('.dropdown-content a');
        const contentSections = document.querySelectorAll('.content-section');

        if (dropdownBtn) {
            dropdownBtn.addEventListener('click', () => {
                dropdown.classList.toggle('show');
            });
        }

        if (links) {
            links.forEach(link => {
                link.addEventListener('click', () => {
                    contentSections.forEach(section => section.style.display = 'none');
                    const targetId = link.getAttribute('data-target');
                    const targetSection = document.getElementById(targetId);
                    if (targetSection) {
                        targetSection.style.display = 'block';
                    }
                });
            });
        }
    }

    setupDefaultSection();
    setupDropdownNavigation();
});