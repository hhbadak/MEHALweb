<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="MEHALweb.UserPanel.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-xl px-4 mt-4">
        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profil Fotoğrafı</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <%--<img id="img_profileImage" runat="server" class="img-account-profile rounded-circle mb-2 img-thumbnail" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">--%>
                        <asp:Image ID="img_profileImage" runat="server" class="img-account-profile rounded-circle mb-2 img-thumbnail" />
                        <!-- Profile picture help block-->
                        <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                        <!-- Profile picture upload button-->
                        <%--<button class="btn btn-primary" type="button">Upload new image</button>--%>
                        <asp:FileUpload ID="fu_profileImage" runat="server" CssClass="form-control"></asp:FileUpload>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Hesap Detayları</div>
                    <div class="card-body">
                        <form>
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputUsername">Kullanıcı Adı</label>
                                <asp:TextBox ID="tb_username" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox>
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLastName">Adınız</label>
                                    <asp:TextBox ID="tb_lastname" runat="server" CssClass="form-control" placeholder="Adınızı Giriniz"></asp:TextBox>
                                </div>
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputFirstName">Soyadınız</label>
                                    <asp:TextBox ID="tb_firstname" runat="server" CssClass="form-control" placeholder="Soyadınızı Giriniz"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Form Row        -->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (email address)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputMail">Mail Adresiniz</label>
                                    <asp:TextBox ID="tb_mail" runat="server" CssClass="form-control" placeholder="E-Mail Giriniz"></asp:TextBox>
                                </div>
                                <!-- Form Group (location)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputPassword">Şifreniz</label>
                                    <asp:TextBox ID="tb_password" runat="server" CssClass="form-control" type="password" placeholder="Şifrenizi Giriniz"></asp:TextBox>
                                </div>
                            </div>
                            <!-- Save changes button-->
                            <asp:LinkButton ID="lbtn_updateSave" runat="server" CssClass="btn btn-primary" OnClick="lbtn_updateSave_Click">Kaydet</asp:LinkButton>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="scriptPlaceHolder" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <script>
        function readUrl(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#img_profileImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $("#ContentPlaceHolder1_fu_profileImage").change(function () {
            readUrl(this);
        })
    </script>
</asp:Content>
