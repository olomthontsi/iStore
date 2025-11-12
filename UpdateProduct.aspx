<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Takealot.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .form-container {
        max-width: 1200px;
        margin: 9px auto;
        padding: 30px;
        background:white;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
        font-family: 'Segoe UI', sans-serif;
        transition: all 0.3s ease-in-out;
    }

    .form-container:hover {
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    }

    .updateproduct {
        display: block;       
        width: 100%;
        font-size: 30px;
        font-weight: 700;
        margin-bottom: 30px;
        text-transform: uppercase;
        text-align: center;   
        color: #333;
    }

    .divider {
    width: 60%;           
    height: 3px;         
    background-color: black;
    margin: 0px auto 20px; 
    }

    table {
        width: 100%;
        border-spacing: 0 12px;
    }

    .Ibl {
        font-size: 16px;
        font-style: italic;
        font-family:'Times New Roman', Times, serif;
        color: #444;
    }

    .Ibl1 {
        font-size: 18px;
        font-weight: bold;
        font-family: "Cooper Black";
        color: #111;
    }

    .txt {
        width: 100%;
        max-width: 300px;
        height: 38px;
        padding: 8px 12px;
        border: 1px solid #ccc;
        border-radius: 0px;
        outline: none;
        transition: border-color 0.2s, box-shadow 0.2s;
    }

    .txt:focus {
        border-color: #000;
        box-shadow: 0 0 6px rgba(0, 0, 0, 0.2);
    }

    .newStyle1 {
        background-color: black;
        color: white;
        border: none;
        border-radius: 0px;
        cursor: pointer;
        letter-spacing: 1px;
        transition: all 0.3s ease;
        text-transform: uppercase;        

    }

    .newStyle1:hover {
        background-color: #444;
        transform: translateY(-2px);
    }

    .btn-wide {
        width: 300px;
        height: 40px;
        font-size: 15px;
    }

    .text-end {
        text-align: right;
        padding-right: 15px;
        vertical-align: middle;
    }

    @media (max-width: 768px) {
        .text-end {
            text-align: left;
            padding-bottom: 5px;
        }

        table {
            display: block;
        }

        td {
            display: block;
            width: 100%;
        }

        .txt, .btn-wide {
            width: 100%;
        }
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="form-container">
    <asp:Label ID="IblUpdate" runat="server" CssClass="updateproduct" Text="Update Product"></asp:Label>
    <div class="divider"></div>
           <table style="width: 100%;">
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblProdctCode" CssClass="Ibl1" runat="server" Text="Search Product Code"></asp:Label>
                   </td>

                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtProductCode" CssClass="txt" runat="server"></asp:TextBox>
                                          <asp:Button ID="btnSearch" CssClass="newStyle1" runat="server" Text="Search" Height="38px" Width="116px" />
                   </td>
               </tr>
               <tr>
                   <td>&nbsp;</td>
                   <td class="auto-style1">&nbsp;</td>
                          <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblId" CssClass="Ibl" runat="server" Text="Id"></asp:Label>
                   </td>
                          <td class="auto-style1">&nbsp;</td>
                   <td>
                       <asp:TextBox ID="txtId" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
               </tr>
                              <tr>
                   <td class="text-end">
                       <asp:Label ID="IblProductCode" CssClass="Ibl" runat="server" Text="Product Code"></asp:Label>
                                  </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                         <td>
                             <asp:TextBox ID="txtPcode" CssClass="txt"  runat="server"></asp:TextBox>
                                  </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblModelName" CssClass="Ibl" runat="server" Text="Model Name"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtModelName" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblStorageCapacity"  CssClass="Ibl" runat="server" Text="Storage Capacity"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtStorageCapacity" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
               </tr>
                              <tr>
                   <td class="text-end">
                       <asp:Label ID="IblColour" CssClass="Ibl" runat="server" Text="Colour"></asp:Label>
                                  </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                                     <td>
                                                         <asp:TextBox ID="txtColour" CssClass="txt"  runat="server"></asp:TextBox>
                                  </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblPrice" CssClass="Ibl" runat="server" Text="Price"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtPrice" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblQuantity" CssClass="Ibl" runat="server" Text="Quantity"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtQuantity" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
               </tr>
                              <tr>
                   <td class="text-end">
                       <asp:Label ID="IblDescription" CssClass="Ibl" runat="server" Text="Description"></asp:Label>
                                  </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                                     <td>
                                                         <asp:TextBox ID="txtDescription" CssClass="txt"  runat="server"></asp:TextBox>
                                  </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="ProductType" CssClass="Ibl" runat="server" Text="Product Type"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtProductType"  CssClass="txt" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="text-end">
                       <asp:Label ID="IblCostPrice" CssClass="Ibl" runat="server" Text="Cost Price"></asp:Label>
                   </td>
                   <td class="auto-style1">
                       &nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="txtCostPrice" CssClass="txt" runat="server"></asp:TextBox>
                   </td>
               </tr>
                      <tr>
           <td class="text-end">
               <asp:Label ID="IblImages" CssClass="Ibl" runat="server" Text="Images"></asp:Label>
           </td>
           <td class="auto-style1">
               &nbsp;</td>
                                             <td>
                                                 <asp:TextBox ID="txtImages" CssClass="txt"  runat="server"></asp:TextBox>
                          </td>
       </tr>
                      <tr>
   <td>
               &nbsp;</td>
                             <td>
               &nbsp;</td>
                             <td>
                                 <asp:Button ID="btnUpdate" CssClass="newStyle1" runat="server" Text="Update" Height="35px" Width="300px" />
                          </td>
       </tr>
           </table>
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="Product_Code" HeaderText="Product_Code" SortExpression="Product_Code" />
                   <asp:BoundField DataField="Model_Name" HeaderText="Model_Name" SortExpression="Model_Name" />
                   <asp:BoundField DataField="Storage_capacity" HeaderText="Storage_capacity" SortExpression="Storage_capacity" />
                   <asp:BoundField DataField="Colour" HeaderText="Colour" SortExpression="Colour" />
                   <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                   <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                   <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   <asp:BoundField DataField="Product_Type" HeaderText="Product_Type" SortExpression="Product_Type" />
                   <asp:BoundField DataField="Cost_Price" HeaderText="Cost_Price" SortExpression="Cost_Price" />
                   <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Cost_Price], [Images]) VALUES (@Id, @Product_Code, @Model_Name, @Storage_capacity, @Colour, @Price, @Quantity, @Description, @Product_Type, @Cost_Price, @Images)" SelectCommand="SELECT [Id], [Product_Code], [Model_Name], [Storage_capacity], [Colour], [Price], [Quantity], [Description], [Product_Type], [Cost_Price], [Images] FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_Code] = @Product_Code, [Model_Name] = @Model_Name, [Storage_capacity] = @Storage_capacity, [Colour] = @Colour, [Price] = @Price, [Quantity] = @Quantity, [Description] = @Description, [Product_Type] = @Product_Type, [Cost_Price] = @Cost_Price, [Images] = @Images WHERE [Id] = @Id">
               <DeleteParameters>
                   <asp:Parameter Name="Id" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="Id" Type="Int32" />
                   <asp:Parameter Name="Product_Code" Type="String" />
                   <asp:Parameter Name="Model_Name" Type="String" />
                   <asp:Parameter Name="Storage_capacity" Type="String" />
                   <asp:Parameter Name="Colour" Type="String" />
                   <asp:Parameter Name="Price" Type="Decimal" />
                   <asp:Parameter Name="Quantity" Type="Int32" />
                   <asp:Parameter Name="Description" Type="String" />
                   <asp:Parameter Name="Product_Type" Type="String" />
                   <asp:Parameter Name="Cost_Price" Type="Decimal" />
                   <asp:Parameter Name="Images" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:controlParameter ControlID="txtPcode" Name="Product_Code" Type="String" />
                   <asp:controlParameter ControlID="txtModelCode" Name="Model_Name" Type="String" />
                   <asp:controlParameter ControlID="txtStorageCapacity"  Name="Storage_capacity" Type="String" />
                   <asp:controlParameter ControlID="txtColour"  Name="Colour" Type="String" />
                   <asp:controlParameter ControlID="txtPrice"  Name="Price" Type="Decimal" />
                   <asp:controlParameter ControlID="txtQuantity"  Name="Quantity" Type="Int32" />
                   <asp:controlParameter ControlID="txtDescription"  Name="Description" Type="String" />
                   <asp:controlParameter ControlID="txtProductType"  Name="Product_Type" Type="String" />
                   <asp:controlParameter ControlID="txtCostPrice"  Name="Cost_Price" Type="Decimal" />
                   <asp:controlParameter ControlID="txtImages"  Name="Images" Type="String" />
                   <asp:controlParameter ControlID="txtId"  Name="Id" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
           </div>
</asp:Content>
