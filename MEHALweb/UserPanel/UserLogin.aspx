<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="MEHALweb.UserPanel.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MEHAL ~ Giriş</title>
    <link href="Assets/CSS/AdminPanel.css" rel="stylesheet" />
    <link href="Assets/CSS/fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />
    <link href="../Assets/bootstrap-5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Assets/bootstrap-5.3.0/css/bootstrap.css" rel="stylesheet" />
    <link href="../Assets/dashboard/dashboard.css" rel="stylesheet" />
    <link href="../Assets/JQuery/css/Slider.css" rel="stylesheet" />
</head>
<body>
    <section class="vh-100" style="background-color: #9A616D;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <%--<img src="../Images/LOGO/MEHAL.jpg"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem; height:100%;" />--%>
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">

                                    <form>

                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fa-brands fa-meetup" style="font-size: xxx-large;"></i>
                                            <span class="h1 fw-bold mb-0">MEHAL</span>
                                        </div>

                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Hesabınıza Giriş Yapın</h5>

                                        <div class="form-outline mb-4">
                                            <input type="email" id="form2Example17" class="form-control form-control-lg" placeholder="E-Mail"/>
                                            <%--<label class="form-label" for="form2Example17">Email Adresi</label>--%>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input type="password" id="form2Example27" class="form-control form-control-lg" placeholder="Şifre"/>
                                            <%--<label class="form-label" for="form2Example27">Şifre</label>--%>
                                        </div>

                                        <div class="pt-1 mb-4">
                                            <button class="btn btn-dark btn-lg btn-block" type="button">Giriş</button>
                                        </div>

                                        <a class="small text-muted" href="#!">Şifremi Unuttum</a>
                                        <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                            Hesabın Yok Mu? <a href="#!"
                                                style="color: #393f81;">Kayıt Ol</a>
                                        </p>
                                        <a href="#!" class="small text-muted">Kullanım Şartları.</a>
                                        <a href="#!" class="small text-muted">Gizlilik Politikası</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
<script src="../Assets/bootstrap-5.3.0/js/bootstrap.min.js"></script>
<script src="../Assets/dashboard/dashboard.js"></script>
<script src="../Assets/JQuery/scripts/jquery-3.6.4.min.js"></script>
</html>
