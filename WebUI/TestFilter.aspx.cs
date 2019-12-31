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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SearchAppartmentBAL bal = new SearchAppartmentBAL();
            DataSet dsAppartmentList = bal.SearchAppartment();
            GridViewPriceRange1.DataSource = dsAppartmentList.Tables[0];
            GridViewPriceRange1.DataBind();
            DataSet dsAppartmentListRange2=bal.SearchAppartmentBasedOnPriceRange(650,1200);
            GridViewPriceRange2.DataSource = dsAppartmentListRange2.Tables[0];
            GridViewPriceRange2.DataBind();
            //GridViewPriceRange1.Visible = true;
            //GridViewPriceRange2.Visible = false;
            if (test.Checked == true && test1.Checked == true)
            {
                GridViewPriceRange1.Visible = true;
                GridViewPriceRange2.Visible=false;
            }
            else if (test.Checked == true && test1.Checked == false)
            {
                GridViewPriceRange1.Visible = true;
                GridViewPriceRange2.Visible = false;
            }
            else if (test.Checked == false && test1.Checked == true)
            {
                GridViewPriceRange1.Visible = false;
                GridViewPriceRange2.Visible = true;
            }
            else if (test.Checked == false && test1.Checked == false)
            {
                GridViewPriceRange1.Visible = true;
                GridViewPriceRange2.Visible = false;
            }
            

        }

        //protected void chkAll(object sender, EventArgs e)
        //{
        //    GridViewPriceRange1.Visible = true;
        //    GridViewPriceRange2.Visible = false;

        //}

        //protected void chkPriceRange2(object sender, EventArgs e)
        //{
        //    GridViewPriceRange1.Visible = false;
        //    GridViewPriceRange2.Visible = true;
        //}
    }
}