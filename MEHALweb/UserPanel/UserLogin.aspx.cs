using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_login_Click(object sender, EventArgs e)
        {

        }

        protected void lbtn_registerUser_Click(object sender, EventArgs e)
        {

        }

        protected void lbtn_userLoginPage_Click(object sender, EventArgs e)
        {
            pnl_registerBox.Visible = false;
            pnl_loginBox.Visible = true;
        }

        protected void lbtn_userRegisterPage_Click(object sender, EventArgs e)
        {
            pnl_registerBox.Visible = true;
            pnl_loginBox.Visible = false;
        }
    }
}