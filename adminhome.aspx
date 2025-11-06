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
        .action-section {
            padding: 40px 0;
        }

         .action-col {
            position: relative;
         }

        .action-col:not(:last-child)::after {
            content: "";
            position: absolute;
            right: 0;
            top: 10%;
            height: 80%;
            width: 1px;
            background-color: #ccc;
        }

        .action-col h4 {
            font-weight: 600;
            margin-bottom: 10px;
        }

        .action-col p {
            color: #555;
            font-size: 15px;
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
                        <div class="icon-wrapper">
                            <img src="images/bag.jpg" alt="Shopping bag icon">
                        </div>
                        <div class="stat-label">Total Sales</div>
                        <h3 class="stat-value">92%</h3>
                    </div>
                </div>
            
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper">
                            <img src="images/sales.png" alt="Store icon">
                        </div>
                        <div class="stat-label">Total Expenses</div>
                        <h3 class="stat-value">R93,326</h3>
                    </div>
                </div>
         
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper">
                            <img src="images/customers.png" alt="Users icon">
                        </div>
                        <div class="stat-label">Total Visitors</div>
                        <h3 class="stat-value">10,325</h3>
                    </div>
                </div>
              
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="stats-card">
                        <div class="icon-wrapper">
                            <img src="images/orders.png" alt="List icon">
                        </div>
                        <div class="stat-label">Total Orders</div>
                        <h3 class="stat-value">4,326</h3>
                    </div>
                </div>
            </div>
            <br>
                <div class="row justify-content-center">
      
 
  <div class="container action-section text-center">
    <div class="row justify-content-center">
      
      <div class="col-md-3 col-sm-6 action-col">
        <h4>Add New User</h4>
        <p>Add New User is for adding new members to the system and assign roles or permissions.</p>
      </div>

      <div class="col-md-3 col-sm-6 action-col">
        <h4>Edit User</h4>
        <p>Edit User gives you the ability to change or edit user information such as names, email or other information in the database.</p>
      </div>

      <div class="col-md-3 col-sm-6 action-col">
        <h4>Update Product</h4>
        <p>An Update Product is having the ability to edit and refresh our products.</p>
      </div>

      <div class="col-md-3 col-sm-6 action-col">
        <h4>Delete</h4>
        <p>Delete removes permanently from the system and cleans up our database.</p>
      </div>
        </div>
       </div>
        </div>
               </div>
        </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>

</asp:Content>
