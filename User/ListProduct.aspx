<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ListProduct.aspx.cs" Inherits="User_ListProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .img {
            height: 200px;
            width: 200px;
        }
    </style>
     <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="brand-bg">
        <div class="container">
            <div class="row">
                <div class="col-xl col-lg col-md col-sm margin">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" OnEditCommand="DataList1_EditCommand">
                        <ItemTemplate>
                            <div class="text-center brand_box margin" style="width:350px;height:500px;padding-bottom:100px;margin-right:50px">
                                <asp:Image CssClass="img" ID="Image1" runat="server" ImageUrl='<%#Eval("img1") %>' />
                                <br />
                                <br />
                                <asp:Label ID="lblcmp" Font-Bold="true" runat="server" Text='<%#Eval("prodNm") %>' Font-Size="X-Large"></asp:Label>
                                <br />
                                <br />
                                <asp:Label CssClass="align-content-end" ID="lblprice" runat="server" Text='<%#Eval("mrp") %>' Font-Size="XX-Large" ForeColor="Red" Font-Bold="true"></asp:Label>
                            
                                    <br />
                                <asp:LinkButton ID="LinkButton1" CommandName="edit" CommandArgument='<%#Eval("pid") %>' runat="server" ForeColor="#003399" Font-Size="Large">View More...</asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

