<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="UserNameRename.aspx.cs" Inherits="MEHALweb.UserPanel.UserNameRename" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="tb_userNameRename" runat="server"></asp:TextBox>
    <asp:LinkButton ID="lbtn_send" runat="server" OnClick="lbtn_send_Click">Kaydet</asp:LinkButton>
</asp:Content>
