<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Takealot.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
   
<style>
    .form-container {
        max-width: 1200px;
        margin: 10px auto;
        padding: 30px;
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
        font-family: 'Segoe UI', sans-serif;
    }

    .personal-info {
        display: block;       
        width: 100%;
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 30px;
        text-transform: uppercase;
        text-align: center;   
        color: #333;
    }

    .form-row,
    .contact-row,
    .address-city-row,
    .country-postal-row {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 18px;
        gap: 15px;
        flex-wrap: wrap;
    }

    .form-row label,
    .contact-group label,
    .city-postal-group label {
        font-weight: 600;
        color: #333;
        min-width: 120px;
        text-align: left;
    }


    .form-row input[type="text"],
    .form-row input[type="email"],
    .form-row input[type="tel"],
    .form-row input[type="password"],
    .contact-group input,
    .city-postal-group input,
    .dob-fields input {
        width: 200px;
        height:40px;
        padding: 10px 14px;
        border: 2px solid #000;   /* black border */
        border-radius: 6px;
        font-size: 14px;
        outline: 0px solid #000;  /* black outline on focus */
        box-sizing: border-box;
        background-color: white;    /* black background */
        color: black;              
    }

    /* PLACEHOLDER */
    .form-row input::placeholder,
    .contact-group input::placeholder,
    .city-postal-group input::placeholder,
    .dob-fields input::placeholder {
        color: #aaa; /* light gray placeholder */
    }

    /* DOB FIELDS */
    .dob-fields {
        display: flex;
        gap: 5px;
        align-items: center;
    }

    .dob-fields input {
        width: 70px;
        padding: 8px;
        border: 1px solid #000;   /* black border */
        border-radius: 6px;
        outline: 1px solid #000;  /* black outline */
        background-color: #000;   /* black background */
        color: #fff;              /* white text */
        text-align: center;
        font-size: 14px;
        box-sizing: border-box;
    }

    .dob-fields .separator {
        font-size: 22px;
        color: #333;
    }

    /* UPDATE BUTTON */
    .update-btn {
        width: 350px;
        padding: 12px 0;
        font-size: 16px;
        font-weight: 600;
        border: none;
        border-radius: 6px;
        background-color:black;
        color: #fff;
        cursor: pointer;
        display: block;
        margin: 20px auto 0;
        transition: 0.3s;
    }

    .update-btn:hover {
        background-color: #555;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-container">
    <asp:Label ID="PersonalInfo" runat="server" CssClass="personal-info" Text="Personal Information"></asp:Label>

    <!-- USER ID -->
    <div class="form-row">
        <asp:Label ID="Ibluserid" runat="server" Text="User ID"></asp:Label>
        <asp:TextBox ID="txtuserid" runat="server" placeholder="Required field"></asp:TextBox>  
    </div>

    <!-- FIRST NAME & LAST NAME -->
    <div class="form-row">
        <asp:Label ID="IblFirstName" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" placeholder="Required field"></asp:TextBox> 
        <asp:Label ID="IblLastName" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" placeholder="Required field"></asp:TextBox> 
    </div>


    <div class="contact-row">
        <div class="contact-group">
            <asp:Label ID="iblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
        <div class="contact-group">
            <asp:Label ID="IblPhoneNumber" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
    </div>


    <div class="form-row">
        <asp:Label ID="IblDob" runat="server" Text="Date of Birth"></asp:Label>
        <div class="dob-fields">
            <asp:TextBox ID="txtDate" runat="server" maxlength="2" placeholder="DD"></asp:TextBox>
            <span class="separator">/</span>
            <asp:TextBox ID="txtMonth" runat="server" maxlength="2" placeholder="MM"></asp:TextBox>
            <span class="separator">/</span>
            <asp:TextBox ID="txtYear" runat="server" maxlength="4" placeholder="YYYY"></asp:TextBox>
        </div>
    </div>

    <div class="address-city-row">
        <div class="contact-group">
            <asp:Label ID="IblAddress" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
        <div class="contact-group">
            <asp:Label ID="IblCity" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
    </div>

    <div class="country-postal-row">
        <div class="contact-group">
            <asp:Label ID="IblCountry" runat="server" Text="Country"></asp:Label>
            <asp:TextBox ID="txtCountry" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
        <div class="contact-group">
            <asp:Label ID="IblPostalCode" runat="server" Text="Postal Code"></asp:Label>
            <asp:TextBox ID="txtPostalCode" runat="server" placeholder="Required field"></asp:TextBox>
        </div>
    </div>

    <div class="form-row">
        <asp:Label ID="IblProvince" runat="server" Text="Province"></asp:Label>
        <asp:TextBox ID="txtProvince" runat="server" placeholder="Required field"></asp:TextBox>
    </div>

    <asp:Button ID="btnAdd" class="update-btn" runat="server" Text="Add User" />
    </div>
</asp:Content>
