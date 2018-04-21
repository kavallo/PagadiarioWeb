using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PagadiarioWeb.Net
{
    public partial class WebLogin : System.Web.UI.Page
    {
        SqlConnection conexion;
        SqlDataAdapter adaptador;
        SqlCommand comando; 
        DataSet datos; 

        protected void Page_Load(object sender, EventArgs e)
        {
            string cadenaConexion = ConfigurationManager.ConnectionStrings["ConexionPagadiario"].ConnectionString;
            conexion = new SqlConnection(cadenaConexion);
            adaptador = new SqlDataAdapter("select * from cliente", conexion);
            datos = new DataSet();

            conexion.Open();
            adaptador.Fill(datos, "cliente");
            conexion.Close();

            //GridView1.DataSource = datos;
            //GridView1.DataBind(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //conexion = New SqlConnection(ConexionDB.conectar())
            //conexion.Open()
            //comando = conexion.CreateCommand()
            //comando.CommandText = "select count(*) from empleado where usuario='" + txtUsuario.Text + "' and contraseña='" + txtContraseña.Text + "' "

            //Dim i As Integer
            //i = comando.ExecuteScalar()
            //conexion.Close()

            //If i = 0 Then
            //    lblMensaje.Text = "Datos incorrectos"
            //    lblMensaje.ForeColor = Drawing.Color.Red
            //Else
            //    Session("usuario") = txtUsuario.Text
            //    Response.Redirect("Principal.aspx")
            //End If

            string cadenaConexion = ConfigurationManager.ConnectionStrings["ConexionPagadiario"].ConnectionString;
            conexion = new SqlConnection(cadenaConexion);

            conexion.Open();
            comando = conexion.CreateCommand();
            comando.CommandText = "select count(*) from usuario where usuario = '"+txtUsuario.Text+"' and contraseña = '"+txtContraseña.Text+"' ";
            int i;
            i = Convert.ToInt16( comando.ExecuteScalar());
            conexion.Close();

            if (i == 0)
            {
                lblMensaje.Text = "Incorrecto";
                lblMensaje.ForeColor = System.Drawing.Color.DarkRed;
            }
            else
            {
                Session["usuario"] = txtUsuario.Text;
                Response.Redirect("WebPrincipal.aspx");
            }
        }
    }
}




