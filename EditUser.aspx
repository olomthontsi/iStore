<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Takealot.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

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

        .txt-small {
            width: 90px;
            height: 38px;
            padding: 8px 12px;
            border: 1px solid #ccc;
            border-radius: 0px;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s; 
        } 

    .txt-small:focus {
        border-color: #000;
        box-shadow: 0 0 6px rgba(0, 0, 0, 0.2); 

    }
            </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="form-container">
  <asp:Label ID="IblEditUser" runat="server" CssClass="updateproduct" Text="Edit User"></asp:Label>
  <div class="divider"></div>
         <table style="width: 100%;">
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblSearchById" CssClass="Ibl1" runat="server" Text="Search By Identity No"></asp:Label>
                 </td>

                 <td class="auto-style1">
                     &nbsp;</td>
                                    <td>
                    <asp:TextBox ID="txtSearchById" CssClass="txt" runat="server"></asp:TextBox>
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
                     <asp:Label ID="IblUserId" CssClass="Ibl" runat="server" Text="User Id"></asp:Label>
                                </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                       <td>
                      <asp:TextBox ID="txtUserID" CssClass="txt"  runat="server"></asp:TextBox>
                                </td>
             </tr>
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblFirsttName" CssClass="Ibl" runat="server" Text="First Name"></asp:Label>
                 </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                                    <td>
                        <asp:TextBox ID="txtFirstName" CssClass="txt"  runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblLastName"  CssClass="Ibl" runat="server" Text="Last Name"></asp:Label>
                 </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                                    <td>
                         <asp:TextBox ID="txtLastName" CssClass="txt"  runat="server"></asp:TextBox>
                 </td>
             </tr>
                            <tr>
                 <td class="text-end">
                     <asp:Label ID="IblUserName" CssClass="Ibl" runat="server" Text="User Name"></asp:Label>
                                </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                       <td>
                     <asp:TextBox ID="txtUserName" CssClass="txt"  runat="server"></asp:TextBox>
                                </td>
             </tr>
             <tr> <td class="text-end"> 
                 <asp:Label ID="lblDOB" CssClass="Ibl" runat="server" Text="Date of Birth"></asp:Label> 

                  </td> 
                 <td>&nbsp;</td> 
                 <td> <asp:TextBox ID="txtMonth" CssClass="txt-small" runat="server" placeholder="MM"></asp:TextBox> 
                     <span class="separator">/</span> 
                     
                     <asp:TextBox ID="txtDay" CssClass="txt-small" runat="server" placeholder="DD"></asp:TextBox>
                     <span class="separator">/</span> 
                     <asp:TextBox ID="txtYear" CssClass="txt-small" runat="server" placeholder="YYYY"></asp:TextBox> 

                 </td>

             </tr>
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblEmailAddress" CssClass="Ibl" runat="server" Text="Email Address"></asp:Label>
                 </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                                    <td>
                     <asp:TextBox ID="txtEmailAddress" CssClass="txt"  runat="server"></asp:TextBox>
                 </td>
             </tr>
                            <tr>
                 <td class="text-end">
                     <asp:Label ID="IblPhoneNumber" CssClass="Ibl" runat="server" Text="Phone Number"></asp:Label>
                                </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                     <td>
                      <asp:TextBox ID="txtPhoneNumber" CssClass="txt"  runat="server"></asp:TextBox>
                                </td>
             </tr>
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblPassword" CssClass="Ibl" runat="server" Text="Password"></asp:Label>
                 </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                             <td>
                        <asp:TextBox ID="txtPassword"  CssClass="txt" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="text-end">
                     <asp:Label ID="IblAddress" CssClass="Ibl" runat="server" Text="Address"></asp:Label>
                 </td>
                 <td class="auto-style1">
                     &nbsp;</td>
                                <td>
                       <asp:TextBox ID="txtAddress" CssClass="txt" runat="server"></asp:TextBox>
                 </td>
             </tr>
                    <tr>
         <td class="text-end">
             <asp:Label ID="IblSuburb" CssClass="Ibl" runat="server" Text="Suburb"></asp:Label>
         </td>
         <td class="auto-style1">
             &nbsp;</td>
                     <td>
                         <asp:TextBox ID="txtSuburb" CssClass="txt"  runat="server"></asp:TextBox>
                        </td>
     </tr>
                            <tr>
            <td class="text-end">
          <asp:Label ID="IblCity" CssClass="Ibl" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style1">
        &nbsp;</td>
               <td>
             <asp:TextBox ID="txtCity" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
                </tr>
                            <tr>
            <td class="text-end">
            <asp:Label ID="IblPostalCode" CssClass="Ibl" runat="server" Text="Postal Code"></asp:Label>
            </td>
            <td class="auto-style1">
        &nbsp;</td>

           <td>
                <asp:TextBox ID="txtPostalCode" CssClass="txt"  runat="server"></asp:TextBox>
                   </td>
            </tr>
                            <tr>
            <td class="text-end">
                <asp:Label ID="IblCountry" CssClass="Ibl" runat="server" Text="Country"></asp:Label>
            </td>
            <td class="auto-style1">
        &nbsp;</td>
               <td>
            <asp:TextBox ID="txtCountry" CssClass="txt"  runat="server"></asp:TextBox>
            </td>
                </tr>
                 <tr>
            <td class="text-end">
        <asp:Label ID="IblProvince" CssClass="Ibl" runat="server" Text="Province"></asp:Label>
                </td>
            <td class="auto-style1">
            &nbsp;</td>
                  <td>
                  <asp:TextBox ID="txtProvince" CssClass="txt"  runat="server"></asp:TextBox>
          </td>
            </tr>
           <tr>
              <td>
             &nbsp;</td>
                           <td>
             &nbsp;</td>
                           <td>
                               <asp:Button ID="btnEdit" CssClass="newStyle1" runat="server" Text="Edit User" Height="35px" Width="300px" />
                        </td>
     </tr>
         </table>
         <br />
          </div>
    
</asp:Content>
