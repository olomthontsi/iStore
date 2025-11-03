<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Takealot.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="/Styles/OlwethuStyles.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="loginPageContent">
        <div class="wallpaper">
            <video autoplay muted loop playsinline class="background-video">
                <source src="images/istore.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>

            <div class="container-wrapper">
                <div class="text-center mb-3">
                    <div class="LOGIN-ICON">
                        <img src="images/LOGINN.png" alt="Login Icon">
                    </div>
                </div>

                <div class="mb-3">

                    <asp:Label ID="Label1" runat="server" CssClass="info" Text="Username"></asp:Label>
                    <div class="image-icon">
                        <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" placeholder="Enter your username"></asp:TextBox>
                        <img src="images/hi.png" alt="User Icon">
                    </div>
                </div>

                <div class="auto-style1">
                    <asp:Label ID="Label2" runat="server" CssClass="info" Text="Password"></asp:Label>
                    <div class="image-icon">
                        <asp:TextBox ID="TextBox2" CssClass="textbox" TextMode="Password" runat="server" placeholder="Enter your password"></asp:TextBox>
                        <img id="toggleIcon" src="images/hiii.png" alt="Show/Hide" onclick="togglePassword()" />
                    </div>
                </div>

                <asp:Button ID="Button1" runat="server" CssClass="Login" Text="Login" />

                <div class="social-icons">
                    <img src="images/fb.jpg" alt="Facebook">
                        <img src="images/TWITTER.jpeg" alt="Twitter">
                    <img src="images/instag.png" alt="Instagram">
                     <img src="images/YT.png" alt="youtube">
           </div>
            <div class="divider"></div>
            <div class="register-section">
                <span class="register-text">Don't have an account? </span>
                <a href="membership.aspx" class="register-link">Register</a>
            </div>
        </div>
    </div>
</div>

    </asp:Content>
