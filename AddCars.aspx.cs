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
    public partial class addcars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    SqlCommand commandListBrand = new SqlCommand("select * from tablebrand", SqlConnectionClass.connection);
                    SqlConnectionClass.CheckConnection();

                    SqlDataReader dr = commandListBrand.ExecuteReader();

                    combobox.DataTextField = "BrandName";

                    combobox.DataValueField = "BrandID";

                    combobox.DataSource = dr;

                    combobox.DataBind();

                    dr.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand addcommand = new SqlCommand("Insert into tablecar(CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPice) values (@pmodel,@pbrand,@pfuel,@pdesc,@pcontact,@pseller,@pphoto,@ppice)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            addcommand.Parameters.AddWithValue("@pmodel", tboxModel.Text);
            addcommand.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
            addcommand.Parameters.AddWithValue("@pfuel", tboxFuel.Text);
            addcommand.Parameters.AddWithValue("@pdesc", tboxDesciription.Text);
            addcommand.Parameters.AddWithValue("@pcontact", tboxContact.Text);
            addcommand.Parameters.AddWithValue("@pseller", tboxSeller.Text);
            addcommand.Parameters.AddWithValue("@pphoto", tboxPhoto.Text);
            addcommand.Parameters.AddWithValue("@ppice", tboxPice.Text);

            addcommand.ExecuteNonQuery();
        }
    }
}