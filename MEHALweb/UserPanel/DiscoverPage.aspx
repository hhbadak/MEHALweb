﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/Default.Master" AutoEventWireup="true" CodeBehind="DiscoverPage.aspx.cs" Inherits="MEHALweb.UserPanel.DiscoverPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row w-100">
            <asp:Repeater ID="rp_discoverUser" runat="server" OnItemCommand="rp_discoverUser_ItemCommand">
                <ItemTemplate>
                    <div class="col-xxl-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex text-black">
                                    <div class="flex-shrink-0">
                                        <img src="../Images/ProfilPhotografy/<%# Eval("Image") %>"
                                            alt="Generic placeholder image" class="img-fluid"
                                            style="width: 180px; height: 250px; border-radius: 10px;">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h5 class="mb-1"><%# Eval("Name") %></h5>
                                        <h5 class="mb-1"><%# Eval("Surname") %></h5>
                                        <%-- <a href='UserPage.aspx?uid=<%# Eval("ID") %>' class="mb-2 pb-1" style="color: #2b2a2a;">@<%# Eval("UserName") %></a>--%>
                                        <a href='UserPage.aspx?uid=<%# Eval("ID") %>' class="mb-2 pb-1" style="color: #2b2a2a;">@<%# Eval("UserName") %></a>

                                        <div class="d-flex justify-content-start rounded-3 p-2 mb-2"
                                            style="background-color: #efefef;">
                                            <div>
                                                <p class="small text-muted mb-1">Articles</p>
                                                <p class="mb-0">41</p>
                                            </div>
                                            <div class="px-3">
                                                <p class="small text-muted mb-1">Followers</p>
                                                <p class="mb-0">976</p>
                                            </div>
                                            <div>
                                                <p class="small text-muted mb-1">Rating</p>
                                                <p class="mb-0">8.5</p>
                                            </div>
                                        </div>
                                        <div class="d-flex pt-1">
                                            <asp:LinkButton ID="lbtn_follow" runat="server" CssClass="btn btn-primary" OnClick="lbtn_follow_Click">Ekle</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
