<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MEHALweb.UserPanel.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container">
        <div class="sharingArea">
            <asp:LinkButton ID="lbtn_share" runat="server" OnClick="lbtn_share_Click">Yolla</asp:LinkButton>
            <asp:TextBox ID="tb_sharingArea" runat="server" CssClass="shareBox" placeholder="   Bugün neler öğrendin?"></asp:TextBox>
            <asp:FileUpload ID="fu_picture" runat="server" CssClass="fileLayout"></asp:FileUpload>
        </div>
        <div class="postsArea">
            <asp:Repeater ID="rp_postList" runat="server">
                <ItemTemplate>
                    <div class="sharingStyle">
                        <a href="UserPanel.aspx" class="userClass">
                            <h3><%#Eval("user") %></h3>
                        </a>
                        <br />
                        <p><%#Eval("content") %></p>
                        <br />
                        <span><%#Eval("date") %></span>
                        <div style="width: 100%; height: 340px; border-left: .1px solid #99B4BF; border-right: .1px solid #99B4BF;">
                            <img src="../Images/SharingPhotografy/<%# Eval("imagePath") %>" style='display: <%# Eval("display")%>' />
                        </div>
                        <label>Beğeni Sayısı <%#Eval("numberOfLikes") %></label>
                        <asp:LinkButton CssClass="likeButton" ID="likes" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="likeButton" OnClick="likes_Click"><i class="fa-solid fa-thumbs-up"></i></asp:LinkButton>
                        <asp:TextBox ID="tb_sharingComment" runat="server"></asp:TextBox>
                        <asp:LinkButton CssClass="sendComment" ID="lbtn_sharingCommentSend" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="sendComment">Gönder
                        </asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </main>
</asp:Content>
