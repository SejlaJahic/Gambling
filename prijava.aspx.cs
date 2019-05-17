using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class prijava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
        konekcija.Open();

        string checkUser = "SELECT COUNT(*) FROM [Table] WHERE Ime='" + TextBox1.Text + "'";

        SqlCommand komanda = new SqlCommand(checkUser, konekcija);
        
        int temp = Convert.ToInt32(komanda.ExecuteScalar().ToString());
        konekcija.Close();

        if (temp == 1)
        {
            konekcija.Open();
            string checkPasswordQuery = "SELECT Pass FROM [Table] WHERE Ime='" + TextBox1.Text.Trim() + "'";
            SqlCommand passCommand = new SqlCommand(checkPasswordQuery, konekcija);
            string pass = passCommand.ExecuteScalar().ToString();
            if (pass == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                if (TextBox1.Text == "admin" || TextBox1.Text == "Admin")
                {
                    Response.Redirect("tempaspx.aspx");
                }
                else{
                    Response.Redirect("pocetna.aspx");
                }
            }
            else
            {
                Response.Write("Password nije tačan!");
            }
        }
        else
        {
            Response.Write("Korisničko ime nije tačno!");
        }
    }
}