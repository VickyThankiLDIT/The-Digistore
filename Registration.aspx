<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .input {
            margin-left: 90px;
            border-radius: 10px;
            width: 90%;
        }

        .button {
            border-radius: 10px;
        }

        .container1 {
            border: solid;
            border-color: red;
            box-shadow: rgba(255,0,0,0.5) 10px 5px;
            width: 40%;
            margin-left: 500px;
            border-radius: 100px;
            padding: 100px 0px 100px 0px;
            overflow: hidden;
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
<body style="background-image: url(images/banner.jpg)">
    <form id="form1" runat="server">
        <section class="h-100 mt-5" style="box-shadow: gray 10px">
            <div class="container py-3 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                        alt="login form"
                                        class="img-fluid h-100" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">
                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                            <span class="h1 fw-bold mb-0">DigiStore</span>
                                        </div>
                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign upto your account</h5>
                                        <div class="form-outline mb-2">
                                            <asp:TextBox ID="txtfnm" runat="server" CssClass="form-control" placeholder="Enter First Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftfnm" runat="server" ErrorMessage="First name required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtfnm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-outline mb-2">
                                            <asp:TextBox ID="txtlnm" runat="server" CssClass="form-control" placeholder="Enter Last Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftlnm" runat="server" ErrorMessage="Last name required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtlnm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-outline mb-2">
                                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter Email "></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftemail" runat="server" ErrorMessage="Email address is required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="remail" runat="server" ErrorMessage="invalid email" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-outline mb-2">
                                            <asp:TextBox ID="txtcont" runat="server" CssClass="form-control" placeholder="Enter Contact " MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftcontact" runat="server" ErrorMessage="Contact number is required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtcont"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-2">
                                            <asp:TextBox ID="txtdate" type="date" runat="server" CssClass="form-control" ToolTip="Date Of Birth "></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftdate" runat="server" ErrorMessage="Please Select Your DOB" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-2">
                                            <asp:TextBox ID="txtadd" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftadd" runat="server" ErrorMessage="invalid address" Font-Bold="true" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-2">
                                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rftpass" runat="server" Display="Dynamic" ErrorMessage="Password is required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-2">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="Password Doesn't Match" Font-Bold="true" Font-Size="Medium" ForeColor="Red" ControlToCompare="txtpass" ControlToValidate="txtcnf"></asp:CompareValidator>
                                            <asp:TextBox ID="txtcnf" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvcnf" runat="server" Display="Dynamic" ErrorMessage="Confirm password is required" Font-Bold="true" Font-Size="Medium" ForeColor="Red" ControlToValidate="txtcnf"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="pt-1 mb-4">
                                            <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-dark btn-lg btn-block" Text="Register" OnClick="btnlogin_Click"></asp:Button>
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
