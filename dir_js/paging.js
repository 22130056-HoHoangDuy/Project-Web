$(document).ready(function () {
  if ($("body").hasClass("disable-search")) {
    $("#orders-table").DataTable({
      searching: false,
      paging: true,
      info: true,
      lengthChange: false,
      pageLength: 5,
      ordering: false,
    });
  } else {
    $("#orders-table").DataTable({
      searching: true,
      paging: true,
      info: true,
      lengthChange: false,
      pageLength: 5,
    });
  }
});
