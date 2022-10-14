﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="sizes.aspx.cs" Inherits="RentAHouse.Admin.sizes" %>
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
                                <h2 class="breadcrumb_title">Sizes</h2>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="my_dashboard_review">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <h4>Sizes</h4>
                                    </div>
                                    <div class="col-xl-1"></div>
                                    <div class="col-xl-10">
                                        <div class="row mt10">
                                            <div class="col-lg-12 col-xl-12">
                                                <div class="my_profile_setting_input form-group">
                                                    <label for="fullname">Size (Marla)</label>
                                                    <input type="text" class="form-control" id="size" runat="server">

                                                    <span runat="server" id="sizespan" style="color: red;">Please Enter Size.</span>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 text-right">
                                                <div class="my_profile_setting_input">
                                                    <button type="submit" class="btn btn2" id="submit" runat="server" onserverclick="submit_ServerClick">Save Size</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="my_dashboard_review">
                                <div class="row">
                                    <div class="col-xl-1"></div>
                                    <div class="col-xl-10">
                                        <asp:GridView ID="featureGrid" runat="server" CssClass="table table-striped table-bordered table-hover table-dark" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="Id" ItemStyle-Width="100px" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                                <asp:BoundField DataField="Size" ItemStyle-HorizontalAlign="Center" HeaderText="Size" SortExpression="Size"></asp:BoundField>
                                                <asp:BoundField DataField="SizeUnit" HeaderText="SizeUnit" SortExpression="SizeUnit"></asp:BoundField>
                                                <asp:CommandField ShowDeleteButton="True" ItemStyle-Width="150px" ControlStyle-CssClass="btn btn-sm bg-light font-weight-bold" HeaderText="Actions"></asp:CommandField>                                            
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' SelectCommand="SELECT [Id], [Size], [SizeUnit] FROM [tblSize] ORDER BY [Size]" DeleteCommand="DELETE FROM [tblSize] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblSize] ([Size], [SizeUnit]) VALUES (@Size, @SizeUnit)" UpdateCommand="UPDATE [tblSize] SET [Size] = @Size, [SizeUnit] = @SizeUnit WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Size" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="SizeUnit" Type="String"></asp:Parameter>
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Size" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="SizeUnit" Type="String"></asp:Parameter>
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
