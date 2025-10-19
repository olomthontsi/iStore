<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Takealot.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .banner {
    position: relative;
    width: 100%;
    height: 400px;
    overflow: hidden;
}

    .banner img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .banner::before {
        content: "";
        position: absolute;
        inset: 0;
        background: linear-gradient(to bottom right, rgba(0,0,0,0.4), rgba(0,0,0,0.6));
    }

.banner-text {
    position: absolute;
    top: 50%;
    left: 4%;
    transform: translateY(-50%);
    color: white;
    z-index: 2;
    text-shadow: 1px 1px 8px rgba(0,0,0,0.3);
    animation: float 6s ease-in-out infinite;
}

    .banner-text h1 {
        font-size: 48px;
        font-weight: 600;
        margin-bottom: 10px;
        opacity: 0;
        animation: fadeInUp 1.2s ease-out forwards;
    }

    .banner-text p {
        font-size: 18px;
        opacity: 0;
        animation: fadeInUp 1.2s ease-out 0.5s forwards;
    }

@keyframes fadeInUp {
    from {
        transform: translateY(60px);
        opacity: 0;
    }

    to {
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes float {
    0%, 100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-6px);
    }
}

.section-title {
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    gap: 15px;
    margin: 50px auto 30px;
    max-width: 900px;
}

    .section-title::before,
    .section-title::after {
        content: "";
        flex: 1;
        height: 2px;
        background-color: black;
    }

    .section-title h2 {
        font-size: 26px;
        font-weight: 600;
        color: black;
        margin: 0;
        white-space: nowrap;
    }

    .section-title span {
        color: gray; 
    }

.contact-card {
    background: linear-gradient(to top right, white, ghostwhite);
    border-radius: 20px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
    padding: 20px 15px;
    text-align: center;
    transition: all 0.3s ease;
    border: 1px solid lightgray;
    min-height: 240px;
}

    .contact-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 8px 25px rgba(0,0,0,0.12);
        background: linear-gradient(to bottom right, aliceblue, white);
    }

.contact-icon img {
    width: 45px;
    height: 45px;
    margin-bottom: 8px;
}

.contact-card h3 {
    font-size: 18px;
    font-weight: 600;
    color: black;
    margin-bottom: 8px;
}

.contact-card p {
    font-size: 13px;
    margin: 2px 0;
    color: dimgray;
}

.contact-card em {
    color: cornflowerblue;
    font-style: normal;
    font-weight: 500;
}

@media (max-width: 992px) {
    .banner-text h1 {
        font-size: 38px;
    }

    .banner-text p {
        font-size: 16px;
    }
}

@media (max-width: 768px) {
    .banner {
        height: 300px;
    }

    .contact-card {
        min-height: auto;
    }
}
.contact-section {
    background-color: white;
    padding: 50px 15px;
    border-radius: 10px;
    max-width: 100%;
}

    .contact-section img {
        border-radius: 10px;
        width: 100%;
        height: auto;
    }

    .contact-section h2 {
        font-size: 2rem;
        margin-bottom: 20px;
        color: black;
    }

    .contact-section p {
        font-size: 1rem;
        margin-bottom: 20px;
        color: #333;
    }

    .contact-section .form-control {
        background-color: #f5f5f5;
        border: 1px solid #000;
        color: #000;
        border-radius: 5px;
    }

        .contact-section .form-control:focus {
            background-color: #fff;
            border-color: #000;
            box-shadow: none;
            color: #000;
        }

.btn-custom {
    background-color: black;
    color: white;
    border-radius: 5px;
    border: 1px solid black;
}

    .btn-custom:hover {
        background-color: #333;
        color: white;
    }

    </style>
    <link rel="stylesheet" href="./style.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
    <img src="/images/banner.png" alt="Banner">
    <div class="banner-text">
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
