<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="MEHALweb.UserPanel.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MEHAL ~ Giriş</title>
    <link href="../Administrator/Assets/CSS/AdminPanel.css" rel="stylesheet" />
    <link href="Assets/CSS/userPanel.css" rel="stylesheet" />
    <link href="../Administrator/Assets/CSS/fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="height: 100%">
        <div class="container">
            <div class="loginPage">
                <img src="../Images/LOGO/MEHAL.jpg" />
            </div>
            <div class="loginBox">
                <div class="loginLogo">
                    <i class="fa-brands fa-meetup"></i>
                </div>
                <div class="selection">
                    <asp:LinkButton ID="lbtn_userRegisterPage" runat="server" OnClick="lbtn_userRegisterPage_Click">Kayıt Ol</asp:LinkButton>
                    <asp:LinkButton ID="lbtn_userLoginPage" runat="server" OnClick="lbtn_userLoginPage_Click">Giriş Yap</asp:LinkButton>
                </div>
                <asp:Panel ID="pnl_loginBox" runat="server" Visible="true">
                    <asp:Panel ID="pnl_error" runat="server" CssClass="messageBox" Visible="false">
                        <asp:Label ID="lbl_error" runat="server">Hatalı</asp:Label>
                    </asp:Panel>
                    <div>
                        <asp:TextBox ID="tb_loginUserName" runat="server" CssClass="inputBox" placeholder="Kullanıcı Adınız"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="tb_loginPassword" runat="server" CssClass="inputBox" placeholder="Şifrenizi Giriniz" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <asp:LinkButton ID="lbtn_login" runat="server" CssClass="loginButton" onmouseenter="enter()" onmouseleave="leave()" OnClick="lbtn_login_Click">Giriş Yap
                         <i class='fa-sharp fa-solid fa-door-open'></i>
                        </asp:LinkButton>
                    </div>
                </asp:Panel>
                <div class="registerBox">
                    <asp:Panel ID="pnl_registerBox" runat="server" Visible="false">
                        <asp:Panel ID="Panel1" runat="server" CssClass="messageBox" Visible="false">
                            <asp:Label ID="Label1" runat="server">Hatalı</asp:Label>
                        </asp:Panel>
                        <div>
                            <asp:TextBox ID="tb_registerName" runat="server" CssClass="inputBox" placeholder="Adınızı Giriniz"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_registerSurname" runat="server" CssClass="inputBox" placeholder="Soyadınızı Giriniz"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_registerUserName" runat="server" CssClass="inputBox" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_registerMail" runat="server" CssClass="inputBox" placeholder="E-Mail Giriniz" TextMode="Email"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_registerPassword" runat="server" CssClass="inputBox" placeholder="Şifrenizi Giriniz" TextMode="Password"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_registerBirthDay" runat="server" CssClass="inputBox" placeholder="Doğum Tarihiniz" TextMode="Date"></asp:TextBox>
                        </div>
                        <div>
                            <asp:LinkButton ID="lbtn_registerUser" runat="server" CssClass="loginButton" onmouseenter="enter()" onmouseleave="leave()" OnClick="lbtn_registerUser_Click">Giriş Yap
                         <i class='fa-sharp fa-solid fa-door-open'></i>
                            </asp:LinkButton>
                        </div>
                    </asp:Panel>
                </div>
            </div>

            <script>
                function enter() {
                    document.getElementById("lbtn_login").innerHTML = " Giriş Yap <i class='fa-sharp fa-solid fa-door-closed'></i>";
                }
                function leave() {
                    document.getElementById("lbtn_login").innerHTML = " Giriş Yap <i class='fa-sharp fa-solid fa-door-open'></i>";
                }
            </script>
        </div>
    </form>
</body>
</html>
