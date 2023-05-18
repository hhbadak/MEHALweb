using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class Register : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgCalendar_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void calBirthDate_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void lbtn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void lbtn_register_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_name.Text.Trim()))
            {
                if (!string.IsNullOrEmpty(tb_surname.Text.Trim()))
                {
                    if (!string.IsNullOrEmpty(tb_username.Text.Trim()))
                    {
                        if (!string.IsNullOrEmpty(tb_eMail.Text.Trim()))
                        {
                            if (!string.IsNullOrEmpty(tb_password.Text.Trim()))
                            {
                                if (!string.IsNullOrEmpty(tb_dateOfBirth.Text.Trim()))
                                {
                                    Users u = new Users();
                                    u.name = tb_name.Text;
                                    u.surname = tb_surname.Text;
                                    u.userName = tb_username.Text;
                                    u.eMail = tb_eMail.Text;
                                    u.password = tb_password.Text;
                                    u.dateOfBirth = Convert.ToDateTime(tb_dateOfBirth.Text);
                                    u.memberStatus_ID = 2;
                                    u.dateOfregistration = DateTime.Now;
                                    u.status = true;

                                    if (dm.memberRegistration(u))
                                    {
                                        pnl_error.Visible = false;
                                        lbl_error.Text = "Kayıt Başarılı";
                                    }
                                    else
                                    {
                                        pnl_error.Visible = true;
                                        lbl_error.Text = "Kayıt Başarısız";
                                    }
                                }
                                else
                                {
                                    pnl_error.Visible = true;
                                    lbl_error.Text = "Lütfen Doğum Tarihinizi GG.AA.YYYY Şeklinde Giriniz";
                                }
                            }
                            else
                            {
                                pnl_error.Visible = true;
                                lbl_error.Text = "Lütfen Şifrenizi Giriniz";
                            }

                        }
                        else
                        {
                            pnl_error.Visible = true;
                            lbl_error.Text = "Lütfen E-Mail Adresinizi Giriniz";
                        }
                    }
                    else
                    {
                        pnl_error.Visible = true;
                        lbl_error.Text = "Lütfen Kullanıcı Adı Giriniz";
                    }
                }
                else
                {
                    pnl_error.Visible = true;
                    lbl_error.Text = "Lütfen Soyadınızı Giriniz";
                }
            }
            else
            {
                pnl_error.Visible = true;
                lbl_error.Text = "Lütfen Adınızı Giriniz";
            }
        }
    }
}