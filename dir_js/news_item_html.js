// Dữ liệu bài viết mẫu
const newsData = {
    title: "Có Nên Mở Máy Tạo Oxy Trong Phòng? Lợi Ích và Lưu Ý Quan Trọng",
    mainImage: "https://bizweb.dktcdn.net/100/389/346/articles/4-3661f3e3-d6e0-4d0d-98bd-dc58c5eb56de.png",
    mainP: "Máy tạo oxy là thiết bị hữu ích, đặc biệt cho những người gặp vấn đề về hô hấp như bệnh nhân mắc bệnh phổi tắc nghẽn mãn tính (COPD), hen suyễn, phòng kín hay không. Hãy cùng tìm hiểu lợi ích, rủi ro, và cách sử dụng máy tạo oxy đúng cách trong bài viết dưới đây.",
    content: [
        {
            heading: "1. Lợi ích của việc sử dụng máy tạo oxy",
            details: [
                {text: "+ Cung cấp oxy tức thời", description: "Đáp ứng nhu cầu thiếu oxy."},
                {
                    text: "+ Tăng cường chất lượng hô hấp",
                    description: "Giảm cảm giác khó thở, hỗ trợ người bệnh duy trì nồng độ oxy trong máu ổn định."
                },
                {
                    text: "+ Hỗ trợ điều trị bệnh",
                    description: "Máy tạo oxy thường được sử dụng kết hợp trong các phác đồ điều trị bệnh về phổi, tim mạch hoặc các vấn đề liên quan đến giấc ngủ như ngưng thở khi ngủ."
                },
                {image: "https://bizweb.dktcdn.net/100/389/346/files/khi-nao-can-su-dung-may-tao-oxy-1-a4b8d6da-4af8-4ae3-b69b-37f9f969d853.jpg?v=1731904296238"},
                {para: "Máy tạo oxy mang lại nhiều lợi ích"}
            ]
        },
        {
            heading: "2. Có nên mở máy tạo oxy trong phòng kín?",
            details: [
                {para: "Dù máy tạo oxy mang lại nhiều lợi ích, việc sử dụng thiết bị này trong phòng kín cần cân nhắc kỹ lưỡng:"},
                {text: "Trường hợp nên mở máy tạo oxy"},
                {description: "+ Khi người bệnh có chỉ định từ bác sĩ, cần hỗ trợ oxy liên tục."},
                {description: "+ Người bệnh ở trong môi trường có nồng độ oxy thấp hoặc không gian hạn chế không khí lưu thông."},
                {text: "Lưu ý quan trọng"},
                {
                    text: "+ Không sử dụng bừa bãi",
                    description: "Nếu không được chỉ định, việc lạm dụng oxy có thể dẫn đến các biến chứng như giảm thông khí ở phổi."
                },
                {
                    text: "+ Đảm bảo thông gió",
                    description: "Không gian phòng cần được thông thoáng để tránh tích tụ CO2, đặc biệt khi có nhiều người cùng ở trong phòng."
                },
                {
                    text: "+ Không thay thế hoàn toàn không khí tự nhiên",
                    description: "Máy tạo oxy chỉ hỗ trợ người bệnh, không cải thiện chất lượng không khí chung trong phòng."
                },
                {image: "https://cdn.tgdd.vn/Files/2021/10/28/1394201/su-dung-may-tao-oxy-tai-nha-co-tot-khong-nhung-lu-1.jpg"},
                {para: "Cần cân nhắc kỹ lưỡng khi sử dụng máy tạo oxy trong phòng kín"}
            ]
        },
        {
            heading: "3. Rủi ro khi sử dụng máy tạo oxy không đúng cách",
            details: [
                {para: "Việc sử dụng máy tạo oxy không đúng cách có thể gây ra một số vấn đề:"},
                {
                    text: "+ Tăng nguy cơ khô đường hô hấp",
                    description: "Oxy từ máy thường khô, có thể làm khô niêm mạc mũi và miệng."
                },
                {
                    text: "+ Nguy cơ cháy nổ",
                    description: "Oxy dễ bắt lửa, vì vậy không nên sử dụng máy gần nguồn lửa hoặc thiết bị điện phát nhiệt."
                },
                {
                    text: "+ Phụ thuộc vào oxy",
                    description: "Người khỏe mạnh nếu sử dụng máy tạo oxy không cần thiết có thể làm giảm khả năng tự điều chỉnh của cơ thể."
                }
            ]
        },
        {
            heading: "4. Hướng dẫn sử dụng máy tạo oxy an toàn",
            details: [
                {
                    text: "+ Chỉ sử dụng khi có chỉ định y tế",
                    description: "Luôn tuân thủ hướng dẫn của bác sĩ về lưu lượng oxy và thời gian sử dụng."
                },
                {
                    text: "+ Đảm bảo vệ sinh máy",
                    description: "+ Đảm bảo vệ sinh máy: </strong>Vệ sinh bộ lọc và bình tạo ẩm định kỳ để ngăn ngừa vi khuẩn và nấm mốc."
                },
                {
                    text: "+ Không để máy hoạt động liên tục trong không gian kín",
                    description: "Đảm bảo không gian có cửa sổ hoặc máy thông gió hoạt động hiệu quả."
                },
            ]
        },
        {
            heading: "5. Kết luận",
            details: [
                {para: "Mở máy tạo oxy trong phòng là cần thiết đối với những người có nhu cầu y tế cụ thể. Tuy nhiên, để đảm bảo an toàn và hiệu quả, người dùng cần tuân thủ hướng dẫn sử dụng từ bác sĩ và đảm bảo không gian phòng luôn thông thoáng."}
            ]
        }
    ]
};

// Tạo nội dung bài viết
function generateNewsPage(news) {

    const sectionContainer = document.querySelector(".news_item_content");

    if (!sectionContainer) {
        const newContainer = document.createElement("div");
        newContainer.className = "news_item_content";
        const bodyContainer = document.querySelector(".body");
        bodyContainer.appendChild(newContainer);
    }

    // Tiêu đề bài viết
    const title = document.createElement("h1");
    title.textContent = news.title;
    sectionContainer.appendChild(title);

    // Hình ảnh chính (nếu có)
    if (news.mainImage) {
        const sectionImage = document.createElement("div");
        sectionImage.className = "news_item_img";

        const mainImage = document.createElement("img");
        mainImage.src = news.mainImage;
        mainImage.alt = news.title;

        sectionImage.appendChild(mainImage);
        sectionContainer.appendChild(sectionImage);
    }

    const mainP = document.createElement("p");
    mainP.className = "news_item_p";
    mainP.textContent = news.mainP;
    sectionContainer.appendChild(mainP);

    // Nội dung bài viết
    news.content.forEach(section => {
        // Tiêu đề phần
        const sectionHeading = document.createElement("h2");
        sectionHeading.textContent = section.heading;
        sectionContainer.appendChild(sectionHeading);

        var currentList = null;

        section.details.forEach(detail => {
            if (detail.para) {
                // Thêm đoạn văn nếu là chuỗi
                const paragraph = document.createElement("p");
                paragraph.className = "news_item_p";
                paragraph.textContent = detail.para;
                sectionContainer.appendChild(paragraph);
            } else if (detail.image) {
                // Thêm hình ảnh nếu có
                const sectionImage = document.createElement("div");
                sectionImage.className = "news_item_img";
                const image = document.createElement("img");
                image.src = detail.image;
                image.alt = `Hình ảnh trong ${section.heading}`;
                sectionImage.appendChild(image);
                sectionContainer.appendChild(sectionImage);
            } else if (detail.text && !detail.description) {
                const paragraph = document.createElement("p");
                paragraph.className = "news_item_p";
                paragraph.innerHTML = `<strong>${detail.text}</strong>`;
                sectionContainer.appendChild(paragraph);
            } else if (detail.text && detail.description) {
                // Thêm danh sách nếu có cả text và description
                if (!currentList) {
                    currentList = document.createElement("ul");
                    currentList.className = "news_item_ul";
                    sectionContainer.appendChild(currentList);
                }

                const paragraph = document.createElement("p");
                paragraph.className = "news_item_p";

                const listItem = document.createElement("li");
                listItem.className = "news_item_li";
                listItem.innerHTML = `<strong>${detail.text}:</strong> ${detail.description}`;

                paragraph.appendChild(listItem);
                currentList.appendChild(paragraph);
            }
        });
    });
}

// Chạy hàm tạo trang khi DOM sẵn sàng
document.addEventListener("DOMContentLoaded", () => generateNewsPage(newsData));
