using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MEHALweb.UserPanel
{
    public partial class Default1 : System.Web.UI.Page
    {
        Sharing s = new Sharing();
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            rp_postList.DataSource = dm.sharingList();
            rp_postList.DataBind();
        }

        protected void lbtn_share_Click(object sender, EventArgs e)
        {
            Sharing s = new Sharing();
            Users u = (Users)Session["user"];
            s.user_ID = u.ID;
            s.numberOfLikes = 0;
            s.content = tb_sharingArea.Text;
            s.date = DateTime.Now;
            s.status = true;
            if (fu_picture.HasFile)
            {
                FileInfo fi = new FileInfo(fu_picture.FileName);
                if (fi.Extension == ".jpg" || fi.Extension == ".png")
                {
                    string extension = fi.Extension;
                    string name = Guid.NewGuid().ToString();
                    s.imagePath = name + extension;
                    fu_picture.SaveAs(Server.MapPath("~/Images/SharingPhotografy/" + name + extension));
                    if (dm.addShare(s))
                    {
                        tb_sharingArea.Text = "";
                    }
                }
            }
            else
            {
                s.imagePath = "none.png";
                fu_picture.SaveAs(Server.MapPath("~/Images/SharingPhotografy/" + "none.png"));
                if (dm.addShare(s))
                {
                    tb_sharingArea.Text = "";
                }
            }
        }

        protected void likes_Click(object sender, EventArgs e)
        {
        }
    }
}