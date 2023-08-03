<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserChangepassword.aspx.cs" Inherits="User_UserChangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-image: url(../images/banner.jpg);
            font-family: Nunito Sans;
        }

        .btn {
            background-color: #17c0eb;
            width: 100%;
            color: #fff;
            padding: 10px;
            font-size: 18px;
        }

            .btn:hover {
                background-color: #2d3436;
                color: #fff;
            }

        input {
            height: 50px !important;
        }

        .form-control:focus {
            border-color: #18dcff;
            box-shadow: none;
        }

        h3 {
            color: #17c0eb;
            font-size: 36px;
        }

        .cw {
            width: 35%;
        }

        @media(max-width: 992px) {
            .cw;

        {
            width: 60%;
        }

        }

        @media(max-width: 768px) {
            .cw;

        {
            width: 80%;
        }

        }

        @media(max-width: 492px) {
            .cw;

        {
            width: 90%;
        }

        }
    </style>
     <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container d-flex justify-content-center align-items-center vh-100 mt-5 mb-5">
        <div class="bg-white text-center pb-5 pl-5 pr-5 pt-3 mt-5 center" style="background-color: rgba(0,0,0,0.5)">
            <h3 class="text-danger">Change Password </h3>
            <form class="pb-3" action="#">
                <div class="form-group">
                    <asp:TextBox ID="txtoldpwd" CssClass="form-control-md" placeholder="Old Password*" BorderColor="Red" runat="server" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" CssClass="mt-0" ForeColor="Red" Font-Bold="true" Font-Size="Large" Display="Dynamic" ControlToValidate="txtoldpwd"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <asp:TextBox ID="txtnewpwd" CssClass="form-control-md" placeholder="New Password*" BorderColor="Red" runat="server" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Bold="true" Font-Size="Large" ForeColor="Red" Display="Dynamic" ControlToValidate="txtnewpwd"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <asp:TextBox ID="txtcnfpwd" CssClass="form-control-md" placeholder="Confirm Password*" runat="server" BorderColor="Red" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="*" Font-Bold="true" Font-Size="Large" Display="Dynamic" ControlToValidate="txtcnfpwd"></asp:RequiredFieldValidator>

                </div>
                <div>
                    <asp:Label ID="lbluchngpwd" runat="server" Text="Label"></asp:Label>
                </div>
            </form>
            <asp:Button ID="Button1" CssClass="btn bg-danger" Text="Change Password" runat="server" OnClick="Button1_Click" />        </div>
    </div>
</asp:Content>

