
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .div {
        }
    </style>
    <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container border mt-5" style="width: 40%; padding: 40px; border-radius: 10px;">
        <div class="mt-4">
            <h1 align="center" style="color: white" id="heading" runat="server">Add Product</h1>
        </div>
        <div class="mt-4">
            <asp:DropDownList ID="ddlcat" runat="server" class="nice-select form-control form-control-lg __web-inspector-hide-shortcut__" CssClass="form-control form-control-lg" >
                
                <asp:ListItem>---Product Category---</asp:ListItem>
                <asp:ListItem>Mobile</asp:ListItem>
                <asp:ListItem>Laptop</asp:ListItem>
                <asp:ListItem>Earbud</asp:ListItem>
                <asp:ListItem>TV</asp:ListItem>
                <asp:ListItem>Smart Watch</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="mt-4">
            <asp:TextBox ID="txtpname" CssClass="form-control form-control-lg"
                placeholder="Product Name" MaxLength="20" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txtpname" ID="rfvmnm" Display="Dynamic" ValidationGroup="add" runat="server" ErrorMessage="Product name is required" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
        </div>
        <div class="mt-4">
            <asp:TextBox ID="txtbrand" CssClass="form-control form-control-lg"
                placeholder="Product Brand" MaxLength="20" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txtbrand" ID="RequiredFieldValidator1" ValidationGroup="add" Display="Dynamic" runat="server" ErrorMessage="Brand name is required" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
        </div>
        <div class="mt-4">
            <asp:TextBox ID="txtdesc" CssClass="form-control form-control-lg"
                placeholder="Product Description" MaxLength="20" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txtdesc" ID="RequiredFieldValidator2" ValidationGroup="add" Display="Dynamic" runat="server" ErrorMessage="Description is required" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
        </div>
        <div class="mt-4">
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="false" CssClass="form-control-lg" BackColor="Transparent" ToolTip="Product Image" ForeColor="White" />
            <asp:Label ID="lblfile1" Visible="false" runat="server" Text="" ForeColor="White" Font-Size="Large" CssClass="text-center"></asp:Label>
        </div>

        <div class="mt-4">
            <asp:FileUpload ID="FileUpload2" AllowMultiple="false" runat="server" CssClass="form-control-lg" BackColor="Transparent" ToolTip="Product Image" ForeColor="White" />
            <asp:Label ID="lblfile2" Visible="false" runat="server" Text="" ForeColor="White" Font-Size="Large" CssClass="text-center"></asp:Label>
        </div>

        <div class="mt-4">
            <asp:FileUpload ID="FileUpload3" AllowMultiple="false" runat="server" CssClass="form-control-lg" BackColor="Transparent" ToolTip="Product Image" ForeColor="White" />
            <asp:Label ID="lblfile3" Visible="false" runat="server" Text="" ForeColor="White" Font-Size="Large" CssClass="text-center"></asp:Label>
        </div>
        <div class="mt-4">
            <asp:TextBox ID="txtmrp" CssClass="form-control form-control-lg"
                placeholder="Product Price" MaxLength="10" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txtmrp" ValidationGroup="add" ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ErrorMessage="Product price is required" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
        </div>
        <div class="mt-4">
            <asp:Label ID="lblmsg" Visible="false" runat="server" Text="Data inserted successfully" CssClass="text-center alert-success" Width="100%"></asp:Label>
        </div>
        <div class="offset-lg-4">
            <asp:Button ID="btnadd" runat="server" ValidationGroup="add" CssClass="btn btn-success" Text="Add Product" OnClick="btnadd_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" class="btn btn-danger" value="clear" />
        </div>
    </div>
</asp:Content>

