function createBarChart(containerId, data, categories) {
  const options = {
    chart: {
      type: "bar",
      height: 400,
      toolbar: {
        show: false,
      },
    },
    series: data,
    xaxis: {
      categories: categories,
    },
    plotOptions: {
      bar: {
        borderRadius: 5,
      },
    },
    colors: ["rgb(255, 108, 47)", "rgb(34, 197, 94)"],
  };

  const chart = new ApexCharts(
    document.querySelector(`#${containerId}`),
    options
  );
  chart.render();
}

const data = [
  { name: "Doanh thu", data: [30, 40, 45, 50, 49, 60, 70, 91] },
  { name: "Chi phí", data: [20, 30, 35, 40, 39, 50, 60, 80] },
];
const categories = [
  "Tháng 1",
  "Tháng 2",
  "Tháng 3",
  "Tháng 4",
  "Tháng 5",
  "Tháng 6",
  "Tháng 7",
  "Tháng 8",
];
createBarChart("bar-chart", data, categories);
