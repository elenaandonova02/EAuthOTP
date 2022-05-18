using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAuthDataSetTableAdapters;

public partial class Verification : System.Web.UI.Page
{
    string qrimgurl = "";
    string otp = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblMsg.Visible = false;
            tbl_UsersTableAdapter iuser = new tbl_UsersTableAdapter();
            EAuthDataSet.tbl_UsersDataTable itbl = new EAuthDataSet.tbl_UsersDataTable();
            itbl = iuser.GetByUserName(Session["username"].ToString());
            if(itbl.Rows.Count > 0)
            {
                foreach(EAuthDataSet.tbl_UsersRow irow in itbl.Rows)
                {
                    qrimgurl = irow.qrcode;
                }
                imgQRCODE.ImageUrl = qrimgurl;
            }
        }
    }

    protected void btnverify_Click(object sender, EventArgs e)
    {
        if (txtOTP.Text.Length > 0)
        {
            tbl_UsersTableAdapter iuser = new tbl_UsersTableAdapter();
            EAuthDataSet.tbl_UsersDataTable itbl = new EAuthDataSet.tbl_UsersDataTable();
            itbl = iuser.GetByUserName(Session["username"].ToString());
            int id=0;
            if (itbl.Rows.Count > 0)
                foreach (EAuthDataSet.tbl_UsersRow irow in itbl.Rows)
                {
                    otp = irow.otp;
                    id = irow.user_id;
                }
            if (txtOTP.Text == otp) {
                iuser.UpdateVerification("Y", id);
                Response.Redirect("~/DefaultSuccess.aspx");
            }else
            {
                lblMsg.Text = "User cannot be verified";
                lblMsg.Visible = true;
            }
        }
        
    }
}