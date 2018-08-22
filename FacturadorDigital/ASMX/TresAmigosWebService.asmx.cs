using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace FacturadorDigital.ASMX
{
    /// <summary>
    /// Summary description for TresAmigosWebService
    /// </summary>
    [WebService(Namespace = "http://microsoft.com/webservices/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class TresAmigosWebService : System.Web.Services.WebService
    {

        private DataAccess dataAccess;

        [WebMethod] //ESTa agrega penes
        public void AgregarProducto(int cod_producto, string name_product, int qty_stock, float unit_price, float tax, float pre_total, float gain)
        {
            dataAccess = new DataAccess();
            dataAccess.AgregarProducto(cod_producto, name_product, qty_stock, unit_price, tax, pre_total, gain);
        }

        [WebMethod]
        public bool LeerLogin(String username1, String password1)
        {
            dataAccess = new DataAccess();
            return dataAccess.LeerLogin(username1, password1);
        }

        [WebMethod]
        public Producto GetProduct(int codigoDeProducto)
        {
            dataAccess = new DataAccess();
            return dataAccess.GetProducto(codigoDeProducto);
        }

        [WebMethod]
        public void UpdateProduct(int cod_producto, string name_product, int qty_stock, float unit_price, float tax, float gain)
        {
            dataAccess = new DataAccess();
            dataAccess.UpdateProduct(cod_producto, name_product, qty_stock, unit_price, tax, gain);
        }

        public List<Producto> GetTopProducts(int cantidadDeProductos)
        {
            dataAccess = new DataAccess();
            return dataAccess.GetTopProducts(cantidadDeProductos);
        }

        public List<EstadoDeFactura> GetStatusFromBill(string estadoPorBuscar)
        {
            dataAccess = new DataAccess();
            return dataAccess.GetStatusFromBill(estadoPorBuscar);
        }

        public void AgregarFactura(int numOfInserts, string descrp, string payment, string emisor, int qty, int cod_producto)
        {
            dataAccess = new DataAccess();
            dataAccess.CrearFactura(numOfInserts, descrp, payment, emisor, qty, cod_producto);
        }
    }
}
