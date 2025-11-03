<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact us.aspx.cs" Inherits="Takealot.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="/Styles/OlwethuStyles.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner2">
    <img src="/images/banner.png" alt="Banner">
    <div class="banner2-text">
      <h1>Contact Us</h1>
      <p>for support when you need it most</p>
    </div>
  </div>

  <div class="section-title">
    <h2><span>Contact</span> & Get In Touch</h2>
  </div>


  <div class="container">
    <div class="row justify-content-center g-4">

      <div class="col-6 col-md-4 col-lg-3">
        <div class="contact-card">
          <div class="contact-icon">
            <img src="/images/location.png" alt="Location">
          </div>
          <h3>Location</h3>
          <p><em>Visit Us At</em></p>
          <p>1 Breakwater Blvd, Victoria & Alfred</p>
        </div>
      </div>

      <div class="col-6 col-md-4 col-lg-3">
        <div class="contact-card">
          <div class="contact-icon">
            <img src="/images/phone.png" alt="Phone">
          </div>
          <h3>24/7 Service</h3>
          <p><em>Call Us On</em></p>
          <p>Tel: +021-567-8878</p>
          <p>Mob: +021-780-0809</p>
        </div>
      </div>

      <div class="col-6 col-md-4 col-lg-3">
        <div class="contact-card">
          <div class="contact-icon">
            <img src="/images/email.png" alt="Email">
          </div>
          <h3>Drop A Line</h3>
          <p><em>Mail Address</em></p>
          <p>liyemamfengu@istore.co.za</p>
          <p>siyomilan2004@istore.co.za</p>
        </div>
      </div>

      <div class="col-6 col-md-4 col-lg-3">
        <div class="contact-card">
          <div class="contact-icon">
            <img src="/images/clock.png" alt="Clock">
          </div>
          <h3>Business Hours</h3>
          <p><em>We’re Open</em></p>
          <p>Mon–Fri: 08:00 – 18:00</p>
          <p>Sat–Sun: 09:00 – 14:00</p>
        </div>
      </div>
    </div>
  </div>
    <section class="container my-5">
  <div class="row align-items-center contact-section shadow-sm">
    <div class="col-md-6 mb-4 mb-md-0">
      <img src="/images/CONTACT.jpg" alt="Contact Us Image">
    </div>
    <div class="col-md-6">
      <h2>Contact Us</h2>
      <p>Send us a message and we'll get back to you as soon as possible!</p>


        <div class="mb-3">
          <input type="text" class="form-control" placeholder="Your Name" required>
        </div>
        <div class="mb-3">
          <input type="email" class="form-control" placeholder="Your Email" required>
        </div>
        <div class="mb-3">
          <input type="tel" class="form-control" placeholder="Your Phone Number" required>
        </div>
        <div class="mb-3">
          <textarea class="form-control" rows="5" placeholder="Your Message" required></textarea>
        </div>
        <button type="submit" class="btn btn-custom">Send Message</button>
    </div>
  </div>
</section>
<div class="map">
  <iframe 
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3311.464501884711!2d18.417095475171042!3d-33.90344277321333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1dcc6750b9f0bcd7%3A0x2bef459c17a9a582!2siStore%20V%26A%20Waterfront!5e0!3m2!1sen!2sza!4v1760614110518!5m2!1sen!2sza" 
    width="100%" 
    height="300" 
    style="border:0; border-radius:10px;" 
    allowfullscreen="" 
    loading="lazy" 
    referrerpolicy="no-referrer-when-downgrade">
  </iframe>
</div>
</asp:Content>
