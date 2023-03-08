<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="MEHALweb.UserPanel.UserPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fu_picture" runat="server" CssClass="fileLayout"></asp:FileUpload>
            <asp:LinkButton ID="lbtn_share" runat="server" OnClick="lbtn_share_Click">Yolla</asp:LinkButton>
            <asp:Panel ID="pnl_error" runat="server" CssClass="messageBox" Visible="false">
                <asp:Label ID="lbl_error" runat="server">Deneme's</asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
