<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RentAHouse.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="advanced search custom, agency, agent, business, clean, corporate, directory, google maps, homes, listing, membership packages, property, real estate, real estate agent, realestate agency, realtor">
    <meta name="description" content="FindHouse - Real Estate HTML Template">
    <meta name="CreativeLayers" content="ATFN">
    <!-- css file -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/dashbord_navitaion.css">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Title -->
    <title>Rent a House</title>
    <!-- Favicon -->
    <link href="images/favicon.ico" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
    <link href="images/favicon.ico" sizes="128x128" rel="shortcut icon" />

</head>
<body>
    <form id="form1" runat="server">
        
	<!-- Our LogIn Register -->
	<section class="our-log bgc-fa">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-6 offset-lg-3">
					<div class="login_form inner_page">
							<div class="heading">
								<h3 class="text-center">Login to your account</h3>
							</div>
						
                        <div class="ui_kit_message_box" id="alert" runat="server">
							<div class="alert alart_style_four alert-dismissible fade show" role="alert">
							  	Invalid Username or Password.
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							    	<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>
							 <div class="form-group">
						    	<input type="text" class="form-control" id="username" placeholder="Username" runat="server" />
							</div>
							<div class="form-group">
						    	<input type="password" class="form-control" id="password" placeholder="Password" runat="server" />
							</div>
							<button type="submit" class="btn btn-log btn-block btn-thm2" runat="server" id="loginbtn" onserverclick="login_ServerClick">Login</button>
					</div>
				</div>
			</div>
		</div>
	</section>

    </form>
</body>
</html>
