<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="houses.aspx.cs" Inherits="RentAHouse.Admin.houses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="our-dashbord dashbord bgc-f7 pb50">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-xl-2 dn-992 pl0"></div>
                <div class="col-lg-9 col-xl-10 maxw100flex-992">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb_content style2">
                                <h2 class="breadcrumb_title">Houses</h2>
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
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' SelectCommand="SELECT [Id], [Code], [Name], [HouseNo], [Street], [City], [Beds], [Bathrooms], [Category] FROM [tblHouse] WHERE ([Category] = @Category)" DeleteCommand="DELETE FROM [tblHouse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblHouse] ([Code], [Name], [HouseNo], [Street], [City], [Beds], [Bathrooms], [Category]) VALUES (@Code, @Name, @HouseNo, @Street, @City, @Beds, @Bathrooms, @Category)" UpdateCommand="UPDATE [tblHouse] SET [Code] = @Code, [Name] = @Name, [HouseNo] = @HouseNo, [Street] = @Street, [City] = @City, [Beds] = @Beds, [Bathrooms] = @Bathrooms, [Category] = @Category WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Code" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="HouseNo" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Street" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="City" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Beds" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="Bathrooms" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="Category" Type="String"></asp:Parameter>
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="House" Name="Category" Type="String"></asp:Parameter>
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Code" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="HouseNo" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Street" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="City" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Beds" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="Bathrooms" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="Category" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                            </UpdateParameters>
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
