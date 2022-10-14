<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="RentAHouse.Admin.Users" %>

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
                                <h2 class="breadcrumb_title">Users</h2>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="my_dashboard_review">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <h4>Profile Information</h4>
                                    </div>
                                    <div class="col-xl-1"></div>
                                    <div class="col-xl-10">
                                        <div class="row mt10">
                                            <div class="col-lg-12 col-xl-12">
                                                <div class="my_profile_setting_input form-group">
                                                    <label for="fullname">Full Name</label>
                                                    <input type="text" class="form-control" id="fullname" runat="server">

                                                    <span runat="server" id="fullnamespan" style="color: red;">Please Enter Full Name.</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-xl-6">
                                                <div class="my_profile_setting_input form-group">
                                                    <label for="username">Username</label>
                                                    <input type="text" class="form-control" id="username" runat="server">

                                                    <span runat="server" id="usernamespan" style="color: red;">Please Enter Username.</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-xl-6">
                                                <div class="my_profile_setting_input form-group">
                                                    <label for="password">Password</label>
                                                    <input type="password" class="form-control" id="password" runat="server">

                                                    <span runat="server" id="passwordspan" style="color: red;">Please Enter Password.</span>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 text-right">
                                                <div class="my_profile_setting_input">
                                                    <button type="submit" class="btn btn2" id="submit" runat="server" onserverclick="submit_ServerClick">Save User</button>
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
                                        <asp:GridView ID="usersGrid" runat="server" CssClass="table table-striped table-bordered table-hover table-dark" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName"></asp:BoundField>
                                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
                                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role"></asp:BoundField>
                                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-sm bg-light font-weight-bold"></asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' DeleteCommand="DELETE FROM [tblAdmin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblAdmin] ([FullName], [Username], [Password], [Role]) VALUES (@FullName, @Username, @Password, @Role)" SelectCommand="SELECT [Id], [FullName], [Username], [Password], [Role] FROM [tblAdmin] ORDER BY [FullName]" UpdateCommand="UPDATE [tblAdmin] SET [FullName] = @FullName, [Username] = @Username, [Password] = @Password, [Role] = @Role WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Role" Type="String"></asp:Parameter>
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Role" Type="String"></asp:Parameter>
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
