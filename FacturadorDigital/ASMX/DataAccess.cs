using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FacturadorDigital.ASMX
{
    public class DataAccess
    {
        /*--------------------------------------------------
         * String Global a la coneccion al SQL SERVER AZURE
         *--------------------------------------------------*/

        // Se declara la coneccion al SQL 
        private SqlConnection con;

        // String de conexion a SQL
        private string stringConnection;

        public DataAccess()
        {
            stringConnection = ConfigurationManager.ConnectionStrings["3AmigosSQLServerAzure"].ConnectionString;
        }

        //1) Función que Inserta al SQL Productos nuevos del FORM AgregarProductos
        public void AgregarProducto(int cod_producto, string name_product, int qty_stock, float unit_price, float tax, float pre_total, float gain)
        {
            try
            {
                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("ADD_PRODUCT", con)
                {
                    CommandType = CommandType.StoredProcedure
                }; //storePrcodedure
                cmd.Parameters.AddWithValue("@cod_producto", cod_producto);
                cmd.Parameters.AddWithValue("@name_product", name_product);
                cmd.Parameters.AddWithValue("@qty_stock", qty_stock);
                cmd.Parameters.AddWithValue("@unit_price", unit_price);
                cmd.Parameters.AddWithValue("@tax", tax);
                cmd.Parameters.AddWithValue("@pre_total", pre_total);
                cmd.Parameters.AddWithValue("@gain", gain);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("Funcionó");
            }

            catch (SqlException e)
            {
                String text = e.Message;
                System.Diagnostics.Debug.WriteLine("No funcionó + " + e);
            }

        }

        //Funcion que inserta Facturas desde el form CrearFactura
        public void CrearFactura(int numOfInserts, string descrp, string payment, string emisor, int qty, int cod_producto)
        {
            try
            {
                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_CREATE_BILL", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@numOfInserts", numOfInserts);
                cmd.Parameters.AddWithValue("@descripcion", descrp);
                cmd.Parameters.AddWithValue("@payment", payment);
                cmd.Parameters.AddWithValue("@id_emisor", emisor);
                cmd.Parameters.AddWithValue("@qty", qty);
                cmd.Parameters.AddWithValue("@cod_producto", cod_producto);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("Funcionó");
            }
            catch (SqlException ex)
            {
                String text = ex.Message;
                System.Diagnostics.Debug.WriteLine("No funciono" + ex);
            }
        }

        //Funcion que Seleccion(LEE) del SQL Productos nuevos del form LogIn
        public bool LeerLogin(String UserName, String Password)
        {
            try
            {
                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_LOGIN", con)
                {
                    CommandType = CommandType.StoredProcedure
                }; //storePrcodedure
                cmd.Parameters.AddWithValue("@username1", UserName);
                cmd.Parameters.AddWithValue("@password1", Password);
                cmd.Parameters.Add("@return_value", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue;

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                int retval = (int)cmd.Parameters["@return_value"].Value;
                if (retval == 1)
                    return true;
                else
                    return false;
            }

            catch (SqlException e)
            {
                String text = e.Message;
                System.Diagnostics.Debug.WriteLine("No funcionó + " + e);
                return false;
            }
        } //LEER LOGIN ENDS 

        //Metodo que permite buscar a un Producto por medio de su codigo
        public Producto GetProducto(int codigoDeProducto)
        {
            Producto producto = new Producto();
            try
            {
                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_SEARCH_PRODUCT_BY_COD", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cod_producto", codigoDeProducto);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    producto.Name_Product = reader.GetString(0);
                    producto.Qty_Stock = reader.GetInt32(1);
                    producto.Unit_Price = (float)reader.GetDouble(2);
                    producto.Tax = (float)reader.GetDouble(3);
                    producto.Gain = (float)reader.GetDouble(4);
                    //Producto producto = new Producto(codigo, nombre, cantidad, precio, impuesto, pretotal, ganancia, valorVenta);
                }
                con.Close();
                return producto;
            }
            catch
            {
                con.Close();
                return producto;
            }
        } // GET PRODUCTO ENDS

        //Función que Inserta al SQL Productos actualizados del FORM EditarProducto
        public void UpdateProduct(int cod_prod, string name_prod, int qty, float unit_price, float tax, float gain)
        {
            try
            {
                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_EDIT_PRODUCT", con)
                {
                    CommandType = CommandType.StoredProcedure
                }; //storePrcodedure
                cmd.Parameters.AddWithValue("@cod_prod", cod_prod);
                cmd.Parameters.AddWithValue("@name_prod", name_prod);
                cmd.Parameters.AddWithValue("@qty", qty);
                cmd.Parameters.AddWithValue("@unit_price", unit_price);
                cmd.Parameters.AddWithValue("@tax", tax);
                cmd.Parameters.AddWithValue("@gain", gain);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("Funcionó");
            }

            catch (SqlException e)
            {
                String text = e.Message;
                System.Diagnostics.Debug.WriteLine("No funcionó + " + e);
            }

        }//Update product ends

        public List<Producto> GetTopProducts(int cantidadDeProductos)
        {
            List<Producto> listaDeProductos = new List<Producto>();

            try
            {

                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_PRODUCT_CHART", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cantidad", cantidadDeProductos);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Producto producto = new Producto();
                    producto.Name_Product = reader.GetString(0);
                    producto.Qty_Stock = reader.GetInt32(1);
                    listaDeProductos.Add(producto);
                }

                con.Close();
                return listaDeProductos;
            }
            catch
            {

                con.Close();
                return listaDeProductos;
            }
        } // END GetTopProducts

        public List<EstadoDeFactura> GetStatusFromBill(string estadoPorBuscar)
        {
            List<EstadoDeFactura> listaDeFacturas = new List<EstadoDeFactura>();

            try
            {

                con = new SqlConnection(stringConnection);
                SqlCommand cmd = new SqlCommand("SP_GET_STATUS", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@estado", estadoPorBuscar);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    EstadoDeFactura estadoDeFactura = new EstadoDeFactura();
                    estadoDeFactura.CodigoDeFactura = reader.GetInt32(0);
                    estadoDeFactura.Estado = reader.GetString(1);
                    listaDeFacturas.Add(estadoDeFactura);
                }
                con.Close();
                return listaDeFacturas;
            }
            catch
            {
                con.Close();
                return listaDeFacturas;
            }
        } // END GetTopProducts


    }
}