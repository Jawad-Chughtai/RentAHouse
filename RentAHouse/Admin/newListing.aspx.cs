using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class newListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(propertyTitle.Value) || string.IsNullOrEmpty(propertyDescription.Value)
                || string.IsNullOrEmpty(code.Value) || string.IsNullOrEmpty(type.Value) || string.IsNullOrEmpty(sizeddl.SelectedValue)
                || string.IsNullOrEmpty(beds.Value) || string.IsNullOrEmpty(bathrooms.Value) || string.IsNullOrEmpty(rent.Value) 
                || string.IsNullOrEmpty(city.Value) || string.IsNullOrEmpty(houseNo.Value) || string.IsNullOrEmpty(street.Value)
                || string.IsNullOrEmpty(areaddl.SelectedValue) || string.IsNullOrEmpty(year.Value) || string.IsNullOrEmpty(garage.Value))
            {
                alert.Visible = true;
            }

            else
            {
                var command = String.Format(@"Insert into tblHouse (Code, Description, Name, HouseNo, Street, AreaId, City, YearBuilt, HasGarage,
                    Beds, Bathrooms, Category, SizeId, Rent)
                    Values ('"+code.Value+"', '"+propertyDescription.Value + "', '" + propertyTitle.Value+"', '"+houseNo.Value+"', '" + street.Value + "', '" + areaddl.SelectedValue+"','"+city.Value+"', '"+year.Value+"', '" + garage.Value + "', '" + beds.Value+"', '"+bathrooms.Value+"', '" + type.Value + "', '" + sizeddl.SelectedValue+"','"+rent.Value+"')");
                SqlConnection con = db.get();
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                cmd = new SqlCommand("select id from tblHouse where id = (select max (id) from tblHouse)", con);
                con.Open();
                var rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Response.Redirect("images.aspx?id=" + Convert.ToInt32(rd["id"]));
                }
            }
        }
    }
}