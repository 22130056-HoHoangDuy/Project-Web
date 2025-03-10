
 function toggleEditForm() {
    const form = document.getElementById('editCustomerForm');
    const overlay = document.querySelector('.overlay');
    
    if(form.style.display === 'none') {
        form.style.display = 'block';
        document.body.insertAdjacentHTML('beforeend', '<div class="overlay"></div>');
    } else {
        form.style.display = 'none';
        document.querySelector('.overlay').remove();
    }
}

 function saveCustomerInfo() {
    // Lấy giá trị từ form
    const name = document.getElementById('customerName').value;
    const email = document.getElementById('customerEmail').value;
    const phone = document.getElementById('customerPhone').value;
    const address = document.getElementById('customerAddress').value;
    
    // Cập nhật UI
    document.querySelector('.mb-1').textContent = name;
    document.querySelector('.fs-15.mb-1.mt-1 .text-dark.fw-medium').textContent = email;
    document.querySelector('.fs-15.mb-0.mt-1 .text-dark.fw-medium').textContent = phone;
    
    // Đóng form
    toggleEditForm();
}


// Xử lý sự kiện chuyển đổi phần lịch sử giao dịch của khách hàng
const transactionsPerPage = 3;
let currentPage = 1;

const transactions = [
    {
        id: "#INV2540",
        status: "Hoàn thành",
        statusClass: "bg-success-subtle text-success",
        amount: "$421.00",
        dueDate: "01/01/2024",
        paymentMethod: "Mastercard"
    },
    {
        id: "#INV3924",
        status: "Hủy", 
        statusClass: "bg-danger-subtle text-danger",
        amount: "$421.00",
        dueDate: "01/01/2024",
        paymentMethod: "Paypal"
    },
    {
        id: "#INV5032",
        status: "Hoàn thành",
        statusClass: "bg-success-subtle text-success",
        amount: "$421.00",
        dueDate: "01/01/2024",
        paymentMethod: "Paypal"
    },
    {
        id: "#INV1695",
        status: "Chờ thanh toán",
        statusClass: "bg-primary-subtle text-primary",
        amount: "$301.00",
        dueDate: "01/01/2024",
        paymentMethod: "Mastercard"
    },
    {
        id: "#INV8473",
        status: "Hoàn thành",
        statusClass: "bg-success-subtle text-success",
        amount: "$41.00",
        dueDate: "01/01/2024",
        paymentMethod: "Visa"
    },
    {
        id: "#INV8888",
        status: "Hoàn thành",
        statusClass: "bg-success-subtle text-success",
        amount: "$41.00",
        dueDate: "01/01/2024",
        paymentMethod: "Visa"
    },    {
        id: "#INV4444",
        status: "Hoàn thành",
        statusClass: "bg-success-subtle text-success",
        amount: "$41.00",
        dueDate: "01/01/2024",
        paymentMethod: "Mastercard"
    }
];

function displayTransactions(page) {
    const tableBody = document.querySelector('.table-centered tbody');
    tableBody.innerHTML = '';
    
    const start = (page - 1) * transactionsPerPage;
    const end = start + transactionsPerPage;
    const pageTransactions = transactions.slice(start, end);

    pageTransactions.forEach(trans => {
        const row = `
            <tr>
                <td><a href="javascript: void(0);" class="text-body">${trans.id}</a></td>
                <td><span class="badge ${trans.statusClass} py-1 px-2">${trans.status}</span></td>
                <td>${trans.amount}</td>
                <td>${trans.dueDate}</td>
                <td>${trans.paymentMethod}</td>
            </tr>
        `;
        tableBody.innerHTML += row;
    });
}

function updatePaginationActive(page) {
    document.querySelectorAll('.page-item').forEach(item => {
        item.classList.remove('active');
        if (item.textContent.trim() === page.toString()) {
            item.classList.add('active');
        }
    });
}

function changePage(page) {
    if (page === 'prev') {          
        currentPage = Math.max(1, currentPage - 1);
    } else if (page === 'next') {
        currentPage = Math.min(3, currentPage + 1);
    } else {
        currentPage = page;
    }
    
    displayTransactions(currentPage);
    updatePaginationActive(currentPage);
}

// Initialize first page
document.addEventListener('DOMContentLoaded', () => {
    displayTransactions(1);
    updatePaginationActive(1);
});

// Xử lý thông tin khách hàng
function toggleEditForm() {
    const infoSection = document.querySelector('.mt-4.pt-3');
    const name = infoSection.querySelector('h4');
    const email = infoSection.querySelector('p:nth-child(1)');
    const phone = infoSection.querySelector('p:nth-child(2)');

    // Toggle contenteditable
    if (name.contentEditable === 'true') {
        // Save mode
        name.contentEditable = 'false';
        email.contentEditable = 'false';
        phone.contentEditable = 'false';
        
        // Remove edit styling
        infoSection.classList.remove('editing');
        
        // Update badge and username if name changed
        const username = document.querySelector('.link-primary');
        username.textContent = '@' + name.textContent.toLowerCase().replace(/\s+/g, '_');
        
    } else {
        // Edit mode
        name.contentEditable = 'true';
        email.contentEditable = 'true';
        phone.contentEditable = 'true';
        
        // Add edit styling
        infoSection.classList.add('editing');
    }
}


