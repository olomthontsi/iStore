<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Takealot.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
     <style>
        .loginPageContent {
            font-family: 'Poppins', Arial, sans-serif;
        }

        .loginPageContent .wallpaper {
            position: relative;
            width: 100%;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .loginPageContent .background-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: 0;
        }
       
        .loginPageContent .container-wrapper {
            position: relative;
            z-index: 1;
            width: 450px;
            max-width: 90%;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 4px 25px rgba(0,0,0,0.4);
            background: rgba(0, 0, 0, 0.4);
            backdrop-filter: blur(8px);
            color: white;
            padding: 3rem 2.5rem;
            margin: 2rem auto;
        }

        .loginPageContent .LOGIN-ICON {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 15px;
        }

        .loginPageContent .LOGIN-ICON img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid white;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
        }

        .loginPageContent .social-icons {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .loginPageContent .social-icons img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            cursor: pointer;
            transition: transform 0.3s;
            background: #ddd;
        }

        .loginPageContent .social-icons img:hover {
            transform: scale(1.2);
        }

        @media(max-width: 992px){
            .loginPageContent .container-wrapper {
                padding: 2rem 1.5rem;
            }
        }
 
        .loginPageContent .Login {
            background-color: white !important; 
            color: black !important;
            height: 35px;
            width: 100%;
            border: none;
            border-radius: 20px !important;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            margin: 1.5rem 0;
            transition: all 0.3s;
        }

        .loginPageContent .Login:hover {
            background-color: #f0f0f0 !important;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(255, 255, 255, 0.3);
        }

        .loginPageContent label {
            font-size: 14px;
            margin-bottom: 0.5rem;
            display: block;
            color: white;
        }

        .loginPageContent .image-icon {
            position: relative;
            width: 100%;
            margin-bottom: 1.5rem;
        }

        .loginPageContent .textbox {
            width: 100%;
            padding: 12px 12px 12px 45px; 
            height: 35px;
            box-sizing: border-box;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 14px;
            text-align: left !important;
        }

        .loginPageContent .textbox::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .loginPageContent .image-icon .textbox:focus {
            outline: none;
            border-color: rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.15);
        }

        .loginPageContent .image-icon img {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            cursor: pointer; 
        }

        .loginPageContent .text-center .info {
            text-align: center;
        }

        .loginPageContent .auto-style1 .mb-3 {
            margin-bottom: 1rem;
        }
</style>
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

                <asp:Button ID="Button1" runat="server" CssClass="Login" Text="Login" OnClick="Button1_Click"  />

                <div class="social-icons">
                    <img src="images/fb.jpg" alt="Facebook">
                    <img src="images/instag.png" alt="Instagram">
                    <img src="images/tt.png" alt="Tiktok">
                </div>
            </div>
        </div>
    </div>

    </asp:Content>
