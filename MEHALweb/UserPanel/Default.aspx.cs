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
    public partial class Default1 : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_share_Click(object sender, EventArgs e)
        {
            Sharing s = new Sharing();
            SharingImages si = new SharingImages();
            Users u = (Users)Session["user"];
            si.sharing_ID = s.ID;
            s.user_ID = u.ID;
            s.numberOfLikes = 0;
            s.content = tb_sharingArea.Text;
            s.date = DateTime.Now;
            s.time = DateTime.Now;
            s.status = true;
            if (fu_picture.HasFile)
            {
                FileInfo fi = new FileInfo(fu_picture.FileName);
                if (fi.Extension == ".jpg" || fi.Extension == ".png")
                {
                    string extension = fi.Extension;
                    string name = Guid.NewGuid().ToString();
                    si.imagePath = extension + name;
                    fu_picture.SaveAs(Server.MapPath("~/Images SharingPhotografy /" + name + extension));
                    if (dm.addShare(s))
                    {
                        tb_sharingArea.Text = "";
                    }
                }
            }
        }
    }
}