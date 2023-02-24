<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product-page.aspx.cs" Inherits="projectEcommerce.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />


    <title>Product page</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" style="position: sticky; top: 0; height: 400px" id="accordionSidebar">

                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="http://localhost:49794/Product-page">
                        <div class="sidebar-brand-icon">
                            <h2>HELLO</h2>
                        </div>
                        <div class="sidebar-brand-text mx-3">Admin </div>
                    </a>

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item active">
                        <a class="nav-link" href="http://localhost:49794/Product-page">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
                                <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z" />
                            </svg>
                            <span>Product</span>
                        </a>
                        <hr />
                    </li>
                    <!-- Nav Item - Charts -->
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:49794/Order-page">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                            </svg>
                            <span>Order</span>
                        </a>
                        <hr />
                    </li>

                    <!-- Nav Item - Tables -->
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:49794/Customer-page">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                            </svg>
                            <span>Customer</span>
                        </a>
                        <hr />
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:49794/Sallers-page">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z" />
                            </svg>
                            <span>User Message </span>
                        </a>
                        <hr />
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z" />
                                <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
                            </svg>
                             <span>
                                <asp:Label ID="Label2" runat="server" Text="Log Out"></asp:Label></span>
                        </a>
                        <hr />
                    </li>

                </ul>

                <!-- End of Sidebar -->
                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                            <!-- Sidebar Toggle (Topbar) -->
                            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                                <i class="fa fa-bars"></i>
                            </button>

                            <!-- Topbar Search --------------------------------------------->
                            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group">

                                    <asp:TextBox ID="search" runat="server" class="form-control bg-light border-0 small" placeholder="Search for..."
                                        aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                                    <div class="input-group-append">
                                        <div>
                                            <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" Style="background-color: #4e73df; margin-top: 2px;" />
                                        </div>
                                        <div>
                                            <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="" OnClick="Button3_Click" Style="background-color: #4e73df; border: solid 3px; margin-left: 5px;" />
                                        </div>

                                    </div>
                                </div>
                            </form>

                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">

                                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                                <li class="nav-item dropdown no-arrow d-sm-none">
                                    <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-search fa-fw"></i>
                                    </a>

                                </li>
                            </ul>

                        </nav>
                        <!-- End of Topbar -->
                        <!-- Begin Page Content -->
                        <div class="container-fluid">


                            <h1>Product</h1>
                            <div style="float: right;">
                                <asp:Button ID="Button1" runat="server" Text="+ Add Product " BackColor="#4e73df" ForeColor="White" OnClick="Button1_Click" class="btn btn-primary" />
                                <br />
                                <br />
                            </div>
                            <%--<main>
                                <div class="container-fluid bg-trasparent my-1 p-3" style="position: relative;">
                                    <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">

                                        <div class="col">
                                            <div class="card h-100 shadow-sm">
                                                <img src="https://www.freepnglogos.com/uploads/notebook-png/notebook-laptop-png-images-you-can-download-mashtrelo-14.png" class="card-img-top" alt="...">
                                                <div class="label-top shadow-sm">DELL</div>
                                                <div class="card-body">
                                                    <div class="clearfix mb-3"><span class="float-start price-hp">12354.00&euro;</span> <span class="float-end"><a class="text-muted small" href="#">Reviews</a></span> </div>
                                                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam quidem eaque ut eveniet aut quis rerum. Asperiores accusamus harum ducimus velit odit ut. Saepe, iste optio laudantium sed aliquam sequi.</h5>
                                                    <div class="text-center my-4"><a href="#" class="btn btn-warning">Check offer</a> </div>
                                                    <div class="clearfix mb-1"><span class="float-start"><i class="far fa-question-circle"></i></span><span class="float-end"><i class="fas fa-plus"></i></span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>
                               <div>
                                <div>
                                    <main>--%>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <%--       <div class="container-fluid bg-trasparent my-4 p-3" style="position: relative;">
                                <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
                                    <div class="col">

                                        <div class="card h-100 shadow-sm">
                                            <img src="https://www.freepnglogos.com/uploads/notebook-png/download-laptop-notebook-png-image-png-image-pngimg-2.png" class="card-img-top" alt="..." />
                                            <div class="card-body">
                                                <div class="clearfix mb-3">
                                                    <span class="float-start badge rounded-pill bg-primary">ASUS Rog</span>
                                                    <h5 class="card-title">Lorem, ipsum dolor sit amet consectetur adipisicing elit.</h5>
                                                    <span class="float-end price-hp">12354.00&euro;</span>
                                                </div>
                                                <asp:Button ID="Button2" runat="server" Text="Edit" /><asp:Button ID="Button3" runat="server" Text="Delete" />
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>

                            </main>
                        </div>
                    </div>
                            --%>
                            <%--</div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

        </div>
            <!-- End of Page Wrapper -->
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
                            --%>
    </form>
</body>
</html>
