<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="Admin_ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .div {
            margin-top: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="div container border" style="width: auto; padding: 40px; border-radius: 10px; margin-top: 200px">
        <div>
            <h1 align="center" style="color: white">&nbsp;&nbsp; View Product</h1>
        </div>
        <div class="div">
            <asp:GridView BorderColor="White" ForeColor="White" ID="GridView1" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" runat="server" CssClass="table table-stripped table-bordered" OnRowCommand="GridView1_RowCommand">
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
                    <asp:TemplateField HeaderText="Image 2">
                        <ItemTemplate>
                            <asp:Image ID="img2" Height="100" Width="100" runat="server" ImageUrl='<%#Eval("img2") %>'></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image 3">
                        <ItemTemplate>
                            <asp:Image ID="img3" Height="100" Width="100" runat="server" ImageUrl='<%#Eval("img3") %>'></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Price">
                        <ItemTemplate>
                            <asp:Label ID="lblmrp" runat="server" Text='<%#Eval("mrp") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="Edit" CommandName="edit" Text="Edit" ForeColor="White" CommandArgument='<%#Eval("pid") %>' runat="server"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="Delete" CommandName="delete" Text="Delete" ForeColor="White" CommandArgument='<%#Eval("pid") %>' runat="server"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-lg-offset-4 div">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="true" Font-Size="X-Large" Visible="false" Text="Product unavailable"></asp:Label>
        </div>
    </div>
</asp:Content>

