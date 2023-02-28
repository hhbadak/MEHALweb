<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="MEHALweb.Administrator.AdminLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator LOGIN</title>
    <link href="Assets/CSS/AdminPanel.css" rel="stylesheet" />
    <link href="Assets/CSS/fontawesome/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="height: 100%">
        <div class="container">
            <div class="loginPage">
                <img src="../Images/LOGO/MEHAL.jpg" />
            </div>
            <div class="textTitle">
                <h2>Admin Giriş Sayfası</h2>
            </div>
            <div class="loginBox">
                <div class="loginLogo">
                    <i class="fa-brands fa-meetup"></i>
                </div>
                <asp:Panel ID="pnl_error" runat="server" CssClass="messageBox" Visible="false">
                    <asp:Label ID="lbl_error" runat="server">Hatalı</asp:Label>
                </asp:Panel>
                <div>
                    <asp:TextBox ID="tb_userName" runat="server" CssClass="inputBox" placeholder="Kullanıcı Adınız"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="tb_password" runat="server" CssClass="inputBox" placeholder="Şifrenizi Giriniz" TextMode="Password"></asp:TextBox>
                </div>
                <div>
                    <asp:LinkButton ID="lbtn_login" runat="server" CssClass="loginButton" onmouseenter="enter()" onmouseleave="leave()" OnClick="lbtn_login_Click">Giriş Yap
                         <i class='fa-sharp fa-solid fa-door-open'></i>
                    </asp:LinkButton>
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
