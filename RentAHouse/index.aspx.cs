using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentAHouse
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Command = @"select top 3 tblHouse.Id, Name, Category, HouseNo, " +
                "a.AreaName, Beds, Bathrooms, s.Size, s.SizeUnit, Rent, City from tblHouse\r\n  " +
                "inner join tblArea as a on a.Id = tblHouse.AreaId\r\n  " +
                "inner join tblSize as s on s.Id = tblHouse.SizeId";

            
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
                propertyListing.InnerHtml += String.Format(@"
                            <div class='item'>
                                <div class='feat_property'>
                                    <div class='thumb'>
                                        <img class='img-whp' src='HouseImages/{11}' alt='fp1.jpg'>
                                        <div class='thmb_cntnt'>
                                            <ul class='tag mb0'>
                                                <li class='list-inline-item'><span style='color:white;'>For Rent</span></li>
                                                <li class='list-inline-item'><span style='color:white;'>Featured</span></li>
                                            </ul>
                                            <a class='fp_price' href='viewsingle.aspx?id={11}'>Rs. {1}<small>/mo</small></a>
                                        </div>
                                    </div>
                                    <div class='details'>
                                        <div class='tc_content'>
                                            <p class='text-thm'>{2}</p>
                                            <h4>{3}</h4>
                                            <p><span class='flaticon-placeholder'></span>{4} {5}, {6}</p>
                                            <ul class='prop_details mb0'>
                                                <li class='list-inline-item'><a href='index.html#'>Beds: {7}</a></li>
                                                <li class='list-inline-item'><a href='index.html#'>Baths: {8}</a></li>
                                                <li class='list-inline-item'><a href='index.html#'>{9} {10}</a></li>
                                            </ul>
                                        </div>
                                    </div>

								<div class='fp_footer text-center mb-3'>
									<a href='viewsingle.aspx?id={0}' class='btn btn-danger' style='width: 100px'>View</a>
								</div>
                                </div></div>"
                , item.Id, item.Rent, item.Category, item.Name, item.HouseNo, item.Area, item.City, item.Beds,
                item.Bathrooms, item.Size, item.SizeUnit, item.imgPath);
            }
        }
    }
}