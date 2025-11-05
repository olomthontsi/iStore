<%@ Page Title="Membership" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membership.aspx.cs" Inherits="Takealot.membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/Styles/OlwethuStyles.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="registerPageContent">
        <!-- Hero Banner -->
        <div class="banner2">
            <img src="/images/banner-membership.jpg" alt="Membership Banner" />
            <div class="banner2-text">
                <h1>Join Our Store</h1>
                <p>Create your account and start shopping smarter.</p>
            </div>
        </div>

        <!-- Registration Section -->
        <section class="contact-section" style="max-width: 650px; margin: 60px auto;">
            <h2 class="text-center mb-4">Create Your Account</h2>
            <p class="text-center mb-4">Please fill in the form below to sign up.</p>

            <!-- Removed inner <form> tag to avoid double server-side form issue -->
            <div class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="email" class="form-label"><b>Email Address</b></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="psw" class="form-label"><b>Password</b></label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="psw-repeat" class="form-label"><b>Confirm Password</b></label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
                    <div id="passwordMatchFeedback" class="invalid-feedback">Passwords must match.</div>
                </div>

                <div class="form-check mb-3">
                    <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" Checked="true" />
                    <label class="form-check-label" for="chkRemember">Remember me</label>
                </div>

                <p class="text-center small mb-4">
                    By creating an account, you agree to our 
                    <a href="#" style="color:dodgerblue;">Terms & Privacy</a>.
                </p>

                <div class="d-flex justify-content-between">
                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark w-50 me-2" Text="Cancel" OnClientClick="history.back(); return false;" />
                    <asp:Button ID="btnSignup" runat="server" CssClass="btn btn-custom w-50 ms-2" Text="Sign Up" />
                </div>

                <asp:Label ID="lblMessage" runat="server" Text="" Visible="False" CssClass="mt-3 text-danger"></asp:Label>
            </div>
        </section>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Password Match Validation Script -->
    <script>
        (function () {
            'use strict';

            const form = document.querySelector('.needs-validation');
            const password = document.getElementById('<%= txtPassword.ClientID %>');
            const repeatPassword = document.getElementById('<%= txtConfirmPassword.ClientID %>');
            const feedback = document.getElementById('passwordMatchFeedback');

            form.addEventListener('submit', function (event) {
                repeatPassword.setCustomValidity('');

                if (password.value !== repeatPassword.value) {
                    repeatPassword.setCustomValidity("Passwords do not match");
                    feedback.textContent = "Passwords do not match.";
                } else {
                    feedback.textContent = "";
                }

                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }

                form.classList.add('was-validated');
            }, false);
        })();
    </script>

</asp:Content>
