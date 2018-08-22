using FacturadorDigital.ASMX;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacturadorDigital.ASPX
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //Coneection String by default empty  
            string ConStr = "";
            //Extantion of the file upload control saving into ext because   
            //there are two types of extation .xls and .xlsx of Excel   
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            //getting the path of the file   
            string path = Server.MapPath("~/MyFolder/" + FileUpload1.FileName);
            //saving the file inside the MyFolder of the server  
            FileUpload1.SaveAs(path);
            Label1.Text = FileUpload1.FileName + "\'s Data showing into the GridView";
            //checking that extantion is .xls or .xlsx  
            if (ext.Trim() == ".xls")
            {
                //connection string for that file which extantion is .xls  
                ConStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
            }
            else if (ext.Trim() == ".xlsx")
            {
                //connection string for that file which extantion is .xlsx  
                ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
            }
            //making query  
            string query = "SELECT * FROM [Sheet1$]";
            //Providing connection  
            OleDbConnection conn = new OleDbConnection(ConStr);
            //checking that connection state is closed or not if closed the   
            //open the connection  
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            //create command object  
            OleDbCommand cmd = new OleDbCommand(query, conn);
            // create a data adapter and get the data into dataadapter  
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            //fill the Excel data to data set  
            da.Fill(ds);
            //set data source of the grid view  
            GridView1.DataSource = ds.Tables[0];
            //binding the gridview  
            GridView1.DataBind();
            //close the connection  
            conn.Close();
        }//botonUpload

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            TresAmigosWebService ws = new TresAmigosWebService();

            if (GridView1.Rows.Count == 0)
            {
                //is empty
            }
            else
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    //Cod_producto	Name_Product	Qty_Stock	 Unit_Price 	 Tax 	 Pre_Total 	 Gain 	 Total_Sale 
                    int cod_producto = Int32.Parse(row.Cells[0].Text);
                    string nombre = row.Cells[1].Text;
                    int cantidad = Int32.Parse(row.Cells[2].Text);
                    float precio = float.Parse(row.Cells[3].Text);
                    float impuesto = float.Parse(row.Cells[4].Text);
                    float pre_total = float.Parse(row.Cells[5].Text);
                    float ganancia = float.Parse(row.Cells[6].Text);
                    ws.AgregarProducto(cod_producto, nombre, cantidad, precio, impuesto, pre_total, ganancia);
                }
            }
        }
    }
}

