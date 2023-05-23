using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class UserPage : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["uid"] != null)
                {
                    int userID = Convert.ToInt32(Request.QueryString["uid"]);
                    string profileURL = "UserPage.aspx?uid=" + userID;
                    Users u = dm.getUser(userID);
                    img_pictureComing.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
                    lbl_name.Text = u.name;
                    lbl_surname.Text = u.surname;
                    lbl_username.Text = "@" + u.userName;
                    rp_sharing.DataSource = dm.sharingList();
                    rp_sharing.DataBind();
                }
            }
        }

        protected void lbtn_addFriend_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Users currentUser = (Users)Session["user"];
                int friendID = Convert.ToInt32(Request.QueryString["uid"]);

                Friendship fs = new Friendship();
                fs.outGoingRequest = currentUser.ID;
                fs.inCoimgRequest = friendID;
                fs.date = DateTime.Now;


                if (dm.addFriend(fs))
                {
                    lbtn_addFriend.Visible = false;
                    lbl_waitRequest.Visible = true;
                }
                else
                {
                    // Arkadaşlık isteği eklenirken bir hata oluştuğunda yapılacak işlemler
                }
            }
            else
            {
                // Kullanıcı oturumu bulunmadığında yapılacak işlemler
                // Örneğin, oturum açma sayfasına yönlendirme yapabilirsiniz
                Response.Redirect("UserLogin.aspx");
            }
        }
    }
}