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
                               <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">

                                    <form id="UserLogin" runat="server">

                                        <asp:Panel ID="pnl_successs" runat="server" Visible="false">
                                            <div class="alert alert-success d-flex align-items-center" role="alert">
                                                <svg runat="server" class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:">
                                                    <%--<use xlink:href="#check-circle-fill" />--%>
                                                    <img src="../Images/LOGO/checked.png" />&nbsp&nbsp&nbsp 
                                                </svg>
                                                <div>
                                                    <asp:label id="lbl_success" runat="server"></asp:label>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnl_error" runat="server" Visible="false">
                                            <div class="alert alert-danger d-flex align-items-center" role="alert">
                                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
                                                    <%--<use xlink:href="#exclamation-triangle-fill" />--%>
                                                    <img src="../Images/LOGO/close.png" />&nbsp&nbsp&nbsp
                                                </svg>
                                                <div>
                                                    <asp:label id="lbl_error" runat="server"></asp:label>
                                                </div>
                                            </div>
                                        </asp:Panel>

                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fa-brands fa-meetup" style="font-size: xxx-large;"></i>
                                            <span class="h1 fw-bold mb-0">MEHAL</span>
                                        </div>

                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Hesabınıza Giriş Yapın</h5>

                                        <div class="form-outline mb-4">
                                            <%--<input type="text" id="tb_loginUserName" runat="server" class="form-control form-control-lg" placeholder="Kullanıcı Adı" />--%>
                                            <asp:TextBox ID="tb_loginUserName" runat="server" CssClass="form-control form-control-lg" placeholder="Kullanıcı Adı"></asp:TextBox>
                                            <%--<label class="form-label" for="form2Example17">Email Adresi</label>--%>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <%--<input type="password" id="tb_loginPassword" runat="server" class="form-control form-control-lg" placeholder="Şifre" />--%>
                                            <asp:TextBox ID="tb_loginPassword" runat="server" CssClass="form-control form-control-lg" placeholder="Şifre" type="password"></asp:TextBox>
                                            <%--<label class="form-label" for="form2Example27">Şifre</label>--%>
                                        </div>

                                        <div class="pt-1 mb-4">
                                            <asp:LinkButton ID="lbtn_userLogin" runat="server" CssClass="btn btn-dark btn-lg btn-block" Text="Giriş" OnClick="lbtn_userLogin_Click"></asp:LinkButton>
                                           <%-- <button class="btn btn-dark btn-lg btn-block" type="button">Giriş</button>--%>
                                        </div>

                                        <%--Şifremi Unuttum--%>

                                            <!-- Button trigger modal -->
        <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="text-decoration:underline;">
            Şifremi unuttum
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true" data-mdb-backdrop="true" data-mdb-keyboard="true">
            <div class="modal-dialog" style="width: 300px;">
                <div class="modal-content text-center">
                    <div class="modal-header h5 text-white bg-primary justify-content-center">
                        ŞİFRE SIFIRLAMA EKRANI
                    </div>
                    <div class="modal-body px-5">
                        <p class="py-2">
                           Şifrenizi hatırlamıyorsanız, yeni şifre belirlemek için tuşlama yapınız.
                        </p>
                         <div class="form-outline">
                            <asp:TextBox ID="tb_resetMail" runat="server" placeholder="E-Mail Adresinizi Giriniz" CssClass="form-control my-3"></asp:TextBox>
                        </div>
                        <div class="form-outline">
                            <asp:TextBox ID="tb_resetPassword" type="password" runat="server" placeholder="Şifre Giriniz" CssClass="form-control my-3"></asp:TextBox>
                        </div>
                        <asp:LinkButton ID="lbtn_resetPassword" runat="server" CssClass="btn btn-primary w-100" OnClick="lbtn_resetPassword_Click">Şifreyi Yenile</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>

                                        <%--Hesap Oluştur--%>
                                        <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                            Hesabın Yok Mu? <a href="Register.aspx"
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
