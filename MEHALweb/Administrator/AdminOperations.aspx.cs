using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.Administrator
{
    public partial class AdminOperations1 : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lv_accountRestriction_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }

        protected void lbtn_deletePost_Click(object sender, EventArgs e)
        {
            lv_accountRestriction.Visible = false;
            lv_deleteComment.Visible = false;
            lv_deletePost.Visible = true;
            lv_deletePost.DataSource = dm.listSharingComplaint();
            lv_deletePost.DataBind();
        }

        protected void lbtn_deleteComment_Click(object sender, EventArgs e)
        {
            lv_accountRestriction.Visible = false;
            lv_deleteComment.Visible = true;
            lv_deletePost.Visible = false;
            lv_deleteComment.DataSource = dm.listCommentComplaint();
            lv_deleteComment.DataBind();
        }

        protected void lbtn_accountRestriction_Click(object sender, EventArgs e)
        {
            lv_accountRestriction.Visible = true;
            lv_deleteComment.Visible = false;
            lv_deletePost.Visible = false;
            lv_accountRestriction.DataSource = dm.listUserComplaint();
            lv_accountRestriction.DataBind();
        }

        protected void lv_deletePost_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            dm.deletePost(id);
        }

        protected void lv_deleteComment_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }
    }
}