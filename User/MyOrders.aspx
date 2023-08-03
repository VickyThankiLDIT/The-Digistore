<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="MyOrders.aspx.cs" Inherits="User_MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="brand-bg">
        <div class="container">
            <div class="row">
                <div class="col-xl col-lg col-md col-sm margin">
                    <div>
                        <h1 align="center" style="font-weight: bold">&nbsp;&nbsp; View Product</h1>
                    </div>
                    <div class="div">
                        <asp:GridView BorderColor="White" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" ForeColor="Black" ID="GridView1" AutoGenerateColumns="false" runat="server" CssClass="table table-stripped table-bordered table-hover">
                            <Columns>
                                <asp:TemplateField HeaderText="Product Category">
                                    <ItemTemplate>
                                        <asp:Label ID="lblcat" runat="server" Text='<%#Eval("cat") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblmnm" runat="server" Text='<%#Eval("prodNm") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Brand">
                                    <ItemTemplate>
                                        <asp:Label ID="lblcmp" runat="server" Text='<%#Eval("brand") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Description">
                                    <ItemTemplate>
                                        <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("descr") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image 1">
                                    <ItemTemplate>
                                        <asp:Image ID="img1" Height="100" Width="100" runat="server" ImageUrl='<%#Eval("img1") %>'></asp:Image>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Price">
                                    <ItemTemplate>
                                        <asp:Label ID="lblmrp" runat="server" Text='<%#Eval("mrp") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Delete" CommandName="delete" Text="Delete" ForeColor="White" CommandArgument='<%#Eval("sid") %>' runat="server"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="col-lg-offset-4 div">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="true" Font-Size="X-Large" Visible="false" Text="Product unavailable"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

