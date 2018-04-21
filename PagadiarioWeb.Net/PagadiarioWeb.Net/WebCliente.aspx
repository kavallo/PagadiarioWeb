<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebCliente.aspx.cs" Inherits="PagadiarioWeb.Net.WebCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Apellidos</td>
                    <td>
                        <asp:TextBox ID="txtApellidos" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>Nombres</td>
                    <td>
                        <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Cedula</td>
                    <td>
                        <asp:TextBox ID="txtCedula" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>Telefono</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Celular</td>
                    <td>
                        <asp:TextBox ID="txtCelular" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>Direccion</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Button" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
    </form>

    <script src="jquery.js"></script>
    <script src="jquery.slim.min.js"></script>
    <script src="bootstrap.min.js"></script>
</body>
</html>
