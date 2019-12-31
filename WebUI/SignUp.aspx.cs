using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Web.Services;
using System.Web.Script.Services;
namespace WebUI
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


      

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            SignUpBAL bal = new SignUpBAL();
            bal.RegisterUser(txtLoginId.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text, Convert.ToDateTime(txtDOB.Text), txtState.Text, txtZipCode.Text, txtCity.Text, txtAddress1.Text, txtAddress2.Text, txtEmailId.Text, txtQualification.Text, ddlSecurityQuestion.SelectedValue, txtSecurityAnswer.Text);
            Response.Redirect("Login.aspx");
        }
        [WebMethod]
        [ScriptMethod]
        public static int CheckUserNameAvailability(string loginId)
        {



            SignUpBAL bal = new SignUpBAL();
            int result=bal.CheckLoginIdAvailability(loginId);
            return result;


        }
    }
}