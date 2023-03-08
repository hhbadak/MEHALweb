<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MEHALweb.UserPanel.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container">
        <div class="sharingArea">
            <asp:LinkButton ID="lbtn_share" runat="server" OnClick="lbtn_share_Click">Yolla</asp:LinkButton>
            <asp:TextBox ID="tb_sharingArea" runat="server" CssClass="shareBox" Text="   Bugün neler öğrendin?"></asp:TextBox>
            <asp:FileUpload ID="fu_picture" runat="server" CssClass="fileLayout"></asp:FileUpload>
        </div>
        <div class="postsArea">
            <asp:ListView ID="lv_postList" runat="server" OnItemCommand="lv_postList_ItemCommand">
                <LayoutTemplate>
                    <table>
                        <thead>
                            <td></td>
                        </thead>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </main>
</asp:Content>