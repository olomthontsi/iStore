<%@ Page Title="iStore" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Takealot.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Catcher banner at top */
        .catcher {
            margin: 0;
            padding: 18px;
            font-size: 18px;
            background-color: rgb(3, 104, 135);
            color: white;
            text-align: center;
            width: 100%;
        }
        .catcher p {
            margin: 0;
        }

        /* Carousel full-width, no extra spacing */
        .carousel, .carousel-inner, .carousel-item {
            margin: 0;
            padding: 0;
        }

        .carousel-item img {
            display: block;
            width: 100%;
            height: 650px; /* adjust height as needed */
            object-fit: cover;
        }

        /* Indicators below carousel */
        .carousel-indicators-bottom {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin: 10px 0;
        }
        .carousel-indicators-bottom button {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            border: none;
            background-color: #ccc;
            opacity: 0.7;
            cursor: pointer;
            transition: opacity 0.3s, background-color 0.3s;
        }
        .carousel-indicators-bottom button.active {
            background-color: #000;
            opacity: 1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Top banner -->
    <div class="catcher">
        <p>Get the Fastest delivery for Free. Shop online at iStore!</p>
    </div>

    <!-- Carousel -->
    <div id="istoreCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/istore slide 1.png" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 2.png" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 3.png" alt="Image 3">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 4.png" alt="Image 4">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 5.png" alt="Image 5">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 6.png" alt="Image 6">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 7.png" alt="Image 7">
            </div>
        </div>

        <!-- Indicators below -->
        <div class="carousel-indicators-bottom">
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="2"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="3"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="4"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="5"></button>
            <button type="button" data-bs-target="#istoreCarousel" data-bs-slide-to="6"></button>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content>


