using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class sizes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sizespan.Visible = false;
        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(size.Value))
            {
                sizespan.Visible = true;
            }
            else
            {
                SqlConnection con = db.get();
                SqlCommand cmd = new SqlCommand("Insert into tblSize (Size, SizeUnit) Values ('"+ size.Value +"', 'Marla')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("sizes.aspx");
            }
        }
    }
}