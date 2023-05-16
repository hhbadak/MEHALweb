using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class UserPanel : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Users u = (Users)Session["user"];
                img_pictureComing.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }
        protected void lbtn_bannerPicture_Click(object sender, EventArgs e)
        {

            //Users u = (Users)Session["user"];
            //if (fu_bannerPicture.HasFile)
            //{
            //    FileInfo fi = new FileInfo(fu_bannerPicture.FileName);
            //    if (fi.Extension == ".jpg" || fi.Extension == ".png")
            //    {
            //        string extension = fi.Extension;
            //        string name = Guid.NewGuid().ToString();
            //        u.banner = name + extension;
            //        fu_bannerPicture.SaveAs(Server.MapPath("~/Images/BannerPhotografy/" + name + extension));
            //        if (dm.addBannerPhoto(u))
            //        {
            //        }
            //    }
            //}
            //else
            //{
            //    u.image = "none.png";
            //    fu_bannerPicture.SaveAs(Server.MapPath("~/Images/SharingPhotografy/" + "none.png"));
            //    if (dm.addBannerPhoto(u))
            //    {
            //    }
            //}
        }

        protected void lbtn_addProfilePhoto_Click(object sender, EventArgs e)
        {

            //Users u = (Users)Session["user"];
            //if (fu_profilePicture.HasFile)
            //{
            //    FileInfo fi = new FileInfo(fu_profilePicture.FileName);
            //    if (fi.Extension == ".jpg" || fi.Extension == ".png")
            //    {
            //        string extension = fi.Extension;
            //        string name = Guid.NewGuid().ToString();
            //        u.image = name + extension;
            //        fu_profilePicture.SaveAs(Server.MapPath("~/Images/ProfilPhotografy/" + name + extension));
            //        if (dm.addProfilPhoto(u))
            //        {
            //        }
            //    }
            //}
            //else
            //{
            //    u.image = "none.png";
            //    fu_profilePicture.SaveAs(Server.MapPath("~/Images/SharingPhotografy/" + "none.png"));
            //    if (dm.addProfilPhoto(u))
            //    {
            //    }
            //}
        }
    }
}