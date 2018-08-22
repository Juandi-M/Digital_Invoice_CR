<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="FacturadorDigital.ASPX.LogInPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Facturador Digital</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <link href="../../STYLES/LogIn.css" rel="stylesheet" />
    <script src="../../SCRIPTS/Login.js"></script>
</head>
<script>
    $(function () {
        var LOG_IN_HANDLER = new Log_In();
        LOG_IN_HANDLER.init();
    });
</script>
<body>
    <!-- Titulo-->
    <div class="pen-title">
        <h1>¡Bienvenidos!</h1>
        <span>Grupo: <i class='fa fa-code'>3 Amigos INC</i></span>
        <h3>Facturador Digital</h3>
    </div>
    <!-- SignUp Form Button Load-->
    <div class="module form-module">
        <div class="toggle">
            Ir a inscripción
            <i class="fa fa-times fa-pencil"></i>
            <div class="tooltip">Aprétame</div>
        </div>

        <%-- Form de Login --%>
        <div class="form">
            <img id="logo" src="../../Media/3AmigosLogo.PNG" />
            <h2>Iniciar sesión en cuenta</h2>
            <form runat="server">
                <asp:TextBox type="text" placeholder="NombreDeUsuario" ID="UsuarioLogIn" runat="server"></asp:TextBox>
                <asp:TextBox type="password" placeholder="Contraseña" ID="ContraseñaLogIn" runat="server"></asp:TextBox>
                <asp:Button ID="LogInButton" runat="server" Text="Iniciar Sesión" OnClick="LogInButton_Click" />
                <center>
                    <label>
                    Recuérdame
                     <asp:CheckBox ID="Persist" runat="server" />
                </label>
                </center>
                <asp:Label ID="Msg" ForeColor="red" runat="server" />
                <div class="cta">
                    <a href="../ASPX/ForgotPassword.aspx">¿Olvidó Contraseña?</a>
                </div>
            </form>
        </div>

    </div>
</body>
</html>
