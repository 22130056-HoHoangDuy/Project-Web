// script.js
const products1 = [
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-do-huyet-ap-bap-tay-dien-tu-vofonn-bsav1.jpg",
        name: "Máy đo huyết áp điện tử bắp tay VOFONN AXD-806",
        price: "560.000 VND",
        link: "../dir_html/productInformation.html"
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt-04072024.jpg",
        name: "Máy đo huyết áp điện tử bắp tay Wellmed AXD-804",
        price: "650.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/product/201809/may-do-duong-huyet-sapphire-plus1537408230.nv.jpg",
        name: "Máy đo đường huyết Medismart Sapphire Plus",
        price: "399.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/product/202003/ne-c801-21584072317.nv.png",
        name: "Máy xông mũi họng Omron NE-C801",
        price: "1.160.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-xong-mui-hong-dang-luoi-vofonn-axd-307-av8.jpg",
        name: "Máy xông mũi họng dạng lưới VOFONN AXD-307",
        price: "540.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-tro-thinh-mini-co-the-sac-lai-en-f2-av7.jpg",
        name: "Máy trợ thính mini có thể sạc lại EN-F2",
        price: "590.000 VND",
        link: ""
    }
];

const products2 = [
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av-30102024.jpg",
        name: "Máy trợ thở mini xách tay Snore Circle Auto CPAP YA50",
        price: "12.900.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/mat-na-mui-cho-may-tho-bmc-p2-av1.jpg",
        name: "Mặt nạ mũi cho máy thở BMC P2",
        price: "2.360.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/assets/uploads/may-tro-tho-auto-bipap-g2s-b25a-1-6x61587013056.nv.png",
        name: "Máy trợ thở BMC Auto BiPAP G2S B25A",
        price: "25.200.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-keyhub-reiwa-k5bw-int-5ax-av1-13.jpg",
        name: "Máy tạo oxy 5 lít Keyhub - Reiwa K5BW (INT-5AX)",
        price: "8.700.000 VND",
        link: ""
    },
    {
        img: "https://www.sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-xach-tay-dynmed-poc5-avt-17072024.jpg",
        name: "Máy tạo oxy mini xách tay Dynmed POC5",
        price: "25.000.000 VND",
        link: ""
    }
];

const productList = document.getElementById("product_sub_list_1");

// Tạo danh sách sản phẩm 1
products1.forEach((products) => {
    const productDiv = document.createElement("div");
    productDiv.className = "product_sub_item";
    productDiv.innerHTML = `
        <a href="${products.link}" class="product_link">
            <img src="${products.img}" alt="${products.name}"/>
            <h4>${products.name}</h4>
            <p>${products.price}</p>
        </a>
    `;
    productList.appendChild(productDiv);
});

const productList2 = document.getElementById("product_sub_list_2");

// Tạo danh sách sản phẩm 2
products2.forEach((products) => {
    const productDiv = document.createElement("div");
    productDiv.className = "product_sub_item";
    productDiv.innerHTML = `
        <a href="${products.link}" class="product_link">
            <img src="${products.img}" alt="${products.name}"/>
            <h4>${products.name}</h4>
            <p>${products.price}</p>
        </a>
    `;
    productList2.appendChild(productDiv);
});