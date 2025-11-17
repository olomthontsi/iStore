<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Takealot.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/Styles/LiyemaStyle.css" />

  <style>
    .product-link {
      display: block;
      border-radius: 20px;
      overflow: hidden;
      transition: transform 0.4s ease, box-shadow 0.4s ease;
      padding: 10px;
      background-color: #f8f9fa;
    }

    .product-link img {
      width: 100%;
      border-radius: 20px;
      transition: transform 0.4s ease;
      padding-top: 20px;
    }

    .product-link:hover {
      transform: scale(1.05);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
      z-index: 10;
    }

    .product-link:hover img {
      transform: scale(1.03);
    }

    .empty-block {
      width: 100%;
      height: 200px;
      margin: 0px;
    }

    .card:hover {
      transform: translateY(-5px);
      transition: all 0.3s ease;
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    .card-img-top {
      height: 180px;
      object-fit: cover;
    }
  </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-100 text-center py-3 banner" style="background-color: #209AE3; color: white; font-family: Arial, sans-serif;">
    Get the Fastest delivery for Free. Shop online at iStore!
  </div>

  <!-- Carousel -->
  <div id="iStoreCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-keyboard="true" data-bs-touch="true" data-bs-interval="4000">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/istore slide 1.png" class="d-block w-100" alt="Slide 1" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 2.png" class="d-block w-100" alt="Slide 2" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 3.png" class="d-block w-100" alt="Slide 3" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 4.png" class="d-block w-100" alt="Slide 4" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 5.png" class="d-block w-100" alt="Slide 5" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 6.png" class="d-block w-100" alt="Slide 6" loading="lazy">
      </div>
      <div class="carousel-item">
        <img src="images/istore slide 7.png" class="d-block w-100" alt="Slide 7" loading="lazy">
      </div>
    </div>
  </div>

  <!-- Product Carousel -->
  <div id="productsCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
    <div class="carousel-inner">
      <asp:Repeater ID="rptProducts" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="rptProducts_ItemCommand">
        <ItemTemplate>
          <%# Container.ItemIndex % 5 == 0 ? "<div class='carousel-item " + (Container.ItemIndex == 0 ? "active" : "") + "'><div class='row g-3 justify-content-center'>" : "" %>

          <div class="col-6 col-md-4 col-lg-2">
            <asp:LinkButton
              ID="lnkViewDetails" 
              runat="server" 
              CssClass="product-card"
              CommandName="ViewDetails" 
              CommandArgument='<%# Eval("Product_Code") %>'>
              <img src='<%# Eval("Images") %>' alt='<%# Eval("Model_Name") %>' loading="lazy" />
              <div class="product-name"><%# Eval("Model_Name") %></div>
            </asp:LinkButton>
          </div>

          <%# (Container.ItemIndex + 1) % 5 == 0 || (Container.ItemIndex + 1) == ((Repeater)Container.NamingContainer).Items.Count ? "</div></div>" : "" %>
        </ItemTemplate>
      </asp:Repeater>

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT MIN(Id) AS Id, Model_Name, MIN(Price) AS Price, MIN(Images) AS Images, MIN(Product_Code) AS Product_Code 
                   FROM Product 
                   WHERE Model_Name IN ('iPhone 17','iPhone 16','iPhone 17 Pro Max','Apple Airpods Pro','DJI Osmo Mobile 6 Smartphone stablizing Gimbal') 
                   GROUP BY Model_Name;">
</asp:SqlDataSource>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]">
      </asp:SqlDataSource>
    </div>
  </div>

  <div class="parent">
    <div class="empty-block"></div>
  </div>

  <!-- Feature Section -->
  <div class="container my-5">
    <div class="row g-4 justify-content-center">
      <div class="col-md-6 col-sm-12 text-center" style="padding-right: 40px">
        <a href="phones.aspx?keyword=iphone+17" class="product-link d-block">
          <img src="images/iphone17series.png" alt="iPhone 17 Series" loading="lazy">
        </a>
      </div>

      <div class="col-md-6 col-sm-12 text-center" style="padding-left: 40px">
        <a href="phones.aspx?keyword=Apple watch" class="product-link d-block">
          <img src="images/Apple Watch Series 6.jpg" alt="Apple Watch Series" loading="lazy">
        </a>
      </div>
    </div>
  </div>

  <div>
    <h2 class="text-center my-4" style="color: black; font-weight: 700;">Latest Apple Products</h2>
  </div>

 <!-- Product Grid -->
<div class="container mt-4">
  <div class="row">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="rptProducts_ItemCommand">
      <ItemTemplate>
  <div class="col-lg-2 col-md-3 col-sm-6 mb-4" style="flex: 0 0 20%; max-width: 20%;">
    <div class="card h-100 shadow-sm border-0">
      <div class="card-img-container" style="height: 220px; overflow: hidden;">
        <img src='<%# Eval("Images") %>' 
             class="card-img-top" 
             alt='<%# Eval("Model_Name") %>' 
             style="width: 100%; height: 100%; object-fit: cover;" 
             loading="lazy" />
      </div>
      <div class="card-body text-center">
        <h6 class="card-title text-truncate"><%# Eval("Model_Name") %></h6>
        <p class="card-text fw-semibold">R<%# String.Format("{0:N2}", Eval("Price")) %></p>

        <asp:LinkButton 
            ID="lnkViewDetails2" 
            runat="server" 
            CssClass="btn btn-primary btn-sm"
            CommandName="ViewDetails" 
            CommandArgument='<%# Eval("Product_Code") %>'>
            View Details
        </asp:LinkButton>

      </div>
    </div>
  </div>
</ItemTemplate>
    </asp:Repeater>
  </div>
</div>


  <!-- Delivery Section -->
  <div class="container my-5">
    <div class="text-center mb-5">
      <h2 class="fw-bold text-dark">Holiday Delivery & Pick-Up Options</h2>
      <p class="text-muted mb-0">Enjoy fast, free, and flexible delivery — no matter where you are.</p>
    </div>

    <div class="row g-4 text-center">
      <div class="col-md-6 col-lg-3">
        <div class="card bg-dark text-white h-100 p-3 rounded-4 shadow-sm">
          <div class="card-body">
            <h5 class="card-title fw-bold">Free Delivery No Matter Where You Are</h5>
            <p class="card-text">Free RightNow Delivery</p>
            <p class="small text-secondary mb-1">Get your gifts within an hour.</p>
            <p class="small text-muted">*Available in selected regions.</p>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-3">
        <div class="card bg-dark text-white h-100 p-3 rounded-4 shadow-sm">
          <div class="card-body">
            <h5 class="card-title fw-bold">Free Pick Up in Under 1 Hour</h5>
            <p class="card-text">Collect from any iStore nationwide and keep the holiday magic moving.</p>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-3">
        <div class="card bg-dark text-white h-100 p-3 rounded-4 shadow-sm">
          <div class="card-body">
            <h5 class="card-title fw-bold">Free Same Day Delivery</h5>
            <p class="card-text">Perfect for spontaneous gifting magic.</p>
            <p class="small text-muted">*Now in even more regions.</p>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-3">
        <div class="card bg-dark text-white h-100 p-3 rounded-4 shadow-sm">
          <div class="card-body">
            <h5 class="card-title fw-bold">Free Next Day Delivery</h5>
            <p class="card-text">Get your gifts delivered before the end of tomorrow in all major regions.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- iStore Services & Offers -->
  <div class="container-fluid py-5" style="background-color:#f0f6ff;">
    <div class="container text-center">
      <div class="mb-5">
        <h2 class="fw-bold text-primary">iStore Services & Offers</h2>
        <p class="text-secondary mb-0">Your one-stop Apple destination — from delivery to device protection.</p>
      </div>

      <div class="row g-4">
        <div class="col-md-6 col-lg-4">
          <div class="p-4 bg-white border rounded-4 h-100 shadow-sm">
            <h5 class="fw-bold text-primary mb-2">🚚 Delivery Options</h5>
            <p class="text-dark mb-1">Enjoy <strong>RightNow</strong>, same-day, or next-day delivery across major regions.</p>
            <small class="text-muted">Fast, free, and reliable delivery nationwide.</small>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="p-4 bg-white border rounded-4 h-100 shadow-sm">
            <h5 class="fw-bold text-primary mb-2">🔁 Trade-In Program</h5>
            <p class="text-dark mb-1">Trade your old device for instant credit or save on your next purchase.</p>
            <small class="text-muted">Available online and in-store.</small>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="p-4 bg-white border rounded-4 h-100 shadow-sm">
            <h5 class="fw-bold text-primary mb-2">💙 iCare Protection</h5>
            <p class="text-dark mb-1">Extend your warranty and get accidental damage coverage for peace of mind.</p>
            <small class="text-muted">Protect iPhone, Mac, and iPad.</small>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="p-4 bg-white border rounded-4 h-100 shadow-sm">
            <h5 class="fw-bold text-primary mb-2">🧰 Tech Support</h5>
            <p class="text-dark mb-1">Get expert setup, repair, and software assistance — in-store or remotely.</p>
            <small class="text-muted">Apple-certified specialists ready to help.</small>
          </div>
        </div>

        <div class="col-md-6 col-lg-8">
          <div class="p-4 bg-primary text-white rounded-4 h-100 shadow-sm">
            <h5 class="fw-bold mb-3">📱 iStore Network Offers</h5>
            <p class="mb-3">Get the best iPhone and iPad deals with your preferred carrier.</p>
            <div class="d-flex justify-content-center gap-3 flex-wrap">
              <span class="badge rounded-pill text-bg-danger px-3 py-2">Vodacom</span>
              <span class="badge rounded-pill text-bg-warning px-3 py-2 text-dark">MTN</span>
              <span class="badge rounded-pill text-bg-info px-3 py-2 text-dark">Telkom</span>
            </div>
            <small class="d-block mt-3">All networks. One iStore.</small>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content> 




