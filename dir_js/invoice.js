//Chức năng tìm khách hàng trong bảng invoice list
document.getElementById('customerSearch').addEventListener('keyup', function() {
    let searchValue = this.value.toLowerCase();
    let tableRows = document.querySelectorAll('table tbody tr');
    
    tableRows.forEach(row => {
        let customerName = row.querySelector('td:nth-child(3)').textContent.toLowerCase();
        if (customerName.includes(searchValue)) {
            row.style.display = '';
        } else {
            row.style.display = 'none';
        }
    });
});
// Chức năng chuyển từng page và trước sau trong invoice list
document.addEventListener('DOMContentLoaded', function() {
    const invoiceTable = document.querySelector('tbody');
    const invoiceRows = Array.from(invoiceTable.querySelectorAll('tr'));
    const itemsPerPage = 3;
    const pageLinks = document.querySelectorAll('.page-link');
    
    function showPage(pageNumber) {
        const start = (pageNumber - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        
        invoiceRows.forEach((row, index) => {
            if (index >= start && index < end) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    }
    
    pageLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const pageText = this.textContent;
            
            if (pageText === 'Trước') {
                const activePage = document.querySelector('.page-item.active');
                const prevPage = activePage.previousElementSibling;
                if (prevPage && !prevPage.classList.contains('page-item-prev')) {
                    activePage.classList.remove('active');
                    prevPage.classList.add('active');
                    showPage(parseInt(prevPage.textContent));
                }
            } else if (pageText === 'Sau') {
                const activePage = document.querySelector('.page-item.active');
                const nextPage = activePage.nextElementSibling;
                if (nextPage && !nextPage.classList.contains('page-item-next')) {
                    activePage.classList.remove('active');
                    nextPage.classList.add('active');
                    showPage(parseInt(nextPage.textContent));
                }
            } else {
                document.querySelector('.page-item.active').classList.remove('active');
                this.parentElement.classList.add('active');
                showPage(parseInt(pageText));
            }
        });
    });
    
    // Show first page by default
    showPage(1);
});
