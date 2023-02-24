<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="projectEcommerce.cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <title></title>
    <style>
        body {
            background-color: #F1F6F5;
        }

        .navbar-collapse {
            flex-grow: 0;
        }

        .navtext {
            color: white;
            font-size: 20PX;
            text-decoration: none;
            margin-left: 30px;
            margin-right: 20px;
        }
    </style>
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
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link activ" aria-current="page" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active " aria-current="page" href="#">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>
        <div>
            <h4 style="text-align: center;"><b>Shine</b></h4>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <%-- <div class=" rounded-top mt-5" id="zero-pad">
                <div class="row  ">
                    <div class=" flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile">
                        <div class="">
                            <div class=" pt-1 text-uppercase">
                                <h4 style="text-align: center;"><b>Shine</b></h4>
                                <br />
                                <br />
                            </div>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class=" flex-column pt-4">
                            <div>
                                <h5 class="text-uppercase font-weight-normal">shopping bag</h5>
                            </div>


                        </div>


                        <%--                        <div class="d-flex flex-row px-lg-5 mx-lg-5 mobile" id="heading">
                            <div style="margin-left: 100px;" class="px-lg-5 mr-lg-5" id="produc">PRODUCTS</div>
                            <div style="margin-left: 90px;" class="px-lg-5 ml-lg-5" id="prc">PRICE</div>
                            <div style="margin-left: 30px;" class="px-lg-5 ml-lg-1" id="quantity">QUANTITY</div>
                            <div style="margin-left: 20px;" class="px-lg-5 ml-lg-3" id="total">TOTAL</div>
                        </div>
                        <div class="d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile">
                            <div class="d-flex flex-row align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" width="150" height="150" alt="" id="image">
                                </div>
                                <div class="d-flex flex-column pl-md-3 pl-1" style="margin-left: 100px;">
                                    <div>
                                        <h6>COTTON T-SHIRT</h6>
                                    </div>
                                    <div>Art.No:<span class="pl-2">091091001</span></div>
                                    <div>Color:<span class="pl-3">White</span></div>
                                    <div>Size:<span class="pl-4"> M</span></div>
                                </div>
                            </div>
                            <div class="pl-md-0 pl-1"><b>$9.99</b></div>
                                <div class="pl-md-0 pl-2">
                                    <span class="fa fa-minus-square text-secondary"></span><span class="px-md-3 px-1">2</span><span class="fa fa-plus-square text-secondary"></span>
                                </div>
                                <div class="pl-md-0 pl-1"><b>$19.98</b></div>
                                <div class="close">&times;</div>--%>
        </div>



        <div class="container bg-light rounded-bottom py-4" id="zero-pad1">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10 col-12">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <button class="btn btn-sm bg-light border border-dark">GO BACK</button>
                        </div>
                        <div class="px-md-0 px-1" id="footer-font">
                            <b class="pl-md-4">SUBTOTAL<span class="pl-md-4">$61.78</span></b>
                        </div>
                        <div>
                            <button class="btn btn-sm bg-dark text-white px-lg-5 px-3">CONTINUE</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>

</body>
</html>
