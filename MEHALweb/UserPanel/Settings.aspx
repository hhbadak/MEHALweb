<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="MEHALweb.UserPanel.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="settingContainer">
        <ul>
            <a href="UserNameRename.aspx">
                <li>Kullanıcı Adı Değiştir</li>
            </a>
            <a href="PasswordRename.aspx">
                <li>Şifre Değiştir</li>
            </a>
            <a href="EMailRename.aspx">
                <li>Mail Adresi Değiştir</li>
            </a>
            <a href="nameRename.aspx">
                <li>Ad Değiştir</li>
            </a>
            <a href="SurnameRename.aspx">
                <li>Soyad Değiştir</li>
            </a>
            <a href="UserNameRename.aspx">
                <li>Hesabı Dondur</li>
            </a>
        </ul>
    </div>
</asp:Content>
