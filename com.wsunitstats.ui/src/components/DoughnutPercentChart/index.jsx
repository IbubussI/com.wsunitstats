import { Chart as ChartJS, ArcElement, Tooltip, Legend } from 'chart.js';
import { Doughnut } from 'react-chartjs-2';

ChartJS.register(ArcElement, Tooltip, Legend);

export const DoughnutPercentChart = ({content, valuePrefix}) => {
  const labels = Array(content.length);
  const probabilities = Array(content.length);
  const values = Array(content.length);

  for (let i = 0; i < content.length; ++i) {
    let probability = content[i].probability;
    let value = content[i].value;
    labels[i] = `${probability}% : ${value}`;
    probabilities[i] = probability;
    values[i] = value;
  }

  const data = {
    labels: labels,
    datasets: [
      {
        data: probabilities,
        dataValues: values,
        borderWidth: 1,
        backgroundColor: [
          'rgba(122, 16, 16, 1)',
          'rgba(168, 87, 15, 1)',
          'rgba(168, 116, 15, 1)',
          'rgba(15, 132, 21, 1)',
        ],
        tooltip: {
          titlePrefix: 'Thickness: ',
          labelSuffix: '%',
        },
        centerText: "AVG",
      },
    ],
  };

  const avgText = {
    beforeDatasetsDraw(chart, args, pluginOptions) {
      const { ctx, data } = chart;
      let x = chart.getDatasetMeta(0).data[0].x;
      let y = chart.getDatasetMeta(0).data[0].y;
      let dataset = data.datasets[0];

      ctx.font = 'bolder 20px sans-relief';
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      ctx.fillText(dataset.centerText, x, y - 10);

      ctx.font = 'bolder 20px sans-relief';
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      ctx.fillText(findAverage(dataset.dataValues, dataset.data), x, y + 10);
    }
  }

  const tooltipTitle = (tooltipItems) => {
    let tooltipItem = tooltipItems[0];
    let dataset = tooltipItem.chart.data.datasets[0];
    let value = dataset.dataValues[tooltipItem.dataIndex];
    return dataset.tooltip?.titlePrefix + value;
  }

  const tooltipLabel = (tooltipItem) => {
    let dataset = tooltipItem.chart.data.datasets[0];
    let value = dataset.data[tooltipItem.dataIndex];
    return value + dataset.tooltip?.labelSuffix;
  }

  const options = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: {
      legend: {
        position: 'right'
      },
      tooltip: {
        callbacks: {
          title: tooltipTitle,
          label: tooltipLabel,
        }
      }
    }
  }

  return (
    <Doughnut
      data={data}
      options={options}
      plugins={[avgText]}
    />
  );
}

function findAverage(values, probabilities) {
  let result = 0;
  for (let i = 0; i < values.length; ++i) {
    result = result + values[i] * probabilities[i] / 100;
  }
  return result;
}