using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
namespace WebUI
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
      
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginBAL BAL = new LoginBAL();
            if (BAL.AuthenticateUser(Login1.UserName, Login1.Password))
            {
                // e.Authenticated = true;
                Login1.Visible = false;
                Session["LoginId"] = Login1.UserName;
                Response.Redirect("SearchRoomAfterLogin.aspx");
            }
            else
            {
                e.Authenticated = false;
            }
        }
   
    }
}