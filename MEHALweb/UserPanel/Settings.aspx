<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="MEHALweb.UserPanel.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="settingContainer">
        <a href='UserNameRename.aspx?uid=<%# Eval("ID") %>'>Güncelle</a>
    </div>
    <div style="clear: both"></div>
</asp:Content>
