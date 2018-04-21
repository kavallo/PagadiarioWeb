<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebPrincipal.aspx.cs" Inherits="PagadiarioWeb.Net.js.WebPrincipal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="../css/bootstrap.min.css" /> 
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
          <div class="container">
            <a class="navbar-brand" href="#">PAGADIARIO.NET</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="WebCliente.aspx">Clientes
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Cobradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Prestamos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Abonos</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <div class="container">
            <header class="jumbotron my-4">
                <h2 class="display-5">Bienvenido <asp:Label ID="lblusuario" runat="server" Text="Label"></asp:Label></h2>
                
                <div class="row">
                    <div class="col-md-7">
                        <p class="lead text-justify" >Con PagadiarioWeb.Net los usureros podrán gestionar los prestamos realizados a sus clientes, el sistema muestra toda la información de los abonos y genera informes de clientes al día, clientes en mora, cobros diarios, balances mensual, anual y diario.</p>                        
                        <!-- fecha y hora-->
                            <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblHora" runat="server" Text=""></asp:Label>
                            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="60000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        <!-- end fecha y hora-->
                    </div>
                    <div class="col-md-5"><img src="../img/cobro.jpg"/></div>
                </div>
                
            </header>
        </div> <!--DIV container-->
   
        <script src="jquery.js"></script>
        <script src="jquery.slim.min.js"></script>
        <script src="bootstrap.min.js"></script>
        </form>
    </body>
</html>
