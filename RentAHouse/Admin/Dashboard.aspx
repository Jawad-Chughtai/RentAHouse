<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RentAHouse.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
	<!-- Our Dashbord -->
	<section class="our-dashbord dashbord bgc-f7 pb50">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-xl-2 dn-992 pl0"></div>
				<div class="col-lg-6 col-xl-10 maxw100flex-992">
					<div class="row">
						<div class="col-lg-12 mb10">
							<div class="breadcrumb_content style2">
								<h2 class="breadcrumb_title">Howdy, <%=Session["FullName"] %>!</h2>
								<p>We are glad to see you again!</p>
							</div>
						</div>
						<div class="col-lg-6 col-xl-6">
							<div class="ff_one">
								<div class="icon"><span class="flaticon-home"></span></div>
								<div class="detais">
									<div class="timer"><%= TotalProperties %></div>
									<p>All Properties</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-xl-6">
							<div class="ff_one style2">
								<div class="icon"><span class="flaticon-view"></span></div>
								<div class="detais">
									<div class="timer"><%= TotalViews %></div>
									<p>Total Views</p>
								</div>
							</div>
						</div>

					</div>
				</div>
				<%--<div class="col-lg-6 col-xl-5 maxw100flex-992">
					
						<div class="col-xl-12">
							<div class="recent_job_activity">
								<h4 class="title">Recent Activities</h4>
								<div class="grid">
									<ul>
										<li class="list-inline-item"><div class="icon"><span class="flaticon-home"></span></div></li>
										<li class="list-inline-item"><p>Your listing <strong>Luxury Family Home</strong> has been approved!.</p></li>
									</ul>
								</div>
								<div class="grid">
									<ul>
										<li class="list-inline-item"><div class="icon"><span class="flaticon-chat"></span></div></li>
										<li class="list-inline-item"><p>Kathy Brown left a review  on <strong>Renovated Apartment</strong></p></li>
									</ul>
								</div>
								<div class="grid">
									<ul>
										<li class="list-inline-item"><div class="icon"><span class="flaticon-heart"></span></div></li>
										<li class="list-inline-item"><p>Someone favorites your <strong>Gorgeous Villa Bay View</strong> listing!</p></li>
									</ul>
								</div>
								<div class="grid">
									<ul>
										<li class="list-inline-item"><div class="icon"><span class="flaticon-home"></span></div></li>
										<li class="list-inline-item"><p>Your listing <strong>Luxury Family Home</strong> has been approved!</p></li>
									</ul>
								</div>
								<div class="grid">
									<ul>
										<li class="list-inline-item"><div class="icon"><span class="flaticon-chat"></span></div></li>
										<li class="list-inline-item"><p>Kathy Brown left a review on <strong>Renovated Apartment</strong></p></li>
									</ul>
								</div>
								<div class="grid mb0">
									<ul class="pb0 mb0 bb_none">
										<li class="list-inline-item"><div class="icon"><span class="flaticon-heart"></span></div></li>
										<li class="list-inline-item"><p>Someone favorites your <strong>Gorgeous Villa Bay</strong> View listing!</p></li>
									</ul>
								</div>
							</div>
						</div>
				</div>--%>

			</div>
		</div>
	</section>
</asp:Content>
