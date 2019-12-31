using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using BAL;

namespace WebUI
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gridMembersList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            bool flag;
            if (e.CommandName == "More")
            {

                int index = Convert.ToInt32(e.CommandArgument.ToString());
                Button btnAddToCompare = (Button)GridViewPriceRange1.Rows[index].FindControl("btnAddToCompare");
                Label lblRoomId = (Label)GridViewPriceRange1.Rows[index].FindControl("lblRoomId");
                if (btnAddToCompare.Text == "Add to Compare")
                {
                    flag = AddToCatalog(lblRoomId.Text);

                    btnAddToCompare.Text = "Delete from Catalog";

                }

                else
                {
                    flag = DeleteFromCatalog(lblRoomId.Text);

                    btnAddToCompare.Text = "Add to Compare";


                }




                //GridViewPriceRange1.UpdateRow(index, false);
                //ScriptManager.RegisterStartupScript(this, this.GetType(),
                //"Message", "alert('" + lblRoomId.Text + "');", true);
            }
        }
        protected void Check(object sender, EventArgs e)
        {
            bool flag = true;
            StringBuilder s = new StringBuilder();
            foreach (ListItem l in check1.Items)
            {
                if (l.Selected == true && l.Value == "all")
                {
                    flag = false;
                    break;
                }
                if (l.Selected == true && l.Value != "all")
                {

                    if (s.Length != 0)
                    {
                        s.Append(" " + "or" + " ");
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
            Response.Redirect("./RoomDetailsAfterLogin.aspx?ID=" + id);
        }

        public bool AddToCatalog(string roomId)
        {
            CatalogManagerBAL bal = new CatalogManagerBAL();
            string loginId = "";
            if (Session["LoginId"] != null)
            {
                loginId = Session["LoginId"].ToString();
            }
            bool flag = bal.AddToCatalog(loginId, roomId);
            return flag;
        }

        public bool DeleteFromCatalog(string roomId)
        {
            CatalogManagerBAL bal = new CatalogManagerBAL();
            string loginId = "";
            if (Session["LoginId"] != null)
            {
                loginId = Session["LoginId"].ToString();
            }
            bool flag = bal.DeleteFromCatalog(loginId, roomId);
            return flag;
        }
        protected void MyGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblRoomId = (Label)e.Row.FindControl("lblRoomId");
                Button btnAddToCompare=(Button)e.Row.FindControl("btnAddToCompare");
                CatalogManagerBAL bal = new CatalogManagerBAL();
                string loginId = "";
                if (Session["LoginId"] != null)
                {
                    loginId = Session["LoginId"].ToString();
                }
                bool flag=bal.CheckCatalog(loginId, lblRoomId.Text);
                if (flag == true)
                {
                    btnAddToCompare.Text = "Delete from Catalog";
                }
                else
                {
                    btnAddToCompare.Text = "Add to Compare";
                }

            }
        }
    }
}