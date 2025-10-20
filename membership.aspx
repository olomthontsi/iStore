<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membership.aspx.cs" Inherits="Takealot.membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!DOCTYPE html>
<html>
<head>
  <title>Signup Page</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  
  <link href="style.css" rel="stylesheet">
</head>

<body>
  <div class="container text-center mt-5">
    <h2 class="mb-4">Modal Signup Form</h2>
    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#signupModal">
      Sign Up
    </button>
  </div>

    <div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="signupModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title" id="signupModalLabel">Sign Up</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <form class="needs-validation" novalidate>
        <div class="modal-body">
          <p class="text-muted">Please fill in this form to create an account.</p>
          <hr>

          <!-- Email -->
          <div class="mb-3">
            <label for="email" class="form-label fw-bold">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
            <div class="invalid-feedback">Please enter a valid email address.</div>
          </div>

          <!-- Password -->
          <div class="mb-3 position-relative">
            <label for="psw" class="form-label fw-bold">Password</label>
            <div class="input-group">
              <input type="password" class="form-control" id="psw" placeholder="Enter Password" name="psw" required minlength="6">
              <button type="button" class="btn btn-outline-secondary toggle-password" data-target="psw">
                <i class="bi bi-eye"></i>
              </button>
              <div class="invalid-feedback">Password must be at least 6 characters.</div>
            </div>
          </div>

          <!-- Repeat Password -->
          <div class="mb-3 position-relative">
            <label for="psw-repeat" class="form-label fw-bold">Repeat Password</label>
            <div class="input-group">
              <input type="password" class="form-control" id="psw-repeat" placeholder="Repeat Password" name="psw-repeat" required>
              <button type="button" class="btn btn-outline-secondary toggle-password" data-target="psw-repeat">
                <i class="bi bi-eye"></i>
              </button>
              <div class="invalid-feedback" id="passwordMatchFeedback">Please repeat your password.</div>
            </div>
          </div>

          <!-- Remember Me -->
          <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" name="remember" id="remember" checked>
            <label class="form-check-label" for="remember">Remember me</label>
          </div>

          <p class="small text-muted">
            By creating an account you agree to our 
            <a href="#" class="text-decoration-none text-primary">Terms & Privacy</a>.
          </p>
        </div>

        <!-- Buttons -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-success">Sign Up</button>
        </div>
      </form>

    </div>
  </div>
</div>

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
