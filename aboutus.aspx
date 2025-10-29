<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Takealot.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="/Styles/OlwethuStyles.css"/>
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
                            <p class="desc">Liyema brings creativity and visual storytelling to the team. He designs intuitive, engaging, and aesthetically pleasing user experiences across all our projects.</p>
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
