<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuResp.aspx.cs" Inherits="FacturadorDigital.ASPX.MenuREsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MenuResTEST</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="../STYLES/MenuResp.css" rel="stylesheet" />
    <script src="../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="../ASPX/HomePage.aspx" class="active">Inicio</a>
        <div class="dropdown">
            <button class="dropbtn" disabled="disabled">
                Cuenta
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="../ASPX/AccountView.aspx">Cuenta(s)</a>
                <a href="../ASPX/SignUpEmitter.aspx">Ajustar Datos Emisor</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn" disabled="disabled">
                Facturación
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="../ASPX/CrearFactura.aspx">Crear Factura</a>
                <a href="../ASPX/EstadoDeFacturas.aspx">Estado de facturas</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn" disabled="disabled">
                Registro de productos 
            <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="../ASPX/UploadFile.aspx">Importar Inventario</a>
                <a href="../ASPX/AgregarProducto.aspx">Agregar producto</a>
                <a href="../ASPX/EditarProducto.aspx">Editar producto</a>
            </div>
        </div>
        <a href="../ASPX/Ayuda.aspx">Ayuda</a>
        <a href="javascript:void(0);" style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>
</body>
</html>

