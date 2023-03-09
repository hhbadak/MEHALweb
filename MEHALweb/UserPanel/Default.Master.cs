﻿using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEHALweb.UserPanel
{
    public partial class Default : System.Web.UI.MasterPage
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            rp_postList.DataSource = dm.sharingList();
            rp_postList.DataBind();
            if (Session["user"] != null)
            {
                Users u = (Users)Session["user"];
                lbl_userControl.Text = u.userName;
                img_pictureComing.ImageUrl = u.image;
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }
    }
}