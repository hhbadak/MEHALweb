using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
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
            Users u = (Users)Session["user"];
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["uid"]);
                    u = dm.fetchUserName(id);
                    tb_nameRename.Text = u.name;
                    tb_surNameRename.Text = u.surname;
                    tb_userNameRename.Text = u.userName;
                    tb_eMailRename.Text = u.eMail;
                    tb_passwordRename.Text = u.password;
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

            int id = Convert.ToInt32(Request.QueryString["uid"]);
            Users u = dm.fetchUserName(id);
            u.name = tb_nameRename.Text;
            u.surname = tb_surNameRename.Text;
            u.userName = tb_userNameRename.Text;
            u.eMail = tb_eMailRename.Text;
            u.password = tb_passwordRename.Text;
            if (fu_profilePhoto.HasFile)
            {
                FileInfo fi = new FileInfo(fu_profilePhoto.FileName);
                if (fi.Extension == ".jpg" || fi.Extension == ".png")
                {
                    string uzanti = fi.Extension;
                    string isim = Guid.NewGuid().ToString();
                    u.image = isim + uzanti;
                    fu_profilePhoto.SaveAs(Server.MapPath("~/MakaleResimleri/" + isim + uzanti));
                }
                else
                {
                }
            }
            if (fu_bannerPhoto.HasFile)
            {
                FileInfo fi = new FileInfo(fu_bannerPhoto.FileName);
                if (fi.Extension == ".jpg" || fi.Extension == ".png")
                {
                    string uzanti = fi.Extension;
                    string isim = Guid.NewGuid().ToString();
                    u.banner = isim + uzanti;
                    fu_bannerPhoto.SaveAs(Server.MapPath("~/MakaleResimleri/" + isim + uzanti));
                }
                else
                {
                }
            }
            if (dm.updateUser(u))
            {
                tb_eMailRename.Text = tb_nameRename.Text = tb_passwordRename.Text = tb_surNameRename.Text = tb_userNameRename.Text = " ";
            }
            else
            {
            }
        }
    }
}