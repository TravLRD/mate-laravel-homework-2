@extends('layouts.crud')

@section('title', 'Chart')

@section('content')


<div class="card">
  <canvas id="myChart"></canvas>

</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  function groupByThousands(prices) {
    let clusters = {};

    prices.forEach(price => {
      let cluster = Math.floor(price / 1000) * 1000;
      if (!clusters[cluster]) {
        clusters[cluster] = 0;
      }
      clusters[cluster]++;
    });

    return clusters;
  }



  let prices = @json($prices);
  let clusters = groupByThousands(prices);

  let ctx = document.getElementById('myChart').getContext('2d');

  let labels = Object.keys(clusters).map(Number).map(price => price + ' - ' + (price + 999) + " HUF");
  let data = Object.keys(clusters).map(Number).map(upperBound => clusters[upperBound]);

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels,
      datasets: [{
        label: '# of Confections',
        data: data,
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      },
      plugins: {
        title: {
          display: true,
          text: 'Distribution of Confection Prices (in HUF)'
        }
      }
    }
  });
</script>
<!-- /.card -->
@endsection