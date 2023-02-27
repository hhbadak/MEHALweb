using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.Administrator
{
    public partial class AdminPanelArea1 : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_userComplaints_Click(object sender, EventArgs e)
        {
            lv_userComplaints.Visible = true;
            lv_sharingDelete.Visible = false;
            lv_commentDelete.Visible = false;
            lv_userComplaints.DataSource = dm.listUserComplaint();
            lv_userComplaints.DataBind();
        }

        protected void lbtn_commentComplaints_Click(object sender, EventArgs e)
        {
            lv_userComplaints.Visible = false;
            lv_sharingDelete.Visible = false;
            lv_commentDelete.Visible = true;
            lv_commentDelete.DataSource = dm.listCommentComplaint();
            lv_commentDelete.DataBind();
        }

        protected void lbtn_sharingComplaints_Click(object sender, EventArgs e)
        {
            lv_userComplaints.Visible = false;
            lv_sharingDelete.Visible = true;
            lv_commentDelete.Visible = false;
            lv_sharingDelete.DataSource = dm.listSharingComplaint();
            lv_sharingDelete.DataBind();
        }

        protected void lv_userComplaints_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            Complaints comp = new Complaints();
            if (e.CommandName == "userPassive")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                comp = dm.bringUserComplaint(id);
                dm.accountRestriction(id);
            }
        }
    }
}