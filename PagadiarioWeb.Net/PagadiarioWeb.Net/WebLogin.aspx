<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebLogin.aspx.cs" Inherits="PagadiarioWeb.Net.WebLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="../css/bootstrap.min.css" /> 
        <title></title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
          <div class="container">
            <a class="navbar-brand" href="#">PAGADIARIO.NET</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
        </nav>

        <div class="container">
            <header class="jumbotron my-4">
                <h2 class="display-5">Bienvenido</h2>
                <div class="row">
                    <div class="col-md-7">
                        <p class="lead text-justify" >Con PagadiarioWeb.Net los usureros podrán gestionar los prestamos realizados a sus clientes, el sistema muestra toda la información de los abonos y genera informes de clientes al día, clientes en mora, cobros diarios, balances mensual, anual y diario.</p>       
                    </div>
                    <div class="col-md-5">
                        <form runat="server" id="Form1">
                            <table>
                                <tr>
                                    <td>Usuario</td>
                                    <td>
                                        <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contraseña</td>
                                    <td>
                                        <asp:TextBox ID="txtContraseña" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnInicioSesion" CssClass="btn btn-primary" runat="server" Text="Inicio de Sesion" OnClick="Button1_Click"/>
                                        <b><asp:Label ID="lblMensaje" runat="server"></asp:Label></b>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>                                    
                </div> <!-- div row-->
            </header>
                <img src="img/cobro.jpg" />
            </div> <!--DIV container-->
   
        <script src="jquery.js"></script>
        <script src="jquery.slim.min.js"></script>
        <script src="bootstrap.min.js"></script>
    </body>
</html>

