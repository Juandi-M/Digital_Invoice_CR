<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ayuda.aspx.cs" Inherits="FacturadorDigital.ASPX.Ayuda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>¿Ayuda?</title>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
    <script src="../SCRIPTS/Ayuda.js"></script>
    <link href="../STYLES/Ayuda.css" rel="stylesheet" />
    <script src="../SCRIPTS/AyudaMain.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="menu"></div>
        <section class="cd-faq">

            <h2>Ayuda</h2>
            <p>Esta página presenta una pequeña guía para crear una factura y utilizar de manera adecuada este programa.</p>
            <div class="cd-faq-items">
                <div class="cd-faq-items">
                    <ul id="basics" class="cd-faq-group">
                        <li>
                            <a class="cd-faq-trigger" href="#0">Crear una factura</a>
                            <div class="cd-faq-content">
                                <p>Para crear una factura es necesario conocer sus pasos. Existe una pestaña que permite crear una factura desde 0. 
                                    El primer paso para ingresar una factura al sistema es ingresar los datos del comprador. 
                                    El paso siguiente es ingresar el método de pago y la moneda a la cual se hará la factura. 
                                    Teniendo esto listo se procederá a ingresar cada atributo necesario del producto a vender. 
                                    Terminado esto, ya se le permite al usuario emitir la factura lo cual hará el procedimiento adecuado para 
                                    la publicación de esta a hacienda o exportarla en formato PDF.
                                </p>
                            </div>
                            <!-- cd-faq-content -->
                        </li>

                        <li>
                            <a class="cd-faq-trigger" href="#0">Ingresar a la pagina</a>
                            <div class="cd-faq-content">
                                <p>Para hacer uso de esta página es necesario tener las credenciales. Como cualquier otra página, es posible crear un nuevo usuario o ingresar con un usuario ya existente. Se permite guardar credenciales para evitar ingresar estas de manera seguida y sea mas sencillo su uso. Por lo tanto, cada cierto tiempo se borrara esta información para demostrar seguridad.</p>
                            </div>
                            <!-- cd-faq-content -->
                        </li>

                        <li>
                            <a class="cd-faq-trigger" href="#0">Actualizar producto</a>
                            <div class="cd-faq-content">
                                <p>Si desea cambiar algún valor de un producto ya ingresado, es sencillo. Solo necesita conocer su código para buscarlo en su respectiva pestaña  y esta devolverá los atributos para proseguir con su edición. </p>
                            </div>
                            <!-- cd-faq-content -->
                        </li>

                        <li>
                            <a class="cd-faq-trigger" href="#0">Cargar productos al sistema</a>
                            <div class="cd-faq-content">
                                <p>Para cargar una gran cantidad de productos al sistema de una sola vez se puede realizar por medio de un Excel llamado TEST1. Se procede con editar el Excel con los atributos mencionados en este documento para que la base de datos pueda leerlos es necesario mantener el orden. Después de darle carga el documento aparecerá en la página web para ver el formato final y el último paso sería darle clic a actualizar. </p>
                            </div>
                            <!-- cd-faq-content -->
                        </li>
                    </ul>
                    <!-- cd-faq-group -->
                </div>
            </div>
            <section />
    </form>
</body>
</html>
