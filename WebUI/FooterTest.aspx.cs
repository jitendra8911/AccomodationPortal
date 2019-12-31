using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;

namespace WebUI
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SearchAppartmentBAL bal = new SearchAppartmentBAL();
            //DataSet dsAppartmentList = bal.SearchAppartment();
            //GridViewSearchAppartment.DataSource = dsAppartmentList.Tables[0];
            //GridViewSearchAppartment.DataBind();
            //SearchAppartmentBAL bal = new SearchAppartmentBAL();
            //DataSet dsAppartmentList = bal.SearchAppartment();
            //GridViewSearchAppartment.DataSource = dsAppartmentList.Tables[0];
            //GridViewSearchAppartment.DataBind();
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginBAL BAL = new LoginBAL();
            if (BAL.AuthenticateUser(Login1.UserName, Login1.Password))
            {
                // e.Authenticated = true;
                Login1.Visible = false;
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                e.Authenticated = false;
            }
        }


    }
}