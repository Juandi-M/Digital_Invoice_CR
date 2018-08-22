using FacturadorDigital.ASMX;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacturadorDigital.ASPX
{
    public partial class EstadoDeFacturas : System.Web.UI.Page
    {
        TresAmigosWebService ws = new TresAmigosWebService();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = ws.GetStatusFromBill("Guardada");
            GridView1.DataBind();

            GridView2.DataSource = ws.GetStatusFromBill("Anulada");
            GridView2.DataBind();

            GridView3.DataSource = ws.GetStatusFromBill("Emitida");
            GridView3.DataBind();
        }
    }
}