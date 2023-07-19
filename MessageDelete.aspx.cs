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
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand commadDelete = new SqlCommand("Delete from tablecontact where ContactID = @pid", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commadDelete.Parameters.AddWithValue("@pid", selectedID);

            commadDelete.ExecuteNonQuery();

            Response.Redirect("Messages.aspx");








        }
    }
}