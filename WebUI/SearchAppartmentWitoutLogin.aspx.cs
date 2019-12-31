using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data.SqlClient;
using System.Data;
namespace WebUI
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SearchAppartmentBAL bal = new SearchAppartmentBAL();
            DataSet dsAppartmentList=bal.SearchAppartment();
            GridViewSearchAppartment.DataSource = dsAppartmentList.Tables[0];
            GridViewSearchAppartment.DataBind();
        }
    }
}