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
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel dm = new DataModel();
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["mid"]);

                    Users u = dm.fetchUserName(id);
                    tb_userNameRename.Text = u.userName;
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