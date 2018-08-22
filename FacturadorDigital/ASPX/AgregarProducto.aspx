<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="FacturadorDigital.ASPX.AgregarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar producto</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
    <script src="../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
    <link href="../STYLES/AgregarProducto.css" rel="stylesheet" />
    <script src="../SCRIPTS/AgregarProducto.js"></script>
</head>

<body>
    <div id="menu"></div>

    <form id="form1" runat="server" class="ccform">
        <h1>Agregar producto</h1>

        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-hashtag fa-2x"></i></span>
            <asp:TextBox ID="codigoDeProducto" CssClass="ccformfield"  type="number" runat="server" placeholder="Código de producto" Required="Required"></asp:TextBox>
            <asp:Button ID="searchCodigo" runat="server" Text="Button" />
        </div>

        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-edit fa-2x"></i></span>
            <asp:TextBox ID="nombreDeProducto" CssClass="ccformfield"  type="text" runat="server" placeholder="Nombre de producto" Required="Required"></asp:TextBox>
        </div>
        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-hashtag fa-2x"></i></span>
            <asp:TextBox ID="cantidadDisponible" CssClass="ccformfield"  type="number" runat="server" placeholder="Cantidad disponible en inventario" Required="Required"></asp:TextBox>
        </div>
         <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-money fa-2x"></i></span>
            <asp:TextBox ID="precioUnidad" CssClass="ccformfield"  type="number" runat="server" placeholder="Precio por unidad" Required="Required"></asp:TextBox>
        </div>

        <div class="container">
        <asp:RadioButtonList  ID="listaDeImpuesto" runat="server" CssClass="radioboxlist" >
            <asp:ListItem Value="0.13" >13% de impuesto </asp:ListItem>
            <asp:ListItem Value="0" >Sin impuesto impuesto</asp:ListItem>
        </asp:RadioButtonList>
        </div>

         <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-percent fa-2x"></i></span>
            <asp:TextBox ID="porcentajeDeGanancia" CssClass="ccformfield"  type="number" runat="server" placeholder="Porcentaje de ganancia" Required="Required"></asp:TextBox>
        </div>
        <div class="ccfield-prepend">
            
            <asp:Button ID="Button1" class="ccbtn" runat="server" Text="Crear" OnClientClick="return Validate()" OnClick="Button1_Click" />
        &nbsp;</div>

    </form>
</body>
</html>
