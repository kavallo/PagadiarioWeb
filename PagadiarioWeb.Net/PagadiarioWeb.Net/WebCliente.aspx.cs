using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PagadiarioWeb.Net
{
    public partial class WebCliente : System.Web.UI.Page
    {
        SqlConnection conexion;
        SqlDataAdapter adaptador;
        DataSet datos; 

        protected void Page_Load(object sender, EventArgs e)
        {
            conexion = new SqlConnection(@"Server=.\SQLEXPRESS; Initial Catalog=pagadiario; User ID=sa; Password=chmod-rwx;");
            adaptador = new SqlDataAdapter("select apellidos, nombres, cedula, telefono, celular, direccion from cliente", conexion);
            datos = new DataSet();

            conexion.Open();
            adaptador.Fill(datos, "cliente");
            conexion.Close();

            GridView1.DataSource = datos;
            GridView1.DataBind(); 
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtApellidos.Text = GridView1.SelectedRow.Cells[1].Text;
            txtNombres.Text = GridView1.SelectedRow.Cells[2].Text;
        }
    }
}