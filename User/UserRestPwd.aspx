<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRestPwd.aspx.cs" Inherits="User_UserRestPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
    <style>
        .input {
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
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="../css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="../images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="../css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<body>
    <form id="form1" runat="server">
        <div class="contact">
            <div class="container1">
                <div class="row">
                    <div class="col-md-12">
                        <h3 style="text-align:center" class="h3New">Forgot Password</h3>
                        
                        <div style="text-align:center">
                            <div id="divusernm">
                                <i class="fa fa-envelope icon"></i>
                              
                                <asp:TextBox ID="txtmail" runat="server" Placeholder="Email"></asp:TextBox>
                            </div>
                                <br />
                            <div>
                                <asp:Button ID="btnsend" runat="server" Text="Get OTP" OnClick="btnsend_Click" CssClass="btn-danger" />
                            </div>
                            <br />
                            <div id="div2">
                                <i class="fa fa-key icon"></i>
                                <asp:TextBox ID="txtopt" runat="server" placeholder="OTP" TextMode="Password"></asp:TextBox>
                            </div>
                            <br />
                            <div id="divpwd">
                                <i class="fa fa-key icon"></i>
                                <asp:TextBox ID="txtnewpwd" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <br />
                            <div id="div1">
                                <i class="fa fa-key icon"></i>
                                <asp:TextBox ID="txtcnfnew" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <br />
                            <div id="btndiv">
                                <asp:Button ID="btnlogin" runat="server" Text="Forgot Password" OnClick="btnlogin_Click" CssClass="btn-success" />
                                <%--<br />
                                <h4>OR</h4>
                                <h5>Don't have account? &nbsp; <a href="../UserLogin.aspx" class="heading5">Sign Up</a></h5>
                            </div>
                            <br />
                            <br />--%>
                            <div id="Div3">
                                <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    // var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on the button, open the modal
    function openDialog() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    function closeDialog() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

