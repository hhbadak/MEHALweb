<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="MEHALweb.UserPanel.UserPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="h-100 gradient-custom-2">
        <div class="container py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-lg-9 col-xl-7">
                    <div class="card">
                        <div class="rounded-top text-white d-flex flex-row" style="background-color: #000; height: 200px;">
                            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                <asp:Image CssClass="rounded-circle" ID="img_pictureComing" runat="server" />
                                <a href="EditProfile.aspx" class="btn btn-outline-dark mt-2" data-mdb-ripple-color="dark"
                                    style="z-index: 1;">Profili Düzenle</a>
                            </div>
                            <div class="ms-3" style="margin-top: 130px;">
                                <asp:Label ID="lbl_name" runat="server"></asp:Label>
                                <asp:Label ID="lbl_surname" runat="server"></asp:Label><br />
                                <asp:Label ID="lbl_username" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="p-4 text-black" style="background-color: #f8f9fa;">
                            <div class="d-flex justify-content-end text-center py-1">
                                <div>
                                    <p class="mb-1 h5">253</p>
                                    <p class="small text-muted mb-0">Photos</p>
                                </div>
                                <div class="px-3">
                                    <p class="mb-1 h5">1026</p>
                                    <p class="small text-muted mb-0">Followers</p>
                                </div>
                                <div>
                                    <p class="mb-1 h5">478</p>
                                    <p class="small text-muted mb-0">Following</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Repeater ID="rp_sharing" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 mx-auto">
                        <div class="card mt-4">
                            <div class="card-header">
                                <%--<asp:LinkButton ID="lbtn_profile" runat="server" CssClass="btn btn-outline-info float-end" <%# Eval("UserName") %></asp:LinkButton><br />--%>
                                <br />
                                <h2><%# Eval("Content") %></h2>
                            </div>
                            <div class="card-body">
                                <a href="../Images/SharingPhotografy/<%# Eval("imagePath") %>" target="_blank">
                                    <img src="../Images/SharingPhotografy/<%# Eval("imagePath") %>" class="img-thumbnail" />
                                </a>
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
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
</asp:Content>
