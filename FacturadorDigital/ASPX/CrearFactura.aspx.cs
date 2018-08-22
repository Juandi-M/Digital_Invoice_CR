using System;
using System.Data;
using System.Net.Mail;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using IronPdf;

namespace FacturadorDigital.ASMX
{
    public partial class BillingPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var AspxToPdfOptions = new IronPdf.PdfPrintOptions()
            {
                DPI = 300,

            };


            if (!Page.IsPostBack)
            {
                SetInitialRow();
            }
        }

        private void SetInitialRow()
        {

            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dt.Columns.Add(new DataColumn("Column3", typeof(string)));

            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["Column1"] = string.Empty;
            dr["Column2"] = string.Empty;
            dr["Column3"] = string.Empty;
            dt.Rows.Add(dr);

            //Store the DataTable in ViewState
            ViewState["CurrentTable"] = dt;

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void AddNewRowToGrid()
        {

            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox3");

                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;
                        drCurrentRow["Column1"] = box1.Text;
                        drCurrentRow["Column2"] = box2.Text;
                        drCurrentRow["Column3"] = box3.Text;

                        rowIndex++;
                    }

                    //add new row to DataTable
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    //Store the current data to ViewState
                    ViewState["CurrentTable"] = dtCurrentTable;

                    //Rebind the Grid with the current data
                    GridView1.DataSource = dtCurrentTable;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }

            //Set Previous Data on Postbacks
            SetPreviousData();
        }

        private void SetPreviousData()
        {

            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox3");


                        box1.Text = dt.Rows[i]["Column1"].ToString();
                        box2.Text = dt.Rows[i]["Column2"].ToString();
                        box3.Text = dt.Rows[i]["Column3"].ToString();

                        rowIndex++;

                    }
                }
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }

        protected void Emitir_Click(object sender, EventArgs e)
        {
            //Store Procedure

            TresAmigosWebService ws = new TresAmigosWebService();

            //DateTime fecha = Convert.ToDateTime(from_date.Text);
            string EmisorNombre = NombreEmisor.Text;
            string EmisorEail = EmailEmisor.Text;
            string EmisorUbicacion = UbicacionEmisor.Text;
            string EmisorTelefono = TelefonoEmisor.Text;

            string Receptornombre = NombreReceptor.Text;
            string ReceptorMail = EmailReceptor.Text;
            string ReceptorUbicacion = UbicacionReceptor.Text;
            string ReceptorTelefono = TelefonoReceptor.Text;

            string Pagos = MetodoPago.SelectedValue;

            int cantidad = 0;
            int codigo;
            string name = "";

            codigo = Convert.ToInt32(GridView1.FindControl("TextBox2"));
            cantidad = Convert.ToInt32(GridView1.FindControl("TextBox"));

            ws.AgregarFactura(1, "", Pagos, EmisorNombre, Convert.ToInt32(cantidad), codigo);

        }


        //public void Esendmail(string EmailFrom, string EmailTo, string EmailBody, string EmailSubject, string EmailCC)
        //{
        //    System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        //    message.To = "abc@domain.com";
        //    message.From = "xyz@domain.com";
        //    message.Subject = "mail with pdf";
        //    message.Body = "your pdf attached";
        //    message.Attachments.Add(new Attachment(@"c:\pdftoattach.pdf"));
        //    SmtpMail.SmtpServer = "mail.domain.com";
        //    SmtpMail.Send(message);
        //    SmtpClient client = new SmtpClient();
        //    client.Send(message);
        //}

        protected void PDF_Click(object sender, EventArgs e)
        {
            IronPdf.AspxToPdf.RenderThisPageAsPdf(IronPdf.AspxToPdf.FileBehavior.InBrowser);
        }

        protected void MetodoPago_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}
