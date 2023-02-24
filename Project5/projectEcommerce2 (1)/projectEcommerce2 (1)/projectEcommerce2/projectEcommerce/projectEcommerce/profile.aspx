<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="projectEcommerce.profile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="profile.css" rel="stylesheet" />
    <script src="profile.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>

    <style>
        .contt {
            position: absolute;
            top: -62px;
            left: 3px;
            background-color: white;
            width: 100%;
            height: 100%;
        }

        /*/headerstyle/
*/
        .headerr {
            height: 140px;
            width: 100%;
            background-color: #82B0CA;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding-top: 80px;
        }

        .logo {
            font-family: 'Ink Free';
            font-size: 28px;
            width: 25%;
            margin-left: 5%;
        }

        .navv {
            width: 50%;
            font-size: 25px;
            text-decoration: none;
            text-align: center;
        }



        /*/bodystyle/
*/ .bodyelemant {
            height: 80%;
            width: 100%;
            display: flex;
            flex-direction: row;
            /*    background-color:aliceblue;
*/
        }

        .proff-left {
            height: 100%;
            width: 25%;
            font-size: 25px;
            border-color: #82B0CA;
            margin: 3px 3px 3px 3px;
        }

        .btnn {
            width: 100%;
            height: 15%;
            border: 3px 3px 0px 3px;
            border-color: #82B0CA;
            padding: 7% 0 0 5%;
            font-size: 25px;
        }

            .btnn:hover {
                background-color: lightgrey;
            }

        .prof-right {
            height: 100%;
            width: 75%;
            display: flex;
            flex-direction: column;
        }

        .prof-header {
            height: 40%;
            width: 100%;
            border-style: solid;
            border-color: #82B0CA;
            display: flex;
            flex-direction: row;
        }

        .prof-photo {
            height: 90%;
            margin-left: 5%;
            width: 25%;
            margin-top: 1.2%;
        }

        .prof-name {
            height: 100%;
            width: 75%;
        }

        .row1 {
            margin-left: 25%;
            text-align: center;
            font-size: 40px;
            margin-top: 5%;
        }

        .row2 {
            margin-left: 25%;
            text-align: center;
            font-size: 25px;
            margin-top: 2%;
        }

        .orders {
            height: 15%;
            padding: 1% 0 0 2%;
            font-size: 25px;
        }

        .prof-footer {
            height: 60%;
            width: 100%;
            /* background-color: chocolate;*/
            border-style: solid;
            border-color: #82B0CA;
        }

        .accountinfo {
            display: flex;
            flex-direction: column;
            height: 100%;
            width: 100%;
            font-size: 25px;
        }

        .inforow {
            width: 100%;
            margin-top: 4%;
        }

        #Label10 {
            font-size: 25px;
            margin-left: 5%;
        }

        .colone {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
        }

        .inforow1 {
            margin-left: 6%;
            margin-top: 1%;
            width: 50%;
        }
        /*#changename{
    width:20px;
    height:20px;
    background-color:black;
}*/
        #changeinfo {
            background-color: #82B0CA;
            width: 170px;
            margin-left: 80%;
            text-align: center;
            border-radius: 10%;
        }

            #changeinfo:hover {
                background-color: lightgray;
            }

        .Offers {
            font-size: 25px;
            height: 100%;
        }

        .offerrow {
            height: 15%;
            padding: 1% 0 0 2%;
            font-size: 25px;
            width: 80%;
        }
        /*#changebox {
    display: flex;
    flex-direction: column;
    height: 100%;
    width: 100%;
    font-size: 25px;
   
}*/
        /*footer style
*/
        .footer {
            height: 10%;
            width: 100%;
            position: absolute;
            background-color: #82B0CA;
            top: 728px;
            left: 0px;
        }

        .text-reset {
            text-decoration: none;
        }

        .text-muted {
            color: white !important;
        }

        .fas {
            color: white !important;
        }

        .fab {
            color: white;
        }

        #Button1 {
            border-style: none;
            background-color: white;
        }

            #Button1:hover {
                color: forestgreen;
            }

        @media all and (min-device-width:0 ) and (max-device-width:480px ) {
            .prof-header {
                display: flex;
                flex-direction: column;
            }

            .prof-photo {
                height: 60%;
                margin-left: 5%;
                width: 90%;
                margin-top: 1.2%;
            }

            .prof-name {
                height: 40%;
                width: 100%;
            }

            .row1 {
                margin-left: 10%;
                text-align: center;
                font-size: 45px;
                margin-top: 5%;
            }

            .row2 {
                margin-left: 10%;
                text-align: center;
                font-size: 30px;
                margin-top: 2%;
            }

            .btn1 {
                height: 8%;
                padding: 7% 0 0 5%;
                font-size: 30px;
            }

            .accountinfo {
                font-size: 30px;
            }

            .Offers {
                font-size: 30px;
            }

            .nav {
                width: 70%;
            }

            .header {
                height: 5%;
            }

            .bodyelemant {
                height: 85%;
            }

            .footer {
                height: 10%;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="contt">
            <div class="headerr">
                <div class="logo">Shine</div>
                <div class="navv">
                    <asp:HyperLink ID="HyperLink1" runat="server" href="home.aspx" Style="text-decoration: none; color: black;"> Home &nbsp;</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" runat="server" href="aboutus.aspx" Style="text-decoration: none; color: black;">About Us &nbsp;</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" runat="server" href="contactPage.aspx" Style="text-decoration: none; color: black;">Contact Us &nbsp;</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" runat="server" href="home.aspx" Style="text-decoration: none; color: black;">Log out</asp:HyperLink>

                </div>


            </div>
            <div class="bodyelemant">
                <div class="proff-left">
                    <div class="btnn" onclick="showinfo()">Account info</div>
                    <div class="btnn" onclick="showorder()">your order</div>
                    <div class="btnn" onclick="showoffers()">Offers</div>
                    <div class="btnn" onclick="showbasket()">Basket</div>
                    <div class="btnn" onclick="showabout()">About</div>
                </div>
                <div class="prof-right">
                    <div class="prof-header">
                        <div class="prof-photo">
                            <asp:Image ID="Image1" runat="server" />
                        </div>
                        <div class="prof-name">
                            <div class="row1">
                                <b>
                                    <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label></b>
                            </div>
                            <div class="row2">
                                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                <asp:Button ID="Button1" runat="server" Text="Change Photo" OnClick="Button1_Click1" />
                            </div>
                        </div>
                    </div>
                    <div class="prof-footer">
                        <div class="accountinfo" id="accountinfo">
                            <div class="inforow">
                                <b>
                                    <asp:Label ID="Label10" runat="server" Text="Label">Personal Information</asp:Label></b>
                            </div>
                            <div class="colone">
                                <div class="inforow1">
                                    Name: 
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="inforow1">
                                    Email:  
                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="colone">
                                <div class="inforow1">
                                    Phone: 
                                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="inforow1">
                                    City:   
                                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <br />
                            <div id="changeinfo" onclick="changeinfo()">edit your info</div>
                        </div>



                        <div class="yourorder" id="yourorder" style="display: none;">
                            <div class="orders">
                                <asp:Label ID="order" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="Offers" id="Offers" style="display: none;">
                            <div class="offerrow">
                                <asp:Label ID="offers" runat="server" Text=""></asp:Label>
                            </div>

                        </div>
                        <div class="Basket" id="Basket" style="display: none;">
                            <div class="offerrow">
                                <asp:Label ID="bask" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="About" id="About" style="display: none;">
                            <p style="font-size: 30px; text-align: center;"><b>About Your Account</b></p>
                            <p style="font-size: 25px; text-align: center;">Welcome to our site which let you to make free account and let you to discover thousands of our products , not differ where are you from we are deliver to all world.</p>
                        </div>
                        <%--edit--%>

                        <div class="edit" id="edit" style="display: none; font-size: 20px;">
                            <div class="offerrow">
                                <div class="colone">
                                    <asp:Label ID="Label7" runat="server" Text="edit your name:"></asp:Label>
                                    <asp:TextBox ID="Textname" runat="server"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="colone">
                                    <asp:Label ID="Label2" runat="server" Text="edit your pass:"></asp:Label>
                                    <asp:TextBox ID="Textpass" runat="server"></asp:TextBox><br />
                                </div>
                                <div class="colone">
                                    <asp:Label ID="Label8" runat="server" Text="edit your email:"></asp:Label>
                                    <asp:TextBox ID="Textemail" runat="server"></asp:TextBox><br />
                                </div>
                                <div class="colone">
                                    <asp:Label ID="Label9" runat="server" Text=" edit your phone:"></asp:Label>
                                    <asp:TextBox ID="Textphone" runat="server"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="colone">
                                    <asp:Label ID="Label11" runat="server" Text="edit your phone:"></asp:Label>
                                    <asp:TextBox ID="Textcity" runat="server"></asp:TextBox><br />
                                </div>
                                <br />

                                <asp:Button ID="save" runat="server" Text="save" OnClick="save_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer">
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
                    </section>
                    <!-- Right -->

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
                        </div>
                    </section>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
