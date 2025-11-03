<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Takealot.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .gallery-container{
            width:100%;
            overflow-x:hidden;
            padding:10px 0;
        }
        .gallery{
            display:flex;
            width:max-content;
            animation:scroll-left 15s linear infinite;
        }
        .gallery img {
            width:250px;
            height:200px;
            object-fit:cover;
            border-radius:8px;
            margin-right:0px;
        }
        @keyframes scroll-left {
            0% {
                transform: translateX(0%);
            }

            100% {
                transform: translateX(-50%);
            }

        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="galllery-container">
        <div class="gallery">
            <img src="images/products/iphone17problue.jpg" />
             <img src="images/products/iphone17progold.jpg" />
             <img src="images/products/iphone16problack.png" />
             <img src="images/products/iphone16progold.png" />
            <img src="images/products/iphone15prowhite.jpg" />
            <img src="images/products/iphone15problack.jpg" />
            <img src="images/products/iphone15green.jpg" />
            <img src="images/products/iphone15blue.jpg" />
            <img src="images/products/iphoneairblack.jpg" />
            <img src="images/products/iphoneairwhite.jpg" />
            <img src="images/products/iphone16pink.png" />
            <img src="images/products/iphone17green.jpg" />
            <img src="images/products/iphonered13.jpg"/>
             <img src="images/products/iphonegreejn.png"/>
             <img src="images/products/iphone12prr.jpg"/>
             <img src="images/products/iphone12prooo.png"/>
            <img src="images/products/iphone12purple.jpg"/>
            <img src="images/products/iphone12green.jpg"/>

            <!duplicate>
             <img src="images/products/iphone17problue.jpg" />
             <img src="images/products/iphone17progold.jpg" />
             <img src="images/products/iphone16problack.png" />
             <img src="images/products/iphone16progold.png" />
            <img src="images/products/iphone15prowhite.jpg" />
            <img src="images/products/iphone15problack.jpg" />
            <img src="images/products/iphone15green.jpg" />
            <img src="images/products/iphone15blue.jpg" />
            <img src="images/products/iphoneairblack.jpg" />
            <img src="images/products/iphoneairwhite.jpg" />
            <img src="images/products/iphone16pink.png" />
            <img src="images/products/iphone17green.jpg" />
            <img src="images/products/iphonered13.jpg"/>
             <img src="images/products/iphonegreejn.png"/>
             <img src="images/products/iphone12prr.jpg"/>
             <img src="images/products/iphone12prooo.png"/>
            <img src="images/products/iphone12purple.jpg"/>
            <img src="images/products/iphone12green.jpg"/>

        </div>
    </div>


</asp:Content>
