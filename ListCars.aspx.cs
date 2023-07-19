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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandlist = new SqlCommand("select * from tablecar t inner join tablebrand b on t.CarBrandID = b.BrandID where CarConfirmation = @pcon", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandlist.Parameters.AddWithValue("@pcon", true);

            SqlDataReader dr = commandlist.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}