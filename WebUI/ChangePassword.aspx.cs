using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
namespace WebUI
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] != null)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PasswordRecoveryBAL bal = new PasswordRecoveryBAL();
            if(Session["LoginId"]!=null)
            {
                int result=bal.ChangePassword(Session["LoginId"].ToString(), txtNewPassword.Text);
                if (result == 1)
                {
                    lblStatus.Text = "Password successfully changed. Try logging in now!";
                }
                else
                {
                    lblStatus.Text = "Please try later";
                }
            }
            
        }
    }
}