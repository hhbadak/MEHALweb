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

        }

        protected void lbtn_share_Click(object sender, EventArgs e)
        {
            Users us = new Users();
            Users u = (Users)Session["user"];
            if (fu_picture.HasFile)
            {
                FileInfo fi = new FileInfo(fu_picture.FileName);
                if (fi.Extension == ".jpg" || fi.Extension == ".png")
                {
                    string extension = fi.Extension;
                    string name = Guid.NewGuid().ToString();
                    us.image = extension + name;
                    fu_picture.SaveAs(Server.MapPath("~/Images/ProfilPhotografy/" + name + extension));
                    if (dm.addProfilPhoto(us))
                    {
                        pnl_error.Visible = true;
                    }
                }
            }
        }
    }
}