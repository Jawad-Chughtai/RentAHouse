<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="images.aspx.cs" Inherits="RentAHouse.Admin.images" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Our Dashbord -->
    <section class="our-dashbord dashbord bgc-f7 pb50">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-3 col-xl-3 dn-992 pl0"></div>
                <div class="col-lg-9 col-xl-7 maxw100flex-992">
                    <div class="row">
                        <div class="col-12">
                        <div class="my_dashboard_review mt30">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4 class="mb30">Property media</h4>
                                </div>
                                <div class="col-lg-12">
                                    <asp:ScriptManager ID="SCPTMGR" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdimageUpload" runat="server">
                                        <ContentTemplate>
                                            <asp:FileUpload ID="image" multiple="multiple" runat="server" />
                                            <span id="imagespan" style="color:red;" runat="server">Please select Images</span>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="col-12 text-right">
                                    <asp:Button ID="saveBtn" runat="server" CssClass="btn btn-danger" Text="Save" OnClick="saveBtn_Click" />
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
