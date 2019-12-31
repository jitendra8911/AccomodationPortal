using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
namespace WebUI
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PasswordRecoveryBAL bal = new PasswordRecoveryBAL();
            int result=bal.RecoverPassword(txtLoginId.Text, ddlSecurityQuestion.SelectedValue, txtSecurityAnswer.Text);
            if (result == 1)
            {
                Session.Add("LoginId", txtLoginId.Text);
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                lblSecurityCheck.Text = "Please enter valid details";
            }

        }
    }
}