using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacturadorDigital.ASMX
{
    public partial class HomePage : System.Web.UI.Page
    {
        TresAmigosWebService ws = new TresAmigosWebService();

        

        public int[] cantidadParaProducto = new int[3];
        public string[] nombreParaProducto = new string[3];

        public void Page_Load(object sender, EventArgs e)
        {
            Welcome.Text = "Hello, " + Context.User.Identity.Name;
            LoadData();
        }

        //void Signout_Click(object sender, EventArgs e)
        //{

        //}

        protected void LoadData()
        {
            List<Producto> listaDeProductos = ws.GetTopProducts(3);

            cantidadParaProducto[0] = listaDeProductos[0].Qty_Stock;
            cantidadParaProducto[1] = listaDeProductos[1].Qty_Stock;
            cantidadParaProducto[2] = listaDeProductos[2].Qty_Stock;

            nombreParaProducto[0] = listaDeProductos[0].Name_Product;
            nombreParaProducto[1] = listaDeProductos[1].Name_Product;
            nombreParaProducto[2] = listaDeProductos[2].Name_Product;
        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("../ASPX/LogInPage.aspx");
        }
    }
}