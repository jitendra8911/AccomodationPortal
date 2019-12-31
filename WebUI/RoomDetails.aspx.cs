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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                RetrieveVacantRoomDetailsBAL bal = new RetrieveVacantRoomDetailsBAL();
                DataSet dsRoomDetails = bal.RetrieveVacantRoomDetails(Request.QueryString["ID"]);
                DataTable dt = FlipDataTable(dsRoomDetails.Tables[0]);
                ConstructTable(dt);
                

            }
        }
        public static DataTable FlipDataTable(DataTable dt)
        {
            DataTable table = new DataTable();
            //Get all the rows and change into columns
            for (int i = 0; i <= dt.Rows.Count; i++)
            {
                table.Columns.Add(Convert.ToString(i));
            }
            DataRow dr;
            //get all the columns and make it as rows
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                dr = table.NewRow();
                dr[0] = dt.Columns[j].ToString();
                for (int k = 1; k <= dt.Rows.Count; k++)
                    dr[k] = dt.Rows[k - 1][j];
                table.Rows.Add(dr);
            }

            return table;
        }
        public void ConstructTable(DataTable dt)
        {
            string header = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow tr = new TableRow();
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    if (i == 0)
                    {
                        if (j != 0)
                        {
                            TableCell td = new TableCell();
                            td.ColumnSpan = 2;
                            td.HorizontalAlign = HorizontalAlign.Left;
                            Image img = new Image();
                            img.Width = 750;
                            img.Height = 300;
                            img.ImageUrl = dt.Rows[i][j].ToString();
                            td.Controls.Add(img);
                            tr.Cells.Add(td);
                        }
                    }
                    else
                    {
                        switch (i)
                        {
                            case 1:
                                header = "Address";
                                break;
                            case 2:
                                header = "Apartment Number";
                                break;
                            case 3:
                                header = "Rent";
                                break;
                            case 4:
                                header = "Number Of Bedrooms";
                                break;
                            case 5:
                                header = "Number of Bathrooms";
                                break;
                            case 6:
                                header = "Lease Length";
                                break;

                        }
                        if (j == 0)
                        {
                            TableCell td = new TableCell();
                            Label lbl = new Label();
                            lbl.Text = header;
                            td.Controls.Add(lbl);
                            tr.Cells.Add(td);
                        }
                        else
                        {
                            TableCell td = new TableCell();
                            Label lbl = new Label();
                            lbl.Text = dt.Rows[i][j].ToString();
                            td.Controls.Add(lbl);
                            tr.Cells.Add(td);
                        }

                    }
                   
                }
                tblRoomDetails.Rows.Add(tr);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchRoom.aspx");
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            
        }
    }
}