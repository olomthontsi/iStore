<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Takealot.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/Styles/LiyemaStyle.css" />

    <style>

product-link {
    display: block;
    border-radius: 20px;
    overflow: hidden;
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    padding: 10px;
    background-color: #f8f9fa; /* light gray background */
  }

  .product-link img {
    width: 100%;
    border-radius: 20px;
    transition: transform 0.4s ease;
  }

  .product-link:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    z-index: 10;
  }

  .product-link:hover img {
    transform: scale(1.03);
  }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-100 text-center py-3 banner" style="background-color: #209AE3; color: white; font-family: Arial, sans-serif; ">
        Get the Fastest delivery for Free. Shop online at iStore!
    </div>

    
    <div id="iStoreCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-keyboard="true" data-bs-touch="true" data-bs-interval="4000">
        <!-- Slides -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/istore slide 1.png" class="d-block w-100" alt="Slide 1">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 2.png" class="d-block w-100" alt="Slide 2">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 3.png" class="d-block w-100" alt="Slide 3">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 4.png" class="d-block w-100" alt="Slide 4">
            </div>
            <div class="carousel-item">
                <img src="images/i store slide 5.png" class="d-block w-100" alt="Slide 5">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 6.png" class="d-block w-100" alt="Slide 6">
            </div>
            <div class="carousel-item">
                <img src="images/istore slide 7.png" class="d-block w-100" alt="Slide 7">
            </div>
        </div>
    </div>

     <div id="productsCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
                <div class="carousel-inner">
                    <asp:Repeater ID="rptProducts" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <%-- Open carousel-item div when starting a new group of 5 --%>
                            <%# Container.ItemIndex % 5 == 0 ? "<div class='carousel-item " + (Container.ItemIndex == 0 ? "active" : "") + "'><div class='row g-3 justify-content-center'>" : "" %>

                            <div class="col-6 col-md-4 col-lg-2">
                                <div class="product-card">
                                    <img src='<%# Eval("Images") %>' alt='<%# Eval("Model_Name") %>' />
                                    <div class="product-name"><%# Eval("Model_Name") %></div>
                                    
                                </div>
                            </div>

                            <%# (Container.ItemIndex + 1) % 5 == 0 || (Container.ItemIndex + 1) == ((Repeater)Container.NamingContainer).Items.Count ? "</div></div>" : "" %>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                </div>
         </div>

 <div class="container my-5">
  <div class="row g-4 justify-content-center">
    <!-- Image 1 -->
    <div class="col-md-6 col-sm-12 text-center">
      <a href="phones.aspx?keyword=iphone+17" class="product-link d-block">
        <img src="images/iphone17series.png" alt="iPhone 17 Series">
      </a>
    </div>

    <!-- Placeholder for second image -->
    <div class="col-md-6 col-sm-12 text-center">
      <a href="phones.aspx?keyword=samsung+s25" class="product-link d-block">
        <img src="images/samsung-s25series.png" alt="Samsung S25 Series">
      </a>
    </div>
  </div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


    </asp:Content>




