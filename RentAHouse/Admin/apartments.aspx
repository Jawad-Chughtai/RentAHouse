<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="apartments.aspx.cs" Inherits="RentAHouse.Admin.apartments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Our Dashbord -->
    <section class="our-dashbord dashbord bgc-f7 pb50">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-xl-2 dn-992 pl0"></div>
                <div class="col-lg-9 col-xl-10 maxw100flex-992">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb_content style2">
                                <h2 class="breadcrumb_title">Apartments</h2>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="my_dashboard_review">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <asp:GridView ID="featureGrid" runat="server" CssClass="table table-striped table-bordered table-hover table-dark" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code"></asp:BoundField>
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                                <asp:BoundField DataField="Beds" HeaderText="Beds" SortExpression="Beds"></asp:BoundField>
                                                <asp:BoundField DataField="Bathrooms" HeaderText="Bathrooms" SortExpression="Bathrooms"></asp:BoundField>
                                                <asp:BoundField DataField="HouseNo" HeaderText="HouseNo" SortExpression="HouseNo"></asp:BoundField>
                                                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street"></asp:BoundField>
                                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                                                <asp:CommandField ShowDeleteButton="True" ItemStyle-Width="150px" ControlStyle-CssClass="btn btn-sm bg-light font-weight-bold" HeaderText="Actions"></asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' SelectCommand="SELECT [Id], [Code], [Name], [HouseNo], [Street], [City], [Beds], [Bathrooms] FROM [tblHouse] WHERE ([Category] = @Category)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="Apartment" Name="Category" Type="String"></asp:Parameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
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
