<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="phones.aspx.cs" Inherits="Takealot.phones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
            <h2 class="text-center mb-4">
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
            </h2>

            <asp:Repeater ID="rptPhones" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-md-4 mb-4 text-center">
                        <img src='<%# Eval("Images") %>' alt='<%# Eval("Model_Name") %>'
                             style="width:200px; border-radius:10px;"><br />
                        <strong><%# Eval("Model_Name") %></strong><br />
                        <span>R <%# Eval("Price") %></span>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
</asp:Content>
