document.addEventListener("DOMContentLoaded", () => {
    const newsPage1 = [
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/4-3661f3e3-d6e0-4d0d-98bd-dc58c5eb56de.png?v=1731904639130",
            alt: "Có Nên Mở Máy Tạo Oxy Trong Phòng? Lợi Ích và Lưu Ý Quan Trọng",
            p: "Có Nên Mở Máy Tạo Oxy Trong Phòng? Lợi Ích...",
            date: "18/11/2024",
            comment: "0 bình luận",
            link: "../dir_html/news_item.html"
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/may-tao-oxy-nen-dung-khi-nao.png?v=1731902932887",
            alt: "Máy Tạo Oxy Nên Dùng Khi Nào? Hướng Dẫn Sử Dụng Đúng Cách",
            p: "Máy Tạo Oxy Nên Dùng Khi Nào? Hướng Dẫn Sử...",
            date: "18/11/2024",
            comment: "0 bình luận",
            link: ""
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/untitled-1.png?v=1731901263927",
            alt: "Cách Vệ Sinh Máy Trợ Thở Tại Nhà Đúng Cách: Hướng Dẫn Chi Tiết",
            p: "Cách Vệ Sinh Máy Trợ Thở Tại Nhà Đúng Cách:...",
            date: "18/11/2024",
            comment: "0 bình luận",
            link: ""
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/4.png?v=1731750166593",
            alt: "Những Lưu Ý Khi Mua Máy Trợ Thở", p: "Những Lưu Ý Khi Mua Máy Trợ Thở",
            date: "16/11/2024", comment: "0 bình luận", link: ""
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/3.png?v=1731749181610",
            alt: "Ngưng Thở Khi Ngủ: Bệnh Lý Thầm Lặng Nhưng Nguy Hiểm",
            p: "Ngưng Thở Khi Ngủ: Bệnh Lý Thầm Lặng Nhưng Nguy...",
            date: "16/11/2024",
            comment: "0 bình luận",
            link: ""
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/untitled-2.png?v=1731747352683",
            alt: "Tiêu Chí Lựa Chọn Máy Trợ Thở Phù Hợp", p: "Tiêu Chí Lựa Chọn Máy Trợ Thở Phù Hợp",
            date: "16/11/2024", comment: "0 bình luận", link: ""
        },
        {
            src: "https://bizweb.dktcdn.net/thumb/large/100/389/346/articles/brand3.jpg?v=1731744011640",
            alt: "Béo Phì và Ngưng Thở Khi Ngủ ở Trẻ Em: Mối Nguy Hại Tiềm Ẩn",
            p: "Béo Phì và Ngưng Thở Khi Ngủ ở Trẻ Em:...",
            date: "16/11/2024",
            comment: "0 bình luận",
            link: ""
        },

    ];

    const itemsPerPage = 6;
    const newsItemList = document.getElementById("blog_item_list");

    function renderPage(data) {
        newsItemList.innerHTML = ""; //xoa noi dung cu
        data.forEach((item) => {
            const productDiv = document.createElement("div");
            productDiv.className = "blog_item";
            productDiv.innerHTML = `
            <a href="">
                <div class="news">
                    <div class="news_content">
                        <div class="img_intro_item"><img src="${item.src}" alt="${item.alt}"></div>
                        <div class="intro_news_item">
                            <p>${item.p}</p>
                            <p><i class="fa-regular fa-calendar-days"></i> ${item.date} <i class="fa-solid fa-message"></i> ${item.comment} </p>
                            <p><i class="fa-solid fa-caret-right"></i>Đọc tiếp</p>
                        </div>
                    </div>
                </div>
            </a>
        `;
            newsItemList.appendChild(productDiv);
        });
    }

    function changePage(pageNumber) {
        const start = (pageNumber - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        const pageData = newsPage1.slice(start, end);
        console.log("Page Number:", pageNumber, "Data:", pageData); // Theo dõi dữ liệu
        renderPage(pageData);
    }

// Gắn sự kiện cho các trang
    document.querySelectorAll(".page_item a").forEach((link, index) => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            changePage(index + 1);
        });
    });
    changePage(1);
});