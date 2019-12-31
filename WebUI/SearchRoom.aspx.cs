using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebUI
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Check(object sender, EventArgs e)
        {
            bool flag=true;
            StringBuilder s = new StringBuilder();
            foreach (ListItem l in check1.Items)
            {
                if (l.Selected == true && l.Value == "all")
                {
                    flag = false;
                    break;
                }
                if (l.Selected == true && l.Value!="all")
                {
                    
                    if (s.Length != 0)
                    {
                        s.Append(" "+"or"+" ");
                    }
                    s.Append(l.Value);
                    //GridDataSource.FilterExpression = l.Value;
                }
            }
            if (flag)
            {
                GridDataSource.FilterExpression = s.ToString();
            }
           GridViewPriceRange1.DataBind();
        }

        protected void GetRoomDetails_Click(object sender, ImageClickEventArgs e)
        {
            GridViewRow gvr = (GridViewRow)((ImageButton)sender).Parent.Parent;
            string id = ((Label)gvr.FindControl("lblRoomId")).Text;
            Response.Redirect("./RoomDetails.aspx?ID=" + id); 
        }


       
    }
}