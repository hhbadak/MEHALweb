<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="UserNameRename.aspx.cs" Inherits="MEHALweb.UserPanel.UserNameRename" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="tb_nameRename" runat="server"></asp:TextBox>
    <asp:TextBox ID="tb_surNameRename" runat="server"></asp:TextBox>
    <asp:TextBox ID="tb_userNameRename" runat="server"></asp:TextBox>
    <asp:TextBox ID="tb_eMailRename" runat="server"></asp:TextBox>
    <asp:TextBox ID="tb_passwordRename" runat="server"></asp:TextBox>
    <asp:Image ID="img_profilePhoto" runat="server" />
    <asp:Image ID="img_bannerPhoto" runat="server" />
    <asp:LinkButton ID="lbtn_send" runat="server" OnClick="lbtn_send_Click">Kaydet</asp:LinkButton>
</asp:Content>
