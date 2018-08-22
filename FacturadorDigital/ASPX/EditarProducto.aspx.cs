using FacturadorDigital.ASMX;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacturadorDigital.ASPX
{
    public partial class EditarProducto : System.Web.UI.Page
    {
        TresAmigosWebService ws = new TresAmigosWebService();
        Producto producto = new Producto();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //metodo encargado de buscar el producto por numero y traer el que corresponde
        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                producto = ws.GetProduct(Int32.Parse(codigoDeProductoABuscar.Text));
                //despues de buscar tengo que reemplazar todos los valores del form con los atributos que vienen de producto
                nombreDeProducto.Text = producto.Name_Product;
                cantidadDisponible.Text = producto.Qty_Stock.ToString();

                //string.Format("{0:N2}", 2.50)
                string precioTest = string.Format("{0:N2}", producto.Unit_Price);
                precioPorUnidad.Text = precioTest;

                if (producto.Tax > 0.11)
                {
                    listaDeImpuesto.Items.FindByValue("0.13").Selected = true;
                }
                else
                {
                    listaDeImpuesto.Items.FindByValue("0").Selected = true;
                }

                porcentajeDeGanancia.Text = producto.Gain.ToString();

            }
            catch (SqlException err)
            {
                String text = err.Message;
                System.Diagnostics.Debug.WriteLine("No funcionó + " + err);
            }

        }

        //Metodo encargado de mandar el producto editado
        protected void Submit_Click(object sender, EventArgs e)
        {
            int codigo = Int32.Parse(codigoDeProductoABuscar.Text);
            string nombre = nombreDeProducto.Text;
            int cantidad = Int32.Parse(cantidadDisponible.Text);
            float precio = float.Parse(precioPorUnidad.Text);
            float impuesto = float.Parse(listaDeImpuesto.Text);
            float ganancia = float.Parse(porcentajeDeGanancia.Text);
            ws.UpdateProduct(codigo, nombre, cantidad, precio, impuesto, ganancia);
        }
    }
}