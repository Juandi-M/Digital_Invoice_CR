    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarProducto.aspx.cs" Inherits="FacturadorDigital.ASPX.EditarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editar Producto</title>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
    <link href="../STYLES/AgregarProducto.css" rel="stylesheet" />
    <script src="../SCRIPTS/AgregarProducto.js"></script>
   
</head>
<body>
    <div id="menu"></div>

    <form id="form1" runat="server" class="ccform">
        <h1>Editar producto</h1>

        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-search fa-2x"></i></span>
            <asp:TextBox ID="codigoDeProductoABuscar" CssClass="ccformfield"  type="number" runat="server" placeholder="Código de producto" ></asp:TextBox>
            <asp:Button ID="searchButton" runat="server" class="ccbtn" Text="Buscar" OnClick="Search_Click" />
        </div>

        <hr/>

        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-edit fa-2x"></i></span>
            <asp:TextBox ID="nombreDeProducto" CssClass="ccformfield"  type="text" runat="server" placeholder="Nombre de producto" ></asp:TextBox>
        </div>
        <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-hashtag fa-2x"></i></span>
            <asp:TextBox ID="cantidadDisponible" CssClass="ccformfield"  type="number" runat="server" placeholder="Cantidad disponible en inventario" ></asp:TextBox>
        </div>
         <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-money fa-2x"></i></span>
            <asp:TextBox ID="precioPorUnidad" CssClass="ccformfield"  type="float" runat="server" placeholder="Precio por unidad" ></asp:TextBox>
        </div>

        <div class="container">
        <asp:RadioButtonList  ID="listaDeImpuesto" runat="server" CssClass="radioboxlist" >
            <asp:ListItem Value="0.13" >13% de impuesto </asp:ListItem>
            <asp:ListItem Value="0" >Sin impuesto impuesto</asp:ListItem>
        </asp:RadioButtonList>
        </div>

         <div class="ccfield-prepend">
            <span class="ccform-addon"><i class="fa fa-percent fa-2x"></i></span>
            <asp:TextBox ID="porcentajeDeGanancia" CssClass="ccformfield"  type="number" runat="server" placeholder="Porcentaje de ganancia" ></asp:TextBox>
        </div>

        <div class="ccfield-prepend">
            <asp:Button ID="Button1" class="ccbtn" runat="server" Text="Actualizar" OnClick="Submit_Click" />
        &nbsp;</div>

    </form>
</body>
</html>
