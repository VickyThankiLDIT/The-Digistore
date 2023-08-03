<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="FullItem.aspx.cs" Inherits="User_FullItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="brand-bg">
        <div class="container">
            <div class="row">
                <div class="col-xl col-lg col-md col-sm margin">
                    <div class="float-left">
                        <div class="float-left" style="margin-right: 50px;">
                            <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                            <br />
                            <br />
                            <asp:Image ID="Image2" runat="server" Height="200" Width="200" />
                        </div>
                        <asp:Image ID="Image3" runat="server" Height="450" Width="450" />
                    </div>
                    <div class="float-right" style="text-align: center;margin-top:100px">
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                        <br /><br />
                        <div class="text-center">
                            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" Font-Bold="true"  Font-Size="XX-Large"></asp:Label>
                            <br /> <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Label" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                           <br /><br />
                            <asp:Button ID="buybtn" runat="server" OnClick="buybtn_Click" Text="Buy Now" Font-Size="X-Large" CssClass="btn btn-success"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <asp:Label ID="Label3" Style="text-wrap: normal" runat="server" Text="Label" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                <br />
                <br />
                <div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

