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

                    Users u = new Users();
                    img_pictureComing.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
                    lbl_name.Text = u.name;
                    lbl_surname.Text = u.surname;
                    lbl_username.Text = "@" + u.userName;
                    rp_sharing.DataSource = dm.sharingList();
                    rp_sharing.DataBind();


                    Response.Redirect(profileURL);
                }
            }
        }
    }
}