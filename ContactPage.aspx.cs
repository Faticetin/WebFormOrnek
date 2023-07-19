using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi.Classes;

namespace Araba_Satış_Sitesi
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand addcommed = new SqlCommand("Insert into tablecontact(ContactMessage,ContactMail,ContactName) values (@pmsg,@pmail,@pname)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            addcommed.Parameters.AddWithValue("@pmsg",tboxMessage.Text);
            addcommed.Parameters.AddWithValue("@pmail",tboxMAil.Text);
            addcommed.Parameters.AddWithValue("@pname",tboxName.Text);

            addcommed.ExecuteNonQuery();

          
        }
    }
}