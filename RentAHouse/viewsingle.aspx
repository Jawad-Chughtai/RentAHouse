<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="viewsingle.aspx.cs" Inherits="RentAHouse.viewsingle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Listing Single Property -->
    <section class="listing-title-area">
        <div class="container">
            <div class="row mb30">
                <div class="col-lg-7 col-xl-8">
                    <div class="single_property_title mt30-767">
                        <h2><%= Name%></h2>
                        <p><%= HouseNo%> Street <%= Street%>, <%= Area%>, <%= City%></p>
                    </div>
                </div>
                <div class="col-lg-5 col-xl-4 text-right">
                    <div class="single_property_social_share">
                        <div class="price fn-400">
                            <h2>Rs. <%= Rent%><small>/mo</small></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-7 col-lg-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="spls_style_two mb30-520">
                                <a class="popup-img" href="HouseImages/<%= Image1 %>">
                                    <img class="img-fluid w100" src="HouseImages/<%= Image1 %>" alt="1.jpg" style="width: 750px; height: 500px;"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-lg-4">
                    <div class="row" id="otherImages" runat="server">
                        
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section class="our-agent-single bgc-f7 pb30-991">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="listing_single_description">
                                <div class="lsd_list">
                                    <ul class="mb0">
                                        <li class="list-inline-item"><a href="page-listing-single-v4.html#"><%= Category%></a></li>
                                        <li class="list-inline-item"><a href="page-listing-single-v4.html#">Beds: <%= Beds%></a></li>
                                        <li class="list-inline-item"><a href="page-listing-single-v4.html#">Baths: <%= Bathrooms%></a></li>
                                        <li class="list-inline-item"><a href="page-listing-single-v4.html#"><%= Size%> <%= SizeUnit%></a></li>
                                    </ul>
                                </div>
                                <h4 class="mb30">Description</h4>
                                <p class="mb25"><%= Description%></p>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="additional_details">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="mb15">Property Details</h4>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-xl-6">
                                        <ul class="list-inline-item">
                                            <li>
                                                <p>Property ID :</p>
                                            </li>
                                            <li>
                                                <p>Rent :</p>
                                            </li>
                                            <li>
                                                <p>Property Size :</p>
                                            </li>
                                            <li>
                                                <p>Year Built :</p>
                                            </li>
                                        </ul>
                                        <ul class="list-inline-item">
                                            <li>
                                                <p><span><%= Code%></span></p>
                                            </li>
                                            <li>
                                                <p><span>Rs. <%= Rent%> / mo</span></p>
                                            </li>
                                            <li>
                                                <p><span><%= Size%> <%= SizeUnit%></span></p>
                                            </li>
                                            <li>
                                                <p><span><%= YearBuilt%></span></p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-xl-6">
                                        <ul class="list-inline-item">
                                            <li>
                                                <p>Bedrooms :</p>
                                            </li>
                                            <li>
                                                <p>Bathrooms :</p>
                                            </li>
                                            <li>
                                                <p>Garage :</p>
                                            </li>
                                            <li>
                                                <p>Property Type :</p>
                                            </li>
                                        </ul>
                                        <ul class="list-inline-item">
                                            <li>
                                                <p><span><%= Beds%></span></p>
                                            </li>
                                            <li>
                                                <p><span><%= Bathrooms%></span></p>
                                            </li>
                                            <li>
                                                <p><span><%= HasGarage%></span></p>
                                            </li>
                                            <li>
                                                <p><span><%= Category%></span></p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-4">
                    <div class="sidebar_listing_list">
                        <div class="sidebar_advanced_search_widget">
                            <div class="sl_creator">
                                <h4 class="mb25">Schedule Visit</h4>
                            </div>
                            <ul class="sasw_list mb0">
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="date" class="form-control" id="datePickerId" runat="server">
                                        <span id="datespan" style="color:red;" runat="server">Enter Date</span>
                                    </div>
                                </li>
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="NameText" runat="server" placeholder="Your Name">
                                        <span id="namespan" style="color:red;" runat="server">Enter Name</span>
                                    </div>
                                </li>
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="number" class="form-control" id="phone" runat="server" placeholder="Phone">
                                        <span id="phonespan" style="color:red;" runat="server">Enter Phone</span>
                                    </div>
                                </li>
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" runat="server" placeholder="Email">
                                        <span id="emailspan" style="color:red;" runat="server">Enter Email</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_button">
                                        <button type="submit" id="submitVisit" runat="server" class="btn btn-block btn-thm" onserverclick="submitVisit_ServerClick">Submit</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>









    <div class="row">
        <div class="col-lg-12">
            <div class="listing_sidebar dn db-991">
                <div class="sidebar_content_details style3">
                    <!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->
                    <div class="sidebar_listing_list style2 mobile_sytle_sidebar mb0">
                        <div class="sidebar_advanced_search_widget">
                            <h4 class="mb25">Advanced Search <a class="filter_closed_btn float-right" href="page-listing-list.html#"><small>Hide Filter</small> <span class="flaticon-close"></span></a></h4>
                            <ul class="sasw_list style2 mb0">
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName1" placeholder="keyword">
                                        <label for="exampleInputEmail"><span class="flaticon-magnifying-glass"></span></label>
                                    </div>
                                </li>
                                <li class="search_area">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputEmail" placeholder="Location">
                                        <label for="exampleInputEmail"><span class="flaticon-maps-and-flags"></span></label>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Status</option>
                                                <option>Apartment</option>
                                                <option>Bungalow</option>
                                                <option>Condo</option>
                                                <option>House</option>
                                                <option>Land</option>
                                                <option>Single Family</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Property Type</option>
                                                <option>Apartment</option>
                                                <option>Bungalow</option>
                                                <option>Condo</option>
                                                <option>House</option>
                                                <option>Land</option>
                                                <option>Single Family</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="small_dropdown2">
                                        <div id="prncgs" class="btn dd_btn">
                                            <span>Price</span>
                                            <label for="exampleInputEmail2"><span class="fa fa-angle-down"></span></label>
                                        </div>
                                        <div class="dd_content2">
                                            <div class="pricing_acontent">
                                                <span id="slider-range-value1"></span>
                                                <span class="mt0" id="slider-range-value2"></span>
                                                <div id="slider"></div>
                                                <!-- <input type="text" class="amount" placeholder="$52,239"> 
														<input type="text" class="amount2" placeholder="$985,14">
														<div class="slider-range"></div> -->
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Bathrooms</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Bedrooms</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Garages</option>
                                                <option>Yes</option>
                                                <option>No</option>
                                                <option>Others</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_two">
                                        <div class="candidate_revew_select">
                                            <select class="selectpicker w100 show-tick">
                                                <option>Year built</option>
                                                <option>2013</option>
                                                <option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                                <option>2017</option>
                                                <option>2018</option>
                                                <option>2019</option>
                                                <option>2020</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                                <li class="min_area style2 list-inline-item">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName2" placeholder="Min Area">
                                    </div>
                                </li>
                                <li class="max_area list-inline-item">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputName3" placeholder="Max Area">
                                    </div>
                                </li>
                                <li>
                                    <div id="accordion" class="panel-group">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a href="page-listing-list.html#panelBodyRating" class="accordion-toggle link" data-toggle="collapse" data-parent="#accordion"><i class="flaticon-more"></i>Advanced features</a>
                                                </h4>
                                            </div>
                                            <div id="panelBodyRating" class="panel-collapse collapse">
                                                <div class="panel-body row">
                                                    <div class="col-lg-12">
                                                        <ul class="ui_kit_checkbox selectable-list float-left fn-400">
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                                    <label class="custom-control-label" for="customCheck1">Air Conditioning</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                                    <label class="custom-control-label" for="customCheck4">Barbeque</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck10">
                                                                    <label class="custom-control-label" for="customCheck10">Gym</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck5">
                                                                    <label class="custom-control-label" for="customCheck5">Microwave</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck6">
                                                                    <label class="custom-control-label" for="customCheck6">TV Cable</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                                    <label class="custom-control-label" for="customCheck2">Lawn</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck11">
                                                                    <label class="custom-control-label" for="customCheck11">Refrigerator</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                                    <label class="custom-control-label" for="customCheck3">Swimming Pool</label>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <ul class="ui_kit_checkbox selectable-list float-right fn-400">
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck12">
                                                                    <label class="custom-control-label" for="customCheck12">WiFi</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck14">
                                                                    <label class="custom-control-label" for="customCheck14">Sauna</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck7">
                                                                    <label class="custom-control-label" for="customCheck7">Dryer</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck9">
                                                                    <label class="custom-control-label" for="customCheck9">Washer</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck13">
                                                                    <label class="custom-control-label" for="customCheck13">Laundry</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck8">
                                                                    <label class="custom-control-label" for="customCheck8">Outdoor Shower</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="custom-control custom-checkbox">
                                                                    <input type="checkbox" class="custom-control-input" id="customCheck15">
                                                                    <label class="custom-control-label" for="customCheck15">Window Coverings</label>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="search_option_button">
                                        <button type="submit" class="btn btn-block btn-thm">Search</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
