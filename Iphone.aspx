<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iphone.aspx.cs" Inherits="Takealot.Iphone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style type="text/css">
.product-card {
    width: 320px;
    padding: 15px;
    background: white;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

.product-card img {
    width: 100%;
    height: 320px;
    object-fit: cover;
    border-radius: 10px;
}

.newStyle1 {
    text-transform: uppercase;
    font-family: "Franklin Gothic Heavy";
    color: #000000;
    font-weight: bolder;
    font-size: 20pt;
    text-align: center;
    margin-top: 10px;
}

        #DataList1 td {
    text-align: right !important;
}

        .auto-style1 {
            font-size: large;
        }
        .newStyle2 {
            color: #0D6EFD;
        }
          .product {
    font-family: 'Abril Fatface', serif;
    font-size: 70px;
    margin-top: -7px;
    color: BLACK;
  }
        .auto-style2 {
            font-family: 'Abril Fatface', serif;
            font-size: 50px;
            margin-top: -7px;
            color: BLACK;
            text-align: center;
        }
          .underline {
    width: 95%;
    height: 1px;
    background-color: #c7b8a8;
    margin: 5px auto 0;
  }
          .hero-video {

    width: 100%;
    height: 400px;
    object-fit:cover;
    display: block;
}
                  .newStyle3 {
            color: #0D6EFD;
        }
        .auto-style3 {
            color: #0D6EFD;
            font-size: 19pt;
        }
        .auto-style4 {
            color: #0D6EFD;
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
        }

              #DataList1 table {
    margin-left: auto !important;
    margin-right: auto !important;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  
    <video class="hero-video" autoplay muted loop>
  <source src="\images\products\IPHONE.mp4" type="video/mp4">
</video>
    <br />
      <div class="auto-style2">OUR IPHONES</div>
      <div class="underline"></div>

    <div class="d-flex justify-content-center">
          <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
          <ItemTemplate>
              
                  
                     <div class="product-card">
                         
                        <asp:ImageButton 
    ID="ImageButton1" 
    runat="server" 
    ImageUrl='<%# Eval("Images") %>' 
    CommandName="ViewDetails"
    CommandArgument='<%# Eval("Product_Code") %>' Height="300px" Width="300px" 
/>
           
              <br />
             <asp:Label ID="Product_CodeLabel" runat="server" Text='<%# Eval("Product_Code") %>' Visible="False" />
            <br />
           <strong> <asp:Label ID="Model_NameLabel" runat="server"  Text='<%# Eval("Model_Name") %>' CssClass="newStyle1" />
                        </strong>
            <br />
                         <span class="auto-style3"><em class="auto-style5">R </em></span><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' CssClass="auto-style4" style="font-style: italic" />
            <br />
</div>

          </ItemTemplate>
      </asp:DataList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Images], [Cost_Price]
                   FROM [Product]
                   WHERE [Product_Type] = 'Iphone'">
</asp:SqlDataSource>
        </div>

</asp:Content>
