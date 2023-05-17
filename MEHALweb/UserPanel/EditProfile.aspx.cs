using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class EditProfile : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            Users u = (Users)Session["user"];
            //if (Request.QueryString.Count != 0)
            //{
            //    if (!IsPostBack)
            //    {
            //        int id = Convert.ToInt32(Request.QueryString["uid"]);
            //        u = dm.fetchUserName(id);
            //        tb_lastname.Text = u.name;
            //        tb_firstname.Text = u.surname;
            //        tb_username.Text = u.userName;
            //        tb_mail.Text = u.eMail;
            //        tb_password.Text = u.password;
            //        img_profileImage.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
            //    }
            //}
            //else if (Session["user"] == null)
            //{
            //    Response.Redirect("UserPanel.aspx");
            //}
            //else
            //{
            //    // Profil düzenleme işlemine devam et
            //}


            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("UserPanel.aspx");
                }
                else
                {
                    Users user = (Users)Session["user"];

                    // Kullanıcı bilgilerini TextBox'lara doldurma
                    tb_lastname.Text = user.name;
                    tb_firstname.Text = user.surname;
                    tb_username.Text = user.userName;
                    tb_mail.Text = user.eMail;
                    tb_password.Text = user.password;
                    img_profileImage.ImageUrl = "../Images/ProfilPhotografy/" + user.image;

                    if (!string.IsNullOrEmpty(user.image))
                    {
                        img_profileImage.ImageUrl = "../Images/ProfilPhotografy/" + user.image;
                    }
                }
            }
        }

        protected void lbtn_updateSave_Click(object sender, EventArgs e)
        {

        }
    }
}