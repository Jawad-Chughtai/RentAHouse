using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public int TotalProperties = 0;
        public int TotalViews = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = db.get();
            SqlCommand cmd = new SqlCommand("Select * from tblViews", con);
            con.Open();
            var rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TotalViews = Convert.ToInt32(rd["Views"]);
            }
            con.Close();

            cmd = new SqlCommand("Select * from tblHouse", con);
            con.Open();
            var rd2 = cmd.ExecuteReader();
            while (rd2.Read())
            {
                TotalProperties++;
            }
            con.Close();
        }
    }
}