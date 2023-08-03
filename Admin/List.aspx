<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Admin_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .div {
            margin-top: auto;
        }
  
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div container border" style="width: auto; padding: 40px; border-radius: 10px; margin-top: 200px">
        <div>
            <h1 align="center" style="color: white">&nbsp;&nbsp;User Registration List</h1>
        </div>
        <div class="div">
            <asp:GridView BorderColor="White" ForeColor="White" ID="GridView1" AutoGenerateColumns="false" runat="server" CssClass="table table-stripped table-bordered" >
                <Columns>
                    <asp:TemplateField HeaderText="User FirstName">
                        <ItemTemplate>
                            <asp:Label ID="lblfnm" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User LastName">
                        <ItemTemplate>
                            <asp:Label ID="lbllnm" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Email">
                        <ItemTemplate>
                            <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Password">
                        <ItemTemplate>
                            <asp:Label ID="lblpwd" runat="server" Text='<%#Eval("pwd") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

