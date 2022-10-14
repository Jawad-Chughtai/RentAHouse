using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            alert.Visible = false;
        }

        protected void login_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = db.get();
            SqlCommand cmd = new SqlCommand("Select * from tblAdmin where username = '" + username.Value + "' and password = '" + password.Value + "'", con);
            con.Open();
            var rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["UserId"] = Convert.ToInt32(rd["Id"]);
                Session["FullName"] = rd["FullName"].ToString();
                con.Close();
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                alert.Visible = true;
                con.Close();
            }
        }
    }
}