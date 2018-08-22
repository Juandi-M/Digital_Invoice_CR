<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FacturadorDigital.ASPX.SignUp1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inscripción</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <link href="../STYLES/SignUp.css" rel="stylesheet" />
    <script src="../SCRIPTS/SignUp.js"></script>
</head>

<script>
    $(function () {
        var SIGN_UP_HANDLER = new Sign_Up();
        SIGN_UP_HANDLER.init();
    });
</script>

<body>
    <center>
    <div class="pen-title">
        <h1>Inscripción</h1>
        <br />
    </div>
    </center>

    <!-- SignUp Form Button Load-->
    <div class="module form-module">
        <div class="toggle">
            Volver al Inicio de Sesion
            <i class="fa fa-times fa-pencil"></i>
            <div class="tooltip">Aprétame</div>
        </div>

        <%-- Form de SignUp--%>
        <div class="form">
            <center>
            <div id="IconColor"><i class="fa fa-user-plus fa-5x"></i></div>
            <br />
            
            <h3>Crear Cuenta</h3>
                </center>
            <form runat="server">
                <asp:TextBox type="text" placeholder="Nombre de Usuario" runat="server"></asp:TextBox>
                <asp:TextBox type="password" placeholder="Password" runat="server"></asp:TextBox>
                <asp:TextBox type="email" placeholder="Email Address" runat="server"></asp:TextBox>
                SUPER USER?
                <asp:CheckBox ID="SuperUserCheckBox" runat="server" />
                <asp:Button ID="SignUpButton" runat="server" Text="Registrarse" />
            </form>
        </div>
    </div>
</body>
</html>

