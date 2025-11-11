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
                        <asp:TextBox ID="txtusername" CssClass="textbox" runat="server" placeholder="Enter your username"></asp:TextBox>
                        <img src="images/hi.png" alt="User Icon">
                    </div>
                </div>

                <div class="auto-style1">
                    <asp:Label ID="Label2" runat="server" CssClass="info" Text="Password"></asp:Label>
                    <div class="image-icon">
                        <asp:TextBox ID="txtpassword" CssClass="textbox" TextMode="Password" runat="server" placeholder="Enter your password"></asp:TextBox>
                        <img id="toggleIcon" src="images/hiii.png" alt="Show/Hide" onclick="togglePassword()" />
                    </div>
                </div>

                <asp:Button ID="btnlogin" runat="server" CssClass="Login" Text="Login" OnClick="Button1_Click1" />

                <div class="social-icons">
                    <img src="images/fb.jpg" alt="Facebook">
                        <img src="images/TWITTER.jpeg" alt="Twitter">
                    <img src="images/instag.png" alt="Instagram">
                     <img src="images/YT.png" alt="youtube">
           </div>
            <div class="divider"></div>
            <div class="register-section">
                <span class="register-text">Don't have an acc<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                        <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [User_Id], [Name], [Last_Name], [User_Name], [Email], [password], [Phone_Number] FROM [Users]"></asp:SqlDataSource>
                ount? </span>
                <a href="membership.aspx" class="register-link">Register</a>
            </div>
        </div>
    </div>
</div>

    </asp:Content>
