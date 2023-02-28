<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/AdminPanelArea.Master" AutoEventWireup="true" CodeBehind="AdminPanelArea.aspx.cs" Inherits="MEHALweb.Administrator.AdminPanelArea1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside class="sidebar darkNavyBlue">
        <div class="sidebarTitle">
            <h4>İŞLEMLER SEKMESİ</h4>
        </div>
        <div class="fix">
            <i class="fa-solid fa-screwdriver-wrench"></i>
        </div>
        <div class="buttons">
            <asp:LinkButton ID="lbtn_userComplaints" runat="server" OnClick="lbtn_userComplaints_Click">Kullanıcı Şikayetleri</asp:LinkButton>
            <asp:LinkButton ID="lbtn_commentComplaints" runat="server" OnClick="lbtn_commentComplaints_Click">Yorum Şikayetleri</asp:LinkButton>
            <asp:LinkButton ID="lbtn_sharingComplaints" runat="server" OnClick="lbtn_sharingComplaints_Click">Gönderi Şikayetleri</asp:LinkButton>
        </div>
    </aside>
    <div class="list">
        <asp:ListView ID="lv_userComplaints" runat="server" OnItemCommand="lv_userComplaints_ItemCommand" Visible="false">
            <LayoutTemplate>
                <table class="listTable" border="1" cellspacing="0">
                    <tr>
                        <th>Şikayet Kodu</th>
                        <th>Kullanıcı Adı</th>
                        <th>Şikayetçi Kullanıcı</th>
                        <th>Şikayet Sebebi</th>
                        <th>Şikayet Tarihi</th>
                        <th>Şikayet Saati</th>
                        <th>Seçenekler</th>
                    </tr>
                    <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>
                    <td><%#Eval("userName") %></td>
                    <td><%#Eval("theComplainingUser") %></td>
                    <td><%#Eval("subjects") %></td>
                    <td><%#Eval("date","{0:dd/MM/yyyy}") %></td>
                    <td><%#Eval("time","{0:HH:mm}") %></td>
                    <td>
                        <a href="#">Profile Git</a>
                        <asp:LinkButton ID="lbtn_userPassive" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="userPassive">Hesabı Askıya Al</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <asp:ListView ID="lv_commentDelete" runat="server" OnItemCommand="lv_commentDelete_ItemCommand" Visible="false">
            <LayoutTemplate>
                <table class="listTable" border="1" cellspacing="0">
                    <tr>
                        <th>Şikayet Kodu</th>
                        <th>Kullanıcı Adı</th>
                        <th>Yorum</th>
                        <th>Şikayetçi Kullanıcı</th>
                        <th>Şikayet Sebebi</th>
                        <th>Şikayet Tarihi</th>
                        <th>Şikayet Saati</th>
                        <th>Seçenekler</th>
                    </tr>
                    <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>
                    <td><%#Eval("userName") %></td>
                    <td><%#Eval("comment") %></td>
                    <td><%#Eval("theComplainingUser") %></td>
                    <td><%#Eval("subjects") %></td>
                    <td><%#Eval("date","{0:dd/MM/yyyy}") %></td>
                    <td><%#Eval("time","{0:HH\\:mm}") %></td>
                    <td>
                        <a href="#">Yoruma Git</a>
                        <asp:LinkButton ID="lbtn_commentDelete" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="commentDelete">Yorumu Sil</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <asp:ListView ID="lv_sharingDelete" runat="server" OnItemCommand="lv_sharingDelete_ItemCommand" Visible="false">
            <LayoutTemplate>
                <table class="listTable" border="1" cellspacing="0">
                    <tr>
                        <th>Şikayet Kodu</th>
                        <th>Kullanıcı Adı</th>
                        <th>Paylaşım</th>
                        <th>Şikayetçi Kullanıcı</th>
                        <th>Şikayet Sebebi</th>
                        <th>Şikayet Tarihi</th>
                        <th>Şikayet Saati</th>
                        <th>Seçenekler</th>
                    </tr>
                    <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID") %></td>
                    <td><%#Eval("userName") %></td>
                    <td><%#Eval("sharing") %></td>
                    <td><%#Eval("theComplainingUser") %></td>
                    <td><%#Eval("subjects") %></td>
                    <td><%#Eval("date","{0:dd/MM/yyyy}") %></td>
                    <td><%#Eval("time","{0:HH:mm}") %></td>
                    <td>
                        <a href="#">Paylaşıma Git</a>
                        <asp:LinkButton ID="lbtn_sharingDelete" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="sharingDelete">Paylaşımı Sil</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
