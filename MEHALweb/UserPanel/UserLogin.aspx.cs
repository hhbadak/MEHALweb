using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class UserLogin : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_login_Click(object sender, EventArgs e)
        {

        }

        protected void lbtn_registerUser_Click(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(tb_registerName.Text.Trim()))
            //{
            //    if (!string.IsNullOrEmpty(tb_registerSurname.Text.Trim()))
            //    {
            //        if (!string.IsNullOrEmpty(tb_registerUserName.Text.Trim()))
            //        {
            //            if (!string.IsNullOrEmpty(tb_registerMail.Text.Trim()))
            //            {
            //                if (!string.IsNullOrEmpty(tb_registerPassword.Text.Trim()))
            //                {
            //                    if (!string.IsNullOrEmpty(tb_registerBirthDay.Text.Trim()))
            //                    {
            //                        Users u = new Users();
            //                        u.name = tb_registerName.Text;
            //                        u.surname = tb_registerSurname.Text;
            //                        u.userName = tb_registerUserName.Text;
            //                        u.eMail = tb_registerMail.Text;
            //                        u.password = tb_registerPassword.Text;
            //                        u.dateOfBirth = Convert.ToDateTime(tb_registerBirthDay.Text);
            //                        u.dateOfregistration = DateTime.Now;
            //                        u.status = true;
            //                        if (dm.memberRegistration(u))
            //                        {
            //                            lbl_error.Text = "Kayıt işlemi Başarılı";
            //                        }
            //                        else
            //                        {
            //                            lbl_error.Text = "Kayıt işlemi Başarısız";
            //                        }
            //                    }
            //                    else
            //                    {
            //                        lbl_error.Text = "Lütfen Doğum Tarihini Giriniz";
            //                    }
            //                }
            //                else
            //                {
            //                    lbl_error.Text = "Lütfen Şifre Giriniz";
            //                }
            //            }
            //            else
            //            {
            //                lbl_error.Text = "Lütfen Mail Adresinizi Giriniz";
            //            }
            //        }
            //        else
            //        {
            //            lbl_error.Text = "Lütfen Kullanıcı Adını Giriniz";
            //        }
            //    }
            //    else
            //    {
            //        lbl_error.Text = "Lütfen Soyisminizi Giriniz";
            //    }
            //}
            //else
            //{
            //    lbl_error.Text = "Lütfen İsminizi Giriniz";
            //}
        }

        protected void lbtn_userLoginPage_Click(object sender, EventArgs e)
        {
            //pnl_registerBox.Visible = false;
            //pnl_loginBox.Visible = true;
        }

        protected void lbtn_userRegisterPage_Click(object sender, EventArgs e)
        {
            //pnl_registerBox.Visible = true;
            //pnl_loginBox.Visible = false;
        }

        protected void lbtn_userLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_loginUserName.Value.Trim()) && !string.IsNullOrEmpty(tb_loginPassword.Value.Trim()))
            {
                Users u = dm.loginUser(tb_loginUserName.Value, tb_loginPassword.Value);
                if (u != null)
                {
                    if (u.status)
                    {
                        Session["user"] = u;
                        Response.Redirect("Default.aspx");
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
                lbl_error.Text = "Kullanıcı Adı veya Şifre Boş Olamaz";
            }
        }
    }
}