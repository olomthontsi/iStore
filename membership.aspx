<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membership.aspx.cs" Inherits="Takealot.membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!DOCTYPE html>
<html>
<head>
  <title>Signup Page</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <link href="Styles/MilaStyles.css" rel="stylesheet">
</head>


 <body>
      <form class="modal-content" action="/action_page.php">
       <div class="imgcontainer">
         <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
         <img src="img_avatar2.png" alt="Avatar" class="avatar">
       </div>
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        
          <a href="membership confirmation.aspx">
            <button type="submit" class="signupbtn">Sign Up</button></a>
        
      </div>
    </div>
  </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
(function () {
  'use strict';

  const form = document.querySelector('.needs-validation');
  const password = document.getElementById('psw');
  const repeatPassword = document.getElementById('psw-repeat');
  const feedback = document.getElementById('passwordMatchFeedback');

  // Form validation with password matching
  form.addEventListener('submit', function (event) {
    repeatPassword.setCustomValidity('');

    if (password.value !== repeatPassword.value) {
      repeatPassword.setCustomValidity("Passwords do not match");
      feedback.textContent = "Passwords do not match.";
    } else {
      feedback.textContent = "Please repeat your password.";
    }

    if (!form.checkValidity()) {
      event.preventDefault();
      event.stopPropagation();
    }

    form.classList.add('was-validated');
  }, false);

  // Show/hide password toggles
  const toggles = document.querySelectorAll('.toggle-password');
  toggles.forEach(btn => {
    btn.addEventListener('click', () => {
      const inputId = btn.getAttribute('data-target');
      const input = document.getElementById(inputId);
      const icon = btn.querySelector('i');

      if (input.type === 'password') {
        input.type = 'text';
        icon.classList.replace('bi-eye', 'bi-eye-slash');
      } else {
        input.type = 'password';
        icon.classList.replace('bi-eye-slash', 'bi-eye');
      }
    });
  });

})();
</script>

</body>
</html>
</asp:Content>
