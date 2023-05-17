using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class DiscoverPage : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            Users u = (Users)Session["user"];
            if (Session["user"] != null)
            {
                rp_discoverUser.DataSource = dm.listDiscoverUser(u);
                rp_discoverUser.DataBind();
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }
    }
}