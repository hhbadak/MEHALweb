using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class UserNameRename : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["mid"]);
                    Users u = dm.fetchUserName(id);
                    tb_nameRename.Text = u.name;
                    tb_surNameRename.Text = u.surname;
                    tb_userNameRename.Text = u.userName;
                    tb_eMailRename.Text = u.eMail;
                    tb_passwordRename.Text= u.password;
                    img_profilePhoto.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
                    img_bannerPhoto.ImageUrl = "../Images/BannerPhotografy/" + u.banner;
                }
            }
            else
            {
                Response.Redirect("Settings.aspx");
            }
        }

        protected void lbtn_send_Click(object sender, EventArgs e)
        {

        }
    }
}