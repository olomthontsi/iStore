<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membership confirmation.aspx.cs" Inherits="Takealot.membership_confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
  
  <title>Membership Confirmation</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  
  <link href="Styles/MilaStyles.css" rel="stylesheet">
</head>
<body>
  <div class="confirmation">
    <h1>✅ Membership Confirmed!</h1>
    <p>Welcome to the family!.</p>
    <p><strong>Thank for you for choosing to be part of our family.</strong></p>
    <p><strong>A email with your membership confirmation will be sent to you shortly.</strong></p>
    <a href="index.aspx">Back to Home</a>
  </div>
</body>

</asp:Content>
