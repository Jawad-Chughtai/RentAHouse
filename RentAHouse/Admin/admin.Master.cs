using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse.Admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("login.aspx");
                }
            }

            if (IsPostBack)
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}