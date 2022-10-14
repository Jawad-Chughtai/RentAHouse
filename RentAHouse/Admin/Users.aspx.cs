using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fullnamespan.Visible = false;
            usernamespan.Visible = false;
            passwordspan.Visible = false;
        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(fullname.Value))
            {
                fullnamespan.Visible = true;
            }
            else if (string.IsNullOrEmpty(username.Value))
            {
                usernamespan.Visible = true;
            }
            else if (string.IsNullOrEmpty(password.Value))
            {
                passwordspan.Visible = true;
            }
            else
            {
                string str = "User";
                SqlConnection con = db.get();
                SqlCommand cmd = new SqlCommand("Insert into tblAdmin (FullName, Username, Password, Role) values ('"+ fullname.Value +"', '"+ username.Value +"', '"+ password.Value +"', '"+ str +"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("users.aspx");
            }
        }
    }
}