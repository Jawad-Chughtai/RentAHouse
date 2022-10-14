using RentAHouse.Admin;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace RentAHouse
{
    public partial class listing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string RType = Request.QueryString["Type"];
            string RBedrooms = Request.QueryString["beds"];
            string RBathrooms = Request.QueryString["baths"];

            string Command = @"select tblHouse.Id, Name, Category, HouseNo, " +
                "a.AreaName, Beds, Bathrooms, s.Size, s.SizeUnit, Rent, City from tblHouse\r\n  " +
                "inner join tblArea as a on a.Id = tblHouse.AreaId\r\n  " +
                "inner join tblSize as s on s.Id = tblHouse.SizeId";

            if (!string.IsNullOrEmpty(RType) && RType != "Property Type")
            {
                Command = Command + " Where tblHouse.Category = '" + RType + "'";
            }
            if (!string.IsNullOrEmpty(RBedrooms) && RBedrooms != "Bedrooms")
            {
                Command = Command + " Where tblHouse.Beds = " + RBedrooms;
            }
            if (!string.IsNullOrEmpty(RBathrooms) && RBathrooms != "Bathrooms")
            {
                Command = Command + " Where tblHouse.Bathrooms = " + RBathrooms;
            }

            List<ModelClass> Items = new List<ModelClass>();
            SqlConnection con = db.get();
            SqlCommand cmd = new SqlCommand(Command, con);
            con.Open();
            var rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                int Id = Convert.ToInt32(rd["Id"]);
                string Category = rd["Category"].ToString();
                string Name = rd["Name"].ToString();
                string HouseNo = rd["HouseNo"].ToString();
                string Area = rd["AreaName"].ToString();
                string SizeUnit = rd["SizeUnit"].ToString();
                int Beds = Convert.ToInt32(rd["Beds"]);
                int Bathrooms = Convert.ToInt32(rd["Bathrooms"]);
                int Size = Convert.ToInt32(rd["Size"]);
                string Rent = Convert.ToDouble(rd["Rent"]).ToString("N0");
                string City = Convert.ToString(rd["City"]);


                ModelClass item = new ModelClass();
                item.Id = Id;
                item.Category = Category;
                item.Name = Name;
                item.HouseNo = HouseNo;
                item.Area = Area;
                item.Size = Size;
                item.SizeUnit = SizeUnit;
                item.Beds = Beds;
                item.Bathrooms = Bathrooms;
                item.Rent = Rent;
                item.City = City;
                Items.Add(item);
            }
            con.Close();

            foreach (var item in Items)
            {
                cmd = new SqlCommand("Select top 1 * from tblImage where HouseId = " + item.Id, con);

                con.Open();
                rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    item.imgPath = rd["ImagePath"].ToString();
                }
                con.Close();
                propertyListing.InnerHtml += String.Format(@"<div class='col-lg-12'>
                            <a href='viewsingle.aspx?id={0}'>
                                <div class='feat_property list'>
                                    <div class='thumb'>
                                        <img class='img-whp' src='houseimages/{11}' alt='fp1.jpg'>
                                    </div>
                                    <div class='details'>
                                        <div class='tc_content'>
                                            <div class='dtls_headr'>
                                                <ul class='tag'>
                                                    <li class='list-inline-item'><span style='color: white;'>For Rent</span></li>
                                                </ul>
                                                <p class='fp_price thisTag'>Rs. {1}<small>/mo</small></p>
                                            </div>
                                            <p class='text-thm'>{2}</p>
                                            <h4>{3}</h4>
                                            <p><span class='flaticon-placeholder'></span>{4}, {5}, {6}</p>
                                            <ul class='prop_details mb0'>
                                                <li class='list-inline-item'>Beds: {7}</li>
                                                <li class='list-inline-item'>Baths: {8}</li>
                                                <li class='list-inline-item'>{9} {10}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>"
                , item.Id, item.Rent, item.Category, item.Name, item.HouseNo, item.Area, item.City, item.Beds,
                item.Bathrooms, item.Size, item.SizeUnit, item.imgPath);
            }
            int Views = 0;
            cmd = new SqlCommand("select Views from tblViews", con);
            con.Open();
            rd = cmd.ExecuteReader();
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
        }



        protected void Submit_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect($"listing.aspx?type={type.Items[type.SelectedIndex].Text}&beds={bedrooms.Items[bedrooms.SelectedIndex].Text}&baths={bathrooms.Items[bathrooms.SelectedIndex].Text}");
        }
    }

    public class ModelClass
    {
        public int Id { get; set; }
        public string Category;
        public string Name;
        public string HouseNo;
        public string Area;
        public string SizeUnit;
        public int Beds;
        public int Bathrooms;
        public int Size;
        public string Rent;
        public string City;
        public string imgPath;
    }
}