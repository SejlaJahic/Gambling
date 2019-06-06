using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class supertip : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["New"];
        if (!this.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Name"), new DataColumn("Country") });
            dt.Rows.Add("ManUTD VS RMA 1", "3.45");
            dt.Rows.Add("ManUTD VS RMA 2", "1.55");
            dt.Rows.Add("ManUTD VS RMA X", "4.0");
            dt.Rows.Add("Barcelona VS Tottenham 1", "2.0");
            dt.Rows.Add("Barcelona VS Tottenham 2", "4.3");
            dt.Rows.Add("Barcelona VS Tottenham X", "6.2");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Start.aspx");
    }


    protected void GetSelectedRecords(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Name"), new DataColumn("Country") });
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked)
                {
                    string name = row.Cells[1].Text;
                    string country = (row.Cells[2].FindControl("lblCountry") as Label).Text;
                    dt.Rows.Add(name, country);
                }
            }
        }
        gvSelected.DataSource = dt;
        gvSelected.DataBind();
    }


}