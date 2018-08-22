var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ["Facturas Emitidas", "Facturas Rechazadas", "Facturas en Cola", "Facturas Por Aceptar"],
        datasets: [{
            label: 'Facturas',
            data: [24, 38, 18, 36],
            backgroundColor: [
                'rgba(79, 46, 127, 0.8)',
                'rgba(0, 168, 181, 0.8)',
                'rgba(154, 216, 50, 0.8)',
                'rgba(255, 125, 31, 0.8)',
                'rgba(233, 40, 65, 0.8)'
            ],
            borderColor: [
                'rgba(79, 46, 127, 0.8)',
                'rgba(0, 168, 181, 0.8)',
                'rgba(154, 216, 50, 0.8)',
                'rgba(255, 125, 31, 0.8)',
                'rgba(233, 40, 65, 0.8)'
            ],
            borderWidth: 2
        }]
    },
    options: {
        //scales: {
        //    yAxes: [{
        //        ticks: {
        //            beginAtZero:true
        //        }
        //    }]
        //}
        legend: {

            position: 'Center'
        }
    }
});