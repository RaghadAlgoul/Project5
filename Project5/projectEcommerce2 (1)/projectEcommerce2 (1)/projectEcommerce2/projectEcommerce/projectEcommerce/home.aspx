<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="projectEcommerce.home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="home.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg" style="background-color: #82B0CA;">
            <div class="container-fluid">
                <a class="navtext navbar-brand" href="#" style="font-family: 'Ink Free'; font-size: 28px">Shine</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <ul id="navUl" class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="aboutus.aspx">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="contactPage.aspx">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="register.aspx">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="signin.aspx">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="cart.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                    </ul>

                </div>
            </div>
        </nav>
        <%--        <div id="background">
            <div id="text">Cleaning Supplies</div>
        </div>--%>
        <%--   <br />--%>

        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <%--     <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>--%>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img style="opacity: 0.7" src="Image/home3.jpg" class="d-block w-100" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h1 style="font-family: 'Ink Free'; font-size: 100px; color: black;">Shine</h1>
                        <p style="font-size: 40px; color: black;">cleaning supplies.</p>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img style="opacity: 0.7" src="Image/homehome3.jpg" class="d-block w-100" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h1 style="font-family: 'Ink Free'; font-size: 100px;">Shine</h1>
                        <p style="font-size: 40px;">Best quality with suitable prices.</p>
                    </div>
                </div>

            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <%--        <div id="card_con" class="card_con" runat="server">

            <div class="card" style="width: 18rem;">
                <div class="overlay">
                    <div class="tt">discrsr</div>
                </div>
                <img src="Image/kkkk.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <p class="card-text">Laundry cleaner</p>
                </div>
            </div>

        </div>--%>
        <br />
        <br />
        <div class="text2">CATEGORIES</div>
        <br />
        <br />
        <asp:Label ID="Label1" class="card_con" runat="server" Text="">
            <%--<div id="card_con" class="card_con" runat="server">

            <%--            <div class="card" style="width: 18rem;">
                <img src="luandry.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <p class="card-text">Laundry cleaner</p>
                </div>
            </div>

           <%-- </div>--%>
        </asp:Label>
        <br />
        <br />
        <br />

        <div class="text2">SALES</div>
        <br />
        <br />
        <asp:Label ID="Label2" class="card_con" runat="server" Text=""></asp:Label>
        <%--        <div class="card_con" runat="server">
            <div class="card" style="width: 18rem; cursor: pointer;" onclick="location.href='contactPage.aspx';">
                <img src="images/kkkk.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <p class="card-text"><span style="color: tomato;">1.99$</span>   <span style="text-decoration: line-through; font-size: 15px">2.55$</span></p>
                </div>
            </div>

        </div>--%>

        <br />
        <br />
        <br />
        <!-- Footer -->
        <footer class="text-center text-lg-start  text-muted" style="background-color: #82B0CA;">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="#" class="me-4 link-secondary">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="me-4 link-secondary">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="me-4 link-secondary">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="me-4 link-secondary">
                        <i class="fab fa-instagram"></i>
                    </a>


                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3 text-secondary" style="color: white;"></i>Shine
                            </h6>
                            <p>
                                Your first destination to buy cleaning supplies. Best quality with suitable prices.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Categories
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Luadry cleaner</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Dish soup</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">All-purpose cleaner</a>
                            </p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Useful links
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Home</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Message</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Cart</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                            <p><i class="fas fa-home me-3 text-secondary"></i>Amman Jordan</p>
                            <p>
                                <i class="fas fa-envelope me-3 text-secondary"></i>
                                Shine@gmail.com
                            </p>
                            <p><i class="fas fa-phone me-3 text-secondary"></i>+962 776610148</p>
                            <p><i class="fas fa-print me-3 text-secondary"></i>+962 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.025);">
                © 2021 Copyright:
    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">Shine.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </form>
</body>
</html>
