<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="FacturadorDigital.ASPX.UploadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subir Catálogo</title>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
    <link href="../STYLES/AgregarProducto.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

    <%-- Calls Menu --%>
    <div id="menu"></div>

        <div>
            <label for="importExcel"><b>Importar documento:</b></label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnUpload" runat="server" class="ccbtn" OnClick="btnUpload_Click" Text="Cargar" />
            <br />
            <asp:Button ID="Button1" runat="server" class="ccbtn" OnClick="btnInsert_Click" Text="Insertar" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre del archivo: "></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
