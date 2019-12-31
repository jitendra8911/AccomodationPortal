using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI
{
    public partial class BeforeLogin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Menu_Header.SelectedItem != null)
            {
            }
                  
        }

        protected void Menu_Header_MenuItemClick(object sender, MenuEventArgs e)
        {
            //string redirectTo = string.Format("{0}?SharedData={1}",
            //          e.Item.Value, // This is {0}. This contains the actual redirection url 
            //          Menu_Header.SelectedValue // This is {1}. Here, we append the required information in the query string
            //                            );
            //Response.Redirect(redirectTo, false);
        }
    }
}