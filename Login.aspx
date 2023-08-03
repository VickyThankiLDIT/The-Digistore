<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <style>
        .input {
            vertical-align:central;
            margin-left: 120px;
            border-radius: 10px;
        }

        .button {
            border-radius: 10px;
        }

        .container1 {
            border: solid;
            border-color: red;
            box-shadow: rgba(255,0,0,0.5) 10px 5px;
            width: 30%;
            margin-left: 500px;
            border-radius: 100px;
            padding: 100px 0px 100px 0px;
        }
    </style>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
     <title>The Digi Store</title>
    <link href="icon/icon.png" rel="icon" />
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<body style="background-image: url(img/banner.jpg)">
    <form id="form1" runat="server">
        <section class="h-100 mt-5">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                        alt="login form"
                                        class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">
                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                            <span class="h1 fw-bold mb-0">DigiStore</span>
                                        </div>
                                        <h4 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Admin Login</h4>
                                        <div class="form-outline mb-2">
                                            <asp:TextBox ID="txtnm" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvnm" ControlToValidate="txtnm" Display="Dynamic" runat="server" ErrorMessage="Username is required" Font-Bold="true" ForeColor="red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-outline mb-4">
                                            
                                            <asp:TextBox ID="txtpwd" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvpw" ControlToValidate="txtpwd" Display="Dynamic" runat="server" ErrorMessage="Password is required" Font-Bold="true" ForeColor="red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-4">
                                            <asp:Button CssClass="btn btn-dark btn-lg btn-block" Text="Login" ID="btnlogin" runat="server" OnClick="btnlogin_Click" />
                                            <br />
                                            <h7 style="text-align:left"><a href="Admin/AdminRestPwd.aspx" class="heading5">Forgotton Password?</a></h7>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
