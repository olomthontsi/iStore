<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Takealot.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
     body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        .banner {
    position: relative;
    height: 400px;
    overflow: hidden;
}

.banner img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    z-index: 1;
    position: relative;
}

.banner::after {
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            width: 40%;
            height: 100%;
            background: linear-gradient(to left, rgba(0, 0, 0, 0.8), transparent);
            pointer-events: none;
            z-index: 2;
}

.banner-text {
    position: absolute;
    top: 40%;
    right: 5%;
    transform: translateY(-50%);
    color: white;
    z-index: 3;
    text-align: center;
}

        .banner-text h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }

        .banner-text p {
            font-size: 1.1rem;
            line-height: 1.7;
            margin: 0;
        }

        .banner-text b {
            font-weight: 700;
        }

        .services-text h1 {
            font-size: 2rem;
            font-weight: bold;
            margin: 30px 0 20px 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .services-text h1::before,
        .services-text h1::after {
            content: "";
            flex: 0 0 60px;
            height: 2px;
            background-color: black;
            margin: 0 10px;
        }

        .services img {
            width: 40px;
            height: 40px;
            margin-bottom: 10px;
        }

        .services b {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 1.1rem;
        }

        .services span {
            font-weight: 300;
            color: #000;
            font-size: 14px;
        }

        /* Team */
        .team-section {
            text-align: center;
            padding: 50px 10px;
            background-color: #fff;
        }

        .title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 40px;
            position: relative;
            display: inline-block;
        }

        .title::after {
            content: "";
            width: 60px;
            height: 3px;
            background: #42b4ca;
            display: block;
            margin: 10px auto 0;
            border-radius: 3px;
        }

        .card {
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.15);
        }

        .card img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-bottom: 15px;
            object-fit: cover;
        }

        .role {
            color: #42b4ca;
            font-size: 0.95rem;
        }

        .name {
            font-weight: 600;
            margin-top: 5px;
            font-size: 1.1rem;
        }

        .desc {
            font-size: 0.9rem;
            color: #777;
            margin: 10px 0;
        }

        .socials {
            margin-top: 8px;
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .socials img {
            width: 28px;
            height: 28px;
            transition: transform 0.3s ease, filter 0.3s ease;
        }

        .socials img:hover {
            transform: scale(1.1);
            filter: brightness(0.6);
        }

        @media (max-width: 768px) {
            .banner-text {
                right: 5%;
                top: 25%;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid px-0">
        <div class="banner position-relative">
            <img src="images/applestore.png" alt="Banner" class="img-fluid">
            <div class="banner-text">
                <h1>About iStore</h1>
                <p>At iStore we aim to provide our customers with a <b>seamless<br>shopping experience</b>,
                    and  access to the best tech support and <br> training to give you the best experience with your products.
                </p>
            </div>
        </div>
    </div>

    <section class="services-text">
        <h1>Our Services</h1>
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-4 justify-content-center">
                <div class="col text-center services">
                    <img src="images/delivery.png" alt="">
                    <b>Same Day Delivery</b>
                    <span>Available in more regions</span>
                </div>
                <div class="col text-center services">
                    <img src="images/click.png" alt="">
                    <b>Click & Collect</b>
                    <span>Order and Collect</span>
                </div>
                <div class="col text-center services">
                    <img src="images/offers.png" alt="">
                    <b>Affordability Offers</b>
                    <span>Offering affordable products</span>
                </div>
                <div class="col text-center services">
                    <img src="images/repairs.png" alt="">
                    <b>Apple Certified Repairs</b>
                    <span>Offering Certified Repairs</span>
                </div>
                <div class="col text-center services">
                    <img src="images/warranty.png" alt="">
                    <b>Warranty</b>
                    <span>iCare + extended warranty</span>
                </div>
                <div class="col text-center services">
                    <img src="images/tradein.png" alt="">
                    <b>Trade-In</b>
                    <span>Trade-Ins Available</span>
                </div>
                <div class="col text-center services">
                    <img src="images/Tech.png" alt="">
                    <b>Tech Support</b>
                    <span>Offers Technical Support</span>
                </div>
                <div class="col text-center services">
                    <img src="images/business.png" alt="">
                    <b>iStore Business</b>
                    <span>Our iStore Business is always available</span>
                </div>
                <div class="col text-center services">
                    <img src="images/sim.png" alt="">
                    <b>Cellular Contacts</b>
                    <span>Across all networks</span>
                </div>
                <div class="col text-center services">
                    <img src="images/online.png" alt="">
                    <b>Online Repair Services</b>
                    <span>Online Repair Team always available</span>
                </div>
            </div>
        </div>
    </section>
<div class="container-fluid px-0">
  <img src="images/employees.png" alt="Our Employees" class="img-fluid w-100">
</div>

    <section class="team-section">
        <h2 class="title">Meet Our Team</h2>
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card text-center h-100 shadow-sm border-0">
                        <img src="images/liyema.png" alt="Designer" class="mx-auto mt-3">
                        <div class="card-body">
                            <h5 class="role">Designer</h5>
                            <h4 class="name">Liyema Mfengwana</h4>
                            <p class="desc">Liyema brings creativity and visual storytelling to the team. She designs intuitive, engaging, and aesthetically pleasing user experiences across all our projects.</p>
                            <div class="socials">
                                <img src="images/facebook.jpg" alt="Facebook">
                                <img src="images/insta.png" alt="Instagram">
                                <img src="images/wapp.png" alt="WhatsApp">
                                <img src="images/linkedin.png" alt="LinkedIn">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card text-center h-100 shadow-sm border-0">
                        <img src="images/mila.png" alt="Developer" class="mx-auto mt-3">
                        <div class="card-body">
                            <h5 class="role">Developer</h5>
                            <h4 class="name">Mila Nofemela</h4>
                            <p class="desc">Mila is our tech expert, turning ideas into functional, efficient, and user-friendly solutions. She ensures our digital platforms are always up-to-date and performing at their best.</p>
                            <div class="socials">
                                <img src="images/facebook.jpg" alt="Facebook">
                                <img src="images/insta.png" alt="Instagram">
                                <img src="images/wapp.png" alt="WhatsApp">
                                <img src="images/linkedin.png" alt="LinkedIn">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card text-center h-100 shadow-sm border-0">
                        <img src="images/Inam.png" alt="Manager" class="mx-auto mt-3">
                        <div class="card-body">
                            <h5 class="role">Manager</h5>
                            <h4 class="name">Inam Menziwa</h4>
                            <p class="desc">Our Manager ensures that all projects run smoothly, deadlines are met, and the team stays motivated with excellent leadership and organizational skills.</p>
                            <div class="socials">
                                <img src="images/facebook.jpg" alt="Facebook">
                                <img src="images/insta.png" alt="Instagram">
                                <img src="images/wapp.png" alt="WhatsApp">
                                <img src="images/linkedin.png" alt="LinkedIn">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card text-center h-100 shadow-sm border-0">
                        <img src="images/olo.png" alt="Marketer" class="mx-auto mt-3">
                        <div class="card-body">
                            <h5 class="role">Marketer</h5>
                            <h4 class="name">Thandolwethu Mthontsi</h4>
                            <p class="desc">Thandolwethu drives our brand forward by creating compelling campaigns and connecting with our customers. She ensures our products reach the right audience effectively.</p>
                            <div class="socials">
                                <img src="images/facebook.jpg" alt="Facebook">
                                <img src="images/insta.png" alt="Instagram">
                                <img src="images/wapp.png" alt="WhatsApp">
                                <img src="images/linkedin.png" alt="LinkedIn">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
