using Araba_Satış_Sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Araba_Satış_Sitesi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("select*from users where UserMail=@pmail and UserPassword = @ppass", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string pass = Sha256Convert.ComputeSha256Hash(tboxPasssword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", pass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);


            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tboxMail.Text == "admin@gmail.com")
                {

                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "admin@gmail.com";

                    Response.Redirect("Admin_Deneme.aspx");
                }
                else
                {
                    Session["UserMail"] = dt.Rows[0].ToString();

                    Response.Redirect("ListCars.aspx");
                }
            }
            else
            {
                Response.Write("Yanlış Şifre veya Yanlış Mail");
            }


        }
    }
}