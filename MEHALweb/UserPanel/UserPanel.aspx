<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="MEHALweb.UserPanel.UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="userProfileStatic">
        <div class="bannerPhoto">
        </div>
        <div class="userProfilePhoto"></div>
        <div class="options">
        </div>
        <div class="userDescription"></div>
    </div>
    <div class="headerUserProfil">
        <asp:Repeater ID="rp_userProfil" runat="server">
            <ItemTemplate>
                <div class="userProfileSharing">
                    <h5><%#Eval("user") %></h5>
                    <label><%#Eval("numberOfLikes") %></label>
                    <p><%#Eval("content") %></p>
                    <img class="sharingPhotoStyle" src="~/Images/SharingPhotografy/<%# Eval("imagePath") %>" />
                    <label><%#Eval("date") %></label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
