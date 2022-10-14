using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class images : System.Web.UI.Page
    {
        int Id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            imagespan.Visible = false;
            Id = Convert.ToInt32(Request.QueryString["id"]);
        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            if (image.HasFile)
            {
                SqlConnection con = db.get();
                foreach(var file in image.PostedFiles)
                {
                    var fileName = file.FileName;
                    file.SaveAs(Server.MapPath("~/HouseImages/" + Path.GetFileName(fileName)));
                    SqlCommand cmd = new SqlCommand("Insert into tblImage (HouseId, ImagePath) values ('" + Id + "', '" + fileName + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("newListing.aspx");
                }
            }
            else
            {
                imagespan.Visible = true;
            }
        }
    }
}