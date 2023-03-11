using DataAccessLayer;
using System;
using System.Collections.Generic;
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
            rp_userProfil.DataSource = dm.sharingList();
            rp_userProfil.DataBind();
        }
    }
}