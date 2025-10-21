<%@ Page Title="iStore" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Takealot.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Catcher banner at top */
        .catcher {
            margin: 0;
            padding: 15px;
            font-size: 18px;
            background-color: #1588C9;
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

   #productCarousel img {
    height: 100px;       /* Fixed height */
    width: auto;         /* Maintain original aspect ratio */
    object-fit: contain; /* Show full image without cropping */
    display: block;
    margin-left: auto;
    margin-right: auto;  /* Center horizontally */
    transition: transform 0.3s ease;
}

#productCarousel img:hover {
    transform: scale(1.05); /* Slight zoom on hover */
}

#productCarousel h6 {
    margin-top: 25px;
    font-weight: 600;
    text-align: center;
}

.carousel-item .row {
    justify-content: center;
    gap: 10px;
}



    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
    i added a table - here only and put a content place holder </p>


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
  <div id="productCarousel" class="carousel slide" data-bs-ride="false">
    <div class="carousel-inner">
        <asp:Repeater ID="rptProducts" runat="server">
            <ItemTemplate>
                <%-- Open a new carousel slide every 5 items --%>
                <%# (Container.ItemIndex % 5 == 0) ? "<div class='carousel-item " + ((Container.ItemIndex == 0) ? "active" : "") + "'><div class='row text-center'>" : "" %>

                <div class="col-md-2 mx-auto">
                    <img src='<%# Eval("Images") %>' class="img-fluid rounded mb-2" alt='<%# Eval("Model_Name") %>' />
                    <h6><%# Eval("Model_Name") %></h6>
                </div>

                <%-- Close carousel slide every 5 items or at the end --%>
                <%# ((Container.ItemIndex + 1) % 5 == 0) ? "</div></div>" : "" %>
            </ItemTemplate>
            <FooterTemplate>
                <%-- Close last slide if not multiple of 5 --%>
                </div></div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>




    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


</asp:Content>


