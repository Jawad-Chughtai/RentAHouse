using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse
{
    public partial class viewsingle : System.Web.UI.Page
    {
        public int Id;
        public string Category;
        public string Name;
        public string HouseNo;
        public string Street;
        public string Area;
        public string SizeUnit;
        public int Beds;
        public int Bathrooms;
        public int Size;
        public string Rent;
        public string City;
        public string Description;
        public string Code;
        public int YearBuilt;
        public string HasGarage;
        public string Image1;

        protected void Page_Load(object sender, EventArgs e)
        {
            datespan.Visible = false;
            phonespan.Visible = false;
            namespan.Visible = false;
            emailspan.Visible = false;

            datePickerId.Attributes.Add("min", (DateTime.Now.Date).ToString("yyyy-MM-dd"));

            int Views = 0;
            SqlConnection con = db.get();

            SqlCommand cmd = new SqlCommand("select Views from tblViews", con);
            con.Open();
            var rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Views = Convert.ToInt32(rd["Views"]);
            }
            con.Close();
            Views = Views + 1;
            cmd = new SqlCommand("Update tblViews set Views = " + (Views), con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            string id = Request.QueryString["id"];
            if (string.IsNullOrEmpty(id))
            {
                Response.Redirect("listing.aspx");
            }

            string Command = @"select tblHouse.Id, Name, Code, Description, Street, YearBuilt, HasGarage, Category, HouseNo, " +
                "a.AreaName, Beds, Bathrooms, s.Size, s.SizeUnit, Rent, City from tblHouse\r\n  " +
                "inner join tblArea as a on a.Id = tblHouse.AreaId\r\n  " +
                "inner join tblSize as s on s.Id = tblHouse.SizeId where tblHouse.Id = " + id;
            cmd = new SqlCommand(Command, con);
            con.Open();
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Id = Convert.ToInt32(rd["Id"]);
                Category = rd["Category"].ToString();
                Name = rd["Name"].ToString();
                HouseNo = rd["HouseNo"].ToString();
                Area = rd["AreaName"].ToString();
                SizeUnit = rd["SizeUnit"].ToString();
                Beds = Convert.ToInt32(rd["Beds"]);
                YearBuilt = Convert.ToInt32(rd["YearBuilt"]);
                Bathrooms = Convert.ToInt32(rd["Bathrooms"]);
                Size = Convert.ToInt32(rd["Size"]);
                Rent = Convert.ToDouble(rd["Rent"]).ToString("N0");
                City = Convert.ToString(rd["City"]);
                Street = rd["Street"].ToString();
                Description = rd["Description"].ToString();
                Code = rd["Code"].ToString();
                HasGarage = rd["HasGarage"].ToString();
                
            }
            con.Close();
            int i = 0;
            List<string> images = new List<string>(); 
            cmd = new SqlCommand("Select * from tblImage where HouseId = " + Id, con);
            con.Open();
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (i == 0)
                {
                    Image1 = rd["ImagePath"].ToString();
                }
                else
                {
                    string img = rd["ImagePath"].ToString();
                    images.Add(img);
                }
                i++;
            }
            con.Close();
            if (!IsPostBack)
            {
                foreach (var image in images)
                {
                    otherImages.InnerHtml += String.Format(@"<div class='col-sm-6 col-lg-6'>
                            <div class='spls_style_two mb30'>
                                <a class='popup-img' href='HouseImages/{0}'>
                                    <img class='img-fluid w100' src='HouseImages/{0}' alt='2.jpg' style='height: 125px; width: 165px;'></a>
                            </div>
                        </div>", image);
                }
            }
        }

        protected void submitVisit_ServerClick(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(datePickerId.Value))
            {
                datespan.Visible = true;
            }
            else if (string.IsNullOrEmpty(NameText.Value))
            {
                namespan.Visible = true;
            }
            else if (string.IsNullOrEmpty(phone.Value))
            {
                phonespan.Visible = true;
            }
            else if (string.IsNullOrEmpty(email.Value))
            {
                emailspan.Visible = true;
            }

            else
            {
                SqlConnection con = db.get();
                SqlCommand cmd = new SqlCommand("Insert into tblVisit (Name, Contact, Email, Date) Values ('"+ NameText.Value +"', '"+ phone.Value +"'" +
                    ", '"+ email.Value +"', '"+ datePickerId.Value +"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("index.aspx");
            }
        }
    }
}