<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountView.aspx.cs" Inherits="FacturadorDigital.ASPX.Account.AccountView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Perfil Cliente</title>
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <script src="../SCRIPTS/MenuResp.js"></script>
</head>

<body>
    <%-- Calls Menu --%>
    <div id="menu"></div>
    <%-- FORM QUE DESPLIEGA DATOS DEL USER Y OTROS  --%>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
