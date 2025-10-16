<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Takealot.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server" CssClass="accordion-header"></asp:TextBox>
        <br />
        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
        <a href="EditUser.aspx">Forgot Password</a>
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Sign in" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Dont have an account?"></asp:Label>
        <a href="register.aspx">Register</a>
    </div> 
</asp:Content>
