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
    public partial class Admin_Deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["CarlID"]);

            SqlCommand commandAppvore=new SqlCommand("Update tablecar set CarConfirmation = @pcon where CarlID = @pid",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAppvore.Parameters.AddWithValue("@pcon", true);
            commandAppvore.Parameters.AddWithValue("@pid", selectedID);

            commandAppvore.ExecuteNonQuery();

            Response.Redirect("AdminAddCars.aspx");

        }
    }
}