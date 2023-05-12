<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MEHALweb.UserPanel.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container">
        <div class="col-lg-4 mx-auto">
            <div class="card mt-4">
                <div class="card-header">
                    <asp:LinkButton ID="lbtn_profile" runat="server" CssClass="btn btn-outline-info float-end">Hasan Hüseyin BADAK</asp:LinkButton><br />
                    <br />
                    Bugün günlerden cuma ve ben tasarım kısmını bitirmek üzereyim.
                    Ortalama 7 gün içinde de Back-End tarafı biter ve proje sonlanır :)
                </div>
                <div class="card-body">
                    <img src="../Images/LOGO/MEHAL.jpg" class="img-thumbnail" />
                </div>
                <div class="card-footer">
                    <div class="btn-group">
                        <div class="col-6">
                            <a href="#" class="btn btn-light btn-sm w-100"><i class="fa-regular fa-thumbs-up"></i>&nbsp Beğen</a>
                        </div>
                        <div class="col-8">
                            <a href="#" class="btn btn-light btn-sm w-100"><i class="fa-regular fa-comment"></i>&nbsp Yorum Yap</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 mt-2">
                            <%--<asp:TextBox ID="tb_sharingComment" runat="server" CssClass="form-control" Rows="5"></asp:TextBox>--%>
                            <textarea class="form-control" rows="2"></textarea>
                        </div>
                        <div class="col-2 mt-4">
                            <asp:LinkButton ID="btn_sharinCommentSend" runat="server" CssClass="btn btn-outline-primary btn-sm float-end">Gönder</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
