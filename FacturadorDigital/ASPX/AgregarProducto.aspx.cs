using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using FacturadorDigital.ASMX;

namespace FacturadorDigital.ASPX
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (listaDeImpuesto.SelectedIndex == -1)
            {
                string message = "alert('" + "Escoga un porcentaje de impuesto" + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "Error_message", message, true);
                return;
            }

            TresAmigosWebService ws = new TresAmigosWebService();

            int codigo = Int32.Parse(codigoDeProducto.Text);
            int cantidad = Int32.Parse(cantidadDisponible.Text);
            float precio = float.Parse(precioUnidad.Text);
            float impuesto = float.Parse(listaDeImpuesto.Text);
            float ganancia = float.Parse(porcentajeDeGanancia.Text);

            ws.AgregarProducto(codigo, nombreDeProducto.Text, cantidad, precio, impuesto, 5, ganancia);
        }
    }
}