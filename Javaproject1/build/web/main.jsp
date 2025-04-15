
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%--<%@page import="com.admin.model.User, com.admin.dao.ProductDAO"%>--%>

<%
    HttpSession userSession = request.getSession(false);
    if (userSession == null || userSession.getAttribute("email") == null) {
        response.sendRedirect("newjsp.jsp?message=Please login first!");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Main Page</title>
        <style>
            body {
                margin: 0;
                padding: 0;
            }
            .main {
                background-color: gray;
                float: right;
            }
            .product {
                position: relative;
                top: 0;
                left: 0;
                transform: none;
                margin-top: 20px;
            }
            .product p {
                font-size: 12px;
            }
            .top {
                position: fixed;
                bottom: 2.1rem;
                right: 2.1rem;
            }

            .top i {
                color: #000;
                background: #0ef;
                font-size: 20px;
                padding: 10px;
                border-radius: 0.5rem;
            }
            .contact-icons i {
                display: inline-flex;
                justify-content: center;
                align-items: center;
                width: 40px;
                height: 40px;
                background: transparent;
                border: 2px solid #0ef;
                border-radius: 50%;
                font-size: 20px;
                color: #0ef;
                text-decoration: none;
                margin: 30px 15px 30px 0;
                transition: -5s ease;
                opacity: 0;
                animation: slideLeft 1s ease forwards;
                animation-delay: calc(.2s * var(--1));
            }

            .contact-icons i:hover {
                background: #0ef;
                color: #000;
                box-shadow: 0 0 20px #0ef;
            }
            @keyframes slideLeft {
                100% {
                    opacity: 1;
                }
            }
            @media (min-width: 768px) {
                .product {
                    position: relative;
                    top: 0;
                    left: 0;
                    transform: none;
                    margin-top: -200px;
                }
            }
            @media (min-width: 1200px) {
                .product {
                    position: relative;
                    top: 0;
                    left: 0;
                    transform: none;
                    margin-top: -340px;
                }
            }
            @media (max-width: 768px) {
                .navbar-nav {
                    flex-direction: column;
                }
                .carousel-item img {
                    height: 200px;
                }
                .product {
                    flex-direction: column;
                }
                .product .col-3 {
                    width: 100%;
                    margin: 10px 0;
                }
                .card {
                    width: 100% !important;
                }
                .contact-icons i {
                    margin: 10px 5px;
                }
            }
        </style>
    </head>

    <body>
        <h1 class="bg-light p-2">Welcome, <%= session.getAttribute("email")%>!</h1>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#contact">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="https://nandanjha1.github.io/My_Portfolio/#">About us</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <a href="LogoutUser"><button class="btn btn-outline-secondary ms-2">Logout</button></a><br><br>
                    <form action='FeedbackFormServlet' method='get'>
                        <button class="btn btn-outline-primary ms-2" type='submit'>Give Feedback</button>
                    </form>
                    <a class="fs-2 nav-link px-2"><i class='bx bx-cart'></i><span class="fs-6">Cart</span></a>
                </div>
            </div>
        </nav>

        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active position-relative">
                    <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img24/Media/BAU/PC_Hero_2x-toys_1._CB582765723_.jpg"
                         class="d-block w-100" alt="image">
                </div>
                <div class="carousel-item">
                    <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/MA2025/GW/BAU/Unrec/PC/934044815._CB551384116_.jpg"
                         class="d-block w-100" alt="image">
                </div>
                <div class="carousel-item">
                    <img src="https://images-eu.ssl-images-amazon.com/images/G/31/BISS_2024/2025/Feb/GW/ATF/Unrec/RevUNREC_PC_3000x1200_1._CB550840669_.jpg"
                         class="d-block w-100" alt="image">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="d-flex container-fluid text-black product overflow-hidden flex-wrap">
            <div class="col-12 col-md-3 container bg-white">
                <div class="container h5">Appliances for your home | Up to 55% off</div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG15/Irfan/GATEWAY/MSO/Appliances-QC-PC-186x116--B08RDL6H79._SY116_CB667322346_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Air conditionars</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG15/Irfan/GATEWAY/MSO/Appliances-QC-PC-186x116--B08345R1ZW._SY116_CB667322346_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Refrigerators</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG15/Irfan/GATEWAY/MSO/Appliances-QC-PC-186x116--B07G5J5FYP._SY116_CB667322346_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Microwaves</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG15/Irfan/GATEWAY/MSO/186x116---wm._SY116_CB667322346_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Washing mashines</p>
                        </div>
                    </div>
                </div>
                <div class="container"><a class="nav-link"
                                          href="https://www.amazon.in/s?bbn=84514735031&rh=n%3A84514735031%2Cp_85%3A10440599031&_encoding=UTF8&content-id=amzn1.sym.58c90a12-100b-4a2f-8e15-7c06f1abe2be&pd_rd_r=8ce1a771-3c53-4900-aa78-9f70d137a357&pd_rd_w=p4lIW&pd_rd_wg=cX6Zk&pf_rd_p=58c90a12-100b-4a2f-8e15-7c06f1abe2be&pf_rd_r=VMA1XKTRHWFVEWD0CP2R&ref=pd_hp_d_atf_unk">See
                        more</a></div>
            </div>
            <div class="col-12 col-md-3 container bg-white">
                <div class="container h5">Revamp your home in style</div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG20/Home/2024/Gateway/BTFGW/PCQC/New/1x/final/186x116_Home_furnishings_2._SY116_CB555624324_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Cushion covers, bedsheets & more</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG20/Home/2024/Gateway/BTFGW/PCQC/New/1x/final/186x116_Home_decor_1._SY116_CB555624324_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Figurines, vases & more</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG20/Home/2024/Gateway/BTFGW/PCQC/New/1x/final/186x116_Home_storage_1._SY116_CB555624324_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Home storage</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/IMG20/Home/2024/Gateway/BTFGW/PCQC/New/1x/final/186x116_Home_lighting_2._SY116_CB555624324_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Lighting solutions</p>
                        </div>
                    </div>
                </div>
                <div class="container"><a class="nav-link"
                                          href="https://www.amazon.in/b/?_encoding=UTF8&node=12414705031&pd_rd_w=CmZb3&content-id=amzn1.sym.f8e82c51-0408-4554-a158-9be4d776850d&pf_rd_p=f8e82c51-0408-4554-a158-9be4d776850d&pf_rd_r=VMA1XKTRHWFVEWD0CP2R&pd_rd_wg=cX6Zk&pd_rd_r=8ce1a771-3c53-4900-aa78-9f70d137a357&ref_=pd_hp_d_atf_unk">Explore
                        all</a></div>
            </div>
            <div class="col-12 col-md-3 container bg-white">
                <div class="container h5">Starting ₹149 | Headphones</div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/june/CE/GW/QC/PC/PC_QuadCard_boAt_0.5x._SY116_CB553870684_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Starting $249 | boAt</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/june/CE/GW/QC/PC/PC_QuadCard_Boult_0.5x._SY116_CB553870684_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Starting $349 | boult</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/june/CE/GW/QC/PC/PC_QuadCard_Noise_0.5x._SY116_CB553870684_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Starting $649 | Noise</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/june/CE/MSO/PD3/PC_QuadCard_Zeb_0.5x_1._SY116_CB570220221_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Starting $149 | Zebronics</p>
                        </div>
                    </div>
                </div>
                <div class="container"><a class="nav-link"
                                          href="https://www.amazon.in/b/?_encoding=UTF8&ie=UTF8&node=1388921031&pd_rd_w=rrLfA&content-id=amzn1.sym.82b20790-8877-4d70-8f73-9d8246e460aa&pf_rd_p=82b20790-8877-4d70-8f73-9d8246e460aa&pf_rd_r=VMA1XKTRHWFVEWD0CP2R&pd_rd_wg=cX6Zk&pd_rd_r=8ce1a771-3c53-4900-aa78-9f70d137a357&ref_=pd_hp_d_atf_unk">See
                        all offers</a></div>
            </div>
            <div class="col-12 col-md-3 container bg-white">
                <div class="container h5">Automotive essentials | Up to 60% off</div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img17/Auto/2020/GW/PCQC/Glasscare1X._SY116_CB410830553_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Cleaning accessories</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img17/Auto/2020/GW/PCQC/Rim_tyrecare1x._SY116_CB410830552_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Tyre & rim care</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img17/Auto/2020/GW/PCQC/Vega_helmet_186x116._SY116_CB405090404_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Helmets</p>
                        </div>
                    </div>
                    <div class="card border-0" style="width: 11rem;">
                        <img src="https://images-eu.ssl-images-amazon.com/images/G/31/img17/Auto/2020/GW/PCQC/Vaccum1x._SY116_CB410830552_.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Vacuum cleaner</p>
                        </div>
                    </div>
                </div>
                <div class="container pb-0"><a class="nav-link"
                                               href="https://www.amazon.in/b/?_encoding=UTF8&ie=UTF8&node=4772060031&pd_rd_w=fTgrf&content-id=amzn1.sym.9ff36f11-82d6-4600-a8fb-e52bb32e171c&pf_rd_p=9ff36f11-82d6-4600-a8fb-e52bb32e171c&pf_rd_r=VMA1XKTRHWFVEWD0CP2R&pd_rd_wg=cX6Zk&pd_rd_r=8ce1a771-3c53-4900-aa78-9f70d137a357&ref_=pd_hp_d_atf_unk">See
                        more</a></div>
            </div>
        </div>
        <div class="container-fluid d-grid my-5 border p-3">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/51b3PESNNnL._AC_UL165_SR165,165_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Stylista PVC Washing Machine Cover Compatible for LG 7 Kg Fully-Automatic Front Loading FHV1207ZWP, Basketweave Pattern Brown</p>
                            <h5 class="card-title">$449.00 <del>$899.00</del></h5>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/51f5+vIFcqL._AC_UL165_SR165,165_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Smart Shelter Washing Machine Trolley for Fully and Semi Automatic, Front or Top Load, Fridge and Dishwasher Stand, Adjustable Metal and Wheels, Black</p>
                            <h5 class="card-title">$549.00 <del>$699.00</del></h5>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/81XWHKMUEpL._AC_UL165_SR165,165_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">The Rasaveda King Chilli Pickle, 150g Bhut Jolokia Pickle Ghost Pepper from Nagaland | Raja Mircha</p>
                            <h5 class="card-title">$249.00 <del>$399.00</del></h5>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/81vVAz63Z9L._AC_UL165_SR165,165_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Sanavya LG Front Load Washing Machine Cover Suitable for LG 7Kg Front Load Washing Machine FHM1207SDM</p>
                            <h5 class="card-title">$6449.00 <del>$7999.00</del></h5>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/8114TOfpuzL._AC_UL165_SR165,165_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Desna Babaal Timur Seasoning | Intense And Aromatic Spice Blend | Handcrafted For Authentic Flavor | Perfect For Elevating Dishes | Store In A Cool, Dry Place</p>
                            <h6 class="card-title">$450.00 <sub>($77.59/100g)</sub></h6>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-2">
                    <div class="card border-0">
                        <img src="https://m.media-amazon.com/images/I/81jPTCkWH8L._SX240_QL100_AC_SCLZZZZZZZ_.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Kuber Industries Cotton 2 Pieces Three Layer Quilted Extra Large Saree Cover (Maroon)-CTKTC13476</p>
                            <h5 class="card-title">$294<sup>00</sup> <del>$299.00</del></h5>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid d-grid bg-secondary p-5" id="contact">
            <div class="text-center container text-light">
                <h1 class="fw-bolder">Contact <span class="text-info">Me</span></h1>
                <h5 class="fw-bold">Let's work Together</h5>
                <p>Got an exciting project or an idea you'd like to bring to life? Let's collaborate and create something amazing! Whether it's web development, design, or a custom solution, I'm here to help. Feel free to reach out—let’s turn your vision into reality! 🚀</p>
                <div class="list-unstyled">
                    <li><i class="bx bxs-send text-info"></i>maachandi2@gmail.com</li>
                    <li><i class="bx bxs-phone text-info"></i>7903310401, 9534647743</li>
                </div>
                <div class="contact-icons">
                    <a href="https://www.facebook.com/nandan.jha.9212?mibextid=ZbWKwL"><i
                            class="bx bxl-facebook-circle"></i></a>
                    <a href="https://x.com/Nandank20526354?t=Q6vGpAxHliQ0beXfVB4ipA&s=08"><i class="bx bxl-twitter"></i></a>
                    <a href="https://www.instagram.com/nandan.jha.9212?igsh=aW1vNjN3ZHFqOGRn"><i
                            class="bx bxl-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/nandan-kumar-6b2297322/"><i class="bx bxl-linkedin"></i></a>
                    <a href="https://github.com/Nandanjha1"><i class='bx bxl-github'></i></a>
                </div>
            </div>
        </div>
        <div class="container-fluid p-3 text-light text-center bg-dark footer">
            <p>Developed with love by Nandan Kumar &copy; 2025</p>
        </div>
        <a href="#" class="top"><i class="bx bx-up-arrow-alt"></i></a>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    </body>
</html>
