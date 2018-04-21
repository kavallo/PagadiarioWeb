using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PagadiarioWeb.Net.js
{
    public partial class WebPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblusuario.Text = Session["usuario"].ToString();

            Timer1.Enabled = true;
            lblFecha.Text = DateTime.Now.ToShortDateString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //lblHora.Text = DateTime.Now.ToString("HH:mm:ss");
        }
    }
}