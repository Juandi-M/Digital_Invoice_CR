<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearFactura.aspx.cs" Inherits="FacturadorDigital.ASMX.BillingPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crear Factura</title>
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <link href="../../STYLES/FacturaVisual.css" rel="stylesheet" />
    <script src="../SCRIPTS/MenuResp.js"></script>
</head>
<body>
    <div id="menu"></div>
    <form id="Factura" runat="server">
        <div class="invoice-box">
            <table cellpadding="0" cellspacing="0">
                <tr class="top">
                    <td colspan="2">
                        <table>
                            <tr>
                                <td class="title">
                                    <img src="../../Media/3AmigosLogo.PNG" style="width: 45%; max-width: 100px;" />
                                </td>
                                <td>
                                    <asp:Label ID="NumeroFactura" runat="server" Text="Factura #: "></asp:Label>
                                    <br />
                                    <%--Aquí va el numero de la factura--%>
                              Fecha:
                              <asp:TextBox ID="from_date" type="date" runat="server" CssClass="TextBox" BackColor="#efefef" Font-Names="Roboto"></asp:TextBox>
                                    <br />
                                    <%--Aquí el user selecciona la fecha de la factura. --%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="information">
                    <%--Información del emisor y receptor--%>
                    <td colspan="2">
                        <table>
                            <tr>
                                <%--Información del Emisor--%>
                                <td>
                                    <asp:Label ID="NombreEmisor" runat="server" Text="3 Amigos S.A."></asp:Label>
                                    <br />
                                    <asp:Label ID="EmailEmisor" runat="server" Text="3a@3amigos.com"></asp:Label>
                                    <br />
                                    <asp:Label ID="UbicacionEmisor" runat="server" Text="Colima, Tibas 11305"></asp:Label>
                                    <br />
                                    <asp:Label ID="TelefonoEmisor" runat="server" Text="+506 2240-5690"></asp:Label>
                                </td>
                                <%--Información Receptor--%>

                                <td>Nombre:
                              <asp:TextBox ID="NombreReceptor" CssClass="TextBox" runat="server" BackColor="#efefef" Font-Names="Roboto"> </asp:TextBox>
                                    <br />
                                    Email:
                              <asp:TextBox ID="EmailReceptor" CssClass="TextBox" runat="server" type="email" BackColor="#efefef" Font-Names="Roboto"></asp:TextBox>
                                    <br />
                                    Ubicación:
                              <asp:TextBox ID="UbicacionReceptor" CssClass="TextBox" runat="server" BackColor="#efefef" Font-Names="Roboto"></asp:TextBox>
                                    <br />
                                    Teléfono:
                              <asp:TextBox ID="TelefonoReceptor" CssClass="TextBox" runat="server" type="number" BackColor="#efefef" Font-Names="Roboto"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <%--Sección metodo de pago--%>
                <tr class="heading">
                    <td>Forma de Pago
                    </td>
                    <td></td>
                </tr>
                <%--Metodo de pago Dropdown --%>
                <tr class="details">
                    <td>
                        <asp:DropDownList ID="MetodoPago" runat="server" Width="120px" BackColor="#efefef" ForeColor="#333" Font-Names="Roboto" CssClass="DropdownASP" OnSelectedIndexChanged="MetodoPago_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="Tipo de Pago" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Efectivo" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Tarjeta" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Cheque" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Transferencia" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="TipodeMoneda" runat="server" Width="125px" BackColor="#efefef" ForeColor="#333" Font-Names="Roboto" CssClass="DropdownASP">
                            <asp:ListItem Enabled="true" Text="Tipo de Moneda" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Dolares" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Euros" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Libras" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <%--DIVISOR: PRODUCTOS--%>
            <table>
                <tr class="heading">
                    <td>Productos
                    </td>
                </tr>
            </table>
            <br />

            <%--Tabla GRID VIEW--%>
            <asp:GridView ID="GridView1" runat="server" ShowFooter="true"
                AutoGenerateColumns="false" GridLines="None">

                <Columns>
                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="TextBox" ForeColor="#333" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Codigo">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="TextBox" ForeColor="#333" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Descripción">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="TextBox" ForeColor="#333" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Precio">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="TextBox" ForeColor="#333" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="TOTAL">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="TextBox" ForeColor="#333" runat="server"></asp:TextBox>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAdd_Click" CssClass="ButtonASP" runat="server" Text="Agregar Productos" OnClick="ButtonAdd_Click" />
                        </FooterTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>


        <div>
            <center>
                <asp:Button ID="Emitir" CssClass="emitir" runat="server" Text="Emitir" OnClick="Emitir_Click" />
            <asp:Button ID="PDF" CssClass="PDF" runat="server" Text="PDF" OnClick="PDF_Click" />
            </center>

        </div>
    </form>
</body>
</html>

