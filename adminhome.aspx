<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Takealot.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
   .gallery-container{
            width:100%;
            overflow:hidden; 
            padding:10px 0;
            position: relative; 
            height: 220px; 
        }
        .gallery{
            display:flex;
            width:max-content;
            animation:scroll-left 15s linear infinite;
            position: absolute; 
            left: 0; 
        }
        .gallery img {
            width:250px;
            height:200px;
            object-fit:cover;
            border-radius:8px;
            margin-right:15px; 
        }
        @keyframes scroll-left {
            0% {
                transform: translateX(0%);
            }

            100% {
                transform: translateX(-50%);
            }
        }
        
        .stats-wrapper {
            position: relative;
            z-index: 10;
            padding: 40px 20px;
            margin-top: 0px; 
            clear: both; 
        }
        
        .stats-card {
            background: white;
            border-radius: 12px;
            padding: 24px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.08);
            transition: transform 0.2s, box-shadow 0.2s;
            position: relative;
            z-index: 1;
        }
        
        .stats-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.12);
        }
        
        .icon-wrapper {
            width: 48px;
            height: 48px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 16px;
        }
        

        
        .icon-wrapper img {
            width: 58px;
            height: 48px;
            object-fit: contain;
        }
        
        .stat-label {
            color: #6c757d;
            font-size: 14px;
            margin-bottom: 8px;
        }
        
        .stat-value {
            color: #212529;
            font-size: 28px;
            font-weight: 700;
            margin: 0;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="gallery-container">
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

            <!-- duplicate -->
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
    
    <div class="stats-wrapper">
        <div class="container">
            <div class="row g-4">
           
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper orange">
                            <img src="images/bag.jpg" alt="Shopping bag icon">
                        </div>
                        <div class="stat-label">Total Sales</div>
                        <h3 class="stat-value">92%</h3>
                    </div>
                </div>
            
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper purple">
                            <img src="images/sales.jpg" alt="Store icon">
                        </div>
                        <div class="stat-label">Total Expenses</div>
                        <h3 class="stat-value">R93,326</h3>
                    </div>
                </div>
         
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper green">
                            <img src="images/customers.jpg" alt="Users icon">
                        </div>
                        <div class="stat-label">Total Visitors</div>
                        <h3 class="stat-value">10,325</h3>
                    </div>
                </div>
              
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper blue">
                            <img src="images/orders.jpg" alt="List icon">
                        </div>
                        <div class="stat-label">Total Orders</div>
                        <h3 class="stat-value">4,326</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>

</asp:Content>
