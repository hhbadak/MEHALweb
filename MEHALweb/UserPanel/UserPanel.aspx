<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="MEHALweb.UserPanel.UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="userProfileStatic">
        <div class="bannerPhoto">
            <asp:Image ID="img_bannerPicture" runat="server" />
        </div>
        <div class="userProfilePhoto">
            <asp:Image ID="img_pictureComing" runat="server" />
        </div>
        <div class="options">
            <asp:FileUpload ID="fu_profilePicture" runat="server"></asp:FileUpload>
            <asp:LinkButton ID="lbtn_addProfilePhoto" runat="server" OnClick="lbtn_addProfilePhoto_Click">ProfilFotoEkle</asp:LinkButton>
            <asp:FileUpload ID="fu_bannerPicture" runat="server"></asp:FileUpload>
            <asp:LinkButton ID="lbtn_bannerPicture" runat="server" OnClick="lbtn_bannerPicture_Click">Banner</asp:LinkButton>
        </div>
        <div class="userDescription"></div>
    </div>
    <div class="postsArea">
        <asp:Repeater ID="rp_postList" runat="server">
            <ItemTemplate>
                <div class="sharingStyle" style="margin: 35% auto 1% auto;">
                    <a href="UserPanel.aspx" class="userClass">
                        <h3><%#Eval("user") %></h3>
                    </a>
                    <p><%#Eval("content") %></p>
                    <span><%#Eval("date") %></span>
                    <img id="img_photostyle" class="sharingPhotoStyle" src="../Images/SharingPhotografy/<%# Eval("imagePath") %>" />
                    <label>Beğeni Sayısı <%#Eval("numberOfLikes") %></label>
                    <asp:TextBox ID="tb_sharingComment" runat="server"></asp:TextBox>
                    <asp:LinkButton CssClass="sendComment" ID="lbtn_sharingCommentSend" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="sendComment">Gönder
                    </asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
