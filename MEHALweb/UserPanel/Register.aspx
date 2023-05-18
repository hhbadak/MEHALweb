<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MEHALweb.UserPanel.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Ol</title>
    <link href="Assets/CSS/fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />
    <link href="../Assets/bootstrap-5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Assets/bootstrap-5.3.0/css/bootstrap.css" rel="stylesheet" />
    <link href="../Assets/dashboard/dashboard.css" rel="stylesheet" />
    <link href="../Assets/JQuery/css/Slider.css" rel="stylesheet" />

    <style>
        .pageControl {
            width: 1000px;
            margin-top: -1%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pageControl container">
            <section>
                <asp:Panel ID="pnl_error" runat="server" Visible="false">
                    <div class="alert alert-danger d-flex align-items-center" role="alert">
                        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
                                                    <use xlink:href="#exclamation-triangle-fill" />
                                                    <img src="../Images/LOGO/close.png" />&nbsp&nbsp&nbsp
                                                </svg>
                        <div>
                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                        </div>
                    </div>
                </asp:Panel>
                <div class="row d-flex justify-content-center align-items-center h-75">
                    <div class="col-md">
                        <div class="card card-registration my-4 bg-light">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                        alt="Sample photo" class="img-fluid"
                                        style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                </div>
                                <div class="col-xl-6">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-5 text-uppercase">Kayıt Ol</h3>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_name" runat="server" CssClass="form-control" placeholder="Adınız"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_surname" runat="server" CssClass="form-control" placeholder="Soyadınız"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_username" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı Belirleyin"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_eMail" runat="server" CssClass="form-control" placeholder="E-Mail Adresiniz"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_password" runat="server" CssClass="form-control" type="password" placeholder="Şifrenizi Belirleyin"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:TextBox ID="tb_dateOfBirth" runat="server" CssClass="form-control" placeholder="Doğum Tarihiniz"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-end pt-3">
                                            <asp:LinkButton ID="lbtn_cancel" runat="server" CssClass="btn btn-warning btn-lg" OnClick="lbtn_cancel_Click">İptal</asp:LinkButton>
                                            <asp:LinkButton ID="lbtn_register" runat="server" CssClass="btn btn-info btn-lg" OnClick="lbtn_register_Click">Kayıt Ol</asp:LinkButton>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
<script src="../Assets/bootstrap-5.3.0/js/bootstrap.min.js"></script>
<script src="../Assets/dashboard/dashboard.js"></script>
<script src="../Assets/JQuery/scripts/jquery-3.6.4.min.js"></script>
</html>
