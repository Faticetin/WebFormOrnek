using Araba_Satış_Sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Araba_Satış_Sitesi
{
    public partial class Regiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegiter = new SqlCommand("Insert into users (UserMail , UserPassword) values (@pmail , @ppass)",SqlConnectionClass.connection );

            SqlConnectionClass.CheckConnection();

            string newpass = Sha256Convert.ComputeSha256Hash(tboxPasss.Text);

            commandRegiter.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandRegiter.Parameters.AddWithValue("@ppass", newpass);

            commandRegiter.ExecuteNonQuery();

        }
    }
}