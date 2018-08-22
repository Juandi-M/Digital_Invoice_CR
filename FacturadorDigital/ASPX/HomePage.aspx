<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FacturadorDigital.ASMX.HomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
    <link href="../STYLES/ChartsHome.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body>
    <%-- Calls Menu --%>
    <div id="menu"></div>
    <%-- Form De UserAccount HAndling --%>
    <asp:Label ID="Welcome" runat="server" />
    <form id="Form1" runat="server">
        <asp:Button ID="Submit1" OnClick="Submit1_Click"
            Text="Sign Out" runat="server" />
    </form>

    <%-- Chart Js BI--%>
    <div class="col-xs-6" id="chart1">
        <h3>Estado de Facturas</h3>
        <canvas id="billingStates"></canvas>
        <script>
            var ctx = document.getElementById("billingStates").getContext('2d');
            var billingStates = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["Emitida", "Guardada", "Recibida"],
                    datasets: [{
                        label: 'Facturas',
                        data: ['5', '5', '5'],
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
        </script>
    </div>
    <div class="col-xs-6" id="chart3">
        <h3>Productos con mayor cantidad en inventario</h3>
        <canvas id="products"></canvas>
        <script>
            var ctx = document.getElementById("products").getContext('2d');
            var products = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['<%=nombreParaProducto[0]%>', '<%=nombreParaProducto[1]%>', '<%=nombreParaProducto[2]%>'],
                    datasets: [{
                        label: 'Facturas',
                        data: ['<%=cantidadParaProducto[0]%>', '<%=cantidadParaProducto[1]%>', '<%=cantidadParaProducto[2]%>'],
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
        </script>
    </div>

    <center>

         <div class="col-xs-6" id="chart2">
            <h3>Facturas Mensuales</h3>
            <canvas id="monthlyBilling"></canvas>
            <script>
                var ctx = document.getElementById("monthlyBilling").getContext('2d');
                var monthlyBilling = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ["Enero", "Febrero", "Marzo", "Abril"],
                        datasets: [{
                            label: 'Facturas',
                            data: [24, 38, 20, 36],
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
            </script>
         </div>
      </center>
</body>
</html>
