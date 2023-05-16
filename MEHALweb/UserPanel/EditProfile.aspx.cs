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
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["uid"]);
                    u = dm.fetchUserName(id);
                    tb_lastname.Text = u.name;
                    tb_firstname.Text = u.surname;
                    tb_username.Text = u.userName;
                    tb_mail.Text = u.eMail;
                    tb_password.Text = u.password;
                    img_profileImage.ImageUrl = "../Images/ProfilPhotografy/" + u.image;
                }
            }
            else
            {
                Response.Redirect("UserPanel.aspx");
            }
        }

        protected void lbtn_updateSave_Click(object sender, EventArgs e)
        {

        }
    }
}