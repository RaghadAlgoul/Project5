<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="projectEcommerce.checkout" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <title>Checkout</title>
    <style>
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

        body {
            background-image: url(Image/ggg.jpg);
            background-size: contain;
        }

        #headerout {
            font-size: 45px;
            color: black;
            text-align: center;
        }

        #divForm {
            background-color: white;
            border: solid black 2px;
            box-shadow: 5px 10px 18px #888888;
            width: 100%;
            height: auto;
            padding: 10%;
        }

        .identBox {
            font-size: 20px;
            margin-left: 15px;
            margin-top: 20px;
            margin-bottom: 5px;
        }

        .boxs {
            Width: 95%;
            height: 40px;
            margin-left: 15px;
            background-color: #fefefe;
            border: solid 1px #888888;
            border-radius: 7px;
        }

        #confirmBut {
            margin-left: 43%;
            width: 100px;
            font-weight: bold;
            color: white;
            background-color: #82B0CA;
            border-radius: 12px;
            border: solid 0px white;
            height: 50px;
        }

        #CheckBox1 {
            margin-left: 17px;
            display: inline-block;
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
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Log Out</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>





                    </ul>

                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col">
                </div>
                <div class="col-8">
                    <br />

                    <div id="divForm">
                        <p id="headerout">CHECK OUT</p>
                        <br />
                        <p class="identBox">Country/Region</p>
                        <asp:DropDownList ID="DropDownList1" Class="boxs" runat="server"></asp:DropDownList>
                        <br />
                        <p class="identBox">Full name (First and Last name)</p>
                        <asp:TextBox ID="TextBox1" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Street address</p>
                        <asp:TextBox ID="TextBox2" runat="server" Class="boxs" placeholder=" Street address ,P.O box,Company Name "></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" Class="boxs" placeholder=" Apartment,building,floor,etc" Style="margin-top: 11px;"></asp:TextBox>
                        <br />

                        <p class="identBox">City</p>
                        <asp:TextBox ID="TextBox4" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Zip Code</p>
                        <asp:TextBox ID="TextBox5" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox">Phone number</p>
                        <asp:TextBox ID="TextBox6" runat="server" Class="boxs"></asp:TextBox>
                        <br />

                        <p class="identBox" style="font-size: 10px;">* May be used to assist delivery</p>
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label1" class="identBox" runat="server" Text="I am ready to pay upon receipt ." Style="font-size: 12px;"></asp:Label>

                        <br />
                        <br />
                        <asp:Button ID="confirmBut" runat="server" Text="Confirm" />
                        <br />
                        <br />
                    </div>
                    <br />
                </div>
                <div class="col">
                </div>
            </div>


        </div>
    </form>
</body>
</html>
