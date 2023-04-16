import * as React from 'react';
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from 'chart.js';
import { Doughnut } from 'react-chartjs-2';

ChartJS.register(ArcElement, Tooltip, Legend);

export const ArmorChart = ({content, valuePrefix}) => {
  const [labels, probabilities, values, avg] = React.useMemo(() => {
    let labels_ = Array(content.length);
    let probabilities_ = Array(content.length);
    let values_ = Array(content.length);
    for (let i = 0; i < content.length; ++i) {
      let probability = content[i].probability;
      let value = content[i].value;
      labels_[i] = `${probability}% : ${value}`;
      probabilities_[i] = probability;
      values_[i] = value;
    }
    let avg_ = findAverage(values_, probabilities_).toFixed(1);
    return [labels_, probabilities_, values_, avg_];
  }, [content]);

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
          titlePrefix: valuePrefix,
          labelSuffix: '%',
        },
        centerText: "AVG",
      },
    ],
  };

  const avgText = {
    beforeDraw(chart) {
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
      ctx.fillText(avg, x, y + 10);
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
        position: 'right',
        onClick: (e) => e.stopPropagation()
      },
      tooltip: {
        callbacks: {
          title: tooltipTitle,
          label: tooltipLabel,
        }
      },
    },
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