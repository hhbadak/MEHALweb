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
    <div class="postsArea">
        <asp:Repeater ID="rp_postList" runat="server">
            <ItemTemplate>
                <div class="sharingStyle">
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
