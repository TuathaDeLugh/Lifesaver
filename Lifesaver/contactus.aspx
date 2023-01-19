<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contactus.aspx.vb" Inherits="Lifesaver.contactus" %>

<!DOCTYPE html>

<html>
<head runat="server">
        <meta charset="utf-8">
    <title>Life Saver</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/add.css" rel="stylesheet">
    <link rel="icon" href="files/logo.png" type="image/x-icon" />
    <script type="text/javascript" src="js/sweet.js"></script>
    <script type="text/javascript" src="js/toast.js"></script>
    <link href="js/toast.css" rel="stylesheet" />

</head>
<body>
        <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
        <a href="index.html" class="navbar-brand p-0">
            <h1 class="m-0 text-uppercase logo">Life Saver</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0 me-n3">
                
                <a href="index.html#about" class="nav-item nav-link">About</a>
                <a href="index.html#services" class="nav-item nav-link">Service</a>
                <a href="index.html#features" class="nav-item nav-link">Features</a>
                <a href="contactus.aspx" class="nav-item nav-link">Contact</a>
                    <a href="login.aspx" id="signin">
                        <button class="btn btn-primary nav-link w-100 h-100 login" href="login.aspx">Sign In</button>
                    </a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
        <!-- Page Header Start -->
    <div class="container-fluid bg-info p-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="display-4 text-white">Contact Us</h1>
                <a href="index.html">Home</a>
                <i class="far fa-square text-primary px-2"></i>
                <a href="contactus.aspx">Contact</a>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Contact Start -->
    <div class="container-fluid bg-secondary px-0">
        <div class="row g-0">
            <div class="col-lg-6 py-6 px-5">
                <h1 class="display-5 mb-4">Contact For Any Queries</h1>
                <form runat="server" id="form1">
                    <div class="row g-3">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox1" runat="server"
                                 cssclass="form-control" placeholder="abc"></asp:TextBox>
                                      <div class="invalid-feedback">
                                      </div>
                                <label for="form-floating-1">Full Name</label>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox2" runat="server"
                                 cssclass="form-control" placeholder="abc" ></asp:TextBox>
                                <label for="form-floating-2">Email address</label>
                            </div>
                        </div>
                            <div class="col-6">
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList1" runat="server" cssclass="form-select">
                                    <asp:ListItem Value="feedback">Feedback</asp:ListItem>
                                    <asp:ListItem Value="question">Question</asp:ListItem>
                                    <asp:ListItem Value="bbadd">Add blood Bank</asp:ListItem>
                                </asp:DropDownList>
                                
                                <label for="form-floating-2">Type</label>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox3" runat="server"
                                 cssclass="form-control" placeholder="abc" ></asp:TextBox>
                                <label for="form-floating-3">Subject</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-floating">
                                <asp:TextBox ID="TextBox4" runat="server"
                                 cssclass="form-control" placeholder="abc" height="250px" TextMode="MultiLine"></asp:TextBox>
                                <label for="form-floating-4">Message</label>
                              </div>
                        </div>
                        <div class="col-12">
                            <asp:Button ID="Button1" runat="server" Text="Submit" cssclass="btn btn-primary w-100 py-3" />
                             
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-6" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <iframe class="position-relative w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3719.2107425554445!2d72.87542511538732!3d21.22349018647667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04f12ca0d8719%3A0x94ea5f0ce677cbc1!2sTapi%20Diploma%20Engineering%20College!5e0!3m2!1sen!2sin!4v1674048235552!5m2!1sen!2sin"
                        frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
    
    <!-- Footer Start -->
    
    <div class="container-fluid bg-info text-secondary p-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h3 class="text-white mb-4">Quick Links</h3>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-secondary mb-2" href="index.html#home"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                    <a class="text-secondary mb-2" href="index.html#about"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                    <a class="text-secondary mb-2" href="index.html#services"><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                    <a class="text-secondary mb-2" href="index.html#features"><i class="bi bi-arrow-right text-primary me-2"></i>Features</a>
                    <a class="text-secondary" href="contactus.aspx"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3 class="text-white mb-4">Devaloper Name</h3>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Umang Sailor</a>
                    <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Parth Rana</a>
                    <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Neel Rana</a>
                    <a class="text-secondary mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Shubham Barvaliya</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3 class="text-white mb-4">Get In Touch</h3>
                <p class="mb-2"><i class="bi bi-geo-alt text-primary me-2"></i>Varachha Main Rd, Kapodra Patiya, Surat</p>
                <p class="mb-2"><i class="bi bi-envelope-open text-primary me-2"></i>info@lifesaver.com</p>
                <p class="mb-0"><i class="bi bi-telephone text-primary me-2"></i>+91 99985 58554</p>
            </div>
            <div class="col-lg-3 col-md-6">
                <h3 class="text-white mb-4">Follow Us</h3>
                <div class="d-flex">
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="https://twitter.com/UmangSailor"><i class="fab fa-twitter fw-normal"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="https://www.facebook.com/umang.sailor.6/"><i class="fab fa-facebook-f fw-normal"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="https://github.com/TuathaDeLugh"><i class="fab bi bi-github fw-normal"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="https://www.instagram.com/umang_sailor/"><i class="fab fa-instagram fw-normal"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-info text-secondary text-center border-top py-4 px-5" style="border-color: rgba(256, 256, 256, .1) !important;">
        <p class="m-0">&copy; <a class="text-secondary border-bottom" href="https://umangsailor.bsite.net">umangsailor.bsite.net</a>. All Rights Reserved.</p>
    </div>
    <!-- Footer End -->



    


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>
