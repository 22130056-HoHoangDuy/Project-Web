// Lấy các phần tử cần thiết
const editButton = document.querySelector(".change-info");
const saveButton = document.querySelector(".save-info");
const inputs = document.querySelectorAll("#change-info input");

// Xử lý khi nhấn vào nút Edit
editButton.addEventListener("click", () => {
  // Bật tất cả các trường nhập liệu
  inputs.forEach((input) => {
    input.removeAttribute("disabled");
    input.style.backgroundColor = "#fff"; // Đổi màu nền để dễ nhận biết
    input.style.color = "#000";
  });

  // Hiển thị nút Save
  saveButton.hidden = false;

  // Ẩn nút Edit
  editButton.hidden = true;
});

// Xử lý khi nhấn vào nút Save
saveButton.addEventListener("click", () => {
  // Vô hiệu hóa lại các trường nhập liệu
  inputs.forEach((input) => {
    input.setAttribute("disabled", true);
    input.style.backgroundColor = "#f5f5f5"; // Trả lại màu nền ban đầu
    input.style.color = "#888";
  });

  // Hiển thị lại nút Edit
  editButton.hidden = false;

  // Ẩn nút Save
  saveButton.hidden = true;

  // Có thể thêm logic để gửi thông tin cập nhật đến server tại đây
  console.log("Saved info:", {
    phone: document.querySelector(".phone").value,
    hamlet: document.querySelector(".hamlet").value,
    commune: document.querySelector(".commune").value,
    district: document.querySelector(".district").value,
    province: document.querySelector(".province").value,
  });
});
