using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection konekcija = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);

            konekcija.Open();

            string checkUser = "SELECT COUNT(*) FROM [Table] WHERE Ime='" + tbIme.Text + "'";

            SqlCommand checkUserCommand = new SqlCommand(checkUser, konekcija);

            int temp = Convert.ToInt32(checkUserCommand.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("Korisnik već postoji!");
            }

            konekcija.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
          
            SqlConnection konekcija = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
            konekcija.Open();

            string insertQuery = "INSERT INTO [Table] (Ime, Prezime, Korisnicko, Email, Pass) VALUES ( @Uime, @Uprezime, @Ukorisnicko, @Uemail, @Upass)";

            SqlCommand komanda = new SqlCommand(insertQuery, konekcija);


            komanda.Parameters.AddWithValue("@Uime", tbIme.Text);
            komanda.Parameters.AddWithValue("@Uprezime", tbPrezime.Text);
            komanda.Parameters.AddWithValue("@Ukorisnicko", tbKorisnicko.Text);
            komanda.Parameters.AddWithValue("@Uemail", tbEmail.Text);
            komanda.Parameters.AddWithValue("@Upass", tbPassword.Text);
            komanda.ExecuteNonQuery();
            konekcija.Close();
        }catch(Exception ex)
        {
            Response.Write("Greška: " + ex.ToString());
        }
        Response.Write("Uspješna registracija!");

    }

    
}