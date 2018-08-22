using FacturadorDigital.ASMX;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacturadorDigital.ASPX
{
    public partial class LogInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            TresAmigosWebService ws = new TresAmigosWebService();


            if (ws.LeerLogin(UsuarioLogIn.Text, ContraseñaLogIn.Text))
            {
                //if (ws.LeerLogin(UsuarioLogIn.Text, Md5(ContraseñaLogIn.Text)))
                //md5.text
                FormsAuthentication.RedirectFromLoginPage
               (UsuarioLogIn.Text, Persist.Checked);
            }
            else
            {
                Msg.Text = "Credenciales invalidos. Intente de nuevo";
            }
        }
    }
}