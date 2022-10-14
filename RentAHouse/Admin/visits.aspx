<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="visits.aspx.cs" Inherits="RentAHouse.Admin.visits" %>
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
                                        <asp:GridView ID="visitsView" runat="server" CssClass="table table-striped table-bordered table-hover table-dark" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">

                                            <Columns>
                                                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact"></asp:BoundField>
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0: dd-MMM-yyyy}"></asp:BoundField>
                                                <asp:CommandField ShowDeleteButton="True" DeleteText="Delete" ItemStyle-Width="150px" ControlStyle-CssClass="btn btn-sm bg-light font-weight-bold" HeaderText="Actions"></asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbRentAHouse %>' DeleteCommand="DELETE FROM [tblVisit] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblVisit] ([Name], [Contact], [Email], [Date]) VALUES (@Name, @Contact, @Email, @Date)" SelectCommand="SELECT * FROM [tblVisit] ORDER BY [Date]" UpdateCommand="UPDATE [tblVisit] SET [Name] = @Name, [Contact] = @Contact, [Email] = @Email, [Date] = @Date WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Contact" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Contact" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
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
