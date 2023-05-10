using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.Administrator
{
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_adminLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_userName.Value) && !string.IsNullOrEmpty(tb_password.Value))
            {
                Users u = dm.loginAdmin(tb_userName.Value, tb_password.Value);
                if (u != null)
                {
                    if (u.status)
                    {
                        Session["administrator"] = u;
                        Response.Redirect("AdminPanelArea.aspx");
                    }
                    else
                    {
                        pnl_error.Visible = true;
                        lbl_error.Text = "Kullanıcı Hesabı Yok";
                    }
                }
                else
                {

                    pnl_error.Visible = true;
                    lbl_error.Text = "Kullanıcı Hesabı Bulunamadı";
                }
            }
            else
            {
                pnl_error.Visible = true;
                lbl_error.Text = "Kullanıcı Aadı ve Şşifre Bboş Olamaz";
            }
        }
    }
}