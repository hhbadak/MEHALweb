<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="MEHALweb.UserPanel.Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section-50">
        <div class="container">
            <div class="mt-4">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a href="#Notifications" class="nav-link active m-b-50 heading-line" data-bs-toggle="tab">Bildirimler <i class="fa fa-bell text-muted"></i></a>
                    </li>
                    <li class="nav-item">
                        <a href="#FriendsRequest" class="nav-link m-b-50 heading-line" data-bs-toggle="tab">Arkadaşlık İstekleri <i class="fa fa-bell text-muted"></i></a>
                    </li>
                </ul>
            </div>
            <div class="tab-content">
                <div class="tab-pane container active" id="Notifications">
                    <div class="notification-ui_dd-content">
                        <div class="notification-list notification-list--unread">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/zYxDCQT.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>John Doe</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/AbZqFnR.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list notification-list--unread">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/w4Mp4ny.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Richard Miles</b> liked your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/AbZqFnR.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/ltXdE4K.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Brian Cumin</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/bpBpAlH.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/CtAQDCP.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Lance Bogrol</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/iIhftMJ.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/zYxDCQT.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Parsley Montana</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/bpBpAlH.jpg" alt="Feature image">
                            </div>
                        </div>
                    </div>

                    <div class="text-center">
                        <a href="#!" class="dark-link">Load more activity</a>
                    </div>

                </div>
                <div class="tab-pane container fade" id="FriendsRequest">
                    <div class="notification-ui_dd-content">
                        <div class="notification-list notification-list--unread">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/zYxDCQT.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>John Doe</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/AbZqFnR.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list notification-list--unread">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/w4Mp4ny.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Richard Miles</b> liked your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="btn-group-sm mt-3">
                                <asp:LinkButton ID="lbtn_approve" runat="server" OnClick="lbtn_approve_Click" CssClass="btn btn-success"><i class="fa-solid fa-check"></i></asp:LinkButton>
                                <asp:LinkButton ID="lbtn_cancel" runat="server" OnClick="lbtn_approve_Click" CssClass="btn btn-danger"><i class="fa-sharp fa-solid fa-xmark"></i></asp:LinkButton>
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/ltXdE4K.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Brian Cumin</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/bpBpAlH.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/CtAQDCP.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Lance Bogrol</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/iIhftMJ.jpg" alt="Feature image">
                            </div>
                        </div>
                        <div class="notification-list">
                            <div class="notification-list_content">
                                <div class="notification-list_img">
                                    <img src="https://i.imgur.com/zYxDCQT.jpg" alt="user">
                                </div>
                                <div class="notification-list_detail">
                                    <p><b>Parsley Montana</b> reacted to your post</p>
                                    <p class="text-muted">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, dolorem.</p>
                                    <p class="text-muted"><small>10 mins ago</small></p>
                                </div>
                            </div>
                            <div class="notification-list_feature-img">
                                <img src="https://i.imgur.com/bpBpAlH.jpg" alt="Feature image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptPlaceHolder" runat="server">
</asp:Content>
