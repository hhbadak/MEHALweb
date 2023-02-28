using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.Administrator
{
    public partial class AdminPanelArea : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["administrator"] != null)
            {
                Users u = (Users)Session["administrator"];
                lbl_userControl.Text = u.userName;
            }
            else
            {
                Response.Redirect("AdminLoginPage.aspx");
            }
        }

        protected void lbtn_userControl_Click(object sender, EventArgs e)
        {
            Session["administrator"] = null;
            Response.Redirect("AdminLoginPage.aspx");
        }
    }
}