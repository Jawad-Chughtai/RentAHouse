<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="newListing.aspx.cs" Inherits="RentAHouse.Admin.newListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Our Dashbord -->
    <section class="our-dashbord dashbord bgc-f7 pb50">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-3 col-xl-2 dn-992 pl0"></div>
                <div class="col-lg-9 col-xl-10 maxw100flex-992">
                    <div class="row">
                        <div class="col-lg-12 mb10">
                            <div class="breadcrumb_content style2">
                                <h2 class="breadcrumb_title">Add New Property</h2>
                                <p>We are glad to see you again!</p>
                            </div>
                        </div>
                        <div class="ui_kit_message_box" id="alert" runat="server">
							<div class="alert alart_style_four alert-dismissible fade show" role="alert">
							  	Please fill in all the fields.
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							    	<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>
                        <div class="col-lg-12">
                            <div class="my_dashboard_review">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="mb30">Create Listing</h4>
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyTitle">Property Title</label>
                                            <input type="text" class="form-control" id="propertyTitle" runat="server">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="my_profile_setting_textarea">
                                            <label for="propertyDescription">Description</label>
                                            <textarea class="form-control" id="propertyDescription" rows="7" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input ui_kit_select_search form-group">
                                            <label>Code</label>
                                            <input type="text" class="form-control" id="code" runat="server" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input ui_kit_select_search form-group">
                                            <label>Type</label>
                                            <select runat="server" id="type" class="selectpicker" data-live-search="true" data-width="100%">
                                                <option disabled="disabled">Select Property Type</option>
                                                <option data-tokens="Apartment">Apartment</option>
                                                <option data-tokens="House">House</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input ui_kit_select_search form-group">
                                            <label>Size</label>
                                            <div class="input-group">
                                                <asp:DropDownList ID="sizeddl" runat="server" CssClass="form-control" DataSourceID="Size" DataTextField="Size" DataValueField="Id"></asp:DropDownList>
                                                <asp:SqlDataSource runat="server" ID="Size" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' SelectCommand="SELECT [Id], [Size] FROM [tblSize] ORDER BY [Size]"></asp:SqlDataSource>
                                                <div class="input-group-text">Marla</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input ui_kit_select_search form-group">
                                            <label>Beds</label>
                                            <input type="number" class="form-control" runat="server" id="beds" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input ui_kit_select_search form-group">
                                            <label>Bathrooms</label>
                                            <input type="number" class="form-control" runat="server" id="bathrooms" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="formGroupExamplePrice">Rent</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="rent" runat="server">
                                                <div class="input-group-text">per Month</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my_dashboard_review mt30">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="mb30">Location</h4>
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyAddress">City</label>
                                            <input type="text" class="form-control" id="city" runat="server" value="Muzaffarabad" disabled="disabled">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyState">House No</label>
                                            <input type="text" class="form-control" id="houseNo" runat="server">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyCity">Street</label>
                                            <input type="text" class="form-control" id="street" runat="server">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xl-4">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="neighborHood">Area</label>
                                            <asp:DropDownList ID="areaddl" runat="server" CssClass="form-control" DataSourceID="Area" DataTextField="AreaName" DataValueField="Id"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="Area" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' SelectCommand="SELECT * FROM [tblArea] ORDER BY [AreaName]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my_dashboard_review mt30">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="mb30">Detailed Information</h4>
                                    </div>
                                    <div class="col-lg-6 col-xl-6">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyId">Year Built</label>
                                            <input type="text" class="form-control" id="year" runat="server" >
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-xl-6">
                                        <div class="my_profile_setting_input form-group">
                                            <label for="propertyASize">Has Garage?</label>
                                            <select class="form-control" id="garage" runat="server">
                                                <option value="Yes">Yes</option>
                                                <option value="No">No</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="my_dashboard_review mt30">
                                <div class="row">

                                    <div class="col-12 text-right">
                                        <asp:Button ID="btnSave" Text="Save Property" runat="server" OnClick="btnSave_Click" CssClass="btn btn-danger" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
