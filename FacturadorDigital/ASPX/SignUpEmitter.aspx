<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpEmitter.aspx.cs" Inherits="FacturadorDigital.ASPX.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inscripción</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel='shortcut icon' type='image/x-icon' href='../../Media/favicon-16x16.png' />
    <script src="../../SCRIPTS/jQuery/jquery-3.3.1.js"></script>
    <link href="../STYLES/SignUpEmitter.css" rel="stylesheet" />
    <script src="../SCRIPTS/SignUpEmitter.js"></script>
</head>
<script>
    $(function () {
        var SIGN_UP_HANDLER = new Sign_Up();
        SIGN_UP_HANDLER.init();
    });
</script>
<body>
    <div id="menu"></div>
    <!-- Escoger tipo de cuenta-->
    <center>
         <div class="module form-module">
            <form>
               <h2><b>Crear Emisor (Firma) de Factura</b></h2>
               <h2><i class="fa fa-user-plus fa-2x"></i></h2>
               <h3>Escoger una opción </h3>
               <br />
               <br />
               <label class="container">
                   Jurídica
               <input type="radio" name="SignUpType" value="1" />
               <span class="checkmark"></span>
               </label>

               <label class="container">
                   Física
               <input type="radio" name="SignUpType" value="2" />
               <span class="checkmark"></span>
               </label>
               <br />
              <br />
            </form>

            <!-- Form crear cuenta Juridica-->
            <div id="juridica" class="form" style="display: none">
               <h2>Crear Cuenta Jurídica (S.A.) <i class="fa fa-building"></i></h2>
               <form>
                  <input type="text" placeholder="Nombre o Razón Social" />
                  <input type="text" placeholder="Nombre Comercial" />
                  <input type="text" placeholder="Cédula" />
                  <input type="text" placeholder="Ubicación" />
                  <input type="tel" placeholder="Número de Teléfono" />
                  <input type="email" placeholder="Dirección de Email" />
                  <button>Registrarse</button>
               </form>
            </div>

            <!-- Form crear cuenta Fisica -->
            <div id="fisica" class="form" style="display: none">
               <h2>Crear Cuenta Física <i class="fa fa-user"></i></h2>
               <form>
                  <input type="text" placeholder="Nombre" />
                  <input type="text" placeholder="Cédula" />
                  <input type="text" placeholder="Ubicación" />
                  <input type="tel" placeholder="Número de Teléfono" />
                  <input type="email" placeholder="Dirección de Email" />
                  <button>Registrarse</button>
               </form>
            </div>
         </div>
      </center>
</body>
</html>
