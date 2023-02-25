<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/AdminOperations.Master" AutoEventWireup="true" CodeBehind="AdminOperations.aspx.cs" Inherits="MEHALweb.Administrator.AdminOperations1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container darkBlueColor">
        <div class="inContainer">
            <asp:LinkButton ID="lbtn_accountRestriction" runat="server" OnClick="lbtn_accountRestriction_Click">Kullanıcı Profil Şikayetleri</asp:LinkButton>
            <asp:LinkButton ID="lbtn_deletePost" runat="server" OnClick="lbtn_deletePost_Click">Gönderi Şikayetleri</asp:LinkButton>
            <asp:LinkButton ID="lbtn_deleteComment" runat="server" OnClick="lbtn_deleteComment_Click">Yorum Şikayetleri</asp:LinkButton>
        </div>
        <div class="list">
            <asp:ListView ID="lv_accountRestriction" runat="server" OnItemCommand="lv_accountRestriction_ItemCommand" Visible="false">
                <LayoutTemplate>
                    <table class="userTable" border="1" cellspacing="0">
                        <tr>
                            <th>Şikayet ID</th>
                            <th>Kullanıcı Adı</th>
                            <th>Şikayet Gerekçesi</th>
                            <th>Şikayet Tarihi</th>
                            <th>Seçenekler</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("userName") %></td>
                        <td><%#Eval("subjects") %></td>
                        <td><%#Eval("date") %></td>
                        <td>
                            <asp:LinkButton ID="lbtn_goUserProfile" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="goUserProfile">Kullanıcı Profiline Git</asp:LinkButton>
                            <asp:LinkButton ID="lbtn_userPassive" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="userPassive">Hesabı Askıya Al</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <asp:ListView ID="lv_deletePost" runat="server" OnItemCommand="lv_deletePost_ItemCommand" Visible="false">
                <LayoutTemplate>
                    <table class="userTable" border="1" cellspacing="0">
                        <tr>
                            <th>Şikayet ID</th>
                            <th>Kullanıcı Adı</th>
                            <th>Yapılan Paylaşım</th>
                            <th>Şikayet Gerekçesi</th>
                            <th>Şikayet Tarihi</th>
                            <th>Seçenekler</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("userName") %></td>
                        <td><%#Eval("sharing") %></td>
                        <td><%#Eval("subjects") %></td>
                        <td><%#Eval("date") %></td>
                        <td>
                            <asp:LinkButton ID="lbtn_goSharing" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="goSharing">Paylaşıma Git</asp:LinkButton>
                            <asp:LinkButton ID="lbtn_sharingPassive" runat="server" CommandArgument='<%#Eval("ID") %>'
                                CommandName="sharingPassive">Paylaşımı Kaldır</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <asp:ListView ID="lv_deleteComment" runat="server" OnItemCommand="lv_deleteComment_ItemCommand" Visible="false">
                <LayoutTemplate>
                    <table class="userTable" border="1" cellspacing="0">
                        <tr>
                            <th>Şikayet ID</th>
                            <th>Kullanıcı Adı</th>
                            <th>Yapılan Yorum</th>
                            <th>Şikayet Gerekçesi</th>
                            <th>Şikayet Tarihi</th>
                            <th>Seçenekler</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("userName") %></td>
                        <td><%#Eval("comment") %></td>
                        <td><%#Eval("subjects") %></td>
                        <td><%#Eval("date") %></td>
                        <td>
                            <asp:LinkButton ID="lbtn_goComment" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="goComment">Yoruma Git</asp:LinkButton>
                            <asp:LinkButton ID="lbtn_userComment" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="userComment">Yorumu Kaldır</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
    <div>
</asp:Content>
